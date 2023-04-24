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
        stage('Run') {
            steps{
                sh """
                    cd test_cicd
                    nohup python3 manage.py runserver 0.0.0.0:8000
                   """
            }
        } 
                
            }
}