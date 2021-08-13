% cd C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip
load('P3_(200-450)')  %  P3by200to450).mat or P3by200to450).mat
% 소음종류가 동일할때hz 별 대응표본  semiP3 or P3by200to450)
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

x1 = ex1(:,6);  %af4 =6
x2 = ex2(:,6);
x3 = ex3(:,6);
x4 = ex4(:,6);
x5 = ex5(:,6);
x6 = ex6(:,6);
x = [x1; x2; x3; x4; x5; x6];
g1 = repmat({'Lab_1'},35,1);
g2 = repmat({'Lab_4'},35,1);
g3 = repmat({'Dump_1'},34,1);
g4 = repmat({'Dump_4'},34,1);
g5 = repmat({'breaker_1'},34,1);
g6 = repmat({'breaker_4'},34,1);
g = [g1; g2; g3; g4; g5; g6];

title('Amplitude of AF average channel')


h = boxplot(x,g);
set(h,'LineWidth',2)
 ylim([-3 10])
% xlim(auto)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % rng('default')  % For reproducibility
% x1 = ex1(:,4);
% x2 = ex2(:,4);
% x3 = ex3(:,4);
% x4 = ex4(:,4);
% x5 = ex5(:,4);
% x6 = ex6(:,4);
% x = [x1; x2; x3; x4; x5; x6];
% g1 = repmat({'Lab_1'},35,1);
% g2 = repmat({'Lab_4'},35,1);
% g3 = repmat({'Dump_1'},34,1);
% g4 = repmat({'Dump_4'},34,1);
% g5 = repmat({'breaker_1'},34,1);
% g6 = repmat({'breaker_4'},34,1);
% g = [g1; g2; g3; g4; g5; g6];
% 
% title('latency of FC average channel')
% ylim([0 250])
% 
% h = boxplot(x,g);
% set(h,'LineWidth',2)
% %%%%%%%%%%%%%%%%%%%%%%%%%%
% figure
% boxplot([ex1(:,2), ex2(:,2)])
% title('mean F')
% ylabel('potential diff')
% ylim([0 250])
% xlabel('experiment')
% hold on
% 
% boxplot([ex3(:,2),ex4(:,2),ex5(:,2),ex6(:,2)])
% title('mean F')
% ylabel('potential diff')
% ylim([0 250])
% xlabel('experiment')
%%%%%%%%%%%%%%%%%%%%%%%%%%    FC가 가장 차이가뚜렷함
% figure
% rng('default')
% X = [ex1(:,4); ex2(:,4);ex3(:,4);ex4(:,4);ex5(:,4);ex6(:,4)];
% g1 = repmat({'Quiet Lab'}, 35,1);
% g2 = repmat({'Quiet Lab'}, 35,1);
% g3 = repmat({'DumpTruck'}, 33,1);
% g4 = repmat({'DumpTruck'}, 33,1);
% g5 = repmat({'Breaker'}, 33,1);
% g6 = repmat({'Breaker'}, 33,1);
% ylim([0 250])
% g = [g1;g2;g3;g4;g5;g6] %6
% boxplot(X,g)
% 
% boxplot([ex1(:,4), ex2(:,4)])
% title('mean FC')
% ylabel('potential diff')
% ylim([0 250])
% xlabel('experiment')
% 
% figure
% boxplot([ex3(:,4),ex4(:,4),ex5(:,4),ex6(:,4)])
% title('mean FC')
% ylabel('potential diff')
% ylim([0 250])
% xlabel('experiment')
% %%%%%%%%%%%%%%%%%%%%%%%%%%
% % figure
% % boxplot([ex1(:,6), ex2(:,6)])
% % title('mean AF')
% % ylabel('potential diff')
% % ylim([0 250])
% % xlabel('experiment')
% % 
% % figure
% % boxplot([ex3(:,6),ex4(:,6),ex5(:,6),ex6(:,6)])
% % title('mean AF')
% % ylabel('potential diff')
% % ylim([0 250])
% % xlabel('experiment')
% %%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%F3_4 mean amplitude diff 
% % figure
% % boxplot([ex1(:,1), ex2(:,1)])
% % title('mean F')
% % ylabel('potential diff')
% % ylim([0 15])
% % xlabel('experiment')
% % 
% % figure
% % boxplot([ex3(:,1),ex4(:,1),ex5(:,1),ex6(:,1)])
% % title('mean F')
% % ylabel('potential diff')
% % ylim([0 15])
% % xlabel('experiment')
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FC
% % figure
% % boxplot([ex1(:,3), ex2(:,3)])
% % title('mean FC')
% % ylabel('potential diff')
% % ylim([0 15])
% % xlabel('experiment')
% % 
% % figure
% % boxplot([ex3(:,3),ex4(:,3),ex5(:,3),ex6(:,3)])
% % title('mean FC')
% % ylabel('potential diff')
% % ylim([0 15])
% % xlabel('experiment')
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AF가 가장좋다
% figure
% boxplot([ex1(:,5), ex2(:,5)])
% title('mean AF')
% ylabel('potential diff')
% ylim([0 15])
% xlabel('experiment')
% 
% figure
% boxplot([ex3(:,5),ex4(:,5),ex5(:,5),ex6(:,5)])
% title('mean AF')
% ylabel('potential diff')
% ylim([0 15])
% xlabel('experiment')
