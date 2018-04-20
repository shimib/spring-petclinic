pipeline {
   agent any
   tools {
       jdk "jdk8"
       maven "the_maven"
   }
   stages {
       stage("Build"){
         steps {
             sh "mvn clean package"
         }
         post {
             success {
                 junit "target/surefire-reports/**/*.xml"
             }
         }
       }
   }
}
