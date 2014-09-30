package com.memetoclasm.helloworld

import org.springframework.context.annotation.{Configuration, Bean, ComponentScan}
import org.springframework.web.servlet.config.annotation.{EnableWebMvc, DefaultServletHandlerConfigurer, ResourceHandlerRegistry, WebMvcConfigurerAdapter}
import org.springframework.web.servlet.view.{InternalResourceViewResolver, JstlView}

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = Array("com.memetoclasm.helloworld"))
class Config extends WebMvcConfigurerAdapter {

  @Bean
  def viewResolver = {
    val viewResolver = new InternalResourceViewResolver
    viewResolver.setViewClass(classOf[JstlView])
    viewResolver.setPrefix("/WEB-INF/views/")
    viewResolver.setSuffix(".jsp")
    viewResolver
  }

  @Override
  override def addResourceHandlers( registry : ResourceHandlerRegistry ) = {
    registry.addResourceHandler("/resources/**").addResourceLocations("/resources/")
  }

  @Override
  override def configureDefaultServletHandling( configurer : DefaultServletHandlerConfigurer ) {
    configurer.enable()
  }
}

