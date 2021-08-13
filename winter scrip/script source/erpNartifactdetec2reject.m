% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it


EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');


EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});

EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);


EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 13:53:14


EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:54:15

EEG = pop_epochbin( EEG , [-300.0  800.0],  'pre'); % GUI: 09-Jan-2020 13:59:38

%artifact detection 
EEG  = pop_artblink( EEG , 'Blinkwidth',  400, 'Channel',  14, 'Crosscov',  0.7, 'Flag',  1, 'Twindow', [ -296.9 789.1] ); % GUI: 09-Jan-2020 14:00:35
%설정할때 artifact 제거햇다 'all'-->'good'
ERP = pop_averager( ALLEEG , 'Criterion', 'good', 'DSindex',6, 'ExcludeBoundary', 'on', 'SEM', 'on' );% GUI: 09-Jan-2020 14:09:25
ERP = pop_ploterps( ERP, [ 1 2],1:14 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -296.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 14:11:12

ERP = pop_savemyerp(ERP, 'erpname', 'erpsetname정하는것', 'filename', 'erpsetname정하는것.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% Script: 09-Jan-2020 14:11:37
ERP = pop_savemyerp(ERP, 'erpname', 'erpsetname정하는것', 'filename', 'erpsetname정하는것.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% GUI: 09-Jan-2020 14:11:37
