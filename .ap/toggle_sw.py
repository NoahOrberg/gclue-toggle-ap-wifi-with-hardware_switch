import RPi.GPIO as GPIO
import time
import os

LEDPIN = 4
SWPIN = 5   #LimitSwitch pin


GPIO.setwarnings(False)
GPIO.setmode( GPIO.BCM )
GPIO.setup( LEDPIN, GPIO.OUT )
GPIO.setup( SWPIN, GPIO.IN)

if(GPIO.input(SWPIN) ):
    os.system("echo 1 > /home/pi/.ap_mode")
else:
    os.system("echo 0 > /home/pi/.ap_mode")


