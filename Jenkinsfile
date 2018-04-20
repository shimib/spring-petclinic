pipeline {
   agent any
   tools {
       jdk "jdk8"
       maven "the_maven"
       packer "packer"
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
       stage('Create Packer AMI') {
         steps {
            sh 'packer build -var aws_access_key=AKIAI6YWZ6GJ5DGMIO6A -var aws_secret_key=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 packer.json'
         }
       }
   }
}
