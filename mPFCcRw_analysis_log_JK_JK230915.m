%% Custom Code for "Reward learning improves social signal processing in autism model mice"
% Joowon Kim, Doyun Lee

%% List

clear
addpath(genpath('G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Programs_JoowonKim\custom'));
addpath(genpath('G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Programs_JoowonKim\outside'));

%--------------
% PRELIMINARIES
%--------------
clear
% %
% GlobalDataDir = 'D:\doyunleelab Dropbox\LEE DOYUN\Data\data_JoowonKim';
% GlobalProcDataDir = 'D:\doyunleelab Dropbox\LEE DOYUN\Results\Results_JoowonKim';
% GlobalProgramDir = 'D:\doyunleelab Dropbox\LEE DOYUN\Programs\Programs_JoowonKim';
% addpath(genpath([GlobalProgramDir '\custom']));
% addpath(genpath([GlobalProgramDir '\outside']));

GlobalDataDir = 'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\data_JoowonKim';
GlobalProcDataDir = 'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim';

% Figure color
% set(0,'DefaultFigureColor',[0.9 0.9 0.9])
% set(0,'DefaultAxesColor',[0.9 0.9 0.9])
set(0,'DefaultFigureColor',[1 1 1])
set(0,'DefaultAxesColor',[1 1 1])

% EXPT list
% Start with template_of_analysis_log_MLstart.m then:
% default_ML_settings

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% List of experiments
i=1; sbj(i).name = 'JKcw'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200413'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200414'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200415'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200418'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200419'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200420'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '200421'; % Training #4 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '200422'; % Training #5 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '200423'; % Training #6 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '200424'; % Training #7 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '200425'; % Training #8 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '200426'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '200427'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '200428'; % After Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=2; sbj(i).name = 'JKcx'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200413'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200414'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200415'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200418'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200419'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200420'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '200421'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '200422'; % After Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=3; sbj(i).name = 'JKcy'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200413'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200414'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200415'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=4; sbj(i).name = 'JKcz'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200413'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200414'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200415'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200418'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200419'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200420'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '200421'; % Training #4 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '200422'; % Training #5 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '200423'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '200424'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '200426'; % After Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=5; sbj(i).name = 'JKdf'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200507'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200508'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200510'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200513'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200514'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200515'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '200516'; % Training #4 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '200518'; % Training #5 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '200519'; % Training #6 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '200520'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '200521'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '200522'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=6; sbj(i).name = 'JKdh'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200507'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200508'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200510'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=7; sbj(i).name = 'JKdk'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200507'; % Passive Presentation #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200508'; % Passive Presentation #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200509'; % Passive Presentation #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200513'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200514'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200515'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '200517'; % Training #4 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '200518'; % Training #5 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '200519'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '200520'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '200521'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=8; sbj(i).name = 'JKcu'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200316'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200317'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200311'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200312'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200313'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200308'; % Passive Presentation 1/1000 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=9; sbj(i).name = 'JKcv'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '200317'; % After Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '200318'; % After Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         %sbj(i).info(j).present_pos = [3 5 7 1]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '200311'; % Training #1 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '200312'; % Training #2 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '200313'; % Training #3 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '200308'; % Passive Presentation 1/1000 (WT)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i=10; sbj(i).name = 'JKek'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210227'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210301'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210302'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210308'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210309'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210310'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210311'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210313'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210314'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210315'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '210316'; % Training #8 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210317'; % Training #9 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '210321'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '210322'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210323'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=16; sbj(i).info(j).date = '210327'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=11; sbj(i).name = 'JKen'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210227'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210301'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210302'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=12; sbj(i).name = 'JKes'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210419'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210420'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210421'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210430'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210501'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210502'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210503'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210504'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210505'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210506'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '210510'; % Training #8 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210511'; % Training #9 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '210512'; % Training #10 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '210513'; % Training #11 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210517'; % Training #12 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=16; sbj(i).info(j).date = '210520'; % Training #13 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=17; sbj(i).info(j).date = '210521'; % Training #14 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=18; sbj(i).info(j).date = '210524'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=19; sbj(i).info(j).date = '210525'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=20; sbj(i).info(j).date = '210526'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=21; sbj(i).info(j).date = '210527'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=13; sbj(i).name = 'JKet'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210419'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210420'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210421'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210430'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210501'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210502'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210503'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210504'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210505'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210506'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '210510'; % Training #8 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210511'; % Training #9 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '210512'; % Training #10 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '210513'; % Training #11 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210515'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=16; sbj(i).info(j).date = '210517'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=17; sbj(i).info(j).date = '210518'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=18; sbj(i).info(j).date = '210519'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=14; sbj(i).name = 'JKeu'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210718'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210719'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210720'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210724'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210726'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210727'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210728'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210729'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210730'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210731'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};


    j=11; sbj(i).info(j).date = '210801'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210802'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};

    j=13; sbj(i).info(j).date = '210803'; % Training #10 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '210804'; % Training #11 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210805'; % Training #12 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=16; sbj(i).info(j).date = '210807'; % Training #13 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=17; sbj(i).info(j).date = '210808'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=18; sbj(i).info(j).date = '210809'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=15; sbj(i).name = 'JKew'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210718'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210719'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210720'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210724'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210726'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210727'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210728'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210730'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210731'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210801'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '210803'; % Training #8 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210804'; % Training #9 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '210805'; % Training #10 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};

    j=14; sbj(i).info(j).date = '210806'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210807'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};

    j=16; sbj(i).info(j).date = '210808'; % Training #13 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=17; sbj(i).info(j).date = '210809'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=18; sbj(i).info(j).date = '210810'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=16; sbj(i).name = 'JKex'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210419'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210420'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210421'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end
i=17; sbj(i).name = 'JKey'; % mouse ID
  if 1
    j=1; sbj(i).info(j).date = '210419'; % Passive Presentation #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=2; sbj(i).info(j).date = '210420'; % Passive Presentation #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=3; sbj(i).info(j).date = '210421'; % Passive Presentation #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=4; sbj(i).info(j).date = '210430'; % Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=5; sbj(i).info(j).date = '210501'; % Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=6; sbj(i).info(j).date = '210502'; % Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=7; sbj(i).info(j).date = '210503'; % Training #4 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=8; sbj(i).info(j).date = '210504'; % Training #5 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=9; sbj(i).info(j).date = '210505'; % Training #6 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=10; sbj(i).info(j).date = '210506'; % Training #7 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=11; sbj(i).info(j).date = '210510'; % Training #8 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=12; sbj(i).info(j).date = '210511'; % Training #9 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=13; sbj(i).info(j).date = '210512'; % Training #10 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=14; sbj(i).info(j).date = '210513'; % Training #11 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=15; sbj(i).info(j).date = '210515'; % Training #12 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=16; sbj(i).info(j).date = '210517'; % Training #13 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=17; sbj(i).info(j).date = '210519'; % Training #14 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=18; sbj(i).info(j).date = '210520'; % Training #15 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=19; sbj(i).info(j).date = '210521'; % After Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=20; sbj(i).info(j).date = '210524'; % After Training #2 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=21; sbj(i).info(j).date = '210526'; % After Training #3 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
    j=22; sbj(i).info(j).date = '210527'; % Passive Presentation after Training #1 (SHANK2)
         sbj(i).info(j).present_pos = [1 3 5 7]; % [Mouse_R Mouse_N Odor_R Odor_N]
         sbj(i).info(j).present_info = {'Mouse_R', 'Mouse_N', 'Odor_R', 'Odor_N'};
  end



%% Fig. 1D
clear i_list j_list

 j_list{1} = [3];
% j_list{2} = [3];
% j_list{4} = [3];
% j_list{5} = [3];
% j_list{7} = [3];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 0; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 0; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);

for i= i_list
    for j=j_list{i}
        DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];
        load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;


            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);


            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);

            ctt = permute(trace, [3,1,2]);



            %Save DI
            %save(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end



    end
end


%for i_cell = find(MO_DI_signif == 1)'
for i_cell = 15

figure('pos',[0,0,600,400]);
    plot( [-1+1/20:1/20:5]  ,mean(ctt(i_cell, 20*2+1:20*8, C1_indices),3)   , 'r');
    object = squeeze(ctt(i_cell, 20*2+1:20*8, C1_indices));
    %shade_start
    stdshade_top = mean(object,2) + std(object,[],2)/sqrt(size(object,2));
    stdshade_bottom = mean(object,2) - std(object,[],2)/sqrt(size(object,2));
    x1 = [-1+1/20:1/20:5];
    patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
    %shade_end
    
    hold on;
    
    plot(   [-1+1/20:1/20:5]  ,mean(ctt(i_cell, 20*2+1:20*8, C2_indices),3)   , 'color',[0.9290 0.6940 0.1250]);
    object = squeeze(ctt(i_cell, 20*2+1:20*8, C2_indices));
    %shade_start
    stdshade_top = mean(object,2) + std(object,[],2)/sqrt(size(object,2));
    stdshade_bottom = mean(object,2) - std(object,[],2)/sqrt(size(object,2));
    x1 = [-1+1/20:1/20:5];
    patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'y', 'FaceAlpha',0.2, 'EdgeColor','none');
    %shade_end
    
    plot(   [-1+1/20:1/20:5]  ,mean(ctt(i_cell, 20*2+1:20*8, C3_indices),3)   , 'g');
    object = squeeze(ctt(i_cell, 20*2+1:20*8, C3_indices));
    %shade_start
    stdshade_top = mean(object,2) + std(object,[],2)/sqrt(size(object,2));
    stdshade_bottom = mean(object,2) - std(object,[],2)/sqrt(size(object,2));
    x1 = [-1+1/20:1/20:5];
    patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'g', 'FaceAlpha',0.2, 'EdgeColor','none');
    %shade_end
    
    plot(   [-1+1/20:1/20:5]  ,mean(ctt(i_cell, 20*2+1:20*8, C4_indices),3)   , 'b');
    object = squeeze(ctt(i_cell, 20*2+1:20*8, C4_indices));
    %shade_start
    stdshade_top = mean(object,2) + std(object,[],2)/sqrt(size(object,2));
    stdshade_bottom = mean(object,2) - std(object,[],2)/sqrt(size(object,2));
    x1 = [-1+1/20:1/20:5];
    patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
    %shade_end
box off;
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');


figure('pos',[0,0,600,400]);
dotsize = 10;

temp = ctt(i_cell, 20*2+1:20*8,:);
c_range = [min(temp, [], 'all') max(temp, [], 'all')];

subplot(1,4,1);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C1_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;

subplot(1,4,2);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C2_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;

subplot(1,4,3);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C3_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;

subplot(1,4,4);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C4_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;

colorbar





figure('pos',[100,100,500,150]);
dotsize = 10;

temp = ctt(i_cell, 20*2+1:20*8,:);
c_range = [min(temp, [], 'all') max(temp, [], 'all')];

subplot(1,5,1);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C1_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;
line([20 20], ylim, 'Color', 'k', 'LineStyle', '-');

subplot(1,5,2);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C2_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;
line([20 20], ylim, 'Color', 'k', 'LineStyle', '-');

subplot(1,5,3);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C3_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;
line([20 20], ylim, 'Color', 'k', 'LineStyle', '-');

subplot(1,5,4);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C4_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;
line([20 20], ylim, 'Color', 'k', 'LineStyle', '-');

subplot(1,5,5);
imagesc(squeeze(ctt(i_cell, 20*2+1:20*8,C4_indices))');
colormap jet;
caxis(c_range)
set(gca,'TickDir','out');
box off;
line([20 20], ylim, 'Color', 'k', 'LineStyle', '-');

colorbar

% set(gca,'TickDir','out');
% box off;


end %i_cell

%% Fig. 1E

clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];





[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

wt = pieData_temp(:,1);

clear i_list j_list



% 
% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];




[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

asd = pieData_temp(:,1);

%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
errlow = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.4]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Fig. 1F

 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_MO_batch;



 clear i_list j_list

% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];
%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_MO_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



 ylim([45 85]);
%ylim([45 100]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;



%% Fig. 1G

 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);







%% Fig. 1H

 clear i_list j_list



% % WT Passive Presentation (Day #1)
clear i_list j_list
callsign = 'wt_pp_1';
j_list{1} = [1];
j_list{2} = [1];
j_list{3} = [1];
j_list{4} = [1];
j_list{5} = [1];
j_list{6} = [1];
j_list{7} = [1];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt1 = SVM_MO_batch;


 clear i_list j_list



% % WT Passive Presentation (Day #2)
clear i_list j_list
callsign = 'wt_pp_2';
j_list{1} = [2];
j_list{2} = [2];
j_list{3} = [2];
j_list{4} = [2];
j_list{5} = [2];
j_list{6} = [2];
j_list{7} = [2];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];


            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt2 = SVM_MO_batch;


 clear i_list j_list



% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt3 = SVM_MO_batch;


%%% #fig
figure('pos',[0,0,500,400]);

object = wt3*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

object = wt2*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'c');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'c', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

object = wt1*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'k');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'k', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

ylim([45 85]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');



box off;



%% Fig. 1I

 clear i_list j_list

% WT Passive Presentation (Day #1)
clear i_list j_list
callsign = 'wt_pp_1';
j_list{1} = [1];
j_list{2} = [1];
j_list{3} = [1];
j_list{4} = [1];
j_list{5} = [1];
j_list{6} = [1];
j_list{7} = [1];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);





%% Fig. 1J

 clear i_list j_list



% SHANK2 Passive Presentation (Day #1)
clear i_list j_list
callsign = 'asd_pp_1';
j_list{10} = [1];
j_list{11} = [1];
j_list{12} = [1];
j_list{13} = [1];
j_list{14} = [1];
j_list{15} = [1];
j_list{16} = [1];
j_list{17} = [1];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];


            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd1 = SVM_MO_batch;


 clear i_list j_list



% SHANK2 Passive Presentation (Day #2)
clear i_list j_list
callsign = 'asd_pp_2';
j_list{10} = [2];
j_list{11} = [2];
j_list{12} = [2];
j_list{13} = [2];
j_list{14} = [2];
j_list{15} = [2];
j_list{16} = [2];
j_list{17} = [2];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd2 = SVM_MO_batch;


 clear i_list j_list



% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd3 = SVM_MO_batch;


%%% #fig
figure('pos',[0,0,500,400]);

object = asd3*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

object = asd2*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'m');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'm', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

object = asd1*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'k');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'k', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

