FROM centos:7
RUN curl –sL https://rpm.nodesource.com/setup_10.x | sudo bash -
RUN sudo yum install -y nodejs
COPY devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm" , "start"]