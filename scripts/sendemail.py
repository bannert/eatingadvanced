#!/usr/bin/python
#-*- coding: utf-8 -*-

import smtplib
import sys

email_to = sys.argv[1]
username = 'bannertrazer@gmail.com'
password = 'F6Xs6aaV6U7gWjj6'

smtpserver = smtplib.SMTP("smtp.gmail.com", 25)
smtpserver.ehlo()
smtpserver.starttls()
smtpserver.login(username, password)
header = 'To:' + email_to + '\n' + 'From: ' + username + '\n' + 'Subject: Passwort vergessen\n'
msg = header + sys.argv[2].replace('+',' ')
smtpserver.sendmail(username, email_to, msg)
smtpserver.close()
print('Email gesendet')
