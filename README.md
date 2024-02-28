# Product API Project.

## THIS IS A DEMO/TEST APPLICATION! 
- Security is not a factor for this application as it is for testing/demo purposes only.
- It is an on-going project and I will be updating this repository with changes.

### About The Application. 

This application was created as part of a Udemy spring-Cloud Fundamentals Course.

It is a Spring REST API using Maven to manage the build and dependencies and performs C.R.U.D Operations (Create, Read, Update and Delete) on a Database. 

I have added extra CRUD methods to the API and created my own MySQL database and loaded it with randomly generated product data. The product data is tech product related and has been generated randomly with the help of ChatGPT and Google Gemini.


### Updates. 
- The application has been successfully deployed on AWS EC2 Instances(Virtual Machines), as a Two Tier Architecture. This means the database was deployed onto an EC2 Instance and the API was then deployed onto a separate EC2 Instance.

- The application has been successfully deployed within an AWS VPC(Virtual Private Cloud), launching the Database on a private subnet and controlling access via security groups. The api was launched on a public subnet with a public route table and internet gateway directing public traffic into the public subnet and allowing access to our application via security groups. 

