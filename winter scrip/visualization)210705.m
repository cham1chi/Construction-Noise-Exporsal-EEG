% EEGLAB history file generated on the 05-Jul-2021
% ------------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG= pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' );% Script: 05-Jul-2021 18:04:47
EEG = eeg_checkset( EEG );
EEG= pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\bin for winter.txt', 'IndexEL',1, 'SendEL2', 'EEG', 'Voutput', 'EEG' );% Script: 05-Jul-2021 18:04:48
EEG = eeg_checkset( EEG );
EEG = pop_epochbin( EEG , [0.01100.0],[ 0.1 300]);% Script: 05-Jul-2021 18:04:50
EEG = eeg_checkset( EEG );
EEG= pop_artextval( EEG , 'Channel',1:6, 'Flag',1, 'Threshold', [ -100 100], 'Twindow', [ 0.1 1099.1] );% Script: 05-Jul-2021 18:04:50
EEG= pop_basicfilter( EEG,1:6 , 'Boundary', 'boundary', 'Cutoff', [ 1 20], 'Design', 'butter', 'Filter', 'bandpass', 'Order',2 );% Script: 05-Jul-2021 18:04:51
EEG = eeg_checkset( EEG );
