
% cd C:\Users\my\Documents\MATLAB\eeglab14_1_2b\winter scrip
load('P3_(200-450).mat')  %  P3by200to450).mat or P3by200to450).mat
% 대응표본 t test의 샘플검정을 위한 정규성 검사
ex1= P3by200to450(1:14,1:18);
ex2= P3by200to450(15:28,1:18);
ex3= P3by200to450(29:41,1:18);
ex4= P3by200to450(42:54,1:18);
ex5= P3by200to450(55:67,1:18);
ex6= P3by200to450(68:80,1:18);
hzex1= P3by200to450(1:14,1:18);
hzex2= P3by200to450(15:28,1:18);
hzex3= P3by200to450(29:41,1:18);
hzex4= P3by200to450(42:54,1:18);
hzex5= P3by200to450(55:67,1:18);
hzex6= P3by200to450(68:80,1:18);
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

diff1 = ex1-ex2
diff2 = ex3-ex4
diff3 = ex5-ex6
diff4 = noex1-noex3
diff5 = noex1-noex5
diff6 = noex3-noex5
diff7 = noex2-noex4
diff8 = noex2-noex6
diff9 = noex4-noex6

p_pair1=[]
H_pair1=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff1(:,i))
    p_pair1(i) = P
    H_pair1(i) = H
end

p_pair2=[]
H_pair2=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff2(:,i))
    p_pair2(i) = P
    H_pair2(i) = H
end
p_pair3=[]
H_pair3=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff3(:,i))
    p_pair3(i) = P
    H_pair3(i) = H
end        
p_pair4=[]
H_pair4=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff4(:,i))
    p_pair4(i) = P
    H_pair4(i) = H
end
p_pair5=[]
H_pair5=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff5(:,i))
    p_pair5(i) = P
    H_pair5(i) = H
end
p_pair6=[]
H_pair6=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff6(:,i))
    p_pair6(i) = P
    H_pair6(i) = H
end
p_pair7=[]
H_pair7=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff7(:,i))
    p_pair7(i) = P
    H_pair7(i) = H
end
p_pair8=[]
H_pair8=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff8(:,i))
    p_pair8(i) = P
    H_pair8(i) = H
end
p_pair9=[]
H_pair9=[]
for i = 1:6

    H_num_pair = sprintf('h%f' ,i)
    P_num_pair = sprintf('p%f' ,i)
    [H P] = swtest(diff9(:,i))
    p_pair9(i) = P
    H_pair9(i) = H
end
S_Psummary = [p_pair1; p_pair2 ; p_pair3;p_pair4; p_pair5; p_pair6 ; p_pair7; p_pair8; p_pair9]
S_Hsummary = [H_pair1; H_pair2 ; H_pair3; H_pair4; H_pair5; H_pair6 ; H_pair7; H_pair8; H_pair9]
"shapiro test"

