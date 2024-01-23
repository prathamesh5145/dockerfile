FROM centos:7
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
RUN nvm install node
COPY devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm" , "start"]