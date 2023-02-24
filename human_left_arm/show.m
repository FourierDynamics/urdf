clc
clear
robot = importrobot('human_left_arm.urdf');
s=randomConfiguration(robot);
q = [0,0,0,0,0,0,0];%某一瞬时的关节的角度
% q = [pi/4,-pi/4,pi/4,pi/4,pi/4,pi/4,pi/4];%某一瞬时的关节的角度
for k = 1:6
    s(k).JointPosition = q(k);
end
show(robot,s);
showdetails(robot);