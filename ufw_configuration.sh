#!/bin/bash

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow ssh
sudo ufw deny http
sudo ufw allow https
sudo ufw deny from 192.168.1.200

sudo ufw --force enable

sudo ufw status verbose
