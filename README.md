# Series simulator ([link](https://iacopogarizio.com/projects/time-series-simulator-ARMA/))
Usage:
```{r, engine='matlab'}
g = DataGenerator();

rb = g.gen_white_noise(n_datos);
ma = g.gen_ma(n_datos, coefs);  % coefs = [constante, coef1, coef2, ...]
ar = g.gen_ar(n_datos, coefs);  % coefs = [constante, coef1, coef2, ...]
arma = g.gen_arma(n_datos, coefs_ar, coefs_ma);  % coefs_ar = [constante, coef1, coef2, ...], coefs_ma = [constante, coef1, coef2, ...]
```
