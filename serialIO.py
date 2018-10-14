import serial
import time

ser = serial.Serial('COM15', 115200, timeout=1)
# unit of timeout is sec
#ser.open()  #-> no need to open when initialized with serial.Serial(...)
print("snd:st23ed")
for num in range(1,100):
    ser.write("st23ed".encode())
    time.sleep(0.01)

rcvText = ser.readline(10)
print("rcv:")
print(rcvText)



