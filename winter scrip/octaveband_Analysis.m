N = 1e5;
fs = 44.1e3;
wn = randn(N,1);

z = [0.982231570015379 0.832656605953720 0.107980893771348]';
p = [0.995168968915815 0.943841773712820 0.555945259371364]';
[b,a] = zp2tf(z,p,1);

pn = filter(b,a,wn);
flims = [200 20e3];
bpo = 5;
opts = {'FrequencyLimits',[125,10E3],'BandsPerOctave',bpo};

% poctave(pn,fs,opts{:});
% hold on
% poctave(pn,fs,opts{:},'Weighting','C')
poctave(data(:,1),fs,'FrequencyLimits',[125,20E3],'BandsPerOctave',3,'FilterOrder',6,'Weighting','A')% 보통 사람용이 특성A
figure= poctave(data(:,1),fs,'FrequencyLimits',[125,20E3],'BandsPerOctave',3,'FilterOrder',6,'Weighting','A')% 보통 사람용이 특성A
% hold off
% legend('Pink noise','C-weighted','A-weighted','Location','SouthWest')