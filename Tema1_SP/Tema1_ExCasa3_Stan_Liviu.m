function[]=Tema1_ExCasa3_Stan_Liviu(t,nr)

%setez nivelurile din enunt 
niv = [ -1 1 ];
%ultimul parametru al functiei loop este necesar pentru calcularea
%numarului figurii
Tema1_ExCasa3_Stan_Liviu(t,nr,niv,1);

niv = [ -3 -1 1 3];
Tema1_ExCasa3_Stan_Liviu(t,nr,niv,2);

niv = [ -5 -3 -1 1 3 5];
Tema1_ExCasa3_Stan_Liviu(t,nr,niv,3);

niv = [ -7 -5 -3 -1 1 3 5 7];
Tema1_ExCasa3_Stan_Liviu(t,nr,niv,4);

end