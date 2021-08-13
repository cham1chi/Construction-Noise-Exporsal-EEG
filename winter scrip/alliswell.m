% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');

EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});

EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);

EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 20:21:43


EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 20:22:22

EEG  = pop_basicfilter( EEG,  1:14 , 'Boundary', 'boundary', 'Cutoff', [ 0.1 30], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2, 'RemoveDC', 'on' ); % GUI: 09-Jan-2020 20:22:46

EEG = pop_epochbin( EEG , [-200.0  800.0],  'pre'); % GUI: 09-Jan-2020 20:23:43

EEG  = pop_artextval( EEG , 'Channel',  1:14, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -203.1 789.1] ); % GUI: 09-Jan-2020 20:24:41

ERP = pop_filterp( ERP,1:14 , 'Cutoff', [ 0.1 20], 'Design', 'butter', 'Filter', 'bandpass', 'Order',2 );% GUI: 09-Jan-2020 20:26:47
ERP = pop_ploterps( ERP, [ 1 2],1:14 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -203.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 20:27:12
ERP = pop_savemyerp(ERP, 'erpname', '제발잘되길', 'filename', '제발잘되길.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip');% Script: 09-Jan-2020 20:28:23
ERP = pop_savemyerp(ERP, 'erpname', '제발잘되길', 'filename', '제발잘되길.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip');% GUI: 09-Jan-2020 20:28:23
