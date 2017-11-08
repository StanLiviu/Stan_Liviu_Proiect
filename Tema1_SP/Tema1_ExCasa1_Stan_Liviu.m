function[]=Tema1_ExCasa1_Stan_Liviu(t,nr)
%factorul de umplere:
n = 1/4;

%semnalul dreptunghiular se reprezinta ca square(t, n) unde n este duty
%cycle;  inmultesc cu (1-n) si scad cu n deoarece nivelurile
%maxim si minim nu sunt opuse (a+b = 0.5 (nivelul max) si a-b = -1 (nivelul
%min))
s=(1-n)*square(t*2*pi, n*100) - n;
figure(nr)
plot(t,s,'-r.'),title('Semnal dreptunghiular periodic'),xlabel('Timp [s]'),ylabel('A [V]'),grid

end