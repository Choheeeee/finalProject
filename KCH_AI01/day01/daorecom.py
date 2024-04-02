import cx_Oracle 
import numpy as np

class DaoRecom:
    def __init__(self):
        self.conn = cx_Oracle.connect("TEAM2_202308F", "java", "112.220.114.130:1521/xe")
        self.cur = self.conn.cursor()
    
    def insert(self,ymd,emp_no,cmp_id,m_id):
        sql = f"""
            insert into RECOM_MENU
            (ymd,emp_no,cmp_id,m_id)
            values 
            ('{ymd}','{emp_no}','{cmp_id}','{m_id}')
        """
        self.cur.execute(sql)
        self.conn.commit()
        return self.cur.rowcount

    
    def __del__(self):
        self.cur.close()
        self.conn.close()
        
        
if __name__ == '__main__':
    dr = DaoRecom()
    cnt = dr.insert('1','1','1','1')
    
    print(cnt)

    
    
    
    
    
    