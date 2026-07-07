create table clientname
(
    id_clientname integer     not null
        constraint clientname_pk
            primary key,
    clientname    varchar(50) not null
);

alter table clientname
    owner to centurion;

INSERT INTO public.clientname (id_clientname, clientname) VALUES (1, 'SuperMax');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (2, 'FreshMart');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (3, 'MiniShop');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (4, 'EcoStore');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (5, 'MarketOne');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (6, 'RetailCo');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (7, 'FoodPlus');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (8, 'GreenBuy');
INSERT INTO public.clientname (id_clientname, clientname) VALUES (9, 'QuickFood');


create table city
(
    id_city integer     not null
        constraint city_pk
            primary key,
    city    varchar(50) not null,
    id_dc   integer     not null
        constraint city___fk
            references distributioncenter
);

alter table city
    owner to centurion;

INSERT INTO public.city (id_city, city, id_dc) VALUES (1, 'Bogota', 1);
INSERT INTO public.city (id_city, city, id_dc) VALUES (2, 'Medellin', 2);
INSERT INTO public.city (id_city, city, id_dc) VALUES (3, 'Cali', 3);
INSERT INTO public.city (id_city, city, id_dc) VALUES (4, 'Barranquilla', 4);
INSERT INTO public.city (id_city, city, id_dc) VALUES (5, 'Cartagena ', 4);
INSERT INTO public.city (id_city, city, id_dc) VALUES (6, 'Bucaramanga', 5);
INSERT INTO public.city (id_city, city, id_dc) VALUES (7, 'Pereira', 6);
INSERT INTO public.city (id_city, city, id_dc) VALUES (8, 'Manizales', 6);
INSERT INTO public.city (id_city, city, id_dc) VALUES (9, 'Cucuta', 5);


create table product
(
    id_product  integer     not null
        constraint product_pk
            primary key,
    product     varchar(50) not null,
    id_category integer     not null
        constraint product__id_category_fk
            references category
);

alter table product
    owner to centurion;

INSERT INTO public.product (id_product, product, id_category) VALUES (1, 'Gala Apple', 1);
INSERT INTO public.product (id_product, product, id_category) VALUES (2, 'Banana', 1);
INSERT INTO public.product (id_product, product, id_category) VALUES (3, 'Milk 1L', 2);
INSERT INTO public.product (id_product, product, id_category) VALUES (4, 'Chicken Breast', 3);
INSERT INTO public.product (id_product, product, id_category) VALUES (5, 'Rice 1kg', 4);
INSERT INTO public.product (id_product, product, id_category) VALUES (6, 'Olive Oil', 5);
INSERT INTO public.product (id_product, product, id_category) VALUES (7, 'Eggs x12', 2);
INSERT INTO public.product (id_product, product, id_category) VALUES (8, 'Tomato', 6);
INSERT INTO public.product (id_product, product, id_category) VALUES (9, 'Lettuce', 6);
INSERT INTO public.product (id_product, product, id_category) VALUES (10, 'Spaghetti', 7);

create table category
(
    id_category integer     not null
        constraint category_pk
            primary key,
    category    varchar(50) not null
);

alter table category
    owner to centurion;

INSERT INTO public.category (id_category, category) VALUES (1, 'Fruit');
INSERT INTO public.category (id_category, category) VALUES (2, 'Dairy');
INSERT INTO public.category (id_category, category) VALUES (3, 'Meat');
INSERT INTO public.category (id_category, category) VALUES (4, 'Grain');
INSERT INTO public.category (id_category, category) VALUES (5, 'Oil');
INSERT INTO public.category (id_category, category) VALUES (6, 'Vegetable');
INSERT INTO public.category (id_category, category) VALUES (7, 'Grain');

create table distributioncenter
(
    id_dc integer     not null
        constraint distributioncenter_pk
            primary key,
    dc    varchar(50) not null
);

alter table distributioncenter
    owner to centurion;

INSERT INTO public.distributioncenter (id_dc, dc) VALUES (1, 'North');
INSERT INTO public.distributioncenter (id_dc, dc) VALUES (2, 'West');
INSERT INTO public.distributioncenter (id_dc, dc) VALUES (3, 'South');
INSERT INTO public.distributioncenter (id_dc, dc) VALUES (4, 'Coast');
INSERT INTO public.distributioncenter (id_dc, dc) VALUES (5, 'East');
INSERT INTO public.distributioncenter (id_dc, dc) VALUES (6, 'Coffee');


create table invoce
(
    id_invoce integer     not null
        constraint invoce_pk
            primary key,
    orderid   integer     not null,
    orderdate varchar(20) not null,
    quantity  integer     not null,
    unitprice numeric     not null,
    stock     integer     not null
);

alter table invoce
    owner to centurion;

INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (1, 1001, '2026-05-01', 10, 2.5, 100);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (2, 1002, '2026-05-02', 5, 2.5, 95);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (3, 1003, '2026-05-02', 20, 1.2, 180);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (4, 1004, '2026-05-03', 15, 1.2, 165);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (5, 1005, '2026-05-04', 12, 3.8, 60);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (6, 1006, '2026-05-05', 8, 3.8, 52);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (7, 1007, '2026-05-06', 25, 6.5, 70);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (8, 1008, '2026-05-07', 10, 6.5, 60);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (9, 1009, '2026-05-08', 30, 2, 200);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (10, 1010, '2026-05-09', 18, 2, 182);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (11, 1011, '2026-05-10', 6, 8.9, 40);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (12, 1012, '2026-05-11', 4, 8.9, 36);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (13, 1013, '2026-05-12', 14, 4.2, 90);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (14, 1014, '2026-05-13', 9, 4.2, 81);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (15, 1015, '2026-05-14', 22, 1.8, 120);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (16, 1016, '2026-05-15', 16, 1.8, 104);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (17, 1017, '2026-05-16', 11, 1.1, 50);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (18, 1018, '2026-05-17', 7, 1.1, 43);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (19, 1019, '2026-05-18', 19, 2.3, 140);
INSERT INTO public.invoce (id_invoce, orderid, orderdate, quantity, unitprice, stock) VALUES (20, 1020, '2026-05-19', 13, 2.3, 127);


create table resume
(
    id_resume     integer not null
        constraint resume_pk
            primary key,
    id_clientname integer not null
        constraint resume__id_clientname_fk
            references clientname,
    id_city       integer not null
        constraint resume__id_city_fk
            references city,
    id_product    integer not null
        constraint resume__id_product_fk
            references product,
    id_invoce     integer not null
        constraint resume__id_invoce_fk
            references invoce
);

alter table resume
    owner to centurion;

INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (1, 1, 1, 1, 1);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (2, 1, 1, 1, 2);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (3, 2, 2, 2, 3);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (4, 2, 2, 2, 4);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (5, 3, 3, 3, 5);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (6, 3, 3, 3, 6);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (7, 1, 4, 4, 7);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (8, 1, 4, 4, 8);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (9, 4, 5, 5, 9);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (10, 4, 5, 5, 10);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (11, 5, 6, 6, 11);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (12, 5, 6, 6, 12);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (13, 6, 7, 7, 13);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (14, 6, 7, 7, 14);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (15, 7, 8, 8, 15);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (16, 7, 8, 8, 16);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (17, 8, 1, 9, 17);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (18, 8, 1, 9, 18);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (19, 9, 9, 10, 19);
INSERT INTO public.resume (id_resume, id_clientname, id_city, id_product, id_invoce) VALUES (20, 9, 9, 10, 20);


--CONSULTA 1
select p.product, r.id_product
from product p
join resume r
on r.id_product = p.id_product
