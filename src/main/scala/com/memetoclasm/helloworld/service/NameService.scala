package com.memetoclasm.helloworld.service

import org.springframework.stereotype.Service

trait Name {
  def name: String
}

@Service
class NameService extends Name {

  override def name = "ZOLA"

}
