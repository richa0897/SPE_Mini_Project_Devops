
pipeline {
  agent any
   environment {
        imageName = ""
  }
  stages {
    stage('GIT CLONE') {
      steps {
        git url: 'https://github.com/richa0897/TestRepo.git', branch: 'main'
      }
    }
    stage('MVN COMPILE') {
      steps {
        echo "Compiling the source Java classes of the project"
		sh "mvn compile"
      }
    }
    stage('MVN TEST') {
      steps {
        echo "Running the test cases of the project"
        sh "mvn test"
      }
    }
    stage('MVN INSTALL') {
      steps {
        echo "building the project and installs the project files(JAR) to the local repository"
        sh "mvn install"
      }
    }
    stage('Build Docker_Image'){
        steps {
            script {
                imageName = docker.build "richavarma/my_docker_repo:latest"
                }
            }
    }
    stage('Push Docker Image')
    {
        steps {
            script{
                docker.withRegistry('','credentials-Id') {
                imageName.push()
                }
            }
        }
    }
    stage('Deploy using Ansible'){
            steps{
                ansiblePlaybook becomeUser: null, colorized: true, disableHostKeyChecking: true, installation: 'Ansible', inventory: 'inventory', playbook: 'p2.yml', sudoUser: null
            }
        }
      
  }
}
