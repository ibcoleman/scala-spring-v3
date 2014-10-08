name := "scala-spring-v3"

version := "1.0"

scalaVersion := "2.10.2"

seq(webSettings : _*)

libraryDependencies ++= Seq(
  "org.springframework" % "spring-web" % "4.1.1.RELEASE",
  "jstl" % "jstl" % "1.2",
  "org.apache.tiles" % "tiles-core" % "3.0.4" % "container, compile",
  "org.eclipse.jetty" % "jetty-webapp" % "9.1.0.v20131115" % "container, compile",
  "org.eclipse.jetty" % "jetty-jsp" % "9.1.0.v20131115" % "container",
  "com.typesafe.akka" %% "akka-camel" % "2.4-SNAPSHOT",
  "org.apache.camel" % "camel-jetty" % "2.14.0",
  "org.apache.camel" % "camel-quartz" % "2.14.0"

)
