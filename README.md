step 1 : change the path to frontend folder

eg : cd C:\Users\adsug\Downloads\docker_project-main\MAIN\TCE_CANTEEN\frontend


step 2 : docker build -t my-frontend-image .  

step 3 : docker run -d -p 80:80 --name my-frontend-container my-frontend-image


step 4 : open the docker desktop go to the container , click om the port , it will direct to the website .


