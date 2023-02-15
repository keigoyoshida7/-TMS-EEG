%********************************************************************
% ChangeWavChannel2.m
% author: KeigoYoshida@Keio University SFC
% created: December-10-2022
% explanation:
%This is the code that changes the wav file channel from 1 to 2 
% to support the TMS-EEG multi-trigger system.
%******************************************************************

m = audioread('aud3.wav');
m2 = zeros(size(m,1),2);
m2(:,1) = m;
m2(:,2) = m;
[y, fs] = audioread('aud3.wav');
audiowrite('audio3.wav',m2,fs);