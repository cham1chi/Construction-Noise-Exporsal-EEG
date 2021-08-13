% cd C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip
load('MMN_(150-250).mat')  %  MMNby150to250).mat or MMNby150to250).mat
% 대응표본 t test의 샘플검정을 위한 정규성 검사
ex1= MMNby150to250(1:14,1:18);
ex2= MMNby150to250(15:28,1:18);
ex3= MMNby150to250(29:41,1:18);
ex4= MMNby150to250(42:54,1:18);
ex5= MMNby150to250(55:67,1:18);
ex6= MMNby150to250(68:80,1:18);
hzex1= MMNby150to250(1:14,1:18);
hzex2= MMNby150to250(15:28,1:18);
hzex3= MMNby150to250(29:41,1:18);
hzex4= MMNby150to250(42:54,1:18);
hzex5= MMNby150to250(55:67,1:18);
hzex6= MMNby150to250(68:80,1:18);
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

p_pair1=[];
H_pair1=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(ex1(:,i) ,ex2(:,i))
    p_pair1(i) = P
    H_pair1(i) = H
end;

p_pair2=[];
H_pair2=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( ex3(:,i), ex4(:,i))
    p_pair2(i) = P
    H_pair2(i) = H
end;
p_pair3=[];
H_pair3=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(ex5(:,i),ex6(:,i))
    p_pair3(i) = P
    H_pair3(i) = H
end        ;
p_pair4=[];
H_pair4=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex1(:,i) ,noex3(:,i))
    p_pair4(i) = P
    H_pair4(i) = H
end;
p_pair5=[];
H_pair5=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex1(:,i) ,noex5(:,i))
    p_pair5(i) = P
    H_pair5(i) = H
end;
p_pair6=[];
H_pair6=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex3(:,i) ,noex5(:,i))
    p_pair6(i) = P
    H_pair6(i) = H
end;
p_pair7=[];
H_pair7=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(noex2(:,i) ,noex4(:,i))
    p_pair7(i) = P
    H_pair7(i) = H
end;
p_pair8=[];
H_pair8=[];
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(noex2(:,i), noex6(:,i))
    p_pair8(i) = P
    H_pair8(i) = H
end;
p_pair9=[];
H_pair9=[];
for i = 1:6;

    H_num_pair = sprintf('h%f' ,i);
    P_num_pair = sprintf('p%f' ,i);
    [H P] = signrank(noex4(:,i), noex6(:,i));
    p_pair9(i) = P;
    H_pair9(i) = H;
end;
W_Psummary_Amplitude = [p_pair1; p_pair2 ; p_pair3;p_pair4; p_pair5; p_pair6 ; p_pair7; p_pair8; p_pair9];
W_Hsummary_Amplitude = [H_pair1; H_pair2 ; H_pair3; H_pair4; H_pair5; H_pair6 ; H_pair7; H_pair8; H_pair9];
"Wilcoxon sign rank test Amplitude";

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p_pair1=[];
H_pair1=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(ex1(:,i) ,ex2(:,i))
    p_pair1(i) = P
    H_pair1(i) = H
end;

p_pair2=[];
H_pair2=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( ex3(:,i), ex4(:,i))
    p_pair2(i) = P
    H_pair2(i) = H
end;
p_pair3=[];
H_pair3=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(ex5(:,i),ex6(:,i))
    p_pair3(i) = P
    H_pair3(i) = H
end        ;
p_pair4=[];
H_pair4=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex1(:,i) ,noex3(:,i))
    p_pair4(i) = P
    H_pair4(i) = H
end;
p_pair5=[];
H_pair5=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex1(:,i) ,noex5(:,i))
    p_pair5(i) = P
    H_pair5(i) = H
end;
p_pair6=[];
H_pair6=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank( noex3(:,i) ,noex5(:,i))
    p_pair6(i) = P
    H_pair6(i) = H
end;
p_pair7=[];
H_pair7=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(noex2(:,i) ,noex4(:,i))
    p_pair7(i) = P
    H_pair7(i) = H
end;
p_pair8=[];
H_pair8=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(noex2(:,i), noex6(:,i))
    p_pair8(i) = P
    H_pair8(i) = H
end;
p_pair9=[];
H_pair9=[];
for i = 7:12

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = signrank(noex4(:,i), noex6(:,i))
    p_pair9(i) = P
    H_pair9(i) = H
end;
W_Psummary_Latency = [p_pair1; p_pair2 ; p_pair3;p_pair4; p_pair5; p_pair6 ; p_pair7; p_pair8; p_pair9];
W_Hsummary_Latency = [H_pair1; H_pair2 ; H_pair3; H_pair4; H_pair5; H_pair6 ; H_pair7; H_pair8; H_pair9];
"Wilcoxon sign rank test Latency"


total_P =[ W_Psummary_Amplitude  W_Psummary_Latency(:,7:12)]
total_H = [W_Hsummary_Amplitude  W_Hsummary_Latency(:,7:12)]