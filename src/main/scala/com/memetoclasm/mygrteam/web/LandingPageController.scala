package com.memetoclasm.mygrteam.web

import com.memetoclasm.mygrteam.service.{Name, Angular}
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

  @RequestMapping(value= Array("/mygrteam"), method = Array(RequestMethod.GET))
  def mygrteam(model: Model) = {
    model.addAttribute("name", angularService.name)
    "mygrteam"
  }

  @RequestMapping(value= Array("/mygrteamwf"), method = Array(RequestMethod.GET))
  def mygrteamwf(model: Model) = {
    model.addAttribute("name", angularService.name)
    "mygrteamwf"
  }
}
