package kr.co.saas.cmp.service;

import kr.co.saas.enumpkg.ServiceResult;
import kr.co.saas.vo.CompanyVO;
import kr.co.saas.vo.EmployeeVO;

public interface CmpService {
	
	public ServiceResult createCompany(CompanyVO company) throws Exception;
	
	public ServiceResult createEmployee(CompanyVO company) throws Exception;
	public ServiceResult createAdmin(CompanyVO company);

	public ServiceResult duplicateCheck(CompanyVO company);
}
