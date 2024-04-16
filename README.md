# hypernative devops task 

### Instructions
- Find what can be improved in the codebase
- Create a CI flow on top of this codebase using GitActions which includes:
  - Unit tests
  - Publish the Docker image to ECR (or possibly another registry)
  - Linting (bonus)
  - Vulnerability scanning (bonus)
  - Import sort (bonus)
- Create a Terraform script to deploy the lambda to AWS:
  - Make it so the lambda is triggered every 1 minute
  - Create an alarm if the lambda fails with an error
- Commit the Terraform script to the repository as well
- Run the CI/CD pipeline and verify everything is working as expected
- Examine the logs of the lambda, verifying everything is correct