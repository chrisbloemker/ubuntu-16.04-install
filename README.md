# ubuntu-16.04-install

## Description

Just a basic script to help automate the deployment of my 16.04 LTS servers with a Docker CE environment. 
This script does a few things, I will be adding more functionality down the road. 
This script **must** be run with root permissions.

## Installation 

To install, clone this repository:
`git clone https://github.com/chrisbloemker/ubuntu-16.04-install.git`

Open the root directory:
`cd ubuntu-16.04-install/`

Make the script executable:
`sudo chmod u+x docker01.sh`

Run the script:
`./docker01.sh`

## Changes in 1.02

Removed "sudo".
Added variables for current user.
Script now requires to be run as root.

## License

Yeah I'm sure I'll put something fancy here.
