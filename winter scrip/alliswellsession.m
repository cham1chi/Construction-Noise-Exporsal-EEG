% EEGLAB history file generated on the 09-Jan-2020
% ------------------------------------------------
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 20:21:43
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 20:22:22
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG  = pop_basicfilter( EEG,  1:14 , 'Boundary', 'boundary', 'Cutoff', [ 0.1 30], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2, 'RemoveDC', 'on' ); % GUI: 09-Jan-2020 20:22:46
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
EEG = pop_epochbin( EEG , [-200.0  800.0],  'pre'); % GUI: 09-Jan-2020 20:23:43
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'gui','off'); 
EEG  = pop_artextval( EEG , 'Channel',  1:14, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -203.1 789.1] ); % GUI: 09-Jan-2020 20:24:41
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 6,'gui','off'); 
eeglab redraw;