ylim([45 85]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');



box off;

%% Fig. 1K

 clear i_list j_list

% SHANK2 Passive Presentation (Day #1)
clear i_list j_list
callsign = 'asd_pp_1';
j_list{10} = [1];
j_list{11} = [1];
j_list{12} = [1];
j_list{13} = [1];
j_list{14} = [1];
j_list{15} = [1];
j_list{16} = [1];
j_list{17} = [1];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);




%% Fig. 2C, 2D

  behav_data_batch_batch = zeros(20,13);
  
for i_data_names = sort(1:13, 'descend')



if (i_data_names == 1)
          data_names = {'M:\matlabdirectory\RootStorage\JKcw\200418' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200419' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200420' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200421' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200422' ,...%
              'M:\matlabdirectory\RootStorage\JKcw\200423' ,...%
              'M:\matlabdirectory\RootStorage\JKcw\200424' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200425' ,...
              'M:\matlabdirectory\RootStorage\JKcw\200426' ,...%
              'M:\matlabdirectory\RootStorage\JKcw\200427' ,...%
              'M:\matlabdirectory\RootStorage\JKcw\200428' ,...%
              };
elseif (i_data_names == 2)
          data_names = {'M:\matlabdirectory\RootStorage\JKcx\200418' ,...
              'M:\matlabdirectory\RootStorage\JKcx\200419' ,...%
              'M:\matlabdirectory\RootStorage\JKcx\200420' ,...%
              'M:\matlabdirectory\RootStorage\JKcx\200421' ,...%
              'M:\matlabdirectory\RootStorage\JKcx\200422' ,...%
              };
elseif (i_data_names == 3)
          data_names = {'M:\matlabdirectory\RootStorage\JKcz\200418' ,...
              'M:\matlabdirectory\RootStorage\JKcz\200419' ,...%
              'M:\matlabdirectory\RootStorage\JKcz\200420' ,...
              'M:\matlabdirectory\RootStorage\JKcz\200421' ,...%
              'M:\matlabdirectory\RootStorage\JKcz\200422' ,...
              'M:\matlabdirectory\RootStorage\JKcz\200423' ,...%
              'M:\matlabdirectory\RootStorage\JKcz\200424' ,...%
              'M:\matlabdirectory\RootStorage\JKcz\200425' ,...
              'M:\matlabdirectory\RootStorage\JKcz\200426' ,...%
              };
elseif (i_data_names == 4)
          data_names = {'M:\matlabdirectory\RootStorage\JKdf\200513' ,...
              'M:\matlabdirectory\RootStorage\JKdf\200514' ,...
              'M:\matlabdirectory\RootStorage\JKdf\200515' ,... %
              'M:\matlabdirectory\RootStorage\JKdf\200516' ,... %
              'M:\matlabdirectory\RootStorage\JKdf\200518' ,...
              'M:\matlabdirectory\RootStorage\JKdf\200519' ,...
              'M:\matlabdirectory\RootStorage\JKdf\200520' ,...%
              'M:\matlabdirectory\RootStorage\JKdf\200521' ,...%
              'M:\matlabdirectory\RootStorage\JKdf\200522' ,...
              };
elseif (i_data_names == 5)
          data_names = {'M:\matlabdirectory\RootStorage\JKdk\200513' ,...
              'M:\matlabdirectory\RootStorage\JKdk\200514' ,...
              'M:\matlabdirectory\RootStorage\JKdk\200515' ,...
              'M:\matlabdirectory\RootStorage\JKdk\200517' ,... %
              'M:\matlabdirectory\RootStorage\JKdk\200518' ,...
              'M:\matlabdirectory\RootStorage\JKdk\200519' ,...%
              'M:\matlabdirectory\RootStorage\JKdk\200520' ,...%
              'M:\matlabdirectory\RootStorage\JKdk\200521' ,...%
              };
elseif (i_data_names == 6)
          data_names = {'M:\matlabdirectory\RootStorage\JKcu\200311' ,...
              'M:\matlabdirectory\RootStorage\JKcu\200312' ,...
              'M:\matlabdirectory\RootStorage\JKcu\200313' ,...
              'M:\matlabdirectory\RootStorage\JKcu\200316' ,...
              };
elseif (i_data_names == 7)
          data_names = {'M:\matlabdirectory\RootStorage\JKcv\200311' ,...
              'M:\matlabdirectory\RootStorage\JKcv\200312' ,...
              'M:\matlabdirectory\RootStorage\JKcv\200313' ,...
              'M:\matlabdirectory\RootStorage\JKcv\200317' ,...
              };
elseif (i_data_names == 8)
          %data_names = {'M:\matlabdirectory\RootStorage\JKek\210307' ,...
          data_names = {'M:\matlabdirectory\RootStorage\JKek\210308' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210309' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210310' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210311' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210313' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210314' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210315' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210316' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210317' ,... %
              'M:\matlabdirectory\RootStorage\JKek\210321' ,...%
              'M:\matlabdirectory\RootStorage\JKek\210322' ,...%
              'M:\matlabdirectory\RootStorage\JKek\210323' ,...%
              };
elseif (i_data_names == 9)
          data_names = {'M:\matlabdirectory\RootStorage\JKes\210430' ,...
              'M:\matlabdirectory\RootStorage\JKes\210501' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210502' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210503' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210504' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210505' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210506' ,...
              'M:\matlabdirectory\RootStorage\JKes\210510' ,...
              'M:\matlabdirectory\RootStorage\JKes\210511' ,...
              'M:\matlabdirectory\RootStorage\JKes\210512' ,...
              'M:\matlabdirectory\RootStorage\JKes\210513' ,...
              'M:\matlabdirectory\RootStorage\JKes\210517' ,...
              'M:\matlabdirectory\RootStorage\JKes\210520' ,...
              'M:\matlabdirectory\RootStorage\JKes\210521' ,... %
              'M:\matlabdirectory\RootStorage\JKes\210524' ,...%
              'M:\matlabdirectory\RootStorage\JKes\210525' ,...%
              'M:\matlabdirectory\RootStorage\JKes\210526' ,...%
              };
elseif (i_data_names == 10)
          data_names = {'M:\matlabdirectory\RootStorage\JKet\210430' ,...
              'M:\matlabdirectory\RootStorage\JKet\210501' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210502' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210503' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210504' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210505' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210506' ,...
              'M:\matlabdirectory\RootStorage\JKet\210510' ,...
              'M:\matlabdirectory\RootStorage\JKet\210511' ,... %
              'M:\matlabdirectory\RootStorage\JKet\210512' ,...
              'M:\matlabdirectory\RootStorage\JKet\210513' ,...
              'M:\matlabdirectory\RootStorage\JKet\210515' ,...%
              'M:\matlabdirectory\RootStorage\JKet\210517' ,...%
              'M:\matlabdirectory\RootStorage\JKet\210518' ,...%
              };
elseif (i_data_names == 11)
          data_names = {'M:\matlabdirectory\RootStorage\JKeu\210724' ,...
              'M:\matlabdirectory\RootStorage\JKeu\210726' ,...
              'M:\matlabdirectory\RootStorage\JKeu\210727' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210728' ,...
              'M:\matlabdirectory\RootStorage\JKeu\210729' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210730' ,...
              'M:\matlabdirectory\RootStorage\JKeu\210731' ,...%
              'M:\matlabdirectory\RootStorage\JKeu\210801' ,...%
              'M:\matlabdirectory\RootStorage\JKeu\210802' ,...%
              'M:\matlabdirectory\RootStorage\JKeu\210803' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210804' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210805' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210807' ,... %
              'M:\matlabdirectory\RootStorage\JKeu\210808' ,...%
              };
elseif (i_data_names == 12)
          data_names = {'M:\matlabdirectory\RootStorage\JKew\210724' ,...
              'M:\matlabdirectory\RootStorage\JKew\210726' ,...
              'M:\matlabdirectory\RootStorage\JKew\210727' ,...
              'M:\matlabdirectory\RootStorage\JKew\210728' ,...
              'M:\matlabdirectory\RootStorage\JKew\210730' ,... %
              'M:\matlabdirectory\RootStorage\JKew\210731' ,... %
              'M:\matlabdirectory\RootStorage\JKew\210801' ,...
              'M:\matlabdirectory\RootStorage\JKew\210803' ,...
              'M:\matlabdirectory\RootStorage\JKew\210804' ,...
              'M:\matlabdirectory\RootStorage\JKew\210805' ,... %
              'M:\matlabdirectory\RootStorage\JKew\210806' ,...%
              'M:\matlabdirectory\RootStorage\JKew\210807' ,...%
              'M:\matlabdirectory\RootStorage\JKew\210808' ,... %
              'M:\matlabdirectory\RootStorage\JKew\210809' ,...%
              };
elseif (i_data_names == 13)
          data_names = {'M:\matlabdirectory\RootStorage\JKey\210430' ,...
              'M:\matlabdirectory\RootStorage\JKey\210501' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210502' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210503' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210504' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210505' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210506' ,...
              'M:\matlabdirectory\RootStorage\JKey\210510' ,...
              'M:\matlabdirectory\RootStorage\JKey\210511' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210512' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210513' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210515' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210517' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210519' ,...
              'M:\matlabdirectory\RootStorage\JKey\210520' ,... %
              'M:\matlabdirectory\RootStorage\JKey\210521' ,...%
              'M:\matlabdirectory\RootStorage\JKey\210524' ,...%
              'M:\matlabdirectory\RootStorage\JKey\210526' ,...%
              };
else
    data_names = [];
end


behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];



for j_data_names = 1:size(data_names,2)


  directory = string(data_names(1,j_data_names));



% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% Read Arduino serial CSV
opts = detectImportOptions(strcat(directory,'\arduinoserial0.csv'));
opts.DataLine = 1;
opts.EmptyLineRule = 'read';
arduinoserial = readtable(strcat(directory,'\arduinoserial0.csv'),opts);
arduinoserial = table2cell(arduinoserial);

% Get PLR from Arduino serial data
object = cell2mat(arduinoserial(:,1:2));
behavior = [find(object(:,2) == 1),find(object(:,2) == 2),find(object(:,2) == 3),find(object(:,2) == 4),find(object(:,2) == 5)];
pos = cell2mat(arduinoserial(find(object(:,1) == 0),4));
if (strcmp(class(pos),'char') == 1)
  pos = str2num(pos);
end
lick = (behavior(:,4) - behavior(:,3)) - 1;
lick(find(lick > 0)) = 1;

% Correct or Wrong
response = [];
for i = 1:size(pos,1)
  if ((pos(i) == 1 || pos(i) == 5) & lick(i) == 1) %correct
    response = [response; 1];
  elseif ((pos(i) == 1 || pos(i) == 5) & lick(i) == 0) %miss
    response = [response; 2];
  elseif ((pos(i) == 3 || pos(i) == 7) & lick(i) == 1) %false
    response = [response; 3];
  else
    response = [response; 4]; %cr
  end
end
PLR = [pos, lick, response];
PLR(end,:) = [];




if (i_data_names == 3 & j_data_names == 6) %JKcz_200423
    PLR = PLR(1:471,:);
    PLR(end,:) = [];
end

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %


behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
)) / size(PLR,1) * 100;

behav_data_batch = [behav_data_batch; behav_data];



            hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];









end %j_data_names

% 
% if (i_data_names == 1)
%     figure;
% end
% if (i_data_names < 7.5)
%   plot(behav_data_batch, 'b');
%   xlim([0, 17]);
%   ylim([45, 100]);
%   line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(behav_data_batch, 'r');
%   xlim([0, 17]);
%   ylim([45, 100]);
%   line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end

if (i_data_names == 13)
    figure('pos',[0,0,600,400]);
end
if (i_data_names < 7.5)
  plot(behav_data_batch, 'color', [0,0,1, 0.2], 'LineWidth', 2);
  xlim([0, 19]);
  ylim([45, 100]);
  line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
  hold on;
else
  plot(behav_data_batch, 'color', [1,0,0, 0.2], 'LineWidth', 2);
  xlim([0, 19]);
  ylim([45, 100]);
  line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
  hold on;
end
box off;

behav_data_batch_batch(1:length(behav_data_batch),i_data_names) = behav_data_batch;

%
% %%%%%%#fig1
% if (i_data_names == 13)
%       figure('pos',[0,0,600,400]);
% end
% if (i_data_names < 7.5)
%   plot(behav_data_batch, 'b', 'LineWidth', 2);
%   xlim([0, 19]);
%   ylim([45, 100]);
%   line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(behav_data_batch, 'r', 'LineWidth', 2);
%   xlim([0, 19]);
%   ylim([45, 100]);
%   line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end
% box off;
%
%
%





% if (i_data_names == 1)
%     figure;
% end
% if (i_data_names < 7.5)
%   plot(hmfc_ratio_batch(:,1), 'b');
%   hold on;
%   plot(hmfc_ratio_batch(:,2), 'c');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(hmfc_ratio_batch(:,1), 'r');
%   hold on;
%   plot(hmfc_ratio_batch(:,2), 'm');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end

%
% if (i_data_names == 1)
%     figure;
% end
% if (i_data_names < 7.5)
%   plot(hmfc_M_ratio_batch(:,1), 'b');
%   hold on;
%   plot(hmfc_M_ratio_batch(:,2), 'c');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(hmfc_M_ratio_batch(:,1), 'r');
%   hold on;
%   plot(hmfc_M_ratio_batch(:,2), 'm');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end
%
%
% if (i_data_names == 1)
%     figure;
% end
% if (i_data_names < 7.5)
%   plot(hmfc_O_ratio_batch(:,1), 'b');
%   hold on;
%   plot(hmfc_O_ratio_batch(:,2), 'c');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(hmfc_O_ratio_batch(:,1), 'r');
%   hold on;
%   plot(hmfc_O_ratio_batch(:,2), 'm');
%   xlim([0, 17]);
%   ylim([0, 1]);
%   %line([0, 17], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end

end %i_data_names



%behav_data_batch_batch(1:length(behav_data_batch),i_data_names) = behav_data_batch;
temp = [];
for i = 1:20
    temp = [temp; mean(     nonzeros(behav_data_batch_batch(i,1:7))   )];
end
  plot(temp, 'b', 'LineWidth', 2);
  hold on;
  
temp = [];
for i = 1:20
    temp = [temp; mean(     nonzeros(behav_data_batch_batch(i,8:13))   )];
end
  plot(temp, 'r', 'LineWidth', 2);
  hold on;






%%% #fig
figure('pos',[0,0,300,400]);
wt = [9;3;6;7;6;4;4];
asd = [10;15;12;8;11;16];
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
box off;
[h,p] = ttest2(wt,asd);
disp(p);



% 
% 
% figure('pos',[0,0,600,400]);
% if (i_data_names < 7.5)
%   plot(behav_data_batch, 'b', 'LineWidth', 2);
%   xlim([0, 19]);
%   ylim([45, 100]);
%   line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% else
%   plot(behav_data_batch, 'r', 'LineWidth', 2);
%   xlim([0, 19]);
%   ylim([45, 100]);
%   line([0, 19], [80, 80], 'Color', 'k', 'LineStyle', '--');
%   hold on;
% end
% box off;
% 
% 




%% Fig. 2E
% Fig. 2E1




% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
%
% % WT After Training (Day #2)
% clear i_list j_list
% callsign = 'wt_at_2';
% j_list{1} = [13];
% j_list{2} = [7];
% j_list{4} = [10];
% j_list{5} = [11];
% j_list{7} = [10];
% j_list{8} = [2];
% j_list{9} = [2];
%
% % WT After Training (Day #3)
% clear i_list j_list
% callsign = 'wt_at_3';
% j_list{1} = [14];
% j_list{2} = [8];
% j_list{4} = [11];
% j_list{5} = [12];
% j_list{7} = [11];


% WT After Training (Day #1-3)
clear i_list j_list
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];


for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];

              
%               
              
              
%             behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];

%             behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
%               
              % % % % % % % % % % % % % % % % % % % % % % % % %


             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];

          %save
        else
         %load
        end



    end
