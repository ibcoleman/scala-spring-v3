package com.memetoclasm.helloworld

import org.springframework.context.annotation.{Configuration, Bean, ComponentScan}
import org.springframework.web.servlet.ViewResolver
import org.springframework.web.servlet.config.annotation.{EnableWebMvc, DefaultServletHandlerConfigurer, ResourceHandlerRegistry, WebMvcConfigurerAdapter}
import org.springframework.web.servlet.view.tiles3.{TilesViewResolver, TilesConfigurer}

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = Array("com.memetoclasm.helloworld"))
class Config extends WebMvcConfigurerAdapter {

  @Bean
  def getTilesViewResolver: ViewResolver = {
    val resolver:TilesViewResolver = new TilesViewResolver()
    resolver.setContentType("text/html")
    resolver
  }

  @Bean
  def getTilesConfigurer: TilesConfigurer = {
    val configurer:TilesConfigurer = new TilesConfigurer()
    configurer.setCheckRefresh(true)
    configurer.setDefinitions({"/WEB-INF/tiles.xml"})
    configurer
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

