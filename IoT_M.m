%% Amplitude Shift Keying
clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
fc=input('Enter the freq of Sine Wave carrier:');
fp=input('Enter the freq of Periodic Binary pulse (Message):');
amp=input('Enter the amplitude (For Carrier & Binary Pulse Message):');
t=0:0.001:1; % For setting the sampling interval
c=amp.*sin(2*pi*fc*t);% For Generating Carrier Sine wave
subplot(3,1,1) %For Plotting The Carrier wave
plot(t,c)
xlabel('Time')
ylabel('Amplitude')
title('Carrier Wave')
m=amp/2.*square(2*pi*fp*t)+(amp/2);%For Generating Square wave message
subplot(3,1,2) %For Plotting The Square Binary Pulse (Message)
plot(t,m)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
w=c.*m; % The Shift Keyed Wave
subplot(3,1,3) %For Plotting The Amplitude Shift Keyed Wave
plot(t,w)
xlabel('Time')
ylabel('Amplitude')
title('Amplitide Shift Keyed Signal')

%% Frequency Shift Keying
clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
fc1=input('Enter the freq of 1st Sine Wave carrier:');
fc2=input('Enter the freq of 2nd Sine Wave carrier:');
fp=input('Enter the freq of Periodic Binary pulse (Message):');
amp=input('Enter the amplitude (For Both Carrier & Binary Pulse Message):');
amp=amp/2;
t=0:0.001:1; % For setting the sampling interval
c1=amp.*sin(2*pi*fc1*t);% For Generating 1st Carrier Sine wave
c2=amp.*sin(2*pi*fc2*t);% For Generating 2nd Carrier Sine wave
subplot(4,1,1); %For Plotting The Carrier wave
plot(t,c1)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 1 Wave')
subplot(4,1,2) %For Plotting The Carrier wave
plot(t,c2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 2 Wave')
m=amp.*square(2*pi*fp*t)+amp;%For Generating Square wave message
subplot(4,1,3) %For Plotting The Square Binary Pulse (Message)
plot(t,m)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
for i=0:1000 %here we are generating the modulated wave
    if m(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end
subplot(4,1,4) %For Plotting The Modulated wave
plot(t,mm)
xlabel('Time')
ylabel('Amplitude')
title('Modulated Wave')

%% Phase Shift Keying
clear all;
clc;
close all;
set(0,'defaultlinelinewidth',2);
A=5;
t=0:.001:1;
f1=input('Carrier Sine wave frequency =');
f2=input('Message frequency =');
x=A.*sin(2*pi*f1*t);%Carrier Sine
subplot(3,1,1);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Carrier');
grid on;
u=square(2*pi*f2*t);%Message signal
subplot(3,1,2);
plot(t,u);
xlabel('time');
ylabel('Amplitude');
title('Message Signal');
grid on;

v=x.*u;%Sine wave multiplied with square wave
subplot(3,1,3);
plot(t,v);
axis([0 1 -6 6]);
xlabel('t');
ylabel('y');
title('PSK');
grid on;