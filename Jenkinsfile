pipeline {
    agent { label 'jekyll' }
    stages {
        stage("build") {
            steps {
                sh 'pwd'
                sh 'ls -la'
                sh 'jekyll build -q -s ./www -d ~/output/web'
            }
        }
    }
}