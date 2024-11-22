pipeline {
    agent any

    environment {
        EMAIL = "${env.EMAIL}"  // Variável de ambiente para o e-mail
    }

    stages {
        stage('Clonar Repositório') {
            steps {
                git url: 'https://github.com/seu_usuario/meu_projeto_ci_cd.git', credentialsId: 'credenciais_github'
            }
        }

        stage('Instalar Dependências') {
            steps {
                sh 'pip3 install -r requirements.txt || true' // Se necessário, altere com suas dependências
            }
        }

        stage('Executar Testes') {
            steps {
                sh 'python3 -m unittest discover app'  // Descobre e executa os testes na pasta "app"
            }
            post {
                always {
                    archiveArtifacts artifacts: '**/test-reports/*.xml', allowEmptyArchive: true  // Guarda os resultados dos testes
                }
            }
        }

        stage('Build') {
            steps {
                echo 'Realizando o build (simulação de empacotamento)'
                // Aqui, adicione comandos específicos do seu projeto, se houver empacotamento real
            }
        }

        stage('Notificar Usuário') {
            steps {
                script {
                    sh 'bash enviar_email.sh'  // Chama o script de e-mail (que vamos criar a seguir)
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline executado!"
        }
    }
}
