%roop
cd 'C:\Users\my\Desktop\wintereegSEMIfinal\total';              %import file location
save_file_path = 'C:\Users\my\Desktop\wintereegSEMIfinal\total';     %saved file loacation
file_struct = dir(['*.edf'])
len = length(file_struct );

Rejectpercent = fopen('rejectionaverage.txt', 'w');   %�Ƹ� cd ��ο� ����ɵ� ?
fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');

% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------
for i = 1:len
    %EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it
%    clear

    subject_list{i}=file_struct(i).name;
    subject = subject_list{i};
    [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;

    filename = sprintf('%s' ,subject);
    EEG = pop_biosig(filename);  %% ����
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'gui','off'); 

    EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
    EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    
    EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\eventlist.txt' ); % GUI: 09-Jan-2020 13:53:14
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 

    EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:54:15
    [ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
    
    EEG = pop_epochbin( EEG , [-300.0  800.0],  'pre'); % GUI: 09-Jan-2020 13:59:38  �պκ� 200-->300ms�� �ٲ�(1��20��)
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'gui','off'); 
    
    %artifact detection 
    % EEG  = pop_artblink( EEG , 'Blinkwidth',  400, 'Channel',  14, 'Crosscov',  0.7, 'Flag',  1, 'Twindow', [ -200.9 789.1] ); % GUI: 09-Jan-2020 14:00:35
    %artifact detection ���������� �Ʒ��� ����
    EEG  = pop_artextval( EEG , 'Channel',  1:14, 'Flag',  1, 'Threshold', [ -100 100], 'Twindow', [ -299.0 789.1] ); % GUI: 09-Jan-2020 15:04:19   Threshold �⺻��: [ -100 100]
    EEG  = pop_basicfilter( EEG,  1:14 , 'Cutoff', [ 1.0 20.0], 'Design', 'butter', 'Filter', 'bandpass', 'Order',  2 ); % GUI: 09-Jan-2020 15:07:42  ���ʹ뿪 �⺻��: [ 0.5 30.8]
    
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'gui','off');
    %�����Ҷ� artifact �����޴� 'all'-->'good'
    ERP = pop_averager( ALLEEG , 'Criterion', 'good', 'DSindex',5, 'ExcludeBoundary', 'on', 'SEM', 'on' );% GUI: 09-Jan-2020 14:09:25 ���� ��� ���ڰ� ������ 
    ERP = pop_filterp( ERP,1:14 , 'Cutoff', [ 0.1 20], 'Design', 'butter', 'Filter', 'bandpass', 'Order',2 );% GUI: 09-Jan-2020 20:26:47
    ERP = pop_erplindetrend( ERP, 'all' );  % all�� �ϰ� ��� onset�� �ð���200 ���� 300�̳� ���̻����� �ø��� !
%     ERP = pop_ploterps( ERP, [ 1 2],1:14 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -203.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 14:11:12
    
    
    
    %����erp.����   %%����
    z = filename
    erp_name = sprintf('%s' ,z)
    erp_filename = sprintf('%s.erp' ,z)
    fprintf(Rejectpercent, '%12s  %12f\n', z, ERP.pexcluded);
    save_file_path = 'C:\Users\my\Desktop\wintereegSEMIfinal\total';
%     ERP = pop_savemyerp(ERP, 'erpname', [erp_name], 'filename', [erp_filename], 'filepath', [save_file_path]);% Script: 09-Jan-2020 14:11:37
    %ERP = pop_savemyerp(ERP, 'erpname', 'erpsetname���ϴ°�', 'filename', 'erpsetname���ϴ°�.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% GUI: 09-Jan-2020 14:11:37
    %erp measure aplitude and latency --> append ������ �����Ҽ� ���� 
    %p300
    %ALLERP = pop_geterpvalues( ERP, [ 0 600], [ 1 2],1:14 , 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', '���̸��ڸ���.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:08
%     ALLERP = pop_geterpvalues( ERP, [ 250 400],  2,1:14 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 250 400],  2,1:14 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
    %N170 =(130~170
%     ALLERP = pop_geterpvalues( ERP, [ 100 200],  2,1:14 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 100 200],  2,1:14 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency

% erp���� txt���Ϸ� 
pathNfilename = sprintf('%s.txt' ,z)
pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06  

end

fclose(Rejectpercent);
