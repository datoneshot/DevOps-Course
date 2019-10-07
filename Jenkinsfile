pipeline {
    
    agent {
        label "DatDN4"
    }
    
    environment {
        PROJECT_URL         = "https://github.com/datoneshot/codestar-demo.git"
        PROJECT_BRANCH      = "master"
    }
    
    stages {
 
        stage ("Checkout SourceCode") {
            steps {
                checkout([$class: 'GitSCM',
                            branches: [[name: '*/master']],
                            doGenerateSubmoduleConfigurations: false,
                            extensions: [], submoduleCfg: [],
                            userRemoteConfigs: [[url: 'https://github.com/datoneshot/codestar-demo.git']]])
            }
 
        }
 
        stage ("Build") {
            steps {
                sh "mvn -f pom.xml compile"
                sh "mvn -f pom.xml package"
            }
        }
        
        
        stage ("Deploy") {
            steps {
                sh "rm -rf /opt/tomcat/webapps/ROOT"
                sh "cp ./target/ROOT.war /opt/tomcat/webapps"
                sh "/opt/tomcat/bin/shutdown.sh"
                sh "/opt/tomcat/bin/startup.sh"
            }
        }

    }
}