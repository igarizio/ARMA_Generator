g = DataGenerator();
l = DataLoader();

rb = g.gen_white_noise(300);
ma = g.gen_ma(300, [0.4, 1, -1.1, 0.4]);  % y_t = [constante, coef1*e_t + coef2*e_t-1 + coef3*e_t-2 + ...} (En ese orden)
ar = g.gen_ar(300, [1, 0.8]);  % y_t = [cte + coef1*y_t-1 + coef2*y_t-2 + ...] (En ese orden)
arma = g.gen_arma(300, [1, 0.9], [0, 1, -0.4]);  % y_t = [cte + y_t-1 + y_t-2 +...], [cte + e_t + e_t-1 + e_t-2 +...] (En ese orden)

plot(rb)
plot(ma)
plot(ar)
plot(arma)
