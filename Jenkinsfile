pipeline {
  agent { 
    label 'ansible'
  }
  
  environment {
    AWS_EC2_PRIVATE_KEY = credentials('ec2-ansible-key')
  }
  
  stages {
    
    stage('CheckOutCode') {
      steps {
        sh 'whoami'
        sh 'hostname -i'
        git branch: 'master', credentialsId: 'bdb58e8d-b34f-4ba7-a6fa-ef908eb81320', url: 'https://github.com/PROJECTS-FOR-DEVOPS/dynamic-cloud-infra-jenkins-terraform-ansible.git'
      }
    }

    stage('CreateServers') {
      steps {
        sh 'terraform -chdir=terraformscripts init'
        sh 'terraform -chdir=terraformscripts apply --auto-approve'
      }
    }

    stage('RunPlaybook') {
      steps {
        sh 'whoami'
        
        // Just for verification
        sh 'ansible-inventory -i inventory/aws_ec2.yaml --graph'
        
        // Run playbook only on Jenkins and worker_node groups
        sh """
          ansible-playbook -i inventory/aws_ec2.yaml playbooks/pingServers.yaml \
            -u ec2-user \
            --private-key=$AWS_EC2_PRIVATE_KEY \
            --limit terraformserver \
            --ssh-common-args='-o StrictHostKeyChecking=no'
        """
      }
    }
  }
}
