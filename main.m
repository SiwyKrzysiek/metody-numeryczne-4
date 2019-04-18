%% Zadanie przyk?adowe A

% Szukana funkcja: 1,1x^2+0,765x = 3,55x^3+0.74     x nale?y do <-1, 1>
% Przekszta?cenie: 3,55x^3 - 1,1x^2 - 0,765x + 0,74 = 0
% f'(x): 10.65 x^2 - 2.2 x - 0.765
% f''(x):  21.3 x - 2.2

f   = @(x) (3.55*x^3 - 1.1*x^2 - 0.765*x + 0.74);
df  = @(x) (10.65*x^2 - 2.2*x - 0.765);
ddf = @(x) (21.3*x - 2.2);

%% Testy

f   = @(x) (4*x^3 + 1*x^2 + 2*x + 8);
df  = @(x) (12*x^2 + 2*x + 2);

[x0, b] = NewtonRaphson1(f, df, 1, 6, 10^(-8))