package com.memetoclasm.helloworld.web

import com.memetoclasm.helloworld.service.{Name, Angular}
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.{RequestMapping, RequestMethod}

@Controller
@RequestMapping(Array("/"))
class LandingPageController @Autowired() (nameService: Name, angularService: Angular) {

  @RequestMapping(method = Array(RequestMethod.GET))
  def index(model: Model) = {
    model.addAttribute("name", nameService.name)
    "home"
  }

  @RequestMapping(value= Array("/angular"), method = Array(RequestMethod.GET))
  def angular(model: Model) = {
    model.addAttribute("name", angularService.name)
    "angular"
  }
}
