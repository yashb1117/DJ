pipeline{
    agent any
    tools{
        jdk 'JDK11'
        
    }
    stages{
        stage('git checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/yashb1117/DJ.git'
            }
        }

    
        stage('Dockerbuild and tag'){
            steps{
                sh "docker build -t yashb1117/project-2 ."
            }
        }
        stage('containerie'){
            steps{
                sh "docker run -it -d -p 9005:8080 yashb1117/project-2 "
            }
        }           

        stage('Docker Login') {
            steps {
                script {
                    withCredentials([usernamePassword(
                        credentialsId: 'dockerhub-credentials',
                        usernameVariable: 'DOCKERHUB_USERNAME',
                        passwordVariable: 'DOCKERHUB_PASSWORD'
                    )]) {
                        sh 'echo $DOCKERHUB_PASSWORD | docker login -u $DOCKERHUB_USERNAME --password-stdin'
                    }
                }
            }
        }
        stage('Dockerpsuh'){
            steps{
                sh "docker push yashb1117/project-2 "
            }
        }    
    }
}
