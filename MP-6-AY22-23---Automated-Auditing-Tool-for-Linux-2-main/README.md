# MP-6-AY22-23---Automated-Auditing-Tool-for-Linux-2
This is an experimental project. 

## Description 
This tool was created with hopes of easing the auditing process and effectively generating a clear and concise report for
users to identify non-compliances within their systems. 

In this file, you will find codes pertaining to the use of the [Ubuntu 20.04 CIS Benchmark](https://www.cisecurity.org/benchmark/ubuntu_linux). 

## What is benchmarking and how does it concern you? 
Benchmarking is required to make sure the system is properly configured to reduce the attack surface area an adversary may be able to exploit. Center for Internet Security (CIS) would serve as the standard. The focus of CIS is system configuration rather than firewalls or endpoint hardening. Furthermore, CIS does not adhere to national regulations like HIPPA in the United States. Finally, governments, companies, industrial organisations, and academic institutions all recognise CIS. 

CIS is acknowledged throughout the world because it does not adhere to a national norm. There are several distinct aspects of CIS benchmarking that need to be examined. Performing the benchmarking manually would take a lot of time, and because of the workload, human error is bound to creep in. Someone could make a typo in command causing it to not be executed as intended.

## Prerequisites needed to run the scripts
1. Ensure that [gnumeric](https://www.unixmen.com/install-gnumeric-1-12-23-on-ubuntu-15-04/) is installed 
2. Ensure that auditors are running the script as root 
3. Ensure that a directory called '/script/' is created

## How a script that ran successfully should look like
Successful audit run: https://youtu.be/bQWgk8ThTV0
