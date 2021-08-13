cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\P3_OutLier\작업용\summer';              %import file location
save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\P3_OutLier\작업용\summer';     %saved file loacation
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
    
    EEG = pop_epochbin( EEG , [-300.0  800.0],  'pre'); % GUI: 09-Jan-2020 13:59:38  앞부분 200-->300ms로 바꿈(1월20일)
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
    
    %artifact detection 
    % EEG  = pop_artblink( EEG , 'Blinkwidth',  400, 'Channel',  14, 'Crosscov',  0.7, 'Flag',  1, 'Twindow', [ -200.9 789.1] ); % GUI: 09-Jan-2020 14:00:35
    %artifact detection 위에꺼말고 아래꺼 쓰자
    EEG  = pop_artextval( EEG , 'Channel',  1:6, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -299.0 789.1] ); % GUI: 09-Jan-2020 15:04:19   Threshold 기본값: [ -100 100]
    EEG  = pop_basicfilter( EEG,  1:6 , 'Cutoff', [ 1.0 20.0], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2 ); % GUI: 09-Jan-2020 15:07:42  필터대역 기본값: [ 0.5 30.8]
    
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
    save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\OutLier\P3_OutLier\작업용\summer';
    ERP = pop_savemyerp(ERP, 'erpname', [erp_name], 'filename', [erp_filename], 'filepath', [save_file_path]);% Script: 09-Jan-2020 14:11:37
%     p300 
                                                            % 설정대문에 gui하고
                                                            % 코드로 뽑은거랑
                                                            % 다르다.. ! 해결하도록
    ALLERP = pop_geterpvalues( ERP, [ 200 450],  2,1:6 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
    ALLERP = pop_geterpvalues( ERP, [ 200 450],  2,1:6 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
    pathNfilename = sprintf('%s.txt' ,z)
    pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06  



end
fclose(Rejectpercent);
cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'
