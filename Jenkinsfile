pipeline {
    agent { label 'jekyll' }
    stages {
        stage("build") {
            steps {
                sh 'jekyll build -q -s ./www -d ~/output/web'
            }
        }
    }
}