end

behav_data_wt = behav_data_batch;

behav_data_batch = [];

% % % % %

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
%
% % SHANK2 After Training (Day #2)
% clear i_list j_list
% callsign = 'asd_at_2';
% j_list{10} = [14];
% j_list{12} = [19];
% j_list{13} = [16];
% j_list{14} = [12];
% j_list{15} = [15];
% j_list{17} = [20];
%
% % SHANK2 After Training (Day #3)
% clear i_list j_list
% callsign = 'asd_at_3';
% j_list{10} = [15];
% j_list{12} = [20];
% j_list{13} = [17];
% j_list{14} = [17];
% j_list{15} = [17];
% j_list{17} = [21];

% SHANK2 After Training (Day #1-3)
clear i_list j_list
callsign = 'asd_at_1_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];
%               
%               
%               
              
%               
%               
%             behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% 
%             behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% %               
%               
              
                            % % % % % % % % % % % % % % % % % % % % % % % % %


             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];
          
          
          
          %save
        else
         %load
        end



    end
end

behav_data_asd = behav_data_batch;





%%% #fig
figure('pos',[0,0,300,400]);
wt = behav_data_wt;
asd = behav_data_asd;
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


% Fig. 2E2


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
%
% % WT After Training (Day #2)
% clear i_list j_list
% callsign = 'wt_at_2';
% j_list{1} = [13];
% j_list{2} = [7];
% j_list{4} = [10];
% j_list{5} = [11];
% j_list{7} = [10];
% j_list{8} = [2];
% j_list{9} = [2];
%
% % WT After Training (Day #3)
% clear i_list j_list
% callsign = 'wt_at_3';
% j_list{1} = [14];
% j_list{2} = [8];
% j_list{4} = [11];
% j_list{5} = [12];
% j_list{7} = [11];


% WT After Training (Day #1-3)
clear i_list j_list
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];


for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            % behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
            %               | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
            %               | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
            %               | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
            %               )) / size(PLR,1) * 100;
            % 
            %   behav_data_batch = [behav_data_batch; behav_data];

              
%               
              
              
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;

              behav_data_batch = [behav_data_batch; behav_data];

%             behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
%               
              % % % % % % % % % % % % % % % % % % % % % % % % %


             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];

          %save
        else
         %load
        end



    end
end

behav_data_wt = behav_data_batch;

behav_data_batch = [];

% % % % %

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
%
% % SHANK2 After Training (Day #2)
% clear i_list j_list
% callsign = 'asd_at_2';
% j_list{10} = [14];
% j_list{12} = [19];
% j_list{13} = [16];
% j_list{14} = [12];
% j_list{15} = [15];
% j_list{17} = [20];
%
% % SHANK2 After Training (Day #3)
% clear i_list j_list
% callsign = 'asd_at_3';
% j_list{10} = [15];
% j_list{12} = [20];
% j_list{13} = [17];
% j_list{14} = [17];
% j_list{15} = [17];
% j_list{17} = [21];

% SHANK2 After Training (Day #1-3)
clear i_list j_list
callsign = 'asd_at_1_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


%             behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
%                           | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / size(PLR,1) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% %               
%               
%               
              
%               
%               
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;

              behav_data_batch = [behav_data_batch; behav_data];
% 
%             behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% %               
%               
              
                            % % % % % % % % % % % % % % % % % % % % % % % % %



             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];
          
          
          
          %save
        else
         %load
        end



    end
end

behav_data_asd = behav_data_batch;





%%% #fig
figure('pos',[0,0,300,400]);
wt = behav_data_wt;
asd = behav_data_asd;
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);

% Fig. 2E3



% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
%
% % WT After Training (Day #2)
% clear i_list j_list
% callsign = 'wt_at_2';
% j_list{1} = [13];
% j_list{2} = [7];
% j_list{4} = [10];
% j_list{5} = [11];
% j_list{7} = [10];
% j_list{8} = [2];
% j_list{9} = [2];
%
% % WT After Training (Day #3)
% clear i_list j_list
% callsign = 'wt_at_3';
% j_list{1} = [14];
% j_list{2} = [8];
% j_list{4} = [11];
% j_list{5} = [12];
% j_list{7} = [11];


% WT After Training (Day #1-3)
clear i_list j_list
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];


for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            % behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
            %               | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
            %               | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
            %               | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
            %               )) / size(PLR,1) * 100;
            % 
            %   behav_data_batch = [behav_data_batch; behav_data];

              
%               
              
              
            % behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
            %               | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
            %               )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;
            % 
            %   behav_data_batch = [behav_data_batch; behav_data];

            behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;

              behav_data_batch = [behav_data_batch; behav_data];
%               
              % % % % % % % % % % % % % % % % % % % % % % % % %




             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];

          %save
        else
         %load
        end



    end
end

behav_data_wt = behav_data_batch;

behav_data_batch = [];

% % % % %

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
%
% % SHANK2 After Training (Day #2)
% clear i_list j_list
% callsign = 'asd_at_2';
% j_list{10} = [14];
% j_list{12} = [19];
% j_list{13} = [16];
% j_list{14} = [12];
% j_list{15} = [15];
% j_list{17} = [20];
%
% % SHANK2 After Training (Day #3)
% clear i_list j_list
% callsign = 'asd_at_3';
% j_list{10} = [15];
% j_list{12} = [20];
% j_list{13} = [17];
% j_list{14} = [17];
% j_list{15} = [17];
% j_list{17} = [21];

% SHANK2 After Training (Day #1-3)
clear i_list j_list
callsign = 'asd_at_1_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


%             behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
%                           | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
%                           )) / size(PLR,1) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% %               
%               
%               
              
%               
%               
%             behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
%                           | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
%                           )) / length(find( PLR(:,1) == 1 | PLR(:,1) == 3   )   ) * 100;
% 
%               behav_data_batch = [behav_data_batch; behav_data];
% % 
            behav_data = length(find(   (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / length(find( PLR(:,1) == 5 | PLR(:,1) == 7   )   ) * 100;

              behav_data_batch = [behav_data_batch; behav_data];
%               

              
                            % % % % % % % % % % % % % % % % % % % % % % % % %








             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];
          
          
          
          %save
        else
         %load
        end



    end
end

behav_data_asd = behav_data_batch;





%%% #fig
figure('pos',[0,0,300,400]);
wt = behav_data_wt;
asd = behav_data_asd;
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);






%% Fig. 2F, Supp. 3B


% Calculate d prime and decision bias in each behavioral session.




% clear i_list j_list
% callsign = 'all';
% j_list{1} = [4];
% j_list{2} = [4];
% j_list{4} = [4];
% j_list{5} = [4];
% j_list{7} = [4];
% j_list{8} = [1];
% j_list{9} = [1];

% clear i_list j_list
% callsign = 'all';
% j_list{1} = [5];
% j_list{2} = [5];
% j_list{4} = [5];
% j_list{5} = [5];
% j_list{7} = [5];
% j_list{8} = [2];
% j_list{9} = [2];
% %
% clear i_list j_list
% callsign = 'all';
% j_list{1} = [6];
% j_list{2} = [6];
% j_list{4} = [6];
% j_list{5} = [6];
% j_list{7} = [6];

% clear i_list j_list
% callsign = 'all';
% j_list{1} = [4:6];
% j_list{2} = [4:6];
% j_list{4} = [4:6];
% j_list{5} = [4:6];
% j_list{7} = [4:6];
% j_list{8} = [1:2];
% j_list{9} = [1:2];

% WT After Training (Day #1-3)
clear i_list j_list
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);
[i_list] = get_i_list(j_list);

signal_detection_theory_batch = [];

% Calculate ratio of hit rate to CR rate
for i = i_list
  for j = j_list{i}
    [sbj(i).info(j).hit_rate, sbj(i).info(j).CR_rate] = get_hit_CR(sbj(i).info(j).rp_proc_matfile, sbj(i).info(j).trials);

    curr_hit = sbj(i).info(j).hit_rate;
    if curr_hit > 0.995
      curr_hit = 0.995;
    elseif curr_hit < 0.005
      curr_hit = 0.005;
    end

    curr_CR = sbj(i).info(j).CR_rate;
    if curr_CR > 0.995
      curr_CR = 0.995;
    elseif curr_CR < 0.005
      curr_CR = 0.005;
    end

    z_miss = norminv(1 - curr_hit);
    z_CR = norminv(curr_CR);
    d_prime = z_CR - z_miss; % d' value
    bias = d_prime/2 + z_miss; % decision bias; it is also equal to [z_CR - d_prime/2].

    sbj(i).info(j).d_prime = d_prime;
    sbj(i).info(j).bias = bias;
    sbj(i).info(j).norm_bias = bias/d_prime;

    disp([sbj(i).info(j).name_head ', d prime = ' num2str(sbj(i).info(j).d_prime) ', bias = ' num2str(sbj(i).info(j).bias) ', norm_bias' num2str(sbj(i).info(j).norm_bias)])


    signal_detection_theory_batch = [signal_detection_theory_batch; [d_prime, bias]   ];

  end
end

% Print mean decision bias for each subject
for i = i_list
  count_j = 0;
  mean_n_bias = 0;

  for j = j_list{i}
    count_j = count_j + 1;
    mean_n_bias = mean_n_bias + sbj(i).info(j).norm_bias;
  end

  mean_n_bias = mean_n_bias / count_j;
  disp([sbj(i).name ' = ' num2str(mean_n_bias)])
end


signal_detection_theory_wt = signal_detection_theory_batch;

% clear i_list j_list
% j_list{10} = [4];
% j_list{12} = [4];
% j_list{13} = [4];
% j_list{14} = [4];
% j_list{15} = [4];
% j_list{17} = [4];
%
% clear i_list j_list
% j_list{10} = [5];
% j_list{12} = [5];
% j_list{13} = [5];
% j_list{14} = [5];
% j_list{15} = [5];
% j_list{17} = [5];
% %
% clear i_list j_list
% j_list{10} = [6];
% j_list{12} = [6];
% j_list{13} = [6];
% j_list{14} = [6];
% j_list{15} = [6];
% j_list{17} = [6];
%
% clear i_list j_list
% j_list{10} = [4:6];
% j_list{12} = [4:6];
% j_list{13} = [4:6];
% j_list{14} = [4:6];
% j_list{15} = [4:6];
% j_list{17} = [4:6];

% SHANK2 After Training (Day #1-3)
clear i_list j_list
callsign = 'asd_at_1_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);
[i_list] = get_i_list(j_list);

signal_detection_theory_batch = [];

% Calculate ratio of hit rate to CR rate
for i = i_list
  for j = j_list{i}
    [sbj(i).info(j).hit_rate, sbj(i).info(j).CR_rate] = get_hit_CR(sbj(i).info(j).rp_proc_matfile, sbj(i).info(j).trials);

    curr_hit = sbj(i).info(j).hit_rate;
    if curr_hit > 0.995
      curr_hit = 0.995;
    elseif curr_hit < 0.005
      curr_hit = 0.005;
    end

    curr_CR = sbj(i).info(j).CR_rate;
    if curr_CR > 0.995
      curr_CR = 0.995;
    elseif curr_CR < 0.005
      curr_CR = 0.005;
    end

    z_miss = norminv(1 - curr_hit);
    z_CR = norminv(curr_CR);
    d_prime = z_CR - z_miss; % d' value
    bias = d_prime/2 + z_miss; % decision bias; it is also equal to [z_CR - d_prime/2].

    sbj(i).info(j).d_prime = d_prime;
    sbj(i).info(j).bias = bias;
    sbj(i).info(j).norm_bias = bias/d_prime;

    disp([sbj(i).info(j).name_head ', d prime = ' num2str(sbj(i).info(j).d_prime) ', bias = ' num2str(sbj(i).info(j).bias) ', norm_bias' num2str(sbj(i).info(j).norm_bias)])


    signal_detection_theory_batch = [signal_detection_theory_batch; [d_prime, bias]   ];

  end
end

% Print mean decision bias for each subject
for i = i_list
  count_j = 0;
  mean_n_bias = 0;

  for j = j_list{i}
    count_j = count_j + 1;
    mean_n_bias = mean_n_bias + sbj(i).info(j).norm_bias;
  end

  mean_n_bias = mean_n_bias / count_j;
  disp([sbj(i).name ' = ' num2str(mean_n_bias)])
end


signal_detection_theory_asd = signal_detection_theory_batch;


%%% #fig
figure('pos',[0,0,300,400]);
wt = signal_detection_theory_wt(:,1);
asd = signal_detection_theory_asd(:,1);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
box off;
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0, 1]);
[h,p] = ttest2(wt,asd);
disp(p);


%%% #fig
figure('pos',[0,0,300,400]);
wt = signal_detection_theory_wt(:,2);
asd = signal_detection_theory_asd(:,2);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Fig. 2G
% Fig. 2G

clear i_list j_list


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12]; %!
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
% %
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18]; %!
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            
            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************

            for i_close_align = 1:size(PLR,1)
                t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) = t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) - close_align(i_close_align)/20;
            end

