package kr.ac.hansung.cse.controller

import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import javax.servlet.http.HttpServletRequest

@Controller
class HomeController {
    @GetMapping("/")
    fun home(request: HttpServletRequest?): String {
        return "home"
    }

    companion object {
        private val logger: Logger = LoggerFactory.getLogger("kr.ac.hansung.controller.HomeController")
    }
}