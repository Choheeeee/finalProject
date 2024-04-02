package kr.co.saas.cmp.dao;


import org.apache.ibatis.annotations.Mapper;
import kr.co.saas.vo.CompanyVO;


@Mapper
public interface cmpDAO {
	
	public int insertCompany(CompanyVO company);
	
	public int insertEmployee(CompanyVO company);
	
	public int insertAdmin(CompanyVO company);
	
	public int insertPersonnelSystem(CompanyVO company);
	
	
	public int check(CompanyVO company);

}
