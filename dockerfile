FROM dokken/ubuntu-20.04
RUN apt update
RUN apt install nodejs -y
RUN apt install npm -y
COPY devops-fullstack-app /
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install 
CMD ["npm", "start"]