#!/bin/bash

echo '============================================================='
echo '$                                                           $'
echo '$                      liumapp                              $'
echo '$                                                           $'
echo '$                                                           $'
echo '$  email:   liumapp.com@gmail.com                           $'
echo '$  homePage:http://www.liumapp.com                          $'
echo '$  Github:  https://github.com/liumapp                      $'
echo '$                                                           $'
echo '============================================================='
echo '.'

title=liumapp

#./docker-eureka/install-docker.sh
#sleep 3
./docker-gateway/install-docker.sh
sleep 3
./docker-config/install-docker.sh
#sleep 3
#./docker-weba/install-docker.sh
#sleep 3
#./docker-webb/install-docker.sh