load('ERP_data(P3andMMN)_FC3andF3_mean.mat') %  erpdata
load('NoiseAcousticFactor.mat')  %  acousticDATA factor1,2,3
%%%%%%%%%%%%%%%%%%%%%%%
erp =  erpdata        %%%%  P3{MeanA_F	MeanL_F	MeanA_FC	MeanA_FC	MeanA_AF	MeanA_AF } , N? { MeanA_F	MeanL_F	MeanA_FC	MeanA_FC	MeanA_AF	MeanA_AF }, ex_code
ex1= erp(1:35,1:12);
ex2= erp(36:70,1:12);
ex3= erp(71:104,1:12);
ex4= erp(105:138,1:12);
ex5= erp(139:172,1:12);
ex6= erp(173:206,1:12);
%%%%%%%%%%%%%%%%%%%%%%
noise = acousticDATA%%%%  Factor1, Factor2, Factor3, ex_code
code1=noise(1:35,1:3);
code2=noise(36:70,1:3);
code3= noise(71:104,1:3);
code4= noise(105:138,1:3);
code5= noise(139:172,1:3);
code6= noise(173:206,1:3);
%%%%%%%%%%%%%%%%%%%%%%
ERP1KHz = vertcat(ex1,ex3,ex5);
ERP4KHz = vertcat(ex2,ex4,ex6);
Noise1Khz= vertcat(code1,code3,code5);
Noise4Khz= vertcat(code2,code4,code6);


%1KHZ
% cor1 = horzcat(Noise1Khz(:,1),Noise1Khz(:,2),Noise1Khz(:,3), ERP1KHz(:,1),ERP1KHz(:,2),ERP1KHz(:,3),ERP1KHz(:,4),ERP1KHz(:,5),ERP1KHz(:,6),ERP1KHz(:,7),ERP1KHz(:,8));
cor1 = horzcat(Noise1Khz, ERP1KHz);
[R1khz,P1khz] = corrcoef(cor1) ;%% 11x22행렬


%4KHZ
% cor4 = horzcat(Noise4Khz(:,1),Noise4Khz(:,2),Noise4Khz(:,3), ERP4KHz(:,1),ERP4KHz(:,2),ERP4KHz(:,3),ERP4KHz(:,4),ERP4KHz(:,5),ERP4KHz(:,6),ERP4KHz(:,7),ERP4KHz(:,8));
cor4 = horzcat(Noise4Khz, ERP4KHz) ;
[R4khz,P4khz] = corrcoef(cor4);  %% 11x22행렬

%%%%%%%%%%%%%%%%%%%%%%%%
summary1khz = vertcat( R1khz(1, 4:15), P1khz(1, 4:15),R1khz(2, 4:15), P1khz(2, 4:15),R1khz(3, 4:15), P1khz(3, 4:15));%????????
% R 상관계수 P 유의확률 
summary4khz = vertcat( R4khz(1, 4:15), P4khz(1, 4:15),R4khz(2, 4:15), P4khz(2, 4:15),R4khz(3, 4:15), P4khz(3, 4:15));




