# vernacular-assignment
# vernacular-assignment
# since I use aws linux  by creating ec2 instances  so i created instance of linux with Docker pre-installed in it  now getting into the instance we can check wether the service is active or not with command
[             ]$ service docker status
# now we have to create docker image of ubuntu 16.04 with having packages like "telnet" ,"curl","ffmpeg" so we can not pull this type of docker image from docker hub because these type of costumized image is not available in docker hub so we have to costume a docker file as per our requirement and write our dependencies and code in the file  and when we will build the file we will get cosumized docker image .For that We have to create docker file named as "Dockerfile" and write our code there
[             ]$ vi Dockerfile
# when vi editor opens we have to write the code as 
FROM ubuntu:16.04
FROM python:3.8-slim-buster
RUN apt-get  update && apt-get install telnet
RUN apt-get update && apt-get install -y   curl
RUN apt-get update && apt-get install -y ffmpeg
CMD /bin/bash
# now the 7th line  "FROM" is used to create the base image that is here ubuntu and the specific version is given by using ":"
# after  having the O.S(operating system ) the only we can have our have Python on whic we can install packages  so for that we have create python  having the version and the self-buster as it is easy to use and got all the benefits of debian buster
# the 9th line "RUN" is to execute the command on the specefic O.S (here ubuntu) then the command for update and install for ubuntu starts with apt-get so for three packages "telnet", "curl","ffmpeg" the command  lime 9,10,11 as follows.
# now  to run the container we use "CMD" and should launch with bash so path given as "/bin/bash"
# now to build the image from this docker file next command would be 
[               ]$ docker build -t image1 .
# here -t is used for giving specific tag and the name of image we want to create as per we want as "image1" then the "." .
# to check the created image the command would be 
[               ]$ docker images 
# now to build the container we want from the image "image1" the command would be
[                 ] $ docker run -it --name container image1  /bin/bash
# here the container name we gave as "container"  created from image1  in the directory bin/bash now after applying this command we would be directly in the contanier
     #
# we can do ls to see directories and the we can check packages using command like
      # which telnet
# it will show location of package if present 
      # which curl
# now same for curl and we can check version using command 
       # curl --version
 # we can perform same command for ffmpeg as well
        # which ffmpeg
        # ffmpeg -version
        
 # we can go to directory /usr/bin and ls to check if the package are present or not
       #cd  /usr/bin
       usr/bin# ls 
       
       
 # then we can exit from it using "exit"  and stop the container
