clear all; clc; close all; delete(instrfind);

scom = serial('COM5');
scom.BaudRate = 115200;
fopen(scom);

while(scom.BytesAvailable == 0)
end

Data = [];

for i = 1:1:100
    Data = [Data; fread(scom)];
end

fclose(scom);

%%
array = [];
for i = 3:1:length(Data)-2
    if (Data(i-2)==115 && Data(i-1)==116)
        if(Data(i+1)==101 && Data(i+2)==100)
            array = [array; Data(i)];
        end
    end
end

plot(array);