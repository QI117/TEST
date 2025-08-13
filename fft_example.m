% 创建一个三维空间的坐标网格
[X, Y, Z] = meshgrid(0:19, 0:19, 0:19);

% 定义三个不同的频率值
freqX = 2;
freqY = 3;
freqZ = 4;

% 创建一个三维信号，它是三个不同频率的正弦波的和
X_signal = cos(2 * pi * freqX * X / 20) + sin(2 * pi * freqY * Y / 20) + cos(2 * pi * freqZ * Z / 20);

% 显示空间域中的中心切片
figure;
subplot(1, 2, 1);
imagesc(X_signal(:,:,10));
title('Spatial Domain - Central Slice (X=10)');
colorbar;

% 计算信号的傅里叶变换
m = nextpow2(20);
fft_signal = fftn(X_signal,[2^m 2^m 2^m]);

% 由于fftn返回的是N-1点的DFT，我们需要调整频率轴的大小
fft_signal = fftshift(fft_signal);

% 显示频率域中的中心切片
subplot(1, 2, 2);
imagesc(abs(fft_signal(:,:,10)));
title('Frequency Domain - Central Slice (k=10)');
colorbar;
