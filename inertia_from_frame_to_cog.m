clc
clear
a=[  1.2612875e+03  8.2672225e-03  3.4516982e-02
 8.2672225e-03  1.2448053e+03 -1.3296577e+02
 3.4516982e-02 -1.3296577e+02  2.3522536e+02]
a_cog=a*1e-6
[a_cog(1,1);a_cog(1,2);a_cog(1,3);a_cog(2,2);a_cog(2,3);a_cog(3,3)]

%%
clc
clear all

m = 1.21860594e+00
lx = -0.03007784 * 1e-3;
ly = -3.44128728 * 1e-3;
lz = 77.34973152 * 1e-3;
Lxx_body_frame = 8610.3 * 1e-6;
Lxy_body_frame = 1.22251147 * 1e-6;
Lxz_body_frame = -3.80958489 * 1e-6;
Lyy_body_frame = 8693.03963495 * 1e-6;
Lyz_body_frame = -339.38885399 * 1e-6;
Lzz_body_frame = 917.71346927 * 1e-6;



 Lxy_body_frame =   -Lxy_body_frame;
 Lxz_body_frame =  -Lxz_body_frame ;
 Lyz_body_frame =   -Lyz_body_frame ;


Lxx_cog = Lxx_body_frame - m*(ly^2 + lz^2);
Lxy_cog = Lxy_body_frame - m*lx * ly;
Lxz_cog = Lxz_body_frame -  m*lx * lz;
Lyy_cog = Lyy_body_frame - m*(lx^2+lz^2);
Lyz_cog = Lyz_body_frame - m*ly * lz  ;
Lzz_cog = Lzz_body_frame - m*(lx^2 + ly^2) ;

Lxx_cog = Lxx_cog;
Lxy_cog = -Lxy_cog;
Lxz_cog = -Lxz_cog;
Lyy_cog = Lyy_cog;
Lyz_cog = -Lyz_cog;
Lzz_cog = Lzz_cog;

com=[lx ly lz]
inertia=[Lxx_cog;Lxy_cog;Lxz_cog;Lyy_cog;Lyz_cog;Lzz_cog]
%%
clc;
clear all;
m= 1.7632784e+00 ;
x= 3.4231317e+00 ;
y= 5.5276827e+01;
z=-1.7352286e+02;
IG_xx=3.8291006e+04;
IG_yy= 3.6631150e+04;
IG_zz=7.1685768e+03;
IG_xy=-1.3642269e+02;
IG_xz=-4.9591101e+02;
IG_yz=-1.3140904e+03;

Ixx=IG_xx+m*(y^2+z^2)
Iyy=IG_yy+m*(x^2+z^2)
Izz=IG_zz+m*(x^2+y^2)
Ixy=-(-IG_xy+m*x*y)
Ixz=-(-IG_xz+m*x*z)
Iyz=-(-IG_yz+m*y*z)