%             behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
%                 for j_dens = 1:size(temptemp,1)
%                     temptemptemp = [];
%                       if (temptemp(j_dens,1) < 0)
%                         temptemptemp = [temptemptemp; 1,0,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 0 & temptemp(j_dens,1) < 1)
%                         temptemptemp = [temptemptemp; 0,1,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 1 & temptemp(j_dens,1) < 2)
%                         temptemptemp = [temptemptemp; 0,0,1,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 2 & temptemp(j_dens,1) < 3)
%                         temptemptemp = [temptemptemp; 0,0,0,1,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 3 & temptemp(j_dens,1) < 4)
%                         temptemptemp = [temptemptemp; 0,0,0,0,1,0,0,0,0];                    
%                         elseif (temptemp(j_dens,1) >= 4 & temptemp(j_dens,1) < 5)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,1,0,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 5 & temptemp(j_dens,1) < 6)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,1,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 6 & temptemp(j_dens,1) < 7)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,1,0];                     
%                         elseif (temptemp(j_dens,1) >= 7 & temptemp(j_dens,1) < 8)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,0,1]; 
%                       else
%                       end
%                      
%                 end %j_dens
%                  time_trial_lick = [time_trial_lick; mean(temptemptemp,1)];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

        
%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -1 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 3)),   ...
%                      length(find(temptemp(:,1) >= 3 & temptemp(:,1) < 4)),   ...
%                      length(find(temptemp(:,1) >= 4 & temptemp(:,1) < 5)),   ...
%                      length(find(temptemp(:,1) >= 5 & temptemp(:,1) < 6)),   ...
%                      length(find(temptemp(:,1) >= 6 & temptemp(:,1) < 7)),   ...
%                      length(find(temptemp(:,1) >= 7 & temptemp(:,1) < 8))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -2 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 4))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens
        

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -0.5 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 0.5)),   ...
%                      length(find(temptemp(:,1) >= 0.5 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 1.5)),   ...
%                      length(find(temptemp(:,1) >= 1.5 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.6))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1) * 2;
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

           behav_data = [];
           for k_dens = [1,3,5,7]
            object = find(PLR(:,1) == k_dens);
            time_trial_lick = [];
            for i_dens = 1:size(object,1)
              temp = [];
              temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
              if (length(temp) > 0)
                temptemp = temp(:,1) - SOACE(object(i_dens),2);

                 time_trial_lick = [time_trial_lick;   ...
                     length(find(temptemp(:,1) >= -4 & temptemp(:,1) < 0)),   ...
                     length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
                     length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.5))   ...
                 ];
              else
                  time_trial_lick = [time_trial_lick; 0,0,0]; 
              end
            end %i_dens
            
            temp_time_trial_lick = mean(time_trial_lick,1) ./ [4,2,0.5];
            %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
            %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
            behav_data = [behav_data; temp_time_trial_lick];
        end %k_dens
        
          %save
        else
         %load
        end

            behav_data_batch = cat(3, behav_data_batch, behav_data);

    end
end




figure('pos',[0,0,600,400]);
dotsize = 10;

subplot(4,1,1); hold on;
object = find(PLR(:,1) == 1);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

subplot(4,1,2); hold on;
object = find(PLR(:,1) == 3);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,3); hold on;
object = find(PLR(:,1) == 5);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,4); hold on;
object = find(PLR(:,1) == 7);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

behav_data_batch_wt = behav_data_batch;
 

% Fig. 2G2

clear i_list j_list


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12]; %!
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
% %
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
j_list{12} = [18]; %!
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            
            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************

            for i_close_align = 1:size(PLR,1)
                t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) = t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) - close_align(i_close_align)/20;
            end

%             behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
%                 for j_dens = 1:size(temptemp,1)
%                     temptemptemp = [];
%                       if (temptemp(j_dens,1) < 0)
%                         temptemptemp = [temptemptemp; 1,0,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 0 & temptemp(j_dens,1) < 1)
%                         temptemptemp = [temptemptemp; 0,1,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 1 & temptemp(j_dens,1) < 2)
%                         temptemptemp = [temptemptemp; 0,0,1,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 2 & temptemp(j_dens,1) < 3)
%                         temptemptemp = [temptemptemp; 0,0,0,1,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 3 & temptemp(j_dens,1) < 4)
%                         temptemptemp = [temptemptemp; 0,0,0,0,1,0,0,0,0];                    
%                         elseif (temptemp(j_dens,1) >= 4 & temptemp(j_dens,1) < 5)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,1,0,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 5 & temptemp(j_dens,1) < 6)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,1,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 6 & temptemp(j_dens,1) < 7)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,1,0];                     
%                         elseif (temptemp(j_dens,1) >= 7 & temptemp(j_dens,1) < 8)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,0,1]; 
%                       else
%                       end
%                      
%                 end %j_dens
%                  time_trial_lick = [time_trial_lick; mean(temptemptemp,1)];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

        
%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -1 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 3)),   ...
%                      length(find(temptemp(:,1) >= 3 & temptemp(:,1) < 4)),   ...
%                      length(find(temptemp(:,1) >= 4 & temptemp(:,1) < 5)),   ...
%                      length(find(temptemp(:,1) >= 5 & temptemp(:,1) < 6)),   ...
%                      length(find(temptemp(:,1) >= 6 & temptemp(:,1) < 7)),   ...
%                      length(find(temptemp(:,1) >= 7 & temptemp(:,1) < 8))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -2 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 4))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens
        

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -0.5 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 0.5)),   ...
%                      length(find(temptemp(:,1) >= 0.5 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 1.5)),   ...
%                      length(find(temptemp(:,1) >= 1.5 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.6))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1) * 2;
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

           behav_data = [];
           for k_dens = [1,3,5,7]
            object = find(PLR(:,1) == k_dens);
            time_trial_lick = [];
            for i_dens = 1:size(object,1)
              temp = [];
              temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
              if (length(temp) > 0)
                temptemp = temp(:,1) - SOACE(object(i_dens),2);

                 time_trial_lick = [time_trial_lick;   ...
                     length(find(temptemp(:,1) >= -4 & temptemp(:,1) < 0)),   ...
                     length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
                     length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.5))   ...
                 ];
              else
                  time_trial_lick = [time_trial_lick; 0,0,0]; 
              end
            end %i_dens
            
            temp_time_trial_lick = mean(time_trial_lick,1) ./ [4,2,0.5];
            %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
            %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
            behav_data = [behav_data; temp_time_trial_lick];
        end %k_dens
        
          %save
        else
         %load
        end

            behav_data_batch = cat(3, behav_data_batch, behav_data);

    end
end




figure('pos',[0,0,600,400]);
dotsize = 10;

subplot(4,1,1); hold on;
object = find(PLR(:,1) == 1);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

subplot(4,1,2); hold on;
object = find(PLR(:,1) == 3);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,3); hold on;
object = find(PLR(:,1) == 5);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,4); hold on;
object = find(PLR(:,1) == 7);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

behav_data_batch_asd = behav_data_batch;
 
%% Fig. 2H, 2I


clear i_list j_list


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12]; %!
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];
% %
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18]; %!
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            
            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************

            for i_close_align = 1:size(PLR,1)
                t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) = t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) - close_align(i_close_align)/20;
            end

%             behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
%                 for j_dens = 1:size(temptemp,1)
%                     temptemptemp = [];
%                       if (temptemp(j_dens,1) < 0)
%                         temptemptemp = [temptemptemp; 1,0,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 0 & temptemp(j_dens,1) < 1)
%                         temptemptemp = [temptemptemp; 0,1,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 1 & temptemp(j_dens,1) < 2)
%                         temptemptemp = [temptemptemp; 0,0,1,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 2 & temptemp(j_dens,1) < 3)
%                         temptemptemp = [temptemptemp; 0,0,0,1,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 3 & temptemp(j_dens,1) < 4)
%                         temptemptemp = [temptemptemp; 0,0,0,0,1,0,0,0,0];                    
%                         elseif (temptemp(j_dens,1) >= 4 & temptemp(j_dens,1) < 5)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,1,0,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 5 & temptemp(j_dens,1) < 6)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,1,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 6 & temptemp(j_dens,1) < 7)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,1,0];                     
%                         elseif (temptemp(j_dens,1) >= 7 & temptemp(j_dens,1) < 8)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,0,1]; 
%                       else
%                       end
%                      
%                 end %j_dens
%                  time_trial_lick = [time_trial_lick; mean(temptemptemp,1)];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

        
%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -1 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 3)),   ...
%                      length(find(temptemp(:,1) >= 3 & temptemp(:,1) < 4)),   ...
%                      length(find(temptemp(:,1) >= 4 & temptemp(:,1) < 5)),   ...
%                      length(find(temptemp(:,1) >= 5 & temptemp(:,1) < 6)),   ...
%                      length(find(temptemp(:,1) >= 6 & temptemp(:,1) < 7)),   ...
%                      length(find(temptemp(:,1) >= 7 & temptemp(:,1) < 8))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -2 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 4))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens
        

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -0.5 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 0.5)),   ...
%                      length(find(temptemp(:,1) >= 0.5 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 1.5)),   ...
%                      length(find(temptemp(:,1) >= 1.5 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.6))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1) * 2;
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

           behav_data = [];
           for k_dens = [1,3,5,7]
            object = find(PLR(:,1) == k_dens);
            time_trial_lick = [];
            for i_dens = 1:size(object,1)
              temp = [];
              temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
              if (length(temp) > 0)
                temptemp = temp(:,1) - SOACE(object(i_dens),2);

                 time_trial_lick = [time_trial_lick;   ...
                     length(find(temptemp(:,1) >= -4 & temptemp(:,1) < 0)),   ...
                     length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
                     length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.5))   ...
                 ];
              else
                  time_trial_lick = [time_trial_lick; 0,0,0]; 
              end
            end %i_dens
            
            temp_time_trial_lick = mean(time_trial_lick,1) ./ [4,2,0.5];
            %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
            %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
            behav_data = [behav_data; temp_time_trial_lick];
        end %k_dens
        
          %save
        else
         %load
        end

            behav_data_batch = cat(3, behav_data_batch, behav_data);

    end
end




figure('pos',[0,0,600,400]);
dotsize = 10;

subplot(4,1,1); hold on;
object = find(PLR(:,1) == 1);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

subplot(4,1,2); hold on;
object = find(PLR(:,1) == 3);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,3); hold on;
object = find(PLR(:,1) == 5);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,4); hold on;
object = find(PLR(:,1) == 7);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

behav_data_batch_wt = behav_data_batch;
 



clear i_list j_list


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12]; %!
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
% %
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18]; %!
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];

for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            
            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************

            for i_close_align = 1:size(PLR,1)
                t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) = t_lick_T(find(t_lick_T(:,2) == i_close_align) ,1) - close_align(i_close_align)/20;
            end

%             behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
%                 for j_dens = 1:size(temptemp,1)
%                     temptemptemp = [];
%                       if (temptemp(j_dens,1) < 0)
%                         temptemptemp = [temptemptemp; 1,0,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 0 & temptemp(j_dens,1) < 1)
%                         temptemptemp = [temptemptemp; 0,1,0,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 1 & temptemp(j_dens,1) < 2)
%                         temptemptemp = [temptemptemp; 0,0,1,0,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 2 & temptemp(j_dens,1) < 3)
%                         temptemptemp = [temptemptemp; 0,0,0,1,0,0,0,0,0];
%                         elseif (temptemp(j_dens,1) >= 3 & temptemp(j_dens,1) < 4)
%                         temptemptemp = [temptemptemp; 0,0,0,0,1,0,0,0,0];                    
%                         elseif (temptemp(j_dens,1) >= 4 & temptemp(j_dens,1) < 5)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,1,0,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 5 & temptemp(j_dens,1) < 6)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,1,0,0];                     
%                         elseif (temptemp(j_dens,1) >= 6 & temptemp(j_dens,1) < 7)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,1,0];                     
%                         elseif (temptemp(j_dens,1) >= 7 & temptemp(j_dens,1) < 8)
%                         temptemptemp = [temptemptemp; 0,0,0,0,0,0,0,0,1]; 
%                       else
%                       end
%                      
%                 end %j_dens
%                  time_trial_lick = [time_trial_lick; mean(temptemptemp,1)];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

        
%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -1 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 3)),   ...
%                      length(find(temptemp(:,1) >= 3 & temptemp(:,1) < 4)),   ...
%                      length(find(temptemp(:,1) >= 4 & temptemp(:,1) < 5)),   ...
%                      length(find(temptemp(:,1) >= 5 & temptemp(:,1) < 6)),   ...
%                      length(find(temptemp(:,1) >= 6 & temptemp(:,1) < 7)),   ...
%                      length(find(temptemp(:,1) >= 7 & temptemp(:,1) < 8))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -2 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 4))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1);
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens
        

%            behav_data = [];
%            for k_dens = [1,3,5,7]
%             object = find(PLR(:,1) == k_dens);
%             time_trial_lick = [];
%             for i_dens = 1:size(object,1)
%               temp = [];
%               temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
%               if (length(temp) > 0)
%                 temptemp = temp(:,1) - SOACE(object(i_dens),2);
% 
%                  time_trial_lick = [time_trial_lick;   ...
%                      length(find(temptemp(:,1) >= -0.5 & temptemp(:,1) < 0)),   ...
%                      length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 0.5)),   ...
%                      length(find(temptemp(:,1) >= 0.5 & temptemp(:,1) < 1)),   ...
%                      length(find(temptemp(:,1) >= 1 & temptemp(:,1) < 1.5)),   ...
%                      length(find(temptemp(:,1) >= 1.5 & temptemp(:,1) < 2)),   ...
%                      length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.6))   ...
%                  ];
%               else
%                   time_trial_lick = [time_trial_lick; 0,0,0,0,0,0]; 
%               end
%             end %i_dens
%             
%             temp_time_trial_lick = mean(time_trial_lick,1) * 2;
%             %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
%             %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
%             behav_data = [behav_data; temp_time_trial_lick];
%         end %k_dens

           behav_data = [];
           for k_dens = [1,3,5,7]
            object = find(PLR(:,1) == k_dens);
            time_trial_lick = [];
            for i_dens = 1:size(object,1)
              temp = [];
              temp = t_lick_T(find(t_lick_T(:,2) == object(i_dens)) ,:);
              if (length(temp) > 0)
                temptemp = temp(:,1) - SOACE(object(i_dens),2);

                 time_trial_lick = [time_trial_lick;   ...
                     length(find(temptemp(:,1) >= -4 & temptemp(:,1) < 0)),   ...
                     length(find(temptemp(:,1) >= 0 & temptemp(:,1) < 2)),   ...
                     length(find(temptemp(:,1) >= 2 & temptemp(:,1) < 2.5))   ...
                 ];
              else
                  time_trial_lick = [time_trial_lick; 0,0,0]; 
              end
            end %i_dens
            
            temp_time_trial_lick = mean(time_trial_lick,1) ./ [4,2,0.5];
            %temp_time_trial_lick = temp_time_trial_lick - min(temp_time_trial_lick);
            %temp_time_trial_lick = temp_time_trial_lick / max(temp_time_trial_lick);
            behav_data = [behav_data; temp_time_trial_lick];
        end %k_dens
        
          %save
        else
         %load
        end

            behav_data_batch = cat(3, behav_data_batch, behav_data);

    end
