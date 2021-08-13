% EEGLAB history file generated on the 06-Jul-2021
% ------------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','C:\\Users\\my\\Documents\\MATLAB\\eeglab14_1_2b\\plugins\\dipfit2.3\\standard_BESA\\standard-10-5-cap385.elp');
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4'});
EEG.setname='EDF file_selectChan';
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
EEG = eeg_checkset( EEG );
pop_ADJUST_interface(  );
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 0, 1, 1);
