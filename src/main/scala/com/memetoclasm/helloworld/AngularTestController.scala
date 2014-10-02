package com.memetoclasm.helloworld

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.{RequestMapping, RequestMethod}

@Controller
@RequestMapping(Array("/angular"))
class AngularTestController @Autowired() (angularService: AngularService) {

  @RequestMapping(method = Array(RequestMethod.GET))
  def index(model: Model) = {
    model.addAttribute("name", angularService.name)
    "angular"
  }
}
