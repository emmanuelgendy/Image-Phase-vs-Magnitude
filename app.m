%I= rgb2gray(imread('jack.jpeg')); 
imm= im2double(imread('tane.png'));%hts2lne leh b2araha double,so2al helw, mknsh by3ml recon sah 
I= rgb2gray(imm); 

%I = imread('jack.jpeg');
imshow(I);
figure
%shift image for some reason
%Image_shifted = fftshift(I);
image_fourier = fft2(I);
imshow(image_fourier);
figure
%magnitude of an image
Real=abs(image_fourier);
imshow(Real);
figure
%phase of an image
 phase=angle(image_fourier);
 imshow(phase);
 figure
 %recostruct image 

 I_fft_recon = Real .* exp(j*phase);
I_recon =ifft2(I_fft_recon);
imshow(I_recon,[]);
figure
% read tane image
I2= im2double(imread('jack.jpeg'));
%ngeb el phase wl mag bto3ha
image_fourier_2 = fft2(I2);
Real_2=abs(image_fourier_2);
 phase_2=angle(image_fourier_2);
 I_fft_recon_2 = Real_2 .* exp(j*phase_2);
I_recon_2 =ifft2(I_fft_recon_2);
imshow(I_recon_2,[]);
figure
%hngrb real1 w phase2
 I_fft_recon_3= Real_2 .* exp(j*phase);
I_recon_3 =real(ifft2(I_fft_recon_3));
imshow(I_recon_3,[]);



