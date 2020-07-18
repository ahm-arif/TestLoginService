--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)

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
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(50),
    password character varying(120),
    username character varying(20),
    image_url character varying(255),
    provider_id character varying(255),
    provider character varying(255),
    email_verified boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name) FROM stdin;
1	ROLE_USER
2	ROLE_MODERATOR
3	ROLE_ADMIN
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (user_id, role_id) FROM stdin;
1	1
1	2
2	1
3	1
4	3
5	1
6	1
7	1
8	1
9	1
10	3
11	3
12	1
13	1
14	3
15	3
16	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, username, image_url, provider_id, provider, email_verified) FROM stdin;
1	dignt@gmail.com	$2a$10$lCTj6tu8XZv77jV8b3NNUuF/y9WQTFdvmFSuVonZjIgLQYKZtOQ5e	mod	\N	\N	\N	\N
2	digntaa@gmail.com	$2a$10$iHeTol3ISgF9aMQPrfL9C.PbJVemy8cu52YRlT6h8Bp9tsjiMatji	mod2	\N	\N	\N	\N
3	test@gmail.com	$2a$10$Aud2t3zneAf7/54yLQgp/.64vvoLWjXfCvMBPebKnjzZHWrmgnet6	test	\N	\N	\N	\N
4	someone@gmail.com	$2a$10$5eN5s8lgO5Juqf1rnuMx2OHb127Ak2.X/RNF0e0baRHibfOBmR3Ny	henk	\N	\N	\N	\N
5	test2@gmail.com	$2a$10$LusVQnwgWaG5toLXEJJRfuuRQrgea9Hkpk7k4eas4hUyIkTKasHBy	test2	\N	\N	\N	\N
6	test3@gmail.com	$2a$10$cJUz1/g1unb8aN2fUkinlu0wK/JQjvWoFbmgExQBHcJfjCcV5/C3S	test3	\N	\N	\N	\N
7	someone2@gmail.com	$2a$10$.PX5wt6e6joeN7RhvNE9Tu6cASu/sThx4kfTKWjytkNC97YU8Toly	henk2	\N	\N	\N	\N
8	test$@gmail.com	$2a$10$xLcTfrb6bFUxyM6V3rDLIeoTbPRLd5QwZYDHn7jC5boIXBhxANXVS	test4	\N	\N	\N	\N
9	test5@gmail.com	$2a$10$zwbTKFvkuV7AxKRXBiRVLO06lhAFX/x8quKNeY2T5Iv1Ssovkw9mW	test5	\N	\N	\N	\N
10	someone22@gmail.com	$2a$10$V2z33GWprcruEyq01jLNzOhdr4wu0rNxg1Sww87tZ8x1UivZwy/GK	henk3	\N	\N	\N	\N
11	someone12@gmail.com	$2a$10$fJoyWf0Us6U0wNYy/2SYhuo5TNvZ441KG8SBUL0Wy/2DoWJNXY/MC	henk12	\N	\N	\N	\N
12	test6@gmail.com	$2a$10$8y9KGrp.GBRVff.mcqViBO2ToieA17NCfTf2Mw07G4eawRVEWRJR.	test6	\N	\N	\N	\N
13	test7@gmail.com	$2a$10$ecAnIXkvDiuqb0zPiGRU7e/rm1Io32emwhDaa/ziywztF89QN/ate	test7	\N	\N	\N	\N
14	test8@gmail.com	$2a$10$D472ZtmG4hbSR8/R8naVSeOt9uzOQtpFNfvwaVMjWGVKN4csBKjcK	test8	\N	\N	\N	\N
15	someone123@gmail.com	$2a$10$E8C1tszugwZWl720bqnKH.uFZuiKwgCcA5G7xK0E1uciXncmPmlYi	henk123	\N	\N	local	f
16	test9@gmail.com	$2a$10$ZlFiO5W9ZQ5xcYurBr2uOOpq2bZk6UpfFLQzuY7.EgKO1uSuUOqsu	test9	\N	\N	local	f
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: users uk6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- Name: users ukr43af9ap4edm43mmtq01oddj6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: user_roles fkh8ciramu9cc9q3qcqiv4ue8a6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: user_roles fkhfh9dx7w3ubf1co1vdev94g3f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

