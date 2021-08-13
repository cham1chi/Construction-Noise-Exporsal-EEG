% %%%%%%%erp 파일에서 component만 뽁기위한 script
% %%%%%%%%summer N200
% cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Summer_Re_analysisFOR_ERP_N200';              %import file location
% save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Summer_Re_analysisFOR_ERP_N200';     %saved file loacation
% file_struct = dir(['*.erp'])
% len = length(file_struct );
% 
% Rejectpercent = fopen('rejectionaverage.txt', 'w');   %아마 cd 경로에 저장될듯 ?
% fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');
% 
% for i = 1:len;
%     subject_list{i}=file_struct(i).name;
%     subject = subject_list{i};
%     [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
%     filename = sprintf('%s' ,subject);
%     ERP = pop_loaderp(filename);
%     
%      %N170 : 130-170 / N1 : 80-140 / N2 : 180-320 or 180-250 / MNN : 150-250
%      %%%% N200 sms 200-300ms -> 보정시 +300ms
%     ALLERP = pop_geterpvalues( ERP, [ 500 600],  2,1:6 , 'Append', 'on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 500 600],  2,1:6 ,     'Append','on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
% 
%     z = filename
%     pathNfilename = sprintf('%s.txt' ,z)
%     pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06
% end
% fclose(Rejectpercent);
% cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'


% %%%%%%%%summer P300____________
% cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Summer_Re_analysisFOR_ERP_N200';              %import file location
% save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Summer_Re_analysisFOR_ERP_N200';     %saved file loacation
% file_struct = dir(['*.erp'])
% len = length(file_struct );
% 
% Rejectpercent = fopen('rejectionaverage.txt', 'w');   %아마 cd 경로에 저장될듯 ?
% fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');
% 
% for i = 1:len;
%     subject_list{i}=file_struct(i).name;
%     subject = subject_list{i};
%     [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
%     filename = sprintf('%s' ,subject);
%     ERP = pop_loaderp(filename);
%     
% %P300    
% %%%%% 275ms-450ms  ->보정시 575-750ms
%     ALLERP = pop_geterpvalues( ERP, [ 575 750],  2,1:6 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 575 750],  2,1:6 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
% 
%     z = filename
%     pathNfilename = sprintf('%s.txt' ,z)
%     pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06
% end
% fclose(Rejectpercent);
% cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'
% 
%%%%%%%%Winter N200
% cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Winter_Re_analysisFOR_ERP_N200';              %import file location
% save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Winter_Re_analysisFOR_ERP_N200';     %saved file loacation
% file_struct = dir(['*.erp'])
% len = length(file_struct );
% 
% Rejectpercent = fopen('rejectionaverage.txt', 'w');   %아마 cd 경로에 저장될듯 ?
% fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');
% 
% for i = 1:len;
%     subject_list{i}=file_struct(i).name;
%     subject = subject_list{i};
%     [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
%     filename = sprintf('%s' ,subject);
%     ERP = pop_loaderp(filename);
%     
%      %N170 : 130-170 / N1 : 80-140 / N2 : 180-320 or 180-250 / MNN : 150-250
%     ALLERP = pop_geterpvalues( ERP, [ 200 300],  2,1:6 , 'Append', 'on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 200 300],  2,1:6 ,     'Append','on', 'Baseline', [0 300], 'FileFormat', 'wide', 'Filename', 'ERP2latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'negative', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
% 
%     z = filename
%     pathNfilename = sprintf('%s.txt' ,z)
%     pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06
% end
% fclose(Rejectpercent);
% cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'
% 
% 
% %%%%%%%%Winter P300
% cd 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Winter_Re_analysisFOR_ERP_P300';              %import file location
% save_file_path = 'C:\Users\my\Documents\google_sync_drive\Construction noise - ERP paper\wintereegSEMIfinal\2021_7_5_ICA_ERP\ERPSET\Winter_Re_analysisFOR_ERP_P300';     %saved file loacation
% file_struct = dir(['*.erp'])
% len = length(file_struct );
% 
% Rejectpercent = fopen('rejectionaverage.txt', 'w');   %아마 cd 경로에 저장될듯 ?
% fprintf(Rejectpercent, '%6s         %12s\n', 'filename', 'average rejection');
% 
% for i = 1:len;
%     subject_list{i}=file_struct(i).name;
%     subject = subject_list{i};
%     [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
%     filename = sprintf('%s' ,subject);
%     ERP = pop_loaderp(filename);
%     
% %%%%% 275ms-450ms  ->보정시 575-750ms
%     ALLERP = pop_geterpvalues( ERP, [ 275 450],  2,1:6 , 'Append', 'on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3Amplitude.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peakampbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );% GUI: 09-Jan-2020 15:24:37    p300 amplitude
%     ALLERP = pop_geterpvalues( ERP, [ 275 450],  2,1:6 ,     'Append','on', 'Baseline', 'pre', 'FileFormat', 'wide', 'Filename', 'ERP2p3latency.txt', 'Fracreplace', 'NaN', 'InterpFactor',1, 'Measure', 'peaklatbl', 'Neighborhood',3, 'PeakOnset',1, 'Peakpolarity', 'positive', 'Peakreplace', 'absolute', 'Resolution',3 );                           %      latency
% 
%     z = filename
%     pathNfilename = sprintf('%s.txt' ,z)
%     pop_export2text( ERP, pathNfilename,  2, 'electrodes', 'on', 'precision',4, 'time', 'on', 'timeunit',0.001, 'transpose', 'on' );% GUI: 06-Feb-2020 23:14:06
% end
% fclose(Rejectpercent);
% cd 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip'