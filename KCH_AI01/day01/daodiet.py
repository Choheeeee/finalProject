import cx_Oracle 
import numpy as np
from day01.daomenu import DaoMenu

class DaoDiet:
    def __init__(self):
        self.conn = cx_Oracle.connect("TEAM2_202308F", "java", "112.220.114.130:1521/xe")
        self.cur = self.conn.cursor()
    
    #과거의 식사 기록
    def getXtYt(self,emp_no,cnt,cmp_id):
        sql =   f"""
            select 
                m_id 
            from
                diet
            where
                emp_no = '{emp_no}'
                and cmp_id = '{cmp_id}'
            order by ymd desc
        """
        print("getXtYt",sql)
        self.cur.execute(sql)
        list = self.cur.fetchall()
        arr = []
        for i in list:
            arr.append(i[0])
        xtr = []    
        xt = []
        yt = []
        
        for i in range(len(arr)-2):
            yt.append(arr[i])
            xt.append(arr[i+2])
            xt.append(arr[i+1])
            
            
        for i in range(len(xt)):
            line_n = np.zeros(cnt).astype(int)
            line_n[xt[i]] = 1
            for l in line_n:
                xtr.append(l)
    
        
        x_train = np.array(xtr)
        y_train = np.array(yt)
        
        x_train = np.reshape(x_train,(-1,2*cnt))
        
        return x_train,y_train
    
    
    def getPred(self,emp_no,cnt,cmp_id):
        sql =   f"""
            select 
                m_id 
            from
                diet
            where
                emp_no = '{emp_no}'
                and cmp_id = '{cmp_id}'
            order by ymd desc
        """
        self.cur.execute(sql)
        list = self.cur.fetchall()
        arr = []
        for i in list:
            arr.append(i[0])
        
        line_n1 = np.zeros(cnt).astype(int)
        line_n1[arr[1]] = 1

        line_n2 = np.zeros(cnt).astype(int)
        line_n2[arr[0]] = 1
        
        
        ret = np.concatenate((line_n1, line_n2))
        return ret
        
    def batchList(self):
        sql =   f"""
            select '20240201' as ymd, emp_no, emp_cmp_id as cmp_id, '0' as m_id
            from (select unique emp_no, emp_cmp_id from employee)  unique_employees
        """
        self.cur.execute(sql)
        list = self.cur.fetchall()
        return list
        
    def batch_one(self,ymd, emp_no, cmp_id, m_id):
        sql =   f"""
            INSERT INTO DIET (YMD, EMP_NO, CMP_ID, M_ID)
            values
            ('{ymd}','{emp_no}','{cmp_id}','{m_id}')
        """
        print("sql",sql)
        self.cur.execute(sql)
        self.conn.commit()
        return self.cur.rowcount
    
    def __del__(self):
        self.cur.close()
        self.conn.close()
        
        
if __name__ == '__main__':
    de = DaoDiet()
    list = de.batchList()
    
    de.batch_one(1,1,1,1)
    
    # for b in list:
    #     print(b[0],b[1],b[2],b[3])
    #     cnt = de.batch_one(b[0],b[1],b[2],b[3])
    
    