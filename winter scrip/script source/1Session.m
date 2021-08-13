% EEGLAB history file generated on the 09-Jan-2020
% ------------------------------------------------
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname','edf로드','gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','edf로드2채널선택','gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 13:08:32
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:09:57
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_epochbin( EEG , [-300.0  800.0],  [ -300 0]); % GUI: 09-Jan-2020 13:11:13
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'setname','edf로드2채널선택_elist_bins_be분절','gui','off'); 
pop_saveh( EEG.history, '1.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
eeglab redraw;
