%=== �������� #2.1 ===
%��������� ������� ������������� ������������
fs=1000;
bp=[-3 12 17 12 -3]/35; % ����������� ���������� �������
ap=1;
n=512; % ������� �����, �� ��������������
figure(4);
[h,w]=freqz(bp,ap,n); %������ ������ ����������� ���������� �������
mag = abs(h); %���
phase=angle(h)*180/pi; %���
subplot(211), plot(w/(2*pi)*fs, mag), grid on; %������ ������ ���
title('���');
xlabel('�������, fs'), ylabel('��������, ��');
subplot(212), plot(w/(2*pi)*fs, unwrap(phase)), grid on; %������ ������ ���
title('���');
xlabel('�������, fs'), ylabel('����, �');
disp('��� ������������� �������')
xp=roots(bp); %��������� ��� ������������� �������
disp(xp);
figure(5);
zp=zplane(xp); %������ ����� ���� �� ������ �������

clear

%=== �������� #2.2 ===
%Գ�������� ��� ���� ecg117.dat � ������������� ������� 
%������������� ������������
ecg=load('ecg117.dat');  %����������� ������ ��� �� �����
ecgDetrend=detrend(ecg); %��������� ������� �������� � �������
ecgf5=filter (bp,ap,ecgDetrend); %�������� ���������� ������� �������� ������������� ������������
t=(0:length(ecgDetrend)-1)/fs;
figure(6);
subplot(211), plot(ecgDetrend), xlim([3000 3400]); %�������� ������� ����
title('�������������� ������ ���'); %������ ������ ��������������� ������� ���
xlabel('���, t'), ylabel('��������');
subplot(212), plot(ecgf5), xlim([3000 3400]); %�������� ������� ����
title('³������������� ������ ���'); %������ ������ ��������������� ������� ���
xlabel('���, t'), ylabel('��������');


