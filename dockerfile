FROM centos:7
RUN yum update
RUN yum install nodejs -y
RUN yum install npm -y
RUN yum -y install curl git
WORKDIR /
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm", "start"]