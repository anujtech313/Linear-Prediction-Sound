%% lpss_play.m
%%
%% Load wav and play

close all;clear all;clc;

[y, Fs] = audioread('samples/ee.wav');
size(y)
sound(y, Fs)