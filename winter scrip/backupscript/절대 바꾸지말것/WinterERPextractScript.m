% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------

%EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
clear
clc
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;


EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter raw edf\winter1.edf');  %% 수정
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'gui','off'); 

EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);

EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 13:53:14
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 

EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:54:15
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);

EEG = pop_epochbin( EEG , [-300.0  800.0],  'pre'); % GUI: 09-Jan-2020 13:59:38
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 

%artifact detection 
%EEG  = pop_artblink( EEG , 'Blinkwidth',  400, 'Channel',  14, 'Crosscov',  0.7, 'Flag',  1, 'Twindow', [ -296.9 789.1] ); % GUI: 09-Jan-2020 14:00:35
%artifact detection 위에꺼말고 아래꺼 쓰자
EEG  = pop_artextval( EEG , 'Channel',  1:14, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -296.9 789.1] ); % GUI: 09-Jan-2020 15:04:19
EEG  = pop_basicfilter( EEG,  1:14 , 'Cutoff', [ 0.5 30.8], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2 ); % GUI: 09-Jan-2020 15:07:42

[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'gui','off');
%설정할때 artifact 제거햇다 'all'-->'good'
ERP = pop_averager( ALLEEG , 'Criterion', 'good', 'DSindex',5, 'ExcludeBoundary', 'on', 'SEM', 'on' );% GUI: 09-Jan-2020 14:09:25 존나 가운데 숫자가 문제다 
ERP = pop_ploterps( ERP, [ 1 2],1:14 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -296.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 14:11:12
%저장erp.파일   %%수정
ERP = pop_savemyerp(ERP, 'erpname', 'winter1', 'filename', 'winter1.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% Script: 09-Jan-2020 14:11:37
%ERP = pop_savemyerp(ERP, 'erpname', 'erpsetname정하는것', 'filename', 'erpsetname정하는것.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% GUI: 09-Jan-2020 14:11:37
%erp measure aplitude and latency --> append 같은거 설정할수 잇음 
%%ALLERP = pop_geterpvalues( ERP, [ 0 600], [ 1 2],1:14 , 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', '거이마자막악.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:08
%%ALLERP = pop_geterpvalues( ERP, [ 0 600], [ 1 2],1:14 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', '거이마자막악.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37
