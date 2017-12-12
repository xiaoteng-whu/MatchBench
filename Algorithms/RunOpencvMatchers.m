% EVALUATE CAMERA POSE
clear; clc; close all;

cdir = pwd;
Datasets = {[cdir '/../Dataset/01-office/'], ...   
    [cdir '/../Dataset/02-teddy/'],...
    [cdir '/../Dataset/03-large-cabinet/'],...
    [cdir '/../Dataset/04-kitti/'],...
    [cdir '/../Dataset/05-castle/'],...
    [cdir '/../Dataset/06-office-wide/'], ...
    [cdir '/../Dataset/07-teddy-wide/'],...
    [cdir '/../Dataset/08-large-cabinet-wide/']};

ResultsDir = {[cdir '/../Results/01-office/'], ...   
    [cdir '/../Results/02-teddy/'],...
    [cdir '/../Results/03-large-cabinet/'],...
    [cdir '/../Results/04-kitti/'],...
    [cdir '/../Results/05-castle/'],...
    [cdir '/../Results/06-office-wide/'], ...
    [cdir '/../Results/07-teddy-wide/'],...
    [cdir '/../Results/08-large-cabinet-wide/']};


%Matchers = {'sift', 'surf', 'orb', 'akaze', 'brisk', 'kaze',  'dlco', 'freak', 'binboost', 'latch', 'daisy', 'star', 'msd'};
Matchers = {'msd'};
exe = [cdir '/bin/Release/opencv_matchers '];

for d = 1 : length(Datasets)
    for m = 1 : length(Matchers) 
        command = [exe Matchers{m} ' ' Datasets{d} ' ' ResultsDir{d}];
        system(command);
    end
end