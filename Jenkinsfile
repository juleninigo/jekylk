pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                git url: 'http://ciber-11.ciber-egibide.eu/gitea/ciber_11/website.git', branch: 'master'
                sh 'printenv'
                sh 'pwd'
                sh 'ls -la'
                sh 'jekyll build -q -s ./www -d ~/output/web'
            }
        }
    }
}