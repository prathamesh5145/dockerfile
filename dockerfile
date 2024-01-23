FROM centos:7
ADD https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh ./
RUN https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN source ~/.bashrc
RUN nvm install v16.14.0
RUN nvm use 16.14.0
COPY devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm" , "start"]