package kr.co.saas.homepage.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class Home {
	
	@GetMapping("main")
	public String home() {
		return "main";
	}
	@GetMapping("member")
	public String member() {
		return "/index/member";
	}
	@GetMapping("faq")
	public String faq() {
		return "/index/faq";
	}
	@GetMapping("analyze")
	public String analyze() {
		return "/index/analyze";
	}
}
