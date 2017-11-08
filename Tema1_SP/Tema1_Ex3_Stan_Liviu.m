function[ma,vp,m1] = Tema1_Ex3_Stan_Liviu(v)
%ma returneaza media aritmetica a partilor reale ale elementelor din v
ma = mean(real(v))

%vp returneaza un vector ce contine elementele vectorului v ridicate
%la patrat
vp = v.^2

%Se va defini vectorul a ca vectorul v transpus
a = v.';

%m1 returneaza matricea obtinuta din inmultirea vectorului v cu a
m1 = v * a

b = [1;5;7;4];
a = [4;9;3;6];
d = complex(b,a);

%chem functia E3 pentru vectorul d
Tema1_Ex3_Stan_Liviu(d);
end