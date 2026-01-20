pipeline {
agent any


triggers {
githubPush()
}


stages {
stage('Checkout') {
steps {
git 'https://github.com/yourname/jenkins-blue-green.git'
}
}


stage('Deploy') {
steps {
sh 'chmod +x deploy.sh'
sh './deploy.sh'
}
}
}
}
