package com.memetoclasm.helloworld.service

import org.springframework.stereotype.Service

trait Angular {
  def name: String
}

@Service
class AngularService extends Angular {

  override def name: String = "Angular Guy"

}