end




figure('pos',[0,0,600,400]);
dotsize = 10;

subplot(4,1,1); hold on;
object = find(PLR(:,1) == 1);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

subplot(4,1,2); hold on;
object = find(PLR(:,1) == 3);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,3); hold on;
object = find(PLR(:,1) == 5);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);
 
subplot(4,1,4); hold on;
object = find(PLR(:,1) == 7);
time_trial_lick = [];
for i = 1:size(object,1)
    temp = [];
    temp = t_lick_T(find(t_lick_T(:,2) == object(i)) ,:);
    if (length(temp) > 0)
     temptemp = temp(:,1) - SOACE(object(i),2);
     for j = 1:size(temptemp,1)
         scatter(temptemp(j,1),i,    dotsize, 'k', '.');
     end %j
    end
end %i
 xlim([-5, 3]);
 ylim([0,120]);

behav_data_batch_asd = behav_data_batch;
 

[h, p] = ttest2(behav_data_batch_wt(1,1,:),behav_data_batch_asd(1,1,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(2,1,:),behav_data_batch_asd(2,1,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(3,1,:),behav_data_batch_asd(3,1,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(4,1,:),behav_data_batch_asd(4,1,:));
disp(p);


[h, p] = ttest2(behav_data_batch_wt(1,2,:),behav_data_batch_asd(1,2,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(2,2,:),behav_data_batch_asd(2,2,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(3,2,:),behav_data_batch_asd(3,2,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(4,2,:),behav_data_batch_asd(4,2,:));
disp(p);


[h, p] = ttest2(behav_data_batch_wt(1,3,:),behav_data_batch_asd(1,3,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(2,3,:),behav_data_batch_asd(2,3,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(3,3,:),behav_data_batch_asd(3,3,:));
disp(p);
[h, p] = ttest2(behav_data_batch_wt(4,3,:),behav_data_batch_asd(4,3,:));
disp(p);
%  
% 
% [h, p] = ttest2(behav_data_batch_wt(3,2,:),behav_data_batch_wt(3,3,:));
% disp(p*3);
% 
% 
% 
figure('pos',[0,0,900,400]);

k = 1;

subplot(1,3,1);
wt = squeeze(behav_data_batch_wt(k,1,:));
asd = squeeze(behav_data_batch_asd(k,1,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

subplot(1,3,2);
wt = squeeze(behav_data_batch_wt(k,2,:));
asd = squeeze(behav_data_batch_asd(k,2,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

subplot(1,3,3);
wt = squeeze(behav_data_batch_wt(k,3,:));
asd = squeeze(behav_data_batch_asd(k,3,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

figure('pos',[0,0,900,400]);

k = 3;

subplot(1,3,1);
wt = squeeze(behav_data_batch_wt(k,1,:));
asd = squeeze(behav_data_batch_asd(k,1,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

subplot(1,3,2);
wt = squeeze(behav_data_batch_wt(k,2,:));
asd = squeeze(behav_data_batch_asd(k,2,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

subplot(1,3,3);
wt = squeeze(behav_data_batch_wt(k,3,:));
asd = squeeze(behav_data_batch_asd(k,3,:));
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([0, 6]);
%line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p*3);

%% Fig. 3A, 3B, 3C

clear i_list j_list

% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];





[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end




figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

wt = pieData_temp(:,1) + pieData_temp(:,3);
wt_r = pieData_temp(:,2) + pieData_temp(:,3);

clear i_list j_list



% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

asd = pieData_temp(:,1) + pieData_temp(:,3);
asd_r = pieData_temp(:,2) + pieData_temp(:,3);




%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
errlow = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.45]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);

wt = wt_r;
asd = asd_r;
%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
errlow = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.35]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Fig. 3D

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_MO_batch;



 clear i_list j_list

% SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_MO_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



% ylim([45 85]);
ylim([45 100]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;

%% Fig. 3E

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);






%% Fig. 3F

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_RN_batch;



 clear i_list j_list

% SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_RN_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



% ylim([45 85]);
ylim([45 100]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;



%% Fig. 3G

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_RN_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_RN_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);



%% Fig. 3H, 3I

clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];





[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

wt_before = pieData_temp(:,1);


clear i_list j_list

% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];





[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end




figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

wt_after = pieData_temp(:,1) + pieData_temp(:,3);
wt_r = pieData_temp(:,2) + pieData_temp(:,3);


wt = wt_before;
asd = wt_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.45]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);

% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



clear i_list j_list

% 
% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];




[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

asd_before = pieData_temp(:,1);


clear i_list j_list

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

asd_after = pieData_temp(:,1) + pieData_temp(:,3);
asd_r = pieData_temp(:,2) + pieData_temp(:,3);



wt = asd_before;
asd = asd_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.45]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);





wt = wt_after ./ wt_before([1,2,4,5,7,8,9]);
asd = asd_after ./ asd_before([1,3,4,5,6,8]);

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
% ylim([0, 0.45]);
% line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);

%% Fig. 3J

 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt_before = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt_after = SVM_MO_batch(:,1) * 100;



wt = wt_before;
asd = wt_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);

% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd_before = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd_after = SVM_MO_batch(:,1) * 100;



wt = asd_before;
asd = asd_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);



%% Fig. 4A, 4B

 clear i_list j_list


% During - After Training (WT)
clear i_list j_list
j_list{1} = [4,5,6,7,8,9,10,11,12,13,14];
j_list{2} = [4,5,6,7,8];
j_list{4} = [4,5,6,7,8,9,10,11];
j_list{5} = [4,5,6,7,8,9,10,11,12];
j_list{7} = [4,5,6,7,8,9,10,11];
j_list{8} = [1,2,3,4,5];
j_list{9} = [1,2,3,4,5];

% % During - After Training (SHANK2)
% clear i_list j_list
% j_list{10} = [4,5,6,7,8,9,10,11,12,13,14,15];
% j_list{12} = [4,5,6,7,8,9,18,19,20];
% j_list{13} = [4,5,6,7,8,9,15,16,17];
% j_list{14} = [4,8,11,12,13,14,15,16,17];
% j_list{15} = [4,9,14,15,16,17];
% j_list{17} = [4,5,6,7,8,9,14,15,16,18,19,20,21];
% % 
% 

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list


behav_data_batch_wt = behav_data_batch;
SVM_MO_batch_wt = SVM_MO_batch;
SVM_RN_batch_wt = SVM_RN_batch;



 clear i_list j_list


% During - After Training (WT)
clear i_list j_list
% j_list{1} = [4,5,6,7,8,9,10,11,12,13,14];
% j_list{2} = [4,5,6,7,8];
% j_list{4} = [4,5,6,7,8,9,10,11];
% j_list{5} = [4,5,6,7,8,9,10,11,12];
% j_list{7} = [4,5,6,7,8,9,10,11];
% j_list{8} = [1,2,3,4,5];
% j_list{9} = [1,2,3,4,5];

% % During - After Training (SHANK2)
% clear i_list j_list
j_list{10} = [4,5,6,7,8,9,10,11,12,13,14,15];
j_list{12} = [4,5,6,7,8,9,18,19,20];
j_list{13} = [4,5,6,7,8,9,15,16,17];
j_list{14} = [4,8,11,12,13,14,15,16,17];
j_list{15} = [4,9,14,15,16,17];
j_list{17} = [4,5,6,7,8,9,14,15,16,18,19,20,21];
% % 
% 

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list


behav_data_batch_asd = behav_data_batch;
SVM_MO_batch_asd = SVM_MO_batch;
SVM_RN_batch_asd = SVM_RN_batch;




figure('pos',[0,0,500,400]);

xx = 45:0.1:95;
yy = [];
for k = [1,2,4,5,7,8,9]
object1 = behav_data_batch_wt;
object2 = SVM_MO_batch_wt*100;
 selected = find(object2(:,2) == k*100);
 object1 = object1(selected,1);
 object2 = object2(selected,1);
dotsize = 100;
scatter(object1, object2,       dotsize, 'b', '.');
hold on;
mdl = fitlm(object1, object2);
%plot(object1, mdl.Coefficients.Estimate(2) * object1 + mdl.Coefficients.Estimate(1),          'b');
disp(mdl.Coefficients.pValue(2));
xlim([40, 100]);
ylim([40, 100]);
yy = [yy; mdl.Coefficients.Estimate(2) * xx + mdl.Coefficients.Estimate(1)];
end
hold on;
object = yy;
plot(xx, mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = xx;
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

xx = 45:0.1:95;
yy = [];
for k = [10,12,13,14,15,17]
object1 = behav_data_batch_asd;
object2 = SVM_MO_batch_asd*100;
 selected = find(object2(:,2) == k*100);
 object1 = object1(selected,1);
 object2 = object2(selected,1);
dotsize = 100;
scatter(object1, object2,       dotsize, 'r', '.');
hold on;
mdl = fitlm(object1, object2);
%plot(object1, mdl.Coefficients.Estimate(2) * object1 + mdl.Coefficients.Estimate(1),          'r');
disp(mdl.Coefficients.pValue(2));
xlim([40, 100]);
ylim([40, 100]);
yy = [yy; mdl.Coefficients.Estimate(2) * xx + mdl.Coefficients.Estimate(1)];
end
hold on;
object = yy;
plot(xx, mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = xx;
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end





figure('pos',[0,0,500,400]);

xx = 45:0.1:95;
yy = [];
for k = [1,2,4,5,7,8,9]
object1 = behav_data_batch_wt;
object2 = SVM_RN_batch_wt*100;
 selected = find(object2(:,2) == k*100);
 object1 = object1(selected,1);
 object2 = object2(selected,1);
dotsize = 100;
scatter(object1, object2,       dotsize, 'b', '.');
hold on;
mdl = fitlm(object1, object2);
%plot(object1, mdl.Coefficients.Estimate(2) * object1 + mdl.Coefficients.Estimate(1),          'b');
disp(mdl.Coefficients.pValue(2));
xlim([40, 100]);
ylim([40, 100]);
yy = [yy; mdl.Coefficients.Estimate(2) * xx + mdl.Coefficients.Estimate(1)];
end
hold on;
object = yy;
plot(xx, mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = xx;
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

xx = 45:0.1:95;
yy = [];
for k = [10,12,13,14,15,17]
object1 = behav_data_batch_asd;
object2 = SVM_RN_batch_asd*100;
 selected = find(object2(:,2) == k*100);
 object1 = object1(selected,1);
 object2 = object2(selected,1);
dotsize = 100;
scatter(object1, object2,       dotsize, 'r', '.');
hold on;
mdl = fitlm(object1, object2);
%plot(object1, mdl.Coefficients.Estimate(2) * object1 + mdl.Coefficients.Estimate(1),          'r');
disp(mdl.Coefficients.pValue(2));
xlim([40, 100]);
ylim([40, 100]);
yy = [yy; mdl.Coefficients.Estimate(2) * xx + mdl.Coefficients.Estimate(1)];
end
hold on;
object = yy;
plot(xx, mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = xx;
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end

%% Fig. 4C, 4D

clear i_list j_list

% WT After Training (Day #1-3)
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

% SHANK2 After Training (Day #3)
callsign = 'asd_at_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];



cellreg_list = zeros(7,3);
cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
cellreg_list(2,:) = [2, 6, 7];
cellreg_list(3,:) = [4, 9, 10];
cellreg_list(4,:) = [5, 10, 11];
cellreg_list(5,:) = [7, 9, 10];
cellreg_list(6,:) = [8, 1, 2];
cellreg_list(7,:) = [9, 1, 2];
% % % % 
% cellreg_list = zeros(6,3);
% cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
% cellreg_list(2,:) = [12, 18, 19];
% cellreg_list(3,:) = [13, 15, 16];
% cellreg_list(4,:) = [14, 11, 12];
% cellreg_list(5,:) = [15, 14, 15];
% cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

for i_batch = 1:size(cellreg_list,1)
% for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object1 = MO_DI(cellreg_proper(:,1),:);
% object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object2 = MO_DI(cellreg_proper(:,2),:);
% object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch




object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);

wt = r_batch;



% cellreg_list = zeros(7,3);
% cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
% cellreg_list(2,:) = [2, 6, 7];
% cellreg_list(3,:) = [4, 9, 10];
% cellreg_list(4,:) = [5, 10, 11];
% cellreg_list(5,:) = [7, 9, 10];
% cellreg_list(6,:) = [8, 1, 2];
% cellreg_list(7,:) = [9, 1, 2];
% % % % 
cellreg_list = zeros(6,3);
cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
cellreg_list(2,:) = [12, 18, 19];
cellreg_list(3,:) = [13, 15, 16];
cellreg_list(4,:) = [14, 11, 12];
cellreg_list(5,:) = [15, 14, 15];
cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

for i_batch = 1:size(cellreg_list,1)
% for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object1 = MO_DI(cellreg_proper(:,1),:);
% object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object2 = MO_DI(cellreg_proper(:,2),:);
% object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch


object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);

asd = r_batch;



% wt = r_batch;
% asd = r_batch;

% wt = abs(cellreg_batch(:,1) - cellreg_batch(:,2));
% asd = abs(cellreg_batch(:,1) - cellreg_batch(:,2));

%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0.4, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);





clear i_list j_list

% WT After Training (Day #1-3)
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

% SHANK2 After Training (Day #3)
callsign = 'asd_at_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];


cellreg_list = zeros(7,3);
cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
cellreg_list(2,:) = [2, 6, 7];
cellreg_list(3,:) = [4, 9, 10];
cellreg_list(4,:) = [5, 10, 11];
cellreg_list(5,:) = [7, 9, 10];
cellreg_list(6,:) = [8, 1, 2];
cellreg_list(7,:) = [9, 1, 2];
% % % % 
% cellreg_list = zeros(6,3);
% cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
% cellreg_list(2,:) = [12, 18, 19];
% cellreg_list(3,:) = [13, 15, 16];
% cellreg_list(4,:) = [14, 11, 12];
% cellreg_list(5,:) = [15, 14, 15];
% cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

for i_batch = 1:size(cellreg_list,1)
% for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object1 = MO_DI(cellreg_proper(:,1),:);
object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object2 = MO_DI(cellreg_proper(:,2),:);
object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch




object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);

wt = r_batch;



% cellreg_list = zeros(7,3);
% cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
% cellreg_list(2,:) = [2, 6, 7];
% cellreg_list(3,:) = [4, 9, 10];
% cellreg_list(4,:) = [5, 10, 11];
% cellreg_list(5,:) = [7, 9, 10];
% cellreg_list(6,:) = [8, 1, 2];
% cellreg_list(7,:) = [9, 1, 2];
% % % % 
cellreg_list = zeros(6,3);
cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
cellreg_list(2,:) = [12, 18, 19];
cellreg_list(3,:) = [13, 15, 16];
cellreg_list(4,:) = [14, 11, 12];
cellreg_list(5,:) = [15, 14, 15];
cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

for i_batch = 1:size(cellreg_list,1)
% for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object1 = MO_DI(cellreg_proper(:,1),:);
object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object2 = MO_DI(cellreg_proper(:,2),:);
object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch




object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);

asd = r_batch;



% wt = r_batch;
% asd = r_batch;

% wt = abs(cellreg_batch(:,1) - cellreg_batch(:,2));
% asd = abs(cellreg_batch(:,1) - cellreg_batch(:,2));

%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0.4, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Fig. 4E

clear i_list j_list

% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];





[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

wt = pieData_temp(:,1);

clear i_list j_list



% % SHANK2 Passive Presentation after Training (Day #1)
% clear i_list j_list
% callsign = 'asd_pt_1';
j_list{10} = [16];
j_list{12} = [21];
j_list{13} = [18];
j_list{14} = [18];
j_list{15} = [18];
j_list{17} = [22];




[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

asd = pieData_temp(:,1);

%%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
errlow = [std(wt,[],1) / size(wt,1), std(asd,[],1) / size(asd,1)];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
% for i = 1:size(wt,1)
%   line([1,2], [wt(i),asd(i)], 'Color', 'k');
% end
ylim([0, 0.14]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);




%% Fig. 4F

 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_MO_batch;



 clear i_list j_list

% SHANK2 Passive Presentation after Training (Day #1)
clear i_list j_list
callsign = 'asd_pt_1';
j_list{10} = [16];
j_list{12} = [21];
j_list{13} = [18];
j_list{14} = [18];
j_list{15} = [18];
j_list{17} = [22];

%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_MO_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'g');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'g', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



% ylim([45 85]);
ylim([45 65]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;


%% Fig. 4G

 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% SHANK2 Passive Presentation after Training (Day #1)
clear i_list j_list
callsign = 'asd_pt_1';
j_list{10} = [16];
j_list{12} = [21];
j_list{13} = [18];
j_list{14} = [18];
j_list{15} = [18];
j_list{17} = [22];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 65]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);




%% Supp. 1A

 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];

% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
% j_list{10} = [3];
% j_list{11} = [3];
% j_list{12} = [3];
% j_list{13} = [3];
% j_list{14} = [3];
% j_list{15} = [3];
% j_list{16} = [3];
% j_list{17} = [3];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


mean_activity_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social'];
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials'];
        DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];
        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;


            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            ctt = permute(trace, [3,1,2]);

            posM = [C1_indices;C2_indices];
            posO = [C3_indices;C4_indices];
            posR = [C1_indices;C3_indices];
            posN = [C2_indices;C4_indices];



            activity_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,:),2),1));
            base_mean = squeeze(mean(mean(ctt(:,1:20*3,:),2),1));
            
            activity_half1_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,1:round(size(PLR,1) / 2)),2),1));
            activity_half2_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,round(size(PLR,1) / 2)+1:end),2),1));

