% ERPLAB history file generated on 09-Jan-2020
% ---------------------------------------------

EEG.etc.eeglabvers = '14.1.2'; % this tracks which version of EEGLAB is being used, you may ignore it

%�� ���ϸ��� �ε��������
EEG = pop_biosig('C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter.edf');
EEG.setname='edf�ε�';

EEG = pop_select( EEG,'channel',{'AF3' 'F7' 'F3' 'FC5' 'T7' 'P7' 'O1' 'O2' 'P8' 'T8' 'FC6' 'F4' 'F8' 'AF4' 'MarkerValueInt'});
EEG.setname='edf�ε�2ä�μ���';

EEG = pop_chanevent(EEG, 15,'edge','leading','edgelen',0);
%�̺�Ʈ ����Ʈ �� ���ϸ��� ���� ���������� �ƴϸ� ����Ʈ�� ��� �����Ҽ������� / �̹� �����̸� ����Ÿ�� ���� �� ������:����
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' }, 'Eventlist', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp\eventlist.txt' ); % GUI: 09-Jan-2020 13:08:32


EEG  = pop_binlister( EEG , 'BDF', 'C:\Users\my\Documents\MATLAB\bin for winter.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 09-Jan-2020 13:09:57

EEG = pop_epochbin( EEG , [-300.0  800.0],  [ -300 0]); % GUI: 09-Jan-2020 13:11:13
EEG.setname='edf�ε�2ä�μ���_elist_bins_be����';



ERP = pop_averager( ALLEEG , 'Criterion', 'all', 'DSindex',5, 'ExcludeBoundary', 'on', 'SEM', 'on' );% GUI: 09-Jan-2020 13:12:08
ERP = pop_ploterps( ERP, [ 1 2],1:14 , 'AutoYlim', 'on', 'Axsize', [ 0.05 0.08], 'BinNum', 'on', 'Blc', 'pre', 'Box', [ 4 4], 'ChLabel', 'on', 'FontSizeChan',10, 'FontSizeLeg',12, 'FontSizeTicks',10, 'LegPos', 'bottom', 'Linespec', {'k-' , 'r-' }, 'LineWidth',1, 'Maximize', 'on', 'Position', [ 103.714 24.7222 106.857 31.8889], 'Style', 'Classic', 'Tag', 'ERP_figure', 'Transparency',0, 'xscale', [ -296.0 789.0 -200:200:600 ], 'YDir', 'normal' );% GUI: 09-Jan-2020 13:12:29
%���� �� ��ҿ� �����̸� 
ERP = pop_savemyerp(ERP, 'erpname', 'ù��°erp', 'filename', 'ù��°erp.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% Script: 09-Jan-2020 13:12:58
ERP = pop_savemyerp(ERP, 'erpname', 'ù��°erp', 'filename', 'ù��°erp.erp', 'filepath', 'C:\Users\my\Documents\MATLAB\eeglab14_1_2b\wintererp');% GUI: 09-Jan-2020 13:12:58
