--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-0+deb11u1)
-- Dumped by pg_dump version 13.4 (Debian 13.4-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: allitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.allitems (
    id integer NOT NULL,
    name text NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.allitems OWNER TO postgres;

--
-- Name: mainmenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mainmenu (
    id integer NOT NULL,
    name text NOT NULL,
    path text NOT NULL
);


ALTER TABLE public.mainmenu OWNER TO postgres;

--
-- Name: mainmenuitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mainmenuitems (
    mainmenuid integer NOT NULL,
    submenuid integer NOT NULL
);


ALTER TABLE public.mainmenuitems OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    foodid integer NOT NULL,
    quantity integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: submenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.submenu (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.submenu OWNER TO postgres;

--
-- Name: submenuitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.submenuitems (
    submenuid integer NOT NULL,
    itemid integer NOT NULL
);


ALTER TABLE public.submenuitems OWNER TO postgres;

--
-- Data for Name: allitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.allitems (id, name, price) FROM stdin;
1	Chicken MeatBalls	350
2	Chicken Dragon Fry	380
3	Paneer Pakouda	280
4	Chicken Chowmein	200
5	Veg Chowmein	150
6	Egg Chowmein	170
7	Shezwan Chowmein	190
8	Pork Chowmein	190
9	Alu Biryani	320
10	Paneer Biryani	380
11	Chicken Dum Biryani	420
12	Chicken Boneless Biryani	450
13	Chicken Fry Biryani	450
14	Veg Momo	150
15	Chicken Momo	200
16	Paneer Momo	180
17	Buff Momo	190
18	Hot Choclate	200
19	Lassi	150
20	Sprite	80
21	Coke	80
22	Red Label	80
23	Black Label	450
24	Carlsberg	300
25	Red Bull	200
26	French Wine	450
27	Veg Khana Buffet	220
28	Chicken Khana Buffet	280
29	Mutton Khana Buffet	300
30	Paneer Khana Buffet	260
31	Double Omelette	100
32	Veg Sandwich	120
33	Egg Sandwich	140
34	Chicken Susage	180
35	Buff Susage	150
36	Pork Susage	150
37	Garlic Bread	80
38	Butter Toast	60
39	Fruit Jams	50
40	Fruit Juice	180
41	Coffee	200
42	Gulab Jamun	80
43	Black Forest	120
44	Mutton Sekuwa	350
45	Chicken Tandoori	300
46	Veg Manchurian	280
47	Badam Sadheko	150
48	Chicken Shawarma	200
\.


--
-- Data for Name: mainmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mainmenu (id, name, path) FROM stdin;
1	Quick Items	/
2	Full Menu	/full
3	Breakfast / Launch	/breakfast
4	Snacks Only	/snacks
5	Continental Menu	/continental
6	Desert and Beverages	/desert
7	Order Items	/order
\.


--
-- Data for Name: mainmenuitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mainmenuitems (mainmenuid, submenuid) FROM stdin;
2	1
4	1
2	2
4	2
2	3
4	3
2	4
2	5
4	5
2	6
6	6
2	7
6	7
2	8
3	8
2	9
2	10
6	10
3	11
5	12
5	13
5	14
1	15
1	16
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, foodid, quantity) FROM stdin;
\.


--
-- Data for Name: submenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.submenu (id, name) FROM stdin;
1	Veg Snacks
2	Non-Veg Snacks
3	Chowmein
4	Biryani
5	MoMo
6	Soft Drinks
7	Hard Drinks
8	Breakfast
9	Khana Set Buffet
10	Desert
11	Launch / Dinner
12	Nepali
13	Chineese
14	Hyderabadi
15	Trending
16	Specials
\.


--
-- Data for Name: submenuitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.submenuitems (submenuid, itemid) FROM stdin;
2	1
16	1
2	2
16	2
1	3
12	3
3	4
13	4
15	4
3	5
13	5
3	6
13	6
3	7
13	7
15	7
3	8
13	8
16	8
4	9
11	9
4	10
11	10
14	10
4	11
11	11
14	11
15	11
4	12
11	12
14	12
16	12
4	13
11	13
14	13
5	14
13	14
5	15
13	15
15	15
5	16
13	16
5	17
13	17
15	17
6	18
15	18
6	19
6	20
6	21
7	22
7	23
7	24
15	24
6	25
7	26
9	27
11	27
12	27
9	28
11	28
12	28
15	28
9	29
11	29
12	29
9	30
11	30
12	30
8	31
8	32
8	33
8	34
8	35
15	35
8	36
8	37
8	38
8	39
8	40
8	41
15	41
10	42
10	43
16	43
2	44
12	44
2	45
16	45
1	46
1	47
12	47
2	48
14	48
16	48
14	9
\.


--
-- Name: allitems allitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allitems
    ADD CONSTRAINT allitems_pkey PRIMARY KEY (id);


--
-- Name: mainmenu mainmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mainmenu
    ADD CONSTRAINT mainmenu_pkey PRIMARY KEY (id);


--
-- Name: mainmenuitems mainmenuitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mainmenuitems
    ADD CONSTRAINT mainmenuitems_pkey PRIMARY KEY (mainmenuid, submenuid);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id, foodid);


--
-- Name: submenu submenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submenu
    ADD CONSTRAINT submenu_pkey PRIMARY KEY (id);


--
-- Name: submenuitems submenuitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submenuitems
    ADD CONSTRAINT submenuitems_pkey PRIMARY KEY (submenuid, itemid);


--
-- Name: mainmenuitems mainmenuitems_mainmenuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mainmenuitems
    ADD CONSTRAINT mainmenuitems_mainmenuid_fkey FOREIGN KEY (mainmenuid) REFERENCES public.mainmenu(id);


--
-- Name: mainmenuitems mainmenuitems_submenuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mainmenuitems
    ADD CONSTRAINT mainmenuitems_submenuid_fkey FOREIGN KEY (submenuid) REFERENCES public.submenu(id);


--
-- Name: orders orders_foodid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_foodid_fkey FOREIGN KEY (foodid) REFERENCES public.allitems(id);


--
-- Name: submenuitems submenuitems_itemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submenuitems
    ADD CONSTRAINT submenuitems_itemid_fkey FOREIGN KEY (itemid) REFERENCES public.allitems(id);


--
-- Name: submenuitems submenuitems_submenuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submenuitems
    ADD CONSTRAINT submenuitems_submenuid_fkey FOREIGN KEY (submenuid) REFERENCES public.submenu(id);


--
-- PostgreSQL database dump complete
--

