
FROM centos:7
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install nodejs -y
RUN yum install npm -y
COPY /root/dockerfile/devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
EXPOSE 3000
RUN npm install 
CMD ["npm", "start"]