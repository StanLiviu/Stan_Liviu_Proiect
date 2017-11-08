%  N e definit ca numarul de esantioane dat de perioada de bit inmultit cu
% frecventa de esantionare; N = 0.5 ms * 12 kHz
N = 0.5 * 12;

% creez un vector de size(n) cu valori random binare
n = randi([0 1],1,N);

% a.semnalul continuu in timp absolut
subplot(2,1,1),plot(n),title('plot(n)'),xlabel('Timp [ms]'),grid

% b.semnalul discret in functie de n
subplot(2,1,2),stem(n),title('stem(n)'),xlabel('Timp [ms]'),grid