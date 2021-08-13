% EEGLAB history file generated on the 07-Jul-2021
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
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_rejcont(EEG, 'elecrange',[1:14] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
EEG = pop_rejcont(EEG, 'elecrange',[1:14] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
pop_selectcomps(EEG, [1:14] );
pop_ADJUST_interface(  );
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );

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
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
pop_topoplot(EEG,0, [1:9] ,'EDF file_selectChan pruned with ICA',[3 3] ,0,'electrodes','on');
EEG= pop_overwritevent( EEG, 'code');% Script: 06-Jul-2021 23:00:05
EEG = pop_importeegeventlist( EEG, 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' , 'ReplaceEventList', 'on' ); % GUI: 06-Jul-2021 23:00:05
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 06-Jul-2021 23:00:36
EEG = eeg_checkset( EEG );
EEG = pop_epochbin( EEG , [-200.0  800.0],  'pre'); % GUI: 06-Jul-2021 23:01:02
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );

% EEGLAB history file generated on the 06-Jul-2021
% ------------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','C:\\Users\\my\\Documents\\MATLAB\\eeglab14_1_2b\\plugins\\dipfit2.3\\standard_BESA\\standard-10-5-cap385.elp');
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
EEG = eeg_checkset( EEG );
EEG = clean_rawdata(EEG, 5, [0.25 0.75], 0.8, 4, 20, 0.5, );
pop_eegplot( EEG, 0, 1, 1);
EEG = pop_rejcont(EEG, 'elecrange',[1:12] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');


% EEGLAB history file generated on the 06-Jul-2021
% ------------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','C:\\Users\\my\\Documents\\MATLAB\\eeglab14_1_2b\\plugins\\dipfit2.3\\standard_BESA\\standard-10-5-cap385.elp');
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
EEG = eeg_checkset( EEG );
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
EEG = eeg_checkset( EEG );
EEG = clean_rawdata(EEG, 5, [0.25 0.75], 0.8, 4, 20, 0.5, );
pop_eegplot( EEG, 0, 1, 1);
EEG = pop_rejcont(EEG, 'elecrange',[1:12] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
