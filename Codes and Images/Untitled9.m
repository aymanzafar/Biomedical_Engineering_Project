theta1 = 0:10:170;
[R1,xp] = radon(P,theta1);
num_angles_R1 = size(R1,2)
num_angles_R1 = 18

figure, imagesc(theta1,xp,R1)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)');
ylabel('Parallel Sensor Position - x\prime (pixels)');