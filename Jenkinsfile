pipeline {
    agent any

    environment {
        DOCKER_ACCESS_TOKEN = credentials('docker-hub')
    }

    stages{
        stage('preparation') {
            steps {
                git 'https://github.com/ikaushikdas/example-node-app.git'
            }
        }
        // stage('Build Docker Image'){
           
        //     steps{
        //         script {
        //         dockerImage = docker.build("example-node-app:${BUILD_NUMBER}")  
        //         //dockerImage = docker.build("examplenode-app:latest")    
        //         }  

        //     }
        // }
        stage('Build Docker Image'){
           
            steps{
                sh 'docker build -t ikaushik96/example-node-app:$BUILD_NUMBER .'
            }  

        }
        stage('Login to DockerHub'){
           
            steps{
                sh 'echo $DOCKER_ACCESS_TOKEN_PSW | docker login --username $DOCKER_ACCESS_TOKEN_USR --password-stdin'
            }  

        }
        stage('Publish to DockerHub'){
           
            steps{
                sh 'docker push ikaushik96/example-node-app:$BUILD_NUMBER'
            }  

        }
        
        
        stage('Remove Image'){
           
            steps{
                    //sh 'docker rmi -f 116361412831.dkr.ecr.ap-south-1.amazonaws.com/node-app:latest'
                    sh 'docker rmi -f ikaushik96/example-node-app:$BUILD_NUMBER'

                } 

        }
        
    }
}