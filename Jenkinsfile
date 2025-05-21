pipeline{
    agent any
    tools{
        jdk 'java-11'
        maven 'maven'
    }
    stages{
        stage('git checkout'){
            steps{
                git branch: ' ', urls: ''
            }
        }

        stage('compile'){
            steps{
                sh "mvn compile"
            }
        }
        stage('Build'){
            steps{
                sh "mvn clean install"
            }
        }
        stage('Dockerbuild and tag'){
            steps{
                sh "docker build -t manojkrishnappa/project-1 ."
            }
        }
        stage('containerie'){
            steps{
                sh "docker run -it -d -p 9000:8080 manojkrishnappa/project-1 "
            }
        }           

        stage('Dockerlogin'){
            steps{
                sh "docker run -it -d -p 9000:8080 manojkrishnappa/project-1 "
            }
        }    
        stage('Dockerpsuh'){
            steps{
                sh "docker push manojkrishnappa/project-1 "
            }
        }    
    }
}