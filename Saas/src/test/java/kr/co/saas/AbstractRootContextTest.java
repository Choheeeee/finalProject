package kr.co.saas;

import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@SpringJUnitWebConfig(locations = "file:src/main/resources/kr/co/saas/spring/conf/*-context.xml")
public abstract class AbstractRootContextTest {

}
	