FROM ubuntu:lates

# Step 2: Download and install dependency

RUN apt update -y
RUN apt upgrade -y
RUN apt install mc -y

# Step 3: Tell the image what to do when it starts as container

CMD ["/bin/bash"]