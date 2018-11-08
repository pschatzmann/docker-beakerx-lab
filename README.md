# docker-beakerx-lab
Dockerfile for Jupyter Lab with BeakerX kernel

- Based on the image continuumio/anaconda3 we add the latest version of BeakerX.
The work directory is set to /home/beakerx
- Jupyter is executed as root: This way it is very simple to add additional packages with pip or conda w/o the need for any sudo password
- For executing the containter see the included example docker-compose.yml or execute with 

        docker run -p <yourPort>:8888 pschatzmann/beakerx-lab:1.2.0

