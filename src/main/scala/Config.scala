package com.memetoclasm.helloworld

import org.springframework.context.annotation.{Bean, ComponentScan}
import org.springframework.web.servlet.view.{InternalResourceViewResolver, JstlView}

@ComponentScan(basePackages = Array("com.memetoclasm.helloworld"))
class Config {

  @Bean
  def viewResolver = {
    val viewResolver = new InternalResourceViewResolver
    viewResolver.setViewClass(classOf[JstlView])
    viewResolver.setPrefix("/WEB-INF/views/")
    viewResolver.setSuffix(".jsp")
    viewResolver
  }
}

