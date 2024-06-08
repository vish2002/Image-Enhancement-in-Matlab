% Define symbolic variables for time and signals
syms t x(t) y(t);

% Define two sample continuous-time signals
x1(t) = sin(2*pi*t);
x2(t) = cos(3*pi*t);

% Add the signals
z1(t) = x1(t) + x2(t);

% Multiply the signals
z2(t) = x1(t) * x2(t);

% Display the original and combined signals
figure;
subplot(3,1,1);
plot(t,x1(t));
title('Signal x1(t)');
xlabel('Time (t)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,x2(t));
title('Signal x2(t)');
xlabel('Time (t)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,z1(t));
title('Sum: z1(t) = x1(t) + x2(t)');
xlabel('Time (t)');
ylabel('Amplitude');

figure;
plot(t,z2(t));
title('Product: z2(t) = x1(t) * x2(t)');
xlabel('Time (t)');
ylabel('Amplitude');

% You can also define and use custom continuous-time signals
% by replacing x1(t) and x2(t) with your desired functions.
