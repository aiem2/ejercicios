--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: pizzas; Type: TABLE; Schema: public; Owner: aiem2
--

CREATE TABLE public.pizzas (
    id_pizza integer NOT NULL,
    stock smallint NOT NULL,
    costo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    CONSTRAINT pizzas_stock_check CHECK ((stock >= 0))
);


ALTER TABLE public.pizzas OWNER TO aiem2;

--
-- Name: pizzas_id_pizza_seq; Type: SEQUENCE; Schema: public; Owner: aiem2
--

CREATE SEQUENCE public.pizzas_id_pizza_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizzas_id_pizza_seq OWNER TO aiem2;

--
-- Name: pizzas_id_pizza_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aiem2
--

ALTER SEQUENCE public.pizzas_id_pizza_seq OWNED BY public.pizzas.id_pizza;


--
-- Name: ventas; Type: TABLE; Schema: public; Owner: aiem2
--

CREATE TABLE public.ventas (
    cliente character varying(30) NOT NULL,
    fecha date,
    monto integer,
    pizza integer
);


ALTER TABLE public.ventas OWNER TO aiem2;

--
-- Name: pizzas id_pizza; Type: DEFAULT; Schema: public; Owner: aiem2
--

ALTER TABLE ONLY public.pizzas ALTER COLUMN id_pizza SET DEFAULT nextval('public.pizzas_id_pizza_seq'::regclass);


--
-- Data for Name: pizzas; Type: TABLE DATA; Schema: public; Owner: aiem2
--

COPY public.pizzas (id_pizza, stock, costo, nombre) FROM stdin;
1	0	8990	Nachopizza
2	2	9990	Caprichosa
\.


--
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: aiem2
--

COPY public.ventas (cliente, fecha, monto, pizza) FROM stdin;
Dexter Gonzalez	2020-02-02	9900	2
\.


--
-- Name: pizzas_id_pizza_seq; Type: SEQUENCE SET; Schema: public; Owner: aiem2
--

SELECT pg_catalog.setval('public.pizzas_id_pizza_seq', 2, true);


--
-- Name: pizzas pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: aiem2
--

ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (id_pizza);


--
-- Name: ventas ventas_pizza_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aiem2
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pizza_fkey FOREIGN KEY (pizza) REFERENCES public.pizzas(id_pizza);


--
-- PostgreSQL database dump complete
--

