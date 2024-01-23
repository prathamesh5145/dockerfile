FROM dokken/ubuntu-20.04
RUN apt update
RUN apt install nodejs -y
RUN apt install npm -y
RUN yum -y install curl git
WORKDIR /
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm", "start"]