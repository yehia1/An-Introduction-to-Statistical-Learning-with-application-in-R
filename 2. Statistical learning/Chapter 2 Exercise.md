# Chapter 2 Exercise

## 1: better flexible or not

a. Flexible because we need to train this huge number of data.

b. worse because flexible method would overfit the small number of observations.

c. better flexible to be able to obtain better fit

d. flexible methods fit to real life problem and increase variance so MSE will increase.

* * *

## 2 Regression or Classification

a. Regression for CEO quantitative salary
    n: 500 firm
    p = profit, number of employees, industry

b. Classification as success or failure for new product as qualitive data
    n = 20
    p = previous products, price charged. Marketing budget, competition price and ten other variables.

c. Regression quantitative data of percentage of change of usd.
    n = all weekly data for 2012
    p = change in usd, british market and german market

* * *

## 3 bias-variance decomposition

1.  Look image in same file
2.  - **Test MSE** decrease with increased flexibility and increase with high variance
    - **Train MSE:** decrease with increased model flexibility
    - **Bias**: got inverse relation with flexibility
    - **variance:** increase with increased flexibility

* * *

## 4 some real life applications

1.  **Regression**: Ceo salary, predicted change of usd, Weather analysis and prediction
2.  **Classification:** better or worse new page, success or failure of new product, spam filtering
    3.**Clustring:** Netflix users reccomendation,fake news identifying

* * *

## 5 Flexible vs less flexible

| Flexible | Less flexible |
| --- | --- |
| For flexible method assume non linear f(x)it will reduce the Bias error so will give less test MSE but increasing flexibility too much will lead to increase of variance and will lead to overfit | Less Flexible methods assumer we got linear model it will fit perfectly with less flexible model than more flexible one as the bias is 0 and variance increases with increase of flexibility |

* * *

## parametric vs non parametric

| Parametric | Non parametric |
| --- | --- |
| parametric methods estimates f down to one of estimating set of parameters as it got a huge advantage as it's simple and don't need alot of observations | non parametric estimates the output depending on the data and require alot of observations but it got better accuracy for morel complicated functions |

* * *

# 7

a.

| obs | X1  | X2  | X3  | distance | Y   |
| --- | --- | --- | --- | --- | --- |
| 1   | 0   | 3   | 0   | 3   | Red |
| 2   | 2   | 0   | 0   | 2   | Red |
| 3   | 0   | 1   | 3   | 3.16 | Red |
| 4   | 0   | 1   | 2   | 2.23 | Green |
| 5   | -1  | 0   | 1   | 1.41 | Green |

b. Green #5 as nearest point is 1.41
c. Red as we got point = 3
d. small a small k would be flexible for non linear decision boundary, where large k would fit more linear boundary