%             mean_activity_batch = [mean_activity_batch; mean(base_mean), mean(activity_mean)];
            mean_activity_batch = [mean_activity_batch; mean(base_mean), mean(activity_mean), mean(activity_half1_mean), mean(activity_half2_mean)];

    end

    end
end



mean_activity_batch_wt = mean_activity_batch;

clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
% 

% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


mean_activity_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social'];
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials'];
        DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];
        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;


            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            ctt = permute(trace, [3,1,2]);

            posM = [C1_indices;C2_indices];
            posO = [C3_indices;C4_indices];
            posR = [C1_indices;C3_indices];
            posN = [C2_indices;C4_indices];



            activity_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,:),2),1));
            base_mean = squeeze(mean(mean(ctt(:,1:20*3,:),2),1));


            activity_half1_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,1:round(size(PLR,1) / 2)),2),1));
            activity_half2_mean = squeeze(mean(mean(ctt(:,20*3 + 1:20*6,round(size(PLR,1) / 2)+1:end),2),1));

%             mean_activity_batch = [mean_activity_batch; mean(base_mean), mean(activity_mean)];
            mean_activity_batch = [mean_activity_batch; mean(base_mean), mean(activity_mean), mean(activity_half1_mean), mean(activity_half2_mean)];


    end

    end
end

mean_activity_batch_asd = mean_activity_batch;



%%% #fig
figure('pos',[0,0,300,400]);
% wt = mean_activity_batch_wt(:,1); % 1 = base, 2 = activity
% asd = mean_activity_batch_asd(:,1); % 1 = base, 2 = activity
wt = mean_activity_batch_wt(:,2) ./ mean_activity_batch_wt(:,1);
asd = mean_activity_batch_asd(:,2)./ mean_activity_batch_asd(:,1);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);





%% Supp. 1B


clear i_list j_list
% 
% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];

% % % %
% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
% 




% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
% j_list{10} = [3];
% j_list{11} = [3];
% j_list{12} = [3];
% j_list{13} = [3];
% j_list{14} = [3];
% j_list{15} = [3];
% j_list{16} = [3];
% j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


cell_profile_batch = [];
clear cell_profile_cell;
cell_profile_cell = cell(length(i_list),1);
celli = 0;

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social'];
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials'];
        DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];
        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;


            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            ctt = permute(trace, [3,1,2]);

            posM = [C1_indices;C2_indices];
            posO = [C3_indices;C4_indices];
            posR = [C1_indices;C3_indices];
            posN = [C2_indices;C4_indices];

            cell_profile = [];

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posM),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posM),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
              [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
              if isfield(stat, 'zval')
                zval(i_profile) = stat.zval;
              else
                zval(i_profile) = 0;
              end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,1) = 1;
            cell_profile(cell_inhibited,2) = 1;

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posO),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posO),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
            [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
             if isfield(stat, 'zval')
               zval(i_profile) = stat.zval;
             else
               zval(i_profile) = 0;
             end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,3) = 1;
            cell_profile(cell_inhibited,4) = 1;

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posR),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posR),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
             [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
             if isfield(stat, 'zval')
              zval(i_profile) = stat.zval;
             else
               zval(i_profile) = 0;
             end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,5) = 1;
            cell_profile(cell_inhibited,6) = 1;

            cell_profile_batch = [cell_profile_batch; cell_profile];
            celli = celli + 1;
            cell_profile_cell{celli,1} = cell_profile;
    end

    end
end



cell_profile_cell_wt = cell_profile_cell;


clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];

% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
% %
% 


% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


cell_profile_batch = [];
clear cell_profile_cell;
cell_profile_cell = cell(length(i_list),1);
celli = 0;

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social'];
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials'];
        DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];
        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;


            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            ctt = permute(trace, [3,1,2]);

            posM = [C1_indices;C2_indices];
            posO = [C3_indices;C4_indices];
            posR = [C1_indices;C3_indices];
            posN = [C2_indices;C4_indices];

            cell_profile = [];

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posM),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posM),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
              [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
              if isfield(stat, 'zval')
                zval(i_profile) = stat.zval;
              else
                zval(i_profile) = 0;
              end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,1) = 1;
            cell_profile(cell_inhibited,2) = 1;

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posO),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posO),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
            [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
             if isfield(stat, 'zval')
               zval(i_profile) = stat.zval;
             else
               zval(i_profile) = 0;
             end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,3) = 1;
            cell_profile(cell_inhibited,4) = 1;

            activity_mean = squeeze(mean(ctt(:,20*3 + 1:20*6,posR),2));
            base_mean = squeeze(mean(ctt(:,1:20*3,posR),2));
            p = zeros(size(ctt,1), 1);
            h = zeros(size(ctt,1), 1);
            zval = zeros(size(ctt,1), 1);
            for i_profile = 1:size(activity_mean,1)
             [p(i_profile), h(i_profile), stat] = signrank(activity_mean(i_profile,:), base_mean(i_profile,:), 'method', 'approximate');
             if isfield(stat, 'zval')
              zval(i_profile) = stat.zval;
             else
               zval(i_profile) = 0;
             end
            end
            cell_activated = find(h == 1 & zval > 0);
            cell_inhibited = find(h == 1 & zval < 0);
            cell_profile(cell_activated,5) = 1;
            cell_profile(cell_inhibited,6) = 1;

            cell_profile_batch = [cell_profile_batch; cell_profile];
            celli = celli + 1;
            cell_profile_cell{celli,1} = cell_profile;

    end

    end
end

  cell_profile_cell_asd = cell_profile_cell;



%%% #fig
figure('pos',[0,0,300,400]);

object = cell_profile_cell_wt;
subject = [];
for i = 1:size(object)
    temp = object{i,1};
    subject = [subject; mean(temp(:,1))]; % 1 = Mouse Activated, 2 = Mouse Inhibited
end
wt = subject;

object = cell_profile_cell_asd;
subject = [];
for i = 1:size(object)
    temp = object{i,1};
    subject = [subject; mean(temp(:,1))];% 1 = Mouse Activated, 2 = Mouse Inhibited
end
asd = subject;

barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);





%%% #fig
figure('pos',[0,0,300,400]);

object = cell_profile_cell_wt;
subject = [];
for i = 1:size(object)
    temp = object{i,1};
    subject = [subject; mean(temp(:,2))]; % 1 = Mouse Activated, 2 = Mouse Inhibited
end
wt = subject;

object = cell_profile_cell_asd;
subject = [];
for i = 1:size(object)
    temp = object{i,1};
    subject = [subject; mean(temp(:,2))];% 1 = Mouse Activated, 2 = Mouse Inhibited
end
asd = subject;

barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
%ylim([0, 1]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);



%% Supp. 2A

wt = [276, 410, 286, 477, 233, 348, 450, 320, 352]';
asd = [273, 343, 305, 404, 299, 335, 253, 284]';

figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end

box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 2B


 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2_least'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2_least'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2_least'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2_least'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2_least'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2_least'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2_least'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2_least'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

%             load(SVM_R_MO_matfile, 'accuracy');
%               SVM_R_MO = accuracy;
%             load(SVM_N_MO_matfile, 'accuracy');
%               SVM_N_MO = accuracy;
%             load(SVM_M_RN_matfile, 'accuracy');
%               SVM_M_RN = accuracy;
%             load(SVM_O_RN_matfile, 'accuracy');
%               SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy_least');
            accuracy = mean(accuracy_least);
              SVM_MO = accuracy;
%             load(SVM_RN_matfile, 'accuracy');
%               SVM_RN = accuracy;
%             load(SVM_MR_ON_matfile, 'accuracy');
%               SVM_MR_ON = accuracy;
%             load(SVM_MN_OR_matfile, 'accuracy');
%               SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off


        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;



 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2_least'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2_least'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2_least'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2_least'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2_least'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2_least'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2_least'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2_least'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

%             load(SVM_R_MO_matfile, 'accuracy');
%               SVM_R_MO = accuracy;
%             load(SVM_N_MO_matfile, 'accuracy');
%               SVM_N_MO = accuracy;
%             load(SVM_M_RN_matfile, 'accuracy');
%               SVM_M_RN = accuracy;
%             load(SVM_O_RN_matfile, 'accuracy');
%               SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy_least');
            accuracy = mean(accuracy_least);
              SVM_MO = accuracy;
%             load(SVM_RN_matfile, 'accuracy');
%               SVM_RN = accuracy;
%             load(SVM_MR_ON_matfile, 'accuracy');
%               SVM_MR_ON = accuracy;
%             load(SVM_MN_OR_matfile, 'accuracy');
%               SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off


        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;



figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end

ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 3A


 clear i_list j_list

%
% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
%
% % WT After Training (Day #2)
% clear i_list j_list
% callsign = 'wt_at_2';
% j_list{1} = [13];
% j_list{2} = [7];
% j_list{4} = [10];
% j_list{5} = [11];
% j_list{7} = [10];
% j_list{8} = [2];
% j_list{9} = [2];
%
% % WT After Training (Day #3)
% clear i_list j_list
% callsign = 'wt_at_3';
% j_list{1} = [14];
% j_list{2} = [8];
% j_list{4} = [11];
% j_list{5} = [12];
% j_list{7} = [11];
%
% WT After Training (Day #1-3)
clear i_list j_list
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];
%
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
%
% % SHANK2 After Training (Day #2)
% clear i_list j_list
% callsign = 'asd_at_2';
% j_list{10} = [14];
% j_list{12} = [19];
% j_list{13} = [16];
% j_list{14} = [12];
% j_list{15} = [15];
% j_list{17} = [20];
%
% % SHANK2 After Training (Day #3)
% clear i_list j_list
% callsign = 'asd_at_3';
% j_list{10} = [15];
% j_list{12} = [20];
% j_list{13} = [17];
% j_list{14} = [17];
% j_list{15} = [17];
% j_list{17} = [21];
%
% % SHANK2 After Training (Day #1-3)
% clear i_list j_list
% callsign = 'asd_at_1_3';
% j_list{10} = [13,14,15];
% j_list{12} = [18,19,20];
% j_list{13} = [15,16,17];
% j_list{14} = [11,12,17];
% j_list{15} = [14,15,17];
% j_list{17} = [19,20,21];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];


for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];




              % % % % % % % % % % % % % % % % % % % % % % % % %



             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];

          %save
        else
         %load
        end



    end
end

%%% #fig
figure('pos',[0,0,300,400]);
object = hmfc_ratio_batch
barData = mean(object,1);
bar([1,2], barData, 'w');
errhigh = std(object,[],1) / sqrt(size(object,1));
errlow = std(object,[],1) / sqrt(size(object,1));
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(object,1)
    scatter(1,object(i,1));
end
for i = 1:size(object,1)
    scatter(2,object(i,2));
end
ylim([0, 1]);
box off;
[h,p] = ttest(object(:,1),object(:,2));
disp(p);


clear i_list j_list

%
% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
% j_list{1} = [12];
% j_list{2} = [6];
% j_list{4} = [9];
% j_list{5} = [10];
% j_list{7} = [9];
% j_list{8} = [1];
% j_list{9} = [1];
%
% % WT After Training (Day #2)
% clear i_list j_list
% callsign = 'wt_at_2';
% j_list{1} = [13];
% j_list{2} = [7];
% j_list{4} = [10];
% j_list{5} = [11];
% j_list{7} = [10];
% j_list{8} = [2];
% j_list{9} = [2];
%
% % WT After Training (Day #3)
% clear i_list j_list
% callsign = 'wt_at_3';
% j_list{1} = [14];
% j_list{2} = [8];
% j_list{4} = [11];
% j_list{5} = [12];
% j_list{7} = [11];
%
% % WT After Training (Day #1-3)
% clear i_list j_list
% callsign = 'wt_at_1_3';
% j_list{1} = [12,13,14];
% j_list{2} = [6,7,8];
% j_list{4} = [9,10,11];
% j_list{5} = [10,11,12];
% j_list{7} = [9,10,11];
% j_list{8} = [1,2];
% j_list{9} = [1,2];
%
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
% j_list{10} = [13];
% j_list{12} = [18];
% j_list{13} = [15];
% j_list{14} = [11];
% j_list{15} = [14];
% j_list{17} = [19];
%
% % SHANK2 After Training (Day #2)
% clear i_list j_list
% callsign = 'asd_at_2';
% j_list{10} = [14];
% j_list{12} = [19];
% j_list{13} = [16];
% j_list{14} = [12];
% j_list{15} = [15];
% j_list{17} = [20];
%
% % SHANK2 After Training (Day #3)
% clear i_list j_list
% callsign = 'asd_at_3';
% j_list{10} = [15];
% j_list{12} = [20];
% j_list{13} = [17];
% j_list{14} = [17];
% j_list{15} = [17];
% j_list{17} = [21];
%
% SHANK2 After Training (Day #1-3)
clear i_list j_list
callsign = 'asd_at_1_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

behav_data_batch = [];
hmfc_ratio_batch = [];
hmfc_M_ratio_batch = [];
hmfc_O_ratio_batch = [];


for i= i_list
    for j=j_list{i}

        run_or_not = 1;

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];




              % % % % % % % % % % % % % % % % % % % % % % % % %



             hmfc_M = [...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 1 | PLR(:,1) == 3) & PLR(:,3) == 4)   ),...
              ];

             hmfc_O = [...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 1)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 2)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 3)   ),...
                length(   find((PLR(:,1) == 5 | PLR(:,1) == 7) & PLR(:,3) == 4)   ),...
              ];

          hmfc_ratio = [(hmfc_M(1) + hmfc_O(1)) / (hmfc_M(1) + hmfc_M(2) + hmfc_O(1) + hmfc_O(2)), (hmfc_M(4) + hmfc_O(4)) / (hmfc_M(3) + hmfc_M(4) + hmfc_O(3) + hmfc_O(4))];
          hmfc_M_ratio = [hmfc_M(1) / (hmfc_M(1) + hmfc_M(2)), hmfc_M(4) / (hmfc_M(3) + hmfc_M(4))];
          hmfc_O_ratio = [hmfc_O(1) / (hmfc_O(1) + hmfc_O(2)), hmfc_O(4) / (hmfc_O(3) + hmfc_O(4))];

          hmfc_ratio_batch = [hmfc_ratio_batch; hmfc_ratio];
          hmfc_M_ratio_batch = [hmfc_M_ratio_batch; hmfc_M_ratio];
          hmfc_O_ratio_batch = [hmfc_O_ratio_batch; hmfc_O_ratio];

          %save
        else
         %load
        end



    end
