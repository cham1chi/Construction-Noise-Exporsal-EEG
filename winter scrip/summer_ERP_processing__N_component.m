cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\summer\N_componenet\summer_edf2';              %import file location
save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\summer\N_componenet\summer_edf2';     %saved file loacation
file_struct = dir(['*.edf'])
len = length(file_struct );

Rejectpercent = fopen('rejectionaverage.txt', 'w');   %아마 cd 경로에 저장될듯 ?
fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');

for i = 1:len;
    subject_list{i}=file_struct(i).name;
    subject = subject_list{i};
    [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;

    filename = sprintf('%s' ,subject);
    EEG = pop_biosig(filename);  %% 수정
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'gui','off'); 

    EEG = pop_select( EEG,'channel',{'AF3' 'F3' 'FC5' 'FC6' 'F4' 'AF4' 'MarkerValueInt'});
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
    EEG = pop_chanevent(EEG, 7,'edge','leading','edgelen',0);  % 7은 markervaluelnt채널 인덱스
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    
    EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' ); % GUI: 09-Jan-2020 13:53:14
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 

    EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:54:15
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    
    EEG = pop_epochbin( EEG , [0  1100.0],  [0.1 300]); % GUI: 09-Jan-2020 13:59:38  //onset time : 300ms ,  epoch baseline = 0-300ms
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
    %%%%%%%%%%%%%%%  ICA %%%%%%%%%%%%%%%%%%%
    %EEG = pop_runica(EEG, 'icatype','runica', 'dataset',1,'options',{'extended' 1}); %Run ICA, manual component rejection is required after this
    %EEG.setname = [filename '_ica'];
    %EEG = pop_saveset(EEG, 'filename', [EEG.setname '.set'], 'filepath', save_file_path);
    %[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5, 'gui','off'); 
    %%%%%%%%%%%%%%%%% ICA 끝%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %artifact detection 
    % EEG  = pop_artblink( EEG , 'Blinkwidth',  400, 'Channel',  14, 'Crosscov',  0.7, 'Flag',  1, 'Twindow', [ -200.9 789.1] ); % GUI: 09-Jan-2020 14:00:35
    %artifact detection 위에꺼말고 아래꺼 쓰자
        %//////////////// 자극 onset time 이 300ms 임
    EEG  = pop_artextval( EEG , 'Channel',  1:6, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ 0.1 1099.1] ); % GUI: 09-Jan-2020 15:04:19   Threshold 기본값: [ -100 100]
    EEG  = pop_basicfilter( EEG,  1:6 , 'Cutoff', [ 1.0 20.0], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2 ); % GUI: 09-Jan-2020 15:07:42  필터대역 기본값: [ 0.5 30.8]
    %%%%%%
    EEG=pop_chanedit(EEG, 'lookup','C:\\Users\\my\\Documents\\MATLAB\\eeglab14_1_2b\\plugins\\dipfit2.3\\standard_BESA\\standard-10-5-cap385.elp');
    
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'gui','off');
    %설정할때 artifact 제거햇다 'all'-->'good'
    ERP = pop_averager( ALLEEG , 'Criterion', 'good', 'DSindex',5, 'ExcludeBoundary', 'on', 'SEM', 'on' );% GUI: 09-Jan-2020 14:09:25 존나 가운데 숫자가 문제다 
    ERP = pop_filterp( ERP,1:6 , 'Cutoff', [ 0.1 20], 'Design', 'butter', 'Filter', 'bandpass', 'Order',2 );% GUI: 09-Jan-2020 20:26:47
    ERP = pop_erplindetrend( ERP, 'all' );  % all로 하고 대신 onset전 시간을200 에서 300이나 그이상으로 늘리자 !
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%그래프로 출력%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     ERP = pop_ploterps( ERP, [ 1 2],1:6 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -203.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 14:11:12
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    z = filename
    erp_name = sprintf('%s' ,z)
    erp_filename = sprintf('%s.erp' ,z)
    fprintf(Rejectpercent, '%12s  %12f\n', z, ERP.pexcluded);
    save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\summer\N_componenet\summer_edf2';
%     ERP = pop_savemyerp(ERP, 'erpname', [erp_name], 'filename', [erp_filename], 'filepath', [save_file_path]);% Script: 09-Jan-2020 14:11:37

    %N170 : 130-170 / N1 : 80-140 / N2 : 180-320 or 180-250 / MNN : 150-250
    ALLERP = pop_geterpvalues( ERP, [ 450 550],  2,1:6 , 'Append', 'on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
    ALLERP = pop_geterpvalues( ERP, [ 450 550],  2,1:6 ,     'Append','on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
                                                            
    %P300                                                        
%     ALLERP = pop_geterpvalues( ERP, [ 250 450],  2,1:6 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 250 450],  2,1:6 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
    pathNfilename = sprintf('%s.txt' ,z)
    pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06  
    
%     ERP = pop_scalplot( ERP,  2,  100:50:400 , 'Blc', 'pre', 'Colorbar', 'on', 'Colormap', 'jet', 'Electrodes', 'on', 'FontName', 'Courier New',...
%  'FontSize',  10, 'Legend', 'bn-me-la', 'Maplimit', 'maxmin', 'Mapstyle', 'both', 'Maptype', '2D', 'Mapview', '+X', 'Plotrad',  0.55, 'Position',...
%  [ 11 26 1920 962], 'Value', 'insta' );
    ERP = pop_scalplot( ERP, [ 1 2],  100:50:550 , 'Blc', 'pre', 'Colorbar', 'on', 'Colormap', 'jet', 'Electrodes', 'ptslabels', 'FontName',...
 'Courier New', 'FontSize',  10, 'Legend', 'bn-me-la', 'Maplimit', [ -5.0 5.0   ], 'Mapstyle', 'both', 'Maptype', '2D', 'Mapview', '+X', 'Plotrad',...
  0.55, 'Position', [ 11 11 1920 962], 'Value', 'insta' )
    saveas(scalpicture, sprintf('%s.png' ,z))

end
fclose(Rejectpercent);
cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'

Grand =0;
if (Grand)
    ERP = pop_gaverager( ALLERP , 'Erpsets',  1:3, 'ExcludeNullBin', 'on' );
end