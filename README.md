# Docker Compose Example

[https://www.roylindauer.com/blog/how-to-use-docker-effectively-as-a-development-tool.html](https://www.roylindauer.com/blogs/how-to-use-docker-compose-effectively-as-a-development-tool.html)

Let's use Docker Compose to help us build software! If you are new to the world of containers then I hope you will find this tutorial insightful. We will explore setting up a new Ruby on Rails project, creating a docker-compose.yml file, then will add services like PostgreSQL and Redis, and finally, running and developing our new application in Docker. 

I choose to use Docker Compose to avoid installing and juggling multiple versions of tools and services on my workstation. For example, let's say you have an application that needs a MySQL database, another that needs PostgreSQL 11, and another that needs PostgreSQL 13. Installing MySQL and PostgreSQL together is easy enough, but trying to run multiple versions of the same database server is a lot harder to do. Aside from any difficulty you may find there you will likely now have services running that you don't actually need consuming precious resources on your workstation. 