end

%%% #fig
figure('pos',[0,0,300,400]);
object = hmfc_ratio_batch
barData = mean(object,1);
bar([1,2], barData, 'w');
errhigh = std(object,[],1) / sqrt(size(object,1));
errlow = std(object,[],1) / sqrt(size(object,1));
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(object,1)
    scatter(1,object(i,1));
end
for i = 1:size(object,1)
    scatter(2,object(i,2));
end
ylim([0, 1]);
box off;
[h,p] = ttest(object(:,1),object(:,2));
disp(p);


%% Supp. 4A

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_R_MO_batch(:,1) * 100;


 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_N_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 4B

 clear i_list j_list

% % % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_R_MO_batch(:,1) * 100;


 clear i_list j_list

% % % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_N_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);






%% Supp. 4C

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_R_MO_batch;



 clear i_list j_list

% SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_R_MO_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



% ylim([45 85]);
ylim([45 100]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;


%% Supp. 4D

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_R_MO_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_R_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);




%% Supp. 4E

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

wt = SVM_N_MO_batch;



 clear i_list j_list

% SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

%


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%          SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_equalTrials_v2'];
%          SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_equalTrials_v2'];
%          SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_equalTrials_v2'];
%          SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_equalTrials_v2'];
%          SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_equalTrials_v2'];
%          SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_equalTrials_v2'];
%          SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_equalTrials_v2'];
%          SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_equalTrials_v2'];

        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVM_MN_OR_close_equalTrials_v2'];


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];



    end %j_list
end %i_list

asd = SVM_N_MO_batch;

%%% #fig
figure('pos',[0,0,500,400]);

object = wt*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'b');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'b', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end


hold on;

object = asd*100;
plot([-1+1/20:1/20:3], mean(object,1) ,'r');
hold on;
%shade_start
stdshade_top = mean(object,1) + std(object,[],1)/sqrt(size(object,1));
stdshade_bottom = mean(object,1) - std(object,[],1)/sqrt(size(object,1));
x1 = [-1+1/20:1/20:3];
patch([x1(:); flipud(x1(:))],[stdshade_bottom(:); flipud(stdshade_top(:))], 'r', 'FaceAlpha',0.2, 'EdgeColor','none');
%shade_end



% ylim([45 85]);
ylim([45 100]);
line([0 0], ylim, 'Color', 'k', 'LineStyle', '--');
box off;


%% Supp. 4F

 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_N_MO_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_N_MO_batch(:,1) * 100;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 4G

wt = [172, 402, 418, 315, 616, 288, 332]';
asd = [375, 372, 447, 314, 375, 268]';

figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end

box off;
[h,p] = ttest2(wt,asd);
disp(p);

%% Supp. 4H


 clear i_list j_list

% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2_least'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2_least'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2_least'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2_least'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2_least'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2_least'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2_least'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2_least'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

%             load(SVM_R_MO_matfile, 'accuracy');
%               SVM_R_MO = accuracy;
%             load(SVM_N_MO_matfile, 'accuracy');
%               SVM_N_MO = accuracy;
%             load(SVM_M_RN_matfile, 'accuracy');
%               SVM_M_RN = accuracy;
%             load(SVM_O_RN_matfile, 'accuracy');
%               SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy_least');
            accuracy = mean(accuracy_least);
              SVM_MO = accuracy;
%             load(SVM_RN_matfile, 'accuracy');
%               SVM_RN = accuracy;
%             load(SVM_MR_ON_matfile, 'accuracy');
%               SVM_MR_ON = accuracy;
%             load(SVM_MN_OR_matfile, 'accuracy');
%               SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off


        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt = SVM_MO_batch(:,1) * 100;



 clear i_list j_list

% % % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2_least'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2_least'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2_least'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2_least'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2_least'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2_least'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2_least'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2_least'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

%             load(SVM_R_MO_matfile, 'accuracy');
%               SVM_R_MO = accuracy;
%             load(SVM_N_MO_matfile, 'accuracy');
%               SVM_N_MO = accuracy;
%             load(SVM_M_RN_matfile, 'accuracy');
%               SVM_M_RN = accuracy;
%             load(SVM_O_RN_matfile, 'accuracy');
%               SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy_least');
            accuracy = mean(accuracy_least);
              SVM_MO = accuracy;
%             load(SVM_RN_matfile, 'accuracy');
%               SVM_RN = accuracy;
%             load(SVM_MR_ON_matfile, 'accuracy');
%               SVM_MR_ON = accuracy;
%             load(SVM_MN_OR_matfile, 'accuracy');
%               SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off


        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd = SVM_MO_batch(:,1) * 100;



figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end

ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);



%% Supp. 5A

clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

wt_before = pieData_temp(:,1);


clear i_list j_list

% % WT After Training (Day #1)
% clear i_list j_list
% callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end




figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

wt_after = pieData_temp(:,1) + pieData_temp(:,3);
wt_r = pieData_temp(:,2) + pieData_temp(:,3);


wt = wt_before([1,2,4,5,7,8,9]);
asd = wt_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end
ylim([0, 0.45]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 5B


clear i_list j_list

% 
% % SHANK2 Passive Presentation (Day #3)
% clear i_list j_list
% callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



%%% #fig
figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05)   ) / size(object{i,1},1)   ...
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 0.9, 0.9, 0.9];

asd_before = pieData_temp(:,1);



clear i_list j_list
% % SHANK2 After Training (Day #1)
% clear i_list j_list
% callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];



[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

save_option  = 0; % 0=not save, 1=save
% plot_option = 1; % 1=Mouse, 2=Lick, 3=Both

R_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range
NR_comp_range = 0; % time range to be compared
                % 0 for OA, 1 for OC, 2 for AC, 3 for the entire range

sort_option = 3; % 1 - sort according to mean selectivity index over days
                 % 2 - sort according to selectivity score (selective for
                 % how many days)
                 % 3 - sort according to selectivity index on the first
                 % day



trial_option = 1; % Choose which trials to be analyized
                  % 0 - all trials
                  % 1 - correct trials (Hit and Correct rejection trials)

high_performance = 1; % Choose which trials to be analyized- II
                      % 0 - all trials
                      % 1 - Select trials within periods with high correct rejection rate (>= 0.8)

i_list = get_i_list(j_list);


anovaResult_batch = [];
twoway_cell = cell(length(i_list),2);
celli = 0;

for i= i_list
    for j=j_list{i}
            tic

        twoway_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_twoway_equalTrials_v2'];
        run_or_not = 1;

%          if exist([DI_social_matfile '.mat'],'file')
%             run_or_not = 0;
%             %             resp = input([SVM_social_matfile '.mat file already exist. Enter 1 then RETURN to overwrite']);
%             %             if resp == 1
%             %                 run_or_not = 1;
%             %             end
%          end

        if run_or_not
            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

            if high_performance == 1
                win = 50; thres = 0.8;
                rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
                [sbj(i).info(j).trials] = get_high_perform_trials2(rp_proc_matfile, thres, win);
                sbj(i).info(j).trial_tag = 'high08';
                trial_list_input = sbj(i).info(j).trials; %>=0.8
            end

            if trial_option == 1
                % get correct trials (Hit and Correct Rejection)
                [correct_trials] = get_correct_trials(rp_proc_matfile);
                if isempty(trial_list_input)
                    trial_list_input = correct_trials;
                else
                    trial_list_input = intersect(trial_list_input, correct_trials);
                end
            end

            % to match number of two reward (or non-reward) trials -
            % updated @ 21.07.07, results saved in "sbj(i).info(j).name_head '_DI_social_equalTrials"
            %[sbj(i).info(j).trials] = get_equal_n_trials_4m(rp_proc_matfile, trial_list_input);

            % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
            [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
            trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);
            load(Ca_proc_matfile, 'close_align');

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %***************************
            %
            %  get mean traces (cue)
            %
            %***************************
            cue1 = string(sbj(i).info(j).present_info{1}); % M R
            cue2 = string(sbj(i).info(j).present_info{2}); % M N
            cue3 = string(sbj(i).info(j).present_info{3}); % O R
            cue4 = string(sbj(i).info(j).present_info{4}); % O N

            C1_indices = find(PLR(:,1) == R_pos(1));
            C2_indices = find(PLR(:,1) == P_pos(1));
            C3_indices = find(PLR(:,1) == R_pos(2));
            C4_indices = find(PLR(:,1) == P_pos(2));

            C1_trace = trace(:, C1_indices, :);
            C2_trace = trace(:, C2_indices, :);
            C3_trace = trace(:, C3_indices, :);
            C4_trace = trace(:, C4_indices, :);




            load(twoway_matfile, 'anovaResult');
%             anovaResult(find(anovaResult(:,3) < 0.05),:) = [];

        celli = celli + 1;
        twoway_cell{celli, 1} = anovaResult(:,1);
        twoway_cell{celli, 2} = anovaResult(:,2);
        twoway_cell{celli, 3} = anovaResult(:,3);


            %Save DI
             %save(twoway_matfile, 'anovaResult');
        else
            %load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
        end

            toc

    end
end



figure('pos',[0,0,400,400]); ax = gca();
pieData_temp = [];
object = twoway_cell;
for i = 1:size(object)
    pieData_temp = [pieData_temp;...
        length(   find(object{i,1} < 0.05 & object{i,2} >=0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} < 0.05 & object{i,2} < 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,1} >= 0.05 & object{i,2} >= 0.05 & object{i,3} >= 0.05)   ) / size(object{i,1},1),   ...
        length(   find(object{i,3} < 0.05)   ) / size(object{i,1},1)
    ];
end
pieData = mean(pieData_temp,1);
pie(ax, pieData);
ax.Colormap = [0, 0.75, 0.75; 1, 0.5, 0.8; 0.9290, 0.6940, 0.1250; 0.9, 0.9, 0.9; 1, 1, 1];

asd_after = pieData_temp(:,1) + pieData_temp(:,3);
asd_r = pieData_temp(:,2) + pieData_temp(:,3);



wt = asd_before([1,3,4,5,6,8]);
asd = asd_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end
ylim([0, 0.3]);
line([0, 3], [0.05, 0.05], 'Color', 'k', 'LineStyle', '--');
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 5C

 clear i_list j_list

