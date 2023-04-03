% Double Butt joint : 

fub = input("Enter utlimate strength of bolt,fub : ");
ftg = input("Enter tensile strength of bolt,ftg : ");
fu = input("Enter value of fu : ");
d = input("Enter diameter of the bolt,d : ");
nn = input("Enter planes cutting threads,nn :");
ns = input("Enter planes cutting no threads,ns :");
tp = input("Enter thickness of plates given,tp : ");
tc = input("Enter thickness of cover plate,tc : ");


%Shear Capacity calcualtion  : 

asb = pi * (d *d ) /4;
anb = 0.78 * asb ;
vnsb = (fub * sqrt(3))*(asb * ns + anb * nn) / 3000;

shear_capacity = vnsb / 1.25 ;

display(shear_capacity);

% Bearing Capacity calculation  : 

pitch  = 2.5 * d;

hole_d = 0;
if d<=14
    hole_d = d+1;
end

if d>=16 && d<=22
    hole_d = d+2;
end

if d>24 
    hole_d = hole_d+3;
end

edge_distance = 1.5 * hole_d;

kb = min(0.5, min((pitch/3*hole_d)-0.25,fub/fu));

t = min(tp,2*tc);

vdpb = (2.5 * kb * d * t * fu)/1000;

bearing_strength = vdpb / 1.25 ;

display(bearing_strength);







