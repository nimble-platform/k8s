node ('nimble-jenkins-slave') {

  stage('Download Latest') {
        git(url: 'https://github.com/nimble-platform/k8s.git', branch: 'new-cluster')
  }
    
  stage ('Deploy') {
        sh 'kubectl apply -f ingress-prod-rules.yaml -n prod --validate=false'
  }
}