% WT Passive Presentation (Day #3)
clear i_list j_list
callsign = 'wt_pp_3';
j_list{1} = [3];
j_list{2} = [3];
j_list{3} = [3];
j_list{4} = [3];
j_list{5} = [3];
j_list{6} = [3];
j_list{7} = [3];
j_list{8} = [6];
j_list{9} = [6];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt_before = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% WT After Training (Day #1)
clear i_list j_list
callsign = 'wt_at_1';
j_list{1} = [12];
j_list{2} = [6];
j_list{4} = [9];
j_list{5} = [10];
j_list{7} = [9];
j_list{8} = [1];
j_list{9} = [1];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

wt_after = SVM_MO_batch(:,1) * 100;


wt = wt_before([1,2,4,5,7,8,9]);
asd = wt_after;


% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end

ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);


%% Supp. 5D

 clear i_list j_list

% SHANK2 Passive Presentation (Day #3)
clear i_list j_list
callsign = 'asd_pp_3';
j_list{10} = [3];
j_list{11} = [3];
j_list{12} = [3];
j_list{13} = [3];
j_list{14} = [3];
j_list{15} = [3];
j_list{16} = [3];
j_list{17} = [3];


[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];




            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd_before = SVM_MO_batch(:,1) * 100;


 clear i_list j_list

% % SHANK2 After Training (Day #1)
clear i_list j_list
callsign = 'asd_at_1';
j_list{10} = [13];
j_list{12} = [18];
j_list{13} = [15];
j_list{14} = [11];
j_list{15} = [14];
j_list{17} = [19];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);


accuracy_batch = [];

SVM_R_MO_batch = [];
SVM_N_MO_batch = [];
SVM_M_RN_batch = [];
SVM_O_RN_batch = [];
SVM_MO_batch = [];
SVM_RN_batch = [];
SVM_MR_ON_batch = [];
SVM_MN_OR_batch = [];

behav_data_batch = [];

ratio_soc_batch = [];
ratio_rew_batch = [];
ratio_both_batch = [];


for i= i_list
    for j=j_list{i}
        %DI_social_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_DI_social_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_equalTrials_v2'];
% 
        SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_open_equalTrials_v2'];
        SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_open_equalTrials_v2'];
        SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_open_equalTrials_v2'];
        SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_open_equalTrials_v2'];
        SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_open_equalTrials_v2'];
        SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_open_equalTrials_v2'];
        SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_open_equalTrials_v2'];
        SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_open_equalTrials_v2'];

%         SVM_R_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_R_MO_close_equalTrials_v2'];
%         SVM_N_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_N_MO_close_equalTrials_v2'];
%         SVM_M_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_M_RN_close_equalTrials_v2'];
%         SVM_O_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_O_RN_close_equalTrials_v2'];
%         SVM_MO_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MO_close_equalTrials_v2'];
%         SVM_RN_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_RN_close_equalTrials_v2'];
%         SVM_MR_ON_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MR_ON_close_equalTrials_v2'];
%         SVM_MN_OR_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_SVMsim_MN_OR_close_equalTrials_v2'];
% 


            SVM_R_MO = [];
            SVM_N_MO = [];
            SVM_M_RN = [];
            SVM_O_RN = [];
            SVM_MO = [];
            SVM_RN = [];
            SVM_MR_ON = [];
            SVM_MN_OR = [];

            load(SVM_R_MO_matfile, 'accuracy');
              SVM_R_MO = accuracy;
            load(SVM_N_MO_matfile, 'accuracy');
              SVM_N_MO = accuracy;
            load(SVM_M_RN_matfile, 'accuracy');
              SVM_M_RN = accuracy;
            load(SVM_O_RN_matfile, 'accuracy');
              SVM_O_RN = accuracy;
            load(SVM_MO_matfile, 'accuracy');
              SVM_MO = accuracy;
            load(SVM_RN_matfile, 'accuracy');
              SVM_RN = accuracy;
            load(SVM_MR_ON_matfile, 'accuracy');
              SVM_MR_ON = accuracy;
            load(SVM_MN_OR_matfile, 'accuracy');
              SVM_MN_OR = accuracy;

%           load(SVM_R_MO_matfile, 'accuracy');
%           load(SVM_N_MO_matfile, 'accuracy');
%           load(SVM_M_RN_matfile, 'accuracy');
%           load(SVM_O_RN_matfile, 'accuracy');
%           load(SVM_MO_matfile, 'accuracy');
%           load(SVM_RN_matfile, 'accuracy');
%           load(SVM_MR_ON_matfile, 'accuracy');
%           load(SVM_MN_OR_matfile, 'accuracy');


%         %****************************************
%         % Plot SVM-decoding Accuracy (single day)
%         %****************************************
%         figure('Name', sbj(i).info(j).expt_name);
%         %title(['SVM decoding: Social vs Non-Social'])
%         hold on
%         %x_range = x_data - O;
%         %x_range = x_range(1:180);
%         %plot(x_range,accuracy*100);
%         plot(accuracy*100);
%         %xlim([-1.1 5.1])
%         ylim([40 100])
%         xlabel('Time from Stimulus Onset (sec)');
%         ylabel('Decoding accuracy (%)');
%         line([0 0], ylim, 'Color', 'c'); % window open
%         %line([A-O A-O], ylim, 'Color', 'm'); % reward active
%         %line([C-O C-O], ylim, 'Color', 'c'); % window close
%         %text(text_x(1)-O,text_y*0.8,num2str(max(mean_accuracy(ii,O*30-10:O*30+35))*100),'FontSize',12,'FontWeight', 'bold') %to show the Max.value of decoding accuracy
%         hold off

        accuracy_batch = [accuracy_batch; accuracy];

        SVM_R_MO_batch = [SVM_R_MO_batch; SVM_R_MO];
        SVM_N_MO_batch = [SVM_N_MO_batch; SVM_N_MO];
        SVM_M_RN_batch = [SVM_M_RN_batch; SVM_M_RN];
        SVM_O_RN_batch = [SVM_O_RN_batch; SVM_O_RN];
%         SVM_MO_batch = [SVM_MO_batch; SVM_MO];
%         SVM_RN_batch = [SVM_RN_batch; SVM_RN];
        SVM_MO_batch = [SVM_MO_batch; SVM_MO,i];
        SVM_RN_batch = [SVM_RN_batch; SVM_RN,i];
        SVM_MR_ON_batch = [SVM_MR_ON_batch; SVM_MR_ON];
        SVM_MN_OR_batch = [SVM_MN_OR_batch; SVM_MN_OR];



            % Generate EXPT information
            rp_proc_matfile = sbj(i).info(j).rp_proc_matfile;
            Ca_proc_matfile = sbj(i).info(j).Ca_proc_matfile;
            Ca_proc2_matfile = sbj(i).info(j).Ca_proc2_matfile;
            n_list_input = [];
            trial_list_input = [];

%             % updated @ 21.07.18: undersampling trials to minimum value among R1/R2/NR1/NR2
%             [sbj(i).info(j).trials] = get_equal_n_trials_4m_v2(rp_proc_matfile, trial_list_input);
%             trial_list_input = sbj(i).info(j).trials;

            % Load behavior and calcium data
            [SOACE, t_lick_T, PLR, R_pos, P_pos, ~, ~, trace, T, trial_list] = ...
                loadData1(rp_proc_matfile, Ca_proc_matfile, trial_list_input, n_list_input);

            curr_x_data = mean(T,2);
            [O, A, C] = get_task_tstamp(SOACE, T);
            curr_OAC = [O; A; C];

            %*****************************
            %
            %  time range for comparison
            %
            %*****************************

            x_data = mean(T, 2);
            [~, ~, ~, ~, OArange, OCrange, ~, ACrange] = get_task_tstamp(SOACE, T);
            fullrange = 1:length(x_data);

            %*****************************
            %
            %  Correct rate (behavior)
            %
            %*****************************


% 
            behav_data = length(find(   (PLR(:,1) == 1 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 3 & PLR(:,2) == 0)   ...
                          | (PLR(:,1) == 5 & PLR(:,2) == 1)   ...
                          | (PLR(:,1) == 7 & PLR(:,2) == 0)   ...
                          )) / size(PLR,1) * 100;

              behav_data_batch = [behav_data_batch; behav_data];


              
              
        ctt = permute(trace, [3,1,2]);      
              
              
%               GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_interaction_equalTrials_v2'];
%             load(GLM_matfile, 'glm_results', 'glm_signif');
% 
% 
% 
%         ratio_soc = length(find(glm_signif(:,1) ~= 0)) / size(ctt,1);
%         ratio_soc_batch = [ratio_soc_batch; ratio_soc];
%         ratio_rew = length(find(glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_rew_batch = [ratio_rew_batch; ratio_rew];
%         ratio_both = length(find(glm_signif(:,1) ~= 0 & glm_signif(:,2) ~= 0)) / size(ctt,1);
%         ratio_both_batch = [ratio_both_batch; ratio_both];
%         
    end %j_list
end %i_list

asd_after = SVM_MO_batch(:,1) * 100;


wt = asd_before([1,3,4,5,6,8]);
asd = asd_after;

% %%% #fig
figure('pos',[0,0,300,400]);
barData = [mean(wt), mean(asd)];
bar([1,2], barData, 'w');
errhigh = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
errlow = [std(wt,[],1) / sqrt(size(wt,1)), std(asd,[],1) / sqrt(size(asd,1))];
hold on;
er = errorbar([1:2], barData, errlow, errhigh);
er.Color = [0,0,0];
er.LineStyle = 'none';
hold on;
for i = 1:size(wt,1)
    scatter(1,wt(i));
end
for i = 1:size(asd,1)
    scatter(2,asd(i));
end
for i = 1:size(wt,1)
  line([1,2], [wt(i),asd(i)], 'Color', 'k');
end
ylim([40, 100]);
box off;
[h,p] = ttest2(wt,asd);
disp(p);



%% Supp. 6A, 6B

clear i_list j_list

% WT After Training (Day #1-3)
callsign = 'wt_at_1_3';
j_list{1} = [12,13,14];
j_list{2} = [6,7,8];
j_list{4} = [9,10,11];
j_list{5} = [10,11,12];
j_list{7} = [9,10,11];
j_list{8} = [1,2];
j_list{9} = [1,2];

% SHANK2 After Training (Day #3)
callsign = 'asd_at_3';
j_list{10} = [13,14,15];
j_list{12} = [18,19,20];
j_list{13} = [15,16,17];
j_list{14} = [11,12,17];
j_list{15} = [14,15,17];
j_list{17} = [19,20,21];



cellreg_list = zeros(7,3);
cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
cellreg_list(2,:) = [2, 6, 7];
cellreg_list(3,:) = [4, 9, 10];
cellreg_list(4,:) = [5, 10, 11];
cellreg_list(5,:) = [7, 9, 10];
cellreg_list(6,:) = [8, 1, 2];
cellreg_list(7,:) = [9, 1, 2];
% % % % 
% cellreg_list = zeros(6,3);
% cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
% cellreg_list(2,:) = [12, 18, 19];
% cellreg_list(3,:) = [13, 15, 16];
% cellreg_list(4,:) = [14, 11, 12];
% cellreg_list(5,:) = [15, 14, 15];
% cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

% for i_batch = 1:size(cellreg_list,1)
for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object1 = MO_DI(cellreg_proper(:,1),:);
% object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object2 = MO_DI(cellreg_proper(:,2),:);
% object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch


object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);



% % % 
% for i_batch = 1:size(cellreg_list,1)
for i_batch = 5 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object1 = MO_DI(cellreg_proper(:,1),:);
object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object2 = MO_DI(cellreg_proper(:,2),:);
object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch


object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);



% cellreg_list = zeros(7,3);
% cellreg_list(1,:) = [1, 12, 13]; % [i, j_first, j_second];
% cellreg_list(2,:) = [2, 6, 7];
% cellreg_list(3,:) = [4, 9, 10];
% cellreg_list(4,:) = [5, 10, 11];
% cellreg_list(5,:) = [7, 9, 10];
% cellreg_list(6,:) = [8, 1, 2];
% cellreg_list(7,:) = [9, 1, 2];
% % % % 
cellreg_list = zeros(6,3);
cellreg_list(1,:) = [10, 13, 14]; % [i, j_first, j_second];
cellreg_list(2,:) = [12, 18, 19];
cellreg_list(3,:) = [13, 15, 16];
cellreg_list(4,:) = [14, 11, 12];
cellreg_list(5,:) = [15, 14, 15];
cellreg_list(6,:) = [17, 19, 20];

[sbj] = gen_info(sbj, j_list, GlobalDataDir, GlobalProcDataDir);

i_list = get_i_list(j_list);

cellreg_batch = [];
r_batch = [];

% for i_batch = 1:size(cellreg_list,1)
for i_batch = 3 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object1 = MO_DI(cellreg_proper(:,1),:);
% object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

object2 = MO_DI(cellreg_proper(:,2),:);
% object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch


object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);


% % % 
% for i_batch = 1:size(cellreg_list,1)
for i_batch = 2 %wt_soc = 2; wt_rew = 5; asd_soc=3; asd_rew = 2;
%'G:\Dropbox (doyunleelab)\Dropbox (doyunleelab)\Results_JoowonKim\CellReg_Results\',...
results_directory = strcat(...
GlobalProcDataDir, '\CellReg_Results\', ...
sbj(cellreg_list(i_batch,1)).name, '\',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).date, '_',...
sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).date...
);

cd(results_directory);
results_directory_file = dir('cellRegistered_*.mat');
load(results_directory_file.name);
cellreg = cell_registered_struct.cell_to_index_map;
%cellreg(find(all(cellreg > 0, 2) == 0),:) = [];

cellreg_missing = [];
for i = 1:size(cellreg,1)
  if (double(all(cellreg(i,:))) == 0)
    cellreg_missing = [cellreg_missing; i];
  else
  end
end

cellreg_proper = cellreg;
cellreg_proper(cellreg_missing,:) = [];

% % % % % % % % % %


file_names={[sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_CellReg'],...
            [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_CellReg'] ...
          };

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,2)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object1 = MO_DI(cellreg_proper(:,1),:);
object1 = RN_DI(cellreg_proper(:,1),:);

DI_social_matfile = [sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).proc_data_full_path '\' sbj(cellreg_list(i_batch,1)).info(cellreg_list(i_batch,3)).name_head '_DI_social_equalTrials_v2'];
load(DI_social_matfile,'curr_OAC','curr_x_data','R_MO_DI','N_MO_DI', 'M_RN_DI', 'O_RN_DI', 'MR_ON_DI', 'MN_OR_DI', 'MO_DI', 'RN_DI', 'R_MO_DI_signif','N_MO_DI_signif', 'M_RN_DI_signif', 'O_RN_DI_signif', 'MR_ON_DI_signif', 'MN_OR_DI_signif', 'MO_DI_signif', 'RN_DI_signif');
% GLM_matfile = [sbj(i).info(j).proc_data_full_path '\' sbj(i).info(j).name_head '_GLM_equalTrials_v2'];
% load(GLM_matfile, 'glm_results', 'glm_signif');

% object2 = MO_DI(cellreg_proper(:,2),:);
object2 = RN_DI(cellreg_proper(:,2),:);

cellreg_batch = [cellreg_batch; object1, object2, ];


[r, p] = corrcoef(object1, object2);
r_batch = [r_batch; r(2,1)];

end % i_batch


object = cellreg_batch;
figure('pos',[0,0,500,400]);
dotsize = 10;
scatter(object(:,1),object(:,2),       dotsize, 'k', '.');
hold on;
mdl = fitlm(object(:,1),object(:,2));
% plot(object(:,1), mdl.Coefficients.Estimate(2) * object(:,1) + mdl.Coefficients.Estimate(1),          'k');
plot([-0.9, 0.9], mdl.Coefficients.Estimate(2) * [-0.9, 0.9] + mdl.Coefficients.Estimate(1),          'k');
disp(mdl.Coefficients.pValue(2));
% xlim([-2, 3]);
% ylim([-2, 3]);
% xlim([-1, 2]);
% ylim([-1, 2]);
xlim([-1, 1]);
ylim([-1, 1]);


[r, p] = corrcoef(object(:,1), object(:,2));
disp([r(2,1), p(2,1)]);

%% THE END

% The End
