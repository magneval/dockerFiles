launch it with the following command :
docker run -d -p 3128:3128 your register-name-here
add a proxy in your browser or in your other Docker machine
docker -e HTTP_PROXY=http://your_machine_IP:3128 ....
