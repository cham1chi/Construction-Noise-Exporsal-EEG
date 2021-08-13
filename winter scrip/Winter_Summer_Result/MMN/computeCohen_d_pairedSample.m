% cd C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip
load('MMN150_250.mat')  %  MMNby150to250).mat or MMNby150to250).mat
% 소음종류가 동일할때 hz 별 대응표본  semiP3 or MMNby150to250)
ex1= MMNby150to250(1:35,1:18);
ex2= MMNby150to250(36:70,1:18);
ex3= MMNby150to250(71:104,1:18);
ex4= MMNby150to250(105:138,1:18);
ex5= MMNby150to250(139:172,1:18);
ex6= MMNby150to250(173:206,1:18);
hzex1= MMNby150to250(1:35,1:18);
hzex2= MMNby150to250(36:70,1:18);
hzex3= MMNby150to250(71:104,1:18);
hzex4= MMNby150to250(105:138,1:18);
hzex5= MMNby150to250(139:172,1:18);
hzex6= MMNby150to250(173:206,1:18);


hzex1(2:3,:) =[] ;    % 특정 행 제외할때 씀 (2(winter10), 3(winter11) 행제거)
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

diff1 = ex1-ex2;
diff2 = ex3-ex4;
diff3 = ex5-ex6;
diff4 = noex1-noex3;
diff5 = noex1-noex5;
diff6 = noex3-noex5;
diff7 = noex2-noex4;
diff8 = noex2-noex6;
diff9 = noex4-noex6;

d1=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(ex1(:,i) ,ex2(:,i),'paired')
    d1(i) = d
    
end;

d2=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( ex3(:,i), ex4(:,i),'paired')
    d2(i) = d
   
end;
d3=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(ex5(:,i),ex6(:,i),'paired')
    d3(i) = d
    
end        ;
d4=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex1(:,i) ,noex3(:,i),'paired')
    d4(i) = d
    
end;
d5=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex1(:,i) ,noex5(:,i),'paired')
    d5(i) = d
    
end;
d6=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex3(:,i) ,noex5(:,i),'paired')
    d6(i) = d
    
end;
d7=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(noex2(:,i) ,noex4(:,i),'paired')
    d7(i) = d
    
end;
d8=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(noex2(:,i), noex6(:,i),'paired')
    d8(i) = d
    
end;
d9=[];
for i = 1:6;

    H_num_pair = sprintf('h%f' ,i);
    P_num_pair = sprintf('p%f' ,i);
    d = computeCohen_d(noex4(:,i), noex6(:,i),'paired');
    d9(i) = d
    
end;
cohen_d_Amplitude = [d1; d2 ; d3;d4; d5; d6 ; d7; d8; d9];
"cohen d Amplitude";

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dl1=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(ex1(:,i) ,ex2(:,i),'paired')
    dl1(i) = d
    
end;

dl2=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( ex3(:,i), ex4(:,i),'paired')
    dl2(i) = d
    
end;
dl3=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(ex5(:,i),ex6(:,i),'paired')
    dl3(i) = d
    
end        ;
dl4=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex1(:,i) ,noex3(:,i),'paired')
    dl4(i) = d
    
end;
dl5=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex1(:,i) ,noex5(:,i),'paired')
    dl5(i) = d
    
end;
dl6=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d( noex3(:,i) ,noex5(:,i),'paired')
    dl6(i) = d
    
end;
dl7=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(noex2(:,i) ,noex4(:,i),'paired')
    dl7(i) = d
   
end;
dl8=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(noex2(:,i), noex6(:,i),'paired')
    dl8(i) = d
end;
dl9=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    d = computeCohen_d(noex4(:,i), noex6(:,i),'paired')
    dl9(i) = d
end;
Cohen_d_Latency = [dl1; dl2 ; dl3;dl4; dl5; dl6 ; dl7; dl8; dl9];
"cohen d  Latency"


total_d =[ cohen_d_Amplitude Cohen_d_Latency(:,7:12)]