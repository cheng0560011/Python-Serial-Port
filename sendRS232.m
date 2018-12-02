close all; clc; close all;
delete(instrfind)

scom = serial('COM5','BaudRate',115200);
fopen(scom);
sendPackage = ['st' 10 'ed']

for i = 1:1:100
    fwrite(scom, sendPackage);
    pause(0.1);
end
