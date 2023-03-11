pipeline {
    agent any
    environment { 
        OUTPUT_PATH = '/tmp/output'
    }
    stages {
        stage("setup") {
            steps {
                sh 'apt-get update -y'
                sh 'apt-get install -y ruby-dev gcc g++ make'
                sh 'gem install jekyll bundler minima'
            }
        }
        stage("build") {
            steps {
                sh 'jekyll build -q -s ./www -d ${env.OUTPUT_PATH}'
            }
        }
    }
}