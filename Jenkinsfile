pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                git url: 'https://ciber-11.ciber-egibide.eu/gitea/web/website.git', branch: 'master'
                sh 'jekyll build -q -s ./www -d ~/output/web'
            }
        }
    }
}