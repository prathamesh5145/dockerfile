FROM centos:7
RUN curl -sL https://rpm.nodesource.com/setup_14.x bash -
RUN source ~/.bashrc
RUN yum install -y nodejs
COPY devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm" , "start"]