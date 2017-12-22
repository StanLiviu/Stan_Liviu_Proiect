%semnal dreptunghiular x de perioada 40s, durata 19s, factor de umplere
%19/P*100
P=40
w0=(2*pi)/P;
duty=19/P*100;
t=0:0.1:200
x=square(w0*t, 19/P*100);


N=25
%C=matricea coeficientilor pe care o egalam initial cu zero
C=zeros(size(2*N+1))
%x2 va fi semnalul reconstruit
x2=0
%for pentru calculul coeficientilor de la -25 la 25
for k=-N:N
    %integrala de la 0 la 19 unde semnalul este 1
    fun2=@(t) 1.*exp(-1j*k*w0*t)
    %integrala de la 19 la 40 unde semnalul este -1
    fun3=@(t) (-1).*exp(-1j*k*w0*t)
    %formula de calcul a coeficientilor (integrala pe o perioada
    C(k+N+1)=1/P*(integral(fun2, 0, 19)+integral(fun3, 19, 40))
    re=real(C(k+N+1))
    im=imag(C(k+N+1))
    %se pun coeficientii in matrice
    C(k+N+1)=re+1j*im
    %semnalul va fi suma modulelor coeficientilor
    x2=x2+real(C(k+N+1)*exp(1j*k*w0*t))
end

%reprezentarea grafica a spectrului de amplitudine
subplot(2, 1, 1)
stem((-N:N), abs(C)); title('Spectrul de amplitudini');
subplot(2, 1, 2); 
%reprezentarea semnalului initial
plot(t, x, '-')
xlabel('Timp')
ylabel('Amplitudine')
hold on
%reprezentarea semnalului reconstruit
plot(t, x2, '.'); title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold off

% Teoria seriilor Fourier ne spune
% ca orice semnal periodic poate fi aproximat printr-o suma infinita de sinusi si
% cosinusi de diferite frecvente fiecare ponderat cu un anumit coeficient. Acesti coeficienti
% reprezinta practic spectrul.
% Semnalul reconstruit folosind un numar finit de termeni se apropie ca
% forma de semnalul original cu o anumita marja de eroare. In plus se observa faptul ca semnalul poate fi aproximat printr-o
% suma de sinusoide: variatiile semanlului au un caracter de sinusoida.