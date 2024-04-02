package kr.co.saas.intro;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.saas.cmp.service.CmpService;
import kr.co.saas.enumpkg.ServiceResult;
import kr.co.saas.vo.CompanyVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/introduce")
public class introduceController {
	
	@Inject
	CmpService service;

	@GetMapping
	public String introduce() {
		return "aa/b/c/index";
	}

	@GetMapping("form")
	public String membershipForm() {
		return "aa/b/c/membershipForm";
	}
	@PostMapping("form")
	public String regiCmp(
			@ModelAttribute("cmp") CompanyVO companyformData,
			String cmpCptlString,
			Model model
		) throws Exception {
			String result ="";
			log.info("잘들어왔나???? : {}", cmpCptlString);
			companyformData.setCmpCptl(Integer.parseInt(cmpCptlString.replace(",","")));
			
			log.info("잘들어갔나???? : {}", companyformData);
			ServiceResult companyResult  = service.createCompany(companyformData);
			if (companyResult == ServiceResult.OK) {
				result =  companyResult.name(); // 성공적으로 회사와 사원 정보가 등록됨을 의미
	        } else {
	        	result =  companyResult.name(); // 등록 중 오류 발생
	        }
			model.addAttribute("result",result);
			return "jsonView";
	}
	
	@PostMapping("check")
	@ResponseBody
	public ServiceResult checkDup(
			@ModelAttribute("cmp") CompanyVO companyformData
			) {
		return service.duplicateCheck(companyformData);
	}
}
