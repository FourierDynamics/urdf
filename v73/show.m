clc
clear
robot = importrobot('urdf/v73.urdf');
s=randomConfiguration(robot);
q = [0,0,0,0,0,0,0];%某一瞬时的关节的角度
% q = [pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4];%某一瞬时的关节的角度
% q = [pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4];%某一瞬时的关节的角度
for k = 1:7
    s(k).JointPosition = q(k);
end
show(robot,s);
showdetails(robot);