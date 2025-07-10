
theta1 = 0:10:170;
[R1,xp] = radon(P,theta1);
num_angles_R1 = size(R1,2)
num_angles_R1 = 18

% In realistic scenario, we would not have access to Phantom image |P|, rather, we% need to get the Phantom image from the projection |R1|.
% Match the parallel rotation-increment, |dtheta|, in each reconstruction
% with that used above to create the corresponding synthetic projections. In
% a real-world case, you would know the geometry of your transmitters and
% sensors, but not the source image, |P|.
%
output_size = max(size(P));
dtheta1 = theta1(2) - theta1(1);
I1 = iradon(R1,dtheta1,output_size);
figure, imshow(I1)
