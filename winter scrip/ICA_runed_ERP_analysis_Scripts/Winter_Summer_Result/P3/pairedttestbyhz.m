% cd C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip
load('P3_(200-450).mat')  %  P3by200to450).mat or P3by200to450).mat
% ���������� �����Ҷ� hz �� ����ǥ��  semiP3 or P3by200to450)
ex1= P3by200to450(1:35,1:18);
ex2= P3by200to450(36:70,1:18);
ex3= P3by200to450(71:104,1:18);
ex4= P3by200to450(105:138,1:18);
ex5= P3by200to450(139:172,1:18);
ex6= P3by200to450(173:206,1:18);
hzex1= P3by200to450(1:35,1:18);
hzex2= P3by200to450(36:70,1:18);
hzex3= P3by200to450(71:104,1:18);
hzex4= P3by200to450(105:138,1:18);
hzex5= P3by200to450(139:172,1:18);
hzex6= P3by200to450(173:206,1:18);

% ������ �����Ҵ� khz  ������ ttest 
fprintf('������ �����Ҵ� khz  ������ ttest')
[h1to2, p1to2, ci1to2, stats1to2]= ttest(ex1,ex2)   %nonoise
[h3to4, p3to4, ci3to4, stats3to4]= ttest(ex3,ex4)  %dump
[h5to6, p5to6, ci5to6, stats5to6]= ttest(ex5,ex6)  %breaker

% hz�� �����Ҷ� ����(no)������ ��������
fprintf('hz�� �����Ҷ� ����(no)������ ��������')
hzex1(2:3,:) =[] ;    % Ư�� �� �����Ҷ� �� (2(winter10), 3(winter11) ������)
noex1=hzex1;
hzex2(2:3,:) =[] ;
noex2=hzex2;
hzex3(2,:) =[] ;
noex3=hzex3;
hzex4(2,:) =[] ;
noex4=hzex4;
hzex5(2,:) =[] ;
noex5=hzex5;
hzex6(2,:) =[] ;
noex6=hzex6;
% 
[h1to3, p1to3, ci1to3, stats1to3]= ttest(noex1,noex3)
[h1to5, p1to5, ci1to5, stats1to5]= ttest(noex1,noex5)
[h3to5, p3to5, ci3to5, stats3to5]= ttest(noex3,noex5)
[h2to4, p2to4, ci2to4, stats2to4]= ttest(noex2,noex4)
[h2to6, p2to6, ci2to6, stats2to6]= ttest(noex2,noex6)
[h4to6, p4to6, ci4to6, stats4to6]= ttest(noex4,noex6)
% 
 Psummary = vertcat(p1to2, p3to4, p5to6,  p1to3, p1to5, p3to5,  p2to4, p2to6, p4to6) %(p1to4, p1to6, p2to3, p2to5, p3to6,p4to5)
 Hsummary = vertcat(h1to2, h3to4, h5to6,  h1to3, h1to5, h3to5,  h2to4, h2to6, h4to6)
 statssummary = vertcat(stats1to2, stats3to4, stats5to6,  stats1to3, stats1to5, stats3to5,  stats2to4, stats2to6, stats4to6)

% %�ڱ��� ���ļ�khz �� ���� ttest
% fprintf('�ڱ��� ���ļ�khz �� ���� ttest')
% kHz1 = vertcat(ex1, ex3, ex5)  %ex1, ex3, ex5
% kHz2 = vertcat(ex2, ex4, ex6)  %ex2, ex4, ex6
% [h1KHZn4KHZ, p1KHZn4KHZ] = ttest(kHz1, kHz2)  %  p���� �ʹ� ����





% %�ڱ��� ���� noise �� ���� ttest
% fprintf('���� �� ���� ttest')
% noise1 = vertcat(ex1, ex2) ; %ex1, ex2,
% noise2 = vertcat(ex3, ex4 ,ex5, ex6 )  ;%ex3, ex4, ex5, ex6,  
% [hnoise, pnoise] = ttest2(noise1, noise2)  %  p���� �ʹ� ����
% sumary = vertcat(hnoise, pnoise)

% % �� ���� ���
% fprintf('�� ���� ���')
% [h1to4, p1to4]= ttest(noex1,noex4)
% [h1to6, p1to6]= ttest(noex1,noex6)
% [h2to3, p2to3]= ttest(noex2,noex3)
% [h2to5, p2to5]= ttest(noex2,noex5)
% [h3to6, p3to6]= ttest(noex3,noex6)
% [h4to5, p4to5]= ttest(noex4,noex5)
% 
% summary = vertcat(h1to2, h3to4, h5to6, h1to3, h1to5, h3to5, h2to4, h2to6, h4to6, h1to4, h1to6, h2to3, h2to5, h3to6,h4to5)
% summary = vertcat(p1to2, p3to4, p5to6, p1to3, p1to5, p3to5, p2to4, p2to6, p4to6, p1to4, p1to6, p2to3, p2to5, p3to6,p4to5)


