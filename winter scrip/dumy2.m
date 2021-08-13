% EEGLAB history file generated on the 07-Jul-2021
% ------------------------------------------------
[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'gui','off'); 
EEG=pop_chanedit(EEG, 'lookup','C:\\Users\\my\\Documents\\MATLAB\\eeglab14_1_2b\\plugins\\dipfit2.3\\standard_BESA\\standard-10-5-cap385.elp');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
pop_saveh( EEG.history, 'dumy.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = clean_rawdata(EEG, 5, [0.25 0.75], 0.8, 4, 20, 0.5, );
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 0, 1, 1);
EEG = eeg_checkset( EEG );
EEG = pop_rejcont(EEG, 'elecrange',[1:12] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
pop_saveh( EEG.history, 'dumy.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
EEG = eeg_checkset( EEG );
pop_selectcomps(EEG, [1:14] );
[ALLEEG EEG CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'retrieve',1,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'retrieve',1,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'retrieve',2,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'retrieve',1,'study',0); 
EEG = eeg_checkset( EEG );
EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4'});
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','EDF file_selectChan','gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
pop_ADJUST_interface(  );
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 0, 1, 1);
pop_saveh( EEG.history, 'eeglabhist.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [2  3  4  7  9], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
EEG = eeg_checkset( EEG );
pop_topoplot(EEG,0, [1:9] ,'EDF file_selectChan pruned with ICA',[3 3] ,0,'electrodes','on');
EEG = pop_importeegeventlist( EEG, 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' , 'ReplaceEventList', 'on' ); % GUI: 06-Jul-2021 23:00:05
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 06-Jul-2021 23:00:36
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_epochbin( EEG , [-200.0  800.0],  'pre'); % GUI: 06-Jul-2021 23:01:02
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 7,'gui','off'); 
EEG = eeg_checkset( EEG );
figure; pop_erpimage(EEG,1, [1],[[]],'AF3',10,1,{},[],'' ,'yerplabel','\muV','erp','on','cbar','on','topo', { [1] EEG.chanlocs EEG.chaninfo } );
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 8,'retrieve',7,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 7,'retrieve',6,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 6,'retrieve',5,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'retrieve',8,'study',0); 
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 8,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [1   3  12  14], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 9,'gui','off'); 
EEG = eeg_checkset( EEG );
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 10,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [1   2   4   9  10], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 11,'gui','off'); 
pop_saveh( ALLCOM, 'dumy2.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
pop_saveh( EEG.history, 'dumy.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [1  2  3  4  5  6  7  8], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 12,'gui','off'); 
EEG = eeg_checkset( EEG );
figure; pop_plottopo(EEG, [1:14] , 'EDF file_selectChan pruned with ICA_impel_bins_be pruned with ICA pruned with ICA pruned with ICA', 0, 'ydir',1);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 13,'retrieve',1,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'retrieve',4,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'retrieve',5,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'retrieve',4,'study',0); 
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [1   2   3   4   5   6   7   9  10  11  12  13], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
EEG = pop_importeegeventlist( EEG, 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' , 'ReplaceEventList', 'on' ); % GUI: 06-Jul-2021 23:45:23
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 14,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 06-Jul-2021 23:45:39
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_epochbin( EEG , [-200.0  800.0],  'pre'); % GUI: 06-Jul-2021 23:46:14
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 16,'gui','off'); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 17,'retrieve',14,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 14,'retrieve',4,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'retrieve',3,'study',0); 
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'retrieve',4,'study',0); 
EEG = eeg_checkset( EEG );
EEG = pop_rejcont(EEG, 'elecrange',[1:14] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
EEG = eeg_checkset( EEG );
EEG = pop_rejcont(EEG, 'elecrange',[1:14] ,'freqlimit',[20 40] ,'threshold',10,'epochlength',0.5,'contiguous',4,'addlength',0.25,'taper','hamming');
EEG = eeg_checkset( EEG );
pop_selectcomps(EEG, [1:14] );
pop_ADJUST_interface(  );
pop_processMARA ( ALLEEG,EEG,CURRENTSET )
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_subcomp( EEG, [2  3  4  5  6  9], 0);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 18,'gui','off'); 
pop_saveh( EEG.history, 'dumy.m', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\');
eeglab redraw;
