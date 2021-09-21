pipeline {
    
   agent any
  
   stages {
     
    stage('代码拉取') {
	 steps {
	      sh 'git cone https://github.com/tuwei1314/tomcat-demo.git'
	     
	    }
	}
     stage('代码编译'){
	 steps {
       sh '''
       /usr/local/maven3.8.2/bin/mvn clean compile
       '''
   
    }
   }
   stage('单元测试'){
     steps {
       sh '/usr/local/maven3.8.2/bin/mvn test'
	   }
   }
    stage('code build'){
     steps {
       sh '/usr/local/maven3.8.2/bin/mvn clean install'
	   }
   }
   
       stage ('是否部署SIT环境') {
     steps {
	     input '是否部署'
	  }
   }
    stage ('部署SIT环境') {
     steps {
	     echo "SIT " 
	  }
   }
   
    stage ('自动化测试') {
     steps {
	     echo "auto test " 
	   }
   }
    stage('SIT部署完成邮件通知') {
      steps {
	     echo "mail"
	     }
	  }
   
   
   }
  }