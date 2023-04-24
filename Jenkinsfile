pipeline{
    agent any
    stages {
        stage('test script run'){
                steps{
                sh """
                    chmod +x test_script.sh
                    ./test_script.sh
                   """
                }
        }
                
            }
}