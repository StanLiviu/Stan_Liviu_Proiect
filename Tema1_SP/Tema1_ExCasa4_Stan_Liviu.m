function[]=Tema1_ExCasa4_Stan_Liviu(t,nr)

A=0.8;
T=3;
figure(nr)

%inmultim functia cu amplitudinea iar argumentul sinusului il impartim la
%perioada semnalului neredresat pentru a obtine graficul dorit
s=A*sin(2*pi*t*1/T);

%Monoredresare (toate elementele mai mici decat 0 sunt transformate in 0)
s(s<0) = 0;

plot(t, s, '-r.'),title('Semnal sinusoidal redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

end