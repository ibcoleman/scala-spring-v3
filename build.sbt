name := "scala-spring-v3"

version := "1.0"

scalaVersion := "2.10.2"

seq(webSettings : _*)

libraryDependencies ++= Seq(
  "org.springframework" % "spring-web" % "4.1.1.RELEASE",
  "org.springframework" % "spring-webmvc" % "4.1.1.RELEASE",
  "jstl" % "jstl" % "1.2",
  "org.apache.tiles" % "tiles-core" % "3.0.4" % "container, compile",
//  "org.apache.tiles" % "tiles-extras" % "3.0.4",
  "org.apache.tiles" % "tiles-jsp" % "3.0.4",
  "org.apache.tiles" % "tiles-api" % "3.0.4",
  "org.apache.tiles" % "tiles-servlet" % "3.0.4",
//  "org.apache.tiles" % "tiles-template" % "3.0.4",
//  "org.apache.tiles" % "tiles-el" % "3.0.4",
//  "org.apache.tiles" % "tiles-request" % "1.0.6",
//  "org.apache.tiles" % "tiles-request-api" % "1.0.6",
//  "org.apache.tiles" % "tiles-request-jsp" % "1.0.6",
//  "org.apache.tiles" % "tiles-request-servlet" % "1.0.6",
  "log4j" % "log4j" % "1.2.17",
  "org.slf4j" % "slf4j-api" % "1.7.7",
  "org.slf4j" % "slf4j-log4j12" % "1.7.7",
  "commons-digester" % "commons-digester" % "2.1",
  "commons-beanutils" % "commons-beanutils" % "1.8.3",
  "org.eclipse.jetty" % "jetty-webapp" % "9.1.0.v20131115" % "container, compile",
  "org.eclipse.jetty" % "jetty-jsp" % "9.1.0.v20131115" % "container"
)
