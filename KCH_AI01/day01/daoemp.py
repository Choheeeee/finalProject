import cx_Oracle 

class DaoEmp:
    def __init__(self):
        self.conn = cx_Oracle.connect("TEAM2_202308F", "java", "112.220.114.130:1521/xe")
        self.cur = self.conn.cursor()
    
    def selectList(self):
        sql =   """
            select
                ten.emp_no,
                ten.emp_cmp_id,
                ten.cnt
                
            from     
            (
               select 
                    emp_no,
                    emp_cmp_id,
                    (   
                        select count(*)
                        from diet
                        where
                        emp_no = e.emp_no
                        and cmp_id = e.emp_cmp_id
                    ) cnt
                from
                    employee e
            ) ten
            
            where
                ten.cnt > 10
        """
        self.cur.execute(sql)
        list = self.cur.fetchall()
        myjson = []
        for e in list:
            myjson.append({'emp_no':e[0],'cmp_id':e[1]})
        return myjson

    
    def __del__(self):
        self.cur.close()
        self.conn.close()
        
        
if __name__ == '__main__':
    de = DaoEmp()
    list = de.selectList()
    print(list)