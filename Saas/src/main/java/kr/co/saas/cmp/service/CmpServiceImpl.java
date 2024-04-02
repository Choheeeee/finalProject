package kr.co.saas.cmp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.saas.cmp.dao.cmpDAO;
import kr.co.saas.enumpkg.ServiceResult;
import kr.co.saas.vo.CompanyVO;
@Service
public class CmpServiceImpl implements CmpService {
	private static final ServiceResult ServiceResult = null;
	@Inject
	cmpDAO dao;
	
	@Override
	public ServiceResult createCompany(CompanyVO cmp) throws Exception {
		ServiceResult result = null;
		int cnt1 = dao.insertCompany(cmp);
		int cnt2 = dao.insertEmployee(cmp); 
		int cnt3 = dao.insertAdmin(cmp);
		int cnt4 = dao.insertPersonnelSystem(cmp);
		if(cnt1 == 0 || cnt2 ==0 || cnt3 ==0 || cnt4 ==0) {
			result = ServiceResult.FAIL;
		} else {
			result = ServiceResult.OK;
		}
		return result; 
	}

	@Override
	public ServiceResult createEmployee(CompanyVO cmp) throws Exception {
		ServiceResult result = null;
		return result = dao.insertEmployee(cmp) > 0? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult createAdmin(CompanyVO cmp) {
		ServiceResult result = null;
		return result = dao.insertAdmin(cmp) > 0? ServiceResult.OK : ServiceResult.FAIL;		
	}

	@Override
	public ServiceResult duplicateCheck(CompanyVO cmp) {
		return dao.check(cmp) == 0 ? ServiceResult.OK : ServiceResult.PKDUPLICATED;
	}
}
