DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
ORDER_ID           INT NOT NULL,
CUSTOMER_ID 	            INT NOT NULL,
ITEM_DESC 	            varchar(30) NOT NULL,
ORDER_DATE               date NOT NULL,
PRIMARY KEY (ORDER_ID)
);

INSERT INTO orders VALUES(101,2109,'juice','2020-03-03');
INSERT INTO orders VALUES(102,2139,'chocolate','2019-03-18');
INSERT INTO orders VALUES(103,2120,'juice','2019-03-18');
INSERT INTO orders VALUES(104,2108,'cookies','2019-03-18');
INSERT INTO orders VALUES(105,2130,'juice','2020-03-28');
INSERT INTO orders VALUES(106,2103,'cake','2019-03-29');
INSERT INTO orders VALUES(107,2122,'cookies','2021-03-07');
INSERT INTO orders VALUES(108,2125,'cake','2021-03-13');
INSERT INTO orders VALUES(109,2139,'cake','2019-03-30');
INSERT INTO orders VALUES(110,2141,'cookies','2019-03-17');
INSERT INTO orders VALUES(111,2116,'cake','2020-03-31');
INSERT INTO orders VALUES(112,2128,'cake','2021-03-04');
INSERT INTO orders VALUES(113,2146,'chocolate','2021-03-04');
INSERT INTO orders VALUES(114,2119,'cookies','2020-03-28');
INSERT INTO orders VALUES(115,2142,'cake','2019-03-09');
INSERT INTO orders VALUES(116,2122,'cake','2019-03-06');
INSERT INTO orders VALUES(117,2128,'chocolate','2019-03-24');
INSERT INTO orders VALUES(118,2112,'cookies','2019-03-24');
INSERT INTO orders VALUES(119,2149,'cookies','2020-03-29');
INSERT INTO orders VALUES(120,2100,'cookies','2021-03-18');
INSERT INTO orders VALUES(121,2130,'juice','2021-03-16');
INSERT INTO orders VALUES(122,2103,'juice','2019-03-31');
INSERT INTO orders VALUES(123,2112,'cookies','2019-03-23');
INSERT INTO orders VALUES(124,2102,'cake','2020-03-25');
INSERT INTO orders VALUES(125,2120,'chocolate','2020-03-21');
INSERT INTO orders VALUES(126,2109,'cake','2019-03-22');
INSERT INTO orders VALUES(127,2101,'juice','2021-03-01');
INSERT INTO orders VALUES(128,2138,'juice','2019-03-19');
INSERT INTO orders VALUES(129,2100,'juice','2019-03-29');
INSERT INTO orders VALUES(130,2129,'juice','2021-03-02');
INSERT INTO orders VALUES(131,2123,'juice','2020-03-31');
INSERT INTO orders VALUES(132,2104,'chocolate','2020-03-31');
INSERT INTO orders VALUES(133,2110,'cake','2021-03-13');
INSERT INTO orders VALUES(134,2143,'cake','2019-03-27');
INSERT INTO orders VALUES(135,2130,'juice','2019-03-12');
INSERT INTO orders VALUES(136,2128,'juice','2020-03-28');
INSERT INTO orders VALUES(137,2133,'cookies','2019-03-21');
INSERT INTO orders VALUES(138,2150,'cookies','2019-03-20');
INSERT INTO orders VALUES(139,2120,'juice','2020-03-27');
INSERT INTO orders VALUES(140,2109,'cake','2021-03-02');
INSERT INTO orders VALUES(141,2110,'cake','2021-03-13');
INSERT INTO orders VALUES(142,2140,'juice','2019-03-09');
INSERT INTO orders VALUES(143,2112,'cookies','2021-03-04');
INSERT INTO orders VALUES(144,2117,'chocolate','2019-03-19');
INSERT INTO orders VALUES(145,2137,'cookies','2020-03-23');
INSERT INTO orders VALUES(146,2130,'cake','2021-03-09');
INSERT INTO orders VALUES(147,2133,'cake','2020-03-08');
INSERT INTO orders VALUES(148,2143,'juice','2019-03-11');
INSERT INTO orders VALUES(149,2111,'chocolate','2020-03-23');
INSERT INTO orders VALUES(150,2150,'cookies','2021-03-04');
INSERT INTO orders VALUES(151,2131,'cake','2020-03-10');
INSERT INTO orders VALUES(152,2140,'chocolate','2019-03-17');
INSERT INTO orders VALUES(153,2147,'cookies','2020-03-22');
INSERT INTO orders VALUES(154,2119,'chocolate','2019-03-15');
INSERT INTO orders VALUES(155,2116,'juice','2021-03-12');
INSERT INTO orders VALUES(156,2141,'juice','2021-03-14');
INSERT INTO orders VALUES(157,2143,'cake','2019-03-16');
INSERT INTO orders VALUES(158,2105,'cake','2020-03-21');
INSERT INTO orders VALUES(159,2149,'chocolate','2019-03-11');
INSERT INTO orders VALUES(160,2117,'cookies','2020-03-22');
INSERT INTO orders VALUES(161,2150,'cookies','2020-03-21');
INSERT INTO orders VALUES(162,2134,'cake','2019-03-08');
INSERT INTO orders VALUES(163,2133,'cookies','2019-03-26');
INSERT INTO orders VALUES(164,2127,'juice','2019-03-27');
INSERT INTO orders VALUES(165,2101,'juice','2019-03-26');
INSERT INTO orders VALUES(166,2137,'chocolate','2021-03-12');
INSERT INTO orders VALUES(167,2113,'chocolate','2019-03-21');
INSERT INTO orders VALUES(168,2141,'cake','2019-03-21');
INSERT INTO orders VALUES(169,2112,'chocolate','2021-03-14');
INSERT INTO orders VALUES(170,2118,'juice','2020-03-30');
INSERT INTO orders VALUES(171,2111,'juice','2019-03-19');
INSERT INTO orders VALUES(172,2146,'chocolate','2021-03-13');
INSERT INTO orders VALUES(173,2148,'cookies','2021-03-14');
INSERT INTO orders VALUES(174,2100,'cookies','2021-03-13');
INSERT INTO orders VALUES(175,2105,'cookies','2019-03-05');
INSERT INTO orders VALUES(176,2129,'juice','2021-03-02');
INSERT INTO orders VALUES(177,2121,'juice','2019-03-16');
INSERT INTO orders VALUES(178,2117,'cake','2020-03-11');
INSERT INTO orders VALUES(179,2133,'juice','2020-03-12');
INSERT INTO orders VALUES(180,2124,'cake','2019-03-31');
INSERT INTO orders VALUES(181,2145,'cake','2021-03-07');
INSERT INTO orders VALUES(182,2105,'cookies','2019-03-09');
INSERT INTO orders VALUES(183,2131,'juice','2019-03-09');
INSERT INTO orders VALUES(184,2114,'chocolate','2020-03-31');
INSERT INTO orders VALUES(185,2120,'juice','2021-03-06');
INSERT INTO orders VALUES(186,2130,'juice','2021-03-06');
INSERT INTO orders VALUES(187,2141,'chocolate','2019-03-11');
INSERT INTO orders VALUES(188,2147,'cake','2021-03-14');
INSERT INTO orders VALUES(189,2118,'juice','2019-03-15');
INSERT INTO orders VALUES(190,2136,'chocolate','2020-03-22');
INSERT INTO orders VALUES(191,2132,'cake','2021-03-06');
INSERT INTO orders VALUES(192,2137,'chocolate','2019-03-31');
INSERT INTO orders VALUES(193,2107,'cake','2021-03-01');
INSERT INTO orders VALUES(194,2111,'chocolate','2019-03-18');
INSERT INTO orders VALUES(195,2100,'cake','2019-03-07');
INSERT INTO orders VALUES(196,2106,'juice','2020-03-21');
INSERT INTO orders VALUES(197,2114,'cookies','2019-03-25');
INSERT INTO orders VALUES(198,2110,'cake','2019-03-27');
INSERT INTO orders VALUES(199,2130,'juice','2019-03-16');
INSERT INTO orders VALUES(200,2117,'cake','2021-03-10');
SELECT * FROM orders;

SELECT DISTINCT a.customer_id
FROM orders a, orders  b
where (a.customer_id=b.customer_id) AND (a.order_id!=b.order_id) AND datediff(b.order_date,a.order_date) BETWEEN 0 AND 10
ORDER BY customer_id;