import tensorflow as tf
import numpy as np
from day01.daomenu import DaoMenu
from day01.daodiet import DaoDiet
import datetime
from day01.daorecom import DaoRecom
from day01.daoemp import DaoEmp


class AaoRecom:
    def __init__(self,emp_no,cmp_id):
        
        self.emp_no = emp_no
        self.cmp_id = cmp_id
        self.dm = DaoMenu()
        self.dd = DaoDiet()
        self.dr = DaoRecom()
        
        
        self.lables = self.dm.getLabels()
        print(self.lables)
        self.x_train = None
        self.y_train = None
        
        self.cnt = self.dm.getCnt()
        self.setXYTrain(self.emp_no,self.cnt)
        

    
    def setXYTrain(self, emp_no,cnt):
        self.x_train,self.y_train = self.dd.getXtYt(emp_no, cnt, self.cmp_id)
        
    
    def pred(self):
        # print(self.x_train)
        # print(self.y_train)
        model = tf.keras.models.Sequential([
            tf.keras.layers.Flatten(input_shape=(self.cnt*2,)),
            tf.keras.layers.Dense(512, activation=tf.nn.relu),
            tf.keras.layers.Dense(512, activation=tf.nn.relu),
            tf.keras.layers.Dense(self.cnt, activation=tf.nn.softmax)
        ])
        
        model.compile(optimizer='adam',
                      loss='sparse_categorical_crossentropy',
                      metrics=['accuracy'])
        
        model.fit(self.x_train, self.y_train, epochs=10)
        model.save('recom.h5')
        
        # 학습때 사용된 데이터셋인 self.x_train으로 예측(추천) 수행
        pred = model.predict(self.x_train) 
        print("pred : ", pred)
        
        print(model.summary())
        
        for p in pred:
            myidx = np.argmax(p)
            # print("myidx",myidx,p)
        
        
        # 학습때 사용되지 않은 다른 데이터셋인 x_rf에 대한 예측을 수행. 이것은 모델이 처음 보는 데이터에 대한 예측임.
        x_rf = self.dd.getPred(self.emp_no, self.cnt,self.cmp_id)
        
        
        # print("x_rf",x_rf)
            
        pred_rf = model.predict(x_rf)
        myidx = np.argmax(pred_rf)
        recom_menu = self.lables[myidx]['m_name']
        recom_m_id = self.lables[myidx]['m_id']
        
        
        now = datetime.datetime.now()
        ymd = now.strftime("%Y%m%d")
        
        
        cnt = self.dr.insert(ymd, self.emp_no, self.cmp_id , recom_m_id)
        
        # print("emp_no",self.emp_no)
        # print("recom_m_id",recom_m_id)
        # print("ymd",ymd)
        # print("cnt",cnt)
        #
        #
        # print("myidx",myidx)
        print("점심메뉴 추천 : ",recom_menu, myidx)

    
    def __del__(self):
        print("소멸자")


if __name__ == '__main__':
    dm = DaoMenu()
    menuCnt = dm.getCnt()
    
    de = DaoEmp()
    emps = de.selectList()
    emp_no = ""
    emp_cmp_id = ""
    
    for  e in emps:
        emp_no = e['emp_no']
        emp_cmp_id = e['cmp_id']
        ar = AaoRecom(emp_no, emp_cmp_id)
        ar.pred()


