node ('nimble-jenkins-slave') {

  stage('Download Latest') {
        git(url: 'https://github.com/nimble-platform/k8s.git', branch: 'master')
  }
    
  stage ('Deploy') {
        sh 'kubectl apply -f ingress-rules.yaml -n prod --validate=false'
  }
}
