% EEGLAB history file generated on the 09-Jan-2020
% ------------------------------------------------
EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
EEG.setname='edf로드';
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
EEG.setname='edf로드2채널선택';
EEG = eeg_checkset( EEG );
EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
EEG = eeg_checkset( EEG );
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 13:08:32
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:09:57
EEG = eeg_checkset( EEG );
EEG = pop_epochbin( EEG , [-300.0  800.0],  [ -300 0]); % GUI: 09-Jan-2020 13:11:13
EEG.setname='edf로드2채널선택_elist_bins_be분절';
EEG = eeg_checkset( EEG );
