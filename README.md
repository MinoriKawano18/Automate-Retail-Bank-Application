## Purpose
The purpose of this project is to deploy Elastic Bank, a retail bank application to the cloud using AWS services, in addition to ensuring a successful automation through the CI/CD pipeline. This streamlines the deployment process, and reduces the need for manual intervention throughout the building, testing, and deploying process. 

## Steps
1) Created an t2.micro EC2
Needed to create an EC2 instance first before cloning the repository so as to have a place to clone the repository. 

2) Cloned the repository from workload 2 into my repository
Used git clone 

3) Set up the AWS Access Keys
AWS Access Keys allow software or scripts to launch servers, upload files, and access databases in your AWS account. They are important when using AWS services through the AWS CLI (Command Line Interface) and APIs.

<img width="749" alt="Screenshot 2024-08-17 at 11 43 06 AM" src="https://github.com/user-attachments/assets/ff352580-8d31-4d74-9378-7d096b0095b5">

5) Install Jenkins on the EC2 terminal
Installing Jenkins on the AWS EC2 terminal allows developers to use the cloud to build applications through the CI/CD pipeline. 

6) Created a bash script that checked for memory usage.
Used conditional statements that utilized exit codes 0 or 1 if a resource exceeds a threshold. 0 = Successful execution, 1 = failed execution/ threshold exceeded
Exit codes are important in the CI/CD pipeline especially in automation. They allow the pipeline to have clear indications of whether different steps in the pipeline succeed and whether certain limitations exceeded the boundaries set. In this case, the exit codes used notified us whether system resources exceeded the boundaries set and whether the pipeline would be successful. It allows for quicker reconfiguration in the testing stages. 

## Issues/Troubleshooting
Experienced an issue with this step when trying to push my script to the repository as I accidentally cloned my repository within the existing repository that was on the EC2 terminal. This uploaded the script twice.

6) Created a multibranch pipeline in Jenkins that could be connected to github
Jenkins is an open source automation server that is free for users and is customizable depending on the needs of an application. Jenkins is important in the automation stage of the CI/CD pipeline and allows developers to build, test, and deploy applications. In this stage, Jenkins pulled the code from the github repository that was connected, ran tests and generated the build to the retail bank application that we need. 
Used sudo cat /var/lib/jenkins/secrets/initialAdminPassword
Needed to use sudo to overwrite the permissions needed to view the passcode needed to connect the EC2 instance using the public IP address

7) Installed AWS CLI on the Jenkins Server
AWS Command Line Interface (CLI) is a tool used in automation scripts that is useful for deploying applications through services like AWS EC2. In this case, the previously installed Jenkins server can now in conjunction with AWS CLI enable and manage automation of cloud-related tasks in the CI/CD pipeline. 

8) Switched to “Jenkins” user
Switched to the Jenkins user that was previously installed on the EC2 terminal. Used sudo to overwrite limitations in permissions in order to create a password for security and to actively switch into the Jenkins user rather than the original Ubuntu user, where the application can be automated. 
# Used cd workspace where the multibranch pipeline created on the Jenkins user interface exists within the Jenkins user that was connected to the EC2 terminal

9) Activated the Python Environment
A virtual environment is a self contained directory used to create isolated environments for different projects and assists in managing the bins and libraries needed for an application. This prevents conflicts with configuration drift, and ensures that the pipeline uses the same dependencies in the Python environment as well as from the project’s external code. This creates a stable and controlled environment where building, testing, and deploying runs smoothly. 

10) Installed AWS EB CLI on the Jenkins Server
AWS Elastic Beanstalk (EB) is a Platform-as-a-service tool that simplifies the deployment, management, and scaling steps of an application. Integrating the EB CLI with Jenkins allows you to create automated workflows that build, test, and deploy the application to Elastic Beanstalk environments. Jenkins can use the EB CLI to trigger deployments automatically whenever changes are pushed to the repository.

11)  Configured AWS CLI
Used aws configure command
This sets up the necessary credentials, region, and output format for interacting with AWS services from the command line. This setup is crucial for ensuring that the CLI commands are authenticated, properly directed to the correct region

12) Initialized AWS Elastic Beanstalk CLI
Used eb init command
This step configures AWS credentials, application settings, and environment details, allowing you to deploy and manage your application. This setup is crucial for integrating EB CLI into the deployment workflow.

13) Deploy the Jenksinsfile
Edited the Jenkinsfile within the Github repository and committed the changes with the right syntax in order to effectively begin deploying the application. The Jenkinsfile provided code regarding the Building, Testing, and Deploying stages of the pipeline. 

14) Deployed the application to AWS EB 

## Issues/Troubleshooting
<img width="1169" alt="Screenshot 2024-08-17 at 2 17 04 PM" src="https://github.com/user-attachments/assets/53d00cf3-b5a8-4716-83fd-5f5188a4f197">

The previously mentioned issue in step 5 created a failure in the building stage. In order to address this issue, I needed to remove the redundant repository that was embedded previously. I did this using the rm -rf command that deletes files and directories forcefully. In addition I used git -rm to remove this file from the repository. 

<img width="1400" alt="Screenshot 2024-08-17 at 2 44 26 PM" src="https://github.com/user-attachments/assets/cbe66c58-a895-4558-898b-2c99aced27fc">
<img width="1400" alt="Screenshot 2024-08-17 at 2 44 34 PM" src="https://github.com/user-attachments/assets/1a09f9a2-c39d-462c-b291-54e025839745">

## Success
With the removal of the submodule, the build was successful and the application was deployed. 

<img width="1400" alt="Screenshot 2024-08-17 at 2 37 58 PM" src="https://github.com/user-attachments/assets/fbec0496-bc30-4579-9845-f38e75b1b538">
<img width="1400" alt="Screenshot 2024-08-17 at 2 37 07 PM" src="https://github.com/user-attachments/assets/20ce9a00-da68-44ef-a2f2-8181e47d850e">

## How the CICD Pipeline Increases Business Efficiency
Automates and optimizes the software development lifecycle
Accelerates development and deployment processes
Reduces manual errors by automating repetitive tasks
Enables better resource management

## Potential Issues 
Automated deployments might fail due to issues with dependencies, such as mismatched versions or missing packages.
Resolution: Using tools like a Python Environment
Automating deployments can expose sensitive data or introduce vulnerabilities in security
Resolution: 
Implement strict access controls and permissions to limit who can deploy to production.

## Conclusion
This project ultimately helped me to realize how intensive the CI/CD pipeline can really be. Each step is crucial in deploying a fully functional application. It is important to be aware of where issues might arise and how to troubleshoot it. 
