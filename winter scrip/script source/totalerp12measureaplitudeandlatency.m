% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');

EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});

EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);

EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 15:02:57


EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 15:03:09

EEG = pop_epochbin( EEG , [-300.0  800.0],  'pre'); % GUI: 09-Jan-2020 15:04:04

EEG  = pop_artextval( EEG , 'Channel',  1:14, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -296.9 789.1] ); % GUI: 09-Jan-2020 15:04:19


EEG  = pop_basicfilter( EEG,  1:14 , 'Cutoff', [ 0.5 30.8], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2 ); % GUI: 09-Jan-2020 15:07:42

%ERP = pop_saveERPhistory(ERP, 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\totalerp1.m');% GUI: 09-Jan-2020 15:12:36
ALLERP = pop_geterpvalues( ERP, [ 0 600], [ 1 2],1:14 , 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', '거이마자막악.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:08
ALLERP = pop_geterpvalues( ERP, [ 0 600], [ 1 2],1:14 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', '거이마자막악.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37
