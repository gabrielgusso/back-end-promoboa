--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL,
    text text NOT NULL
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL
);


--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    name text NOT NULL,
    url text NOT NULL,
    description text,
    store text NOT NULL,
    coupon text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "normalPrice" integer NOT NULL,
    "discountPrice" integer NOT NULL,
    image text NOT NULL
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    id integer NOT NULL,
    token text NOT NULL,
    "userId" integer NOT NULL
);


--
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: session id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.products VALUES (3, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (4, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (5, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (6, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (7, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (8, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (9, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (10, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (11, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (12, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (13, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (14, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (15, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (16, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (17, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (18, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (19, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (20, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (21, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (22, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (23, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (24, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (25, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-03-22 13:13:39.982049-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (26, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:19:03.298555-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (27, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:36:58.272998-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (28, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:36:58.450008-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (29, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:36:58.622641-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (30, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:36:58.774737-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (31, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-14 17:36:58.935441-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (38, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', 'Teclado de luzinha sla ta barato', 'Kabum', '', '2023-04-17 02:34:30.423136-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (39, 3, 'Teclado Mecânico Gamer HyperX Alloy MKW100', 'https://www.kabum.com.br/produto/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba?gclid=Cj0KCQjw27mhBhC9ARIsAIFsETEFcZYwp5bxp8o14IoWt_XkVkAhhC0pHxmN410XxwwaPf6qneyZK2IaAhX_EALw_wcB', '', 'Kabum', '', '2023-04-17 02:36:21.851098-03', 35000, 29900, 'https://images.kabum.com.br/produtos/fotos/371586/teclado-mecanico-gamer-hyperx-alloy-mkw100-rgb-switch-red-full-size-layout-us-4p5e1aa-aba_1660832224_gg.jpg');
INSERT INTO public.products VALUES (40, 5, 'Processador AMD Ryzen 5 5600G, 3.9GHz (4.4GHz Max Turbo), Cache 19MB, 6 Núcleos, 12 Threads, Vídeo Integrado, AM4 - 100-100000252BOX', 'https://www.kabum.com.br/produto/181088/processador-amd-ryzen-5-5600g-3-9ghz-4-4ghz-max-turbo-cache-19mb-6-nucleos-12-threads-video-integrado-am4-100-100000252box', '', 'Aliexpress', '', '2023-04-17 02:40:41.768014-03', 123444, 12344, 'https://images.kabum.com.br/produtos/fotos/181088/processador-amd-ryzen-5-5600g-3-9ghz-4-4ghz-max-turbo-am4-video-integrado-6-nucleos-100-100000252box_1627588230_gg.jpg');
INSERT INTO public.products VALUES (41, 5, 'Processador AMD Ryzen 5 5600G, 3.9GHz (4.4GHz Max Turbo), Cache 19MB, 6 Núcleos, 12 Threads, Vídeo Integrado, AM4 - 100-100000252BOX', 'https://www.kabum.com.br/produto/181088/processador-amd-ryzen-5-5600g-3-9ghz-4-4ghz-max-turbo-cache-19mb-6-nucleos-12-threads-video-integrado-am4-100-100000252box', '', 'Aliexpress', '', '2023-04-17 02:40:45.015352-03', 123444, 12344, 'https://images.kabum.com.br/produtos/fotos/181088/processador-amd-ryzen-5-5600g-3-9ghz-4-4ghz-max-turbo-am4-video-integrado-6-nucleos-100-100000252box_1627588230_gg.jpg');


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.session VALUES (1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY3OTkzODI0Nn0.fa1X9S2Jg60igNP1lur8yN-mG6oxlGdOWgUoKAiDJ08', 3);
INSERT INTO public.session VALUES (2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY3OTkzODI1OX0.CyyNz9Hka3g26yFBgTmxpq4QrbeJHg7boCnIgCoeNxo', 3);
INSERT INTO public.session VALUES (3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY3OTkzODQ0Mn0.bdFSlYdYpuwLVJ2Z4ixbIVlGp4gArULl-DJKormh_2k', 3);
INSERT INTO public.session VALUES (4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY3OTk1MDQyOX0.Nu4dbVcEzsjwayX8Q2i7uI9ObRQAZVBWOrPjJ8J1SdI', 3);
INSERT INTO public.session VALUES (5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY3OTk1MDQzOH0.CHWXqFJNDrZtVzYGSLAlNL8FhTxOuyqIgOhI_N_T9go', 3);
INSERT INTO public.session VALUES (6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY4MDAyNTQ1M30.zc7Vu952BuhNHJTBatXZIQfg-RWAFq7Kh_8D4EnS-ZU', 3);
INSERT INTO public.session VALUES (7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImlhdCI6MTY4MDAyNTcyOH0.adZqpNfq7oQrqsub77MmtZRFVLxESOT_qqytG16f54w', 3);
INSERT INTO public.session VALUES (8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY4MTYyMzMxOH0.dvd68rCQXUTdv-8P-oQXJg-dVZ-CjQGi2UCa--epMpU', 1);
INSERT INTO public.session VALUES (9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NTk1MX0.4V6t1imxMgg-m9jNIC0JRmMYBH3lAyHhhVtxam-gev8', 5);
INSERT INTO public.session VALUES (10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjA3NX0.dhAu1LOKolNmW-hD6ldHVqj83VjaRisy7xmrt-I-0iY', 5);
INSERT INTO public.session VALUES (11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjE1OH0.aOBopB4WVPXo_bxcgDCBIOHMWK6oUJgnr4DW7N8IAKA', 5);
INSERT INTO public.session VALUES (12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjE3N30._JYzTB4PRm57WlYaMBZqeKn65U8Gmy9AOH_h7B6HtfI', 5);
INSERT INTO public.session VALUES (13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjIzN30.fMCvpJisUkCn3GSZP9Yd82pwQhEz1Uv0zCiIMQIfa8s', 5);
INSERT INTO public.session VALUES (14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjM0MH0._nxKN8D2qcY0HxVibP-GHEkuSqEnAHVUxnoeyPzQw2k', 5);
INSERT INTO public.session VALUES (15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjM0Nn0.XIjdkJE8P8UuIZjp16HK-ykZUYDlxTwSIzSBE7uvoC8', 5);
INSERT INTO public.session VALUES (16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjM4MX0.lOb6oNzEhQcMggGtmhiLxrC4omCkwI9y3KFXWzR5veA', 5);
INSERT INTO public.session VALUES (17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NjQwMX0._sBOj6UweQa2MBZ4IodxNL2WXgGRHy-mukoi0v8V4T0', 5);
INSERT INTO public.session VALUES (18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY2NzA3NX0.B8FeZh_t6DRb112XNNciHqWgdHfYarszDUL1LUx22CI', 5);
INSERT INTO public.session VALUES (19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTY4NDQzOX0.xCXeYnw4fQSWU7aEOmuE5cyDvCwjUgLpaYjyHFguTKE', 5);
INSERT INTO public.session VALUES (20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsImlhdCI6MTY4MTcxMDk1NH0.1Vwhf59wAfqmlbOlfyvlKfQgeoZRCDe8uoz9RyJEol0', 5);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Gabriel', 'gabriel@hotmail.com', '$2b$12$42esCnRxWCY8KAY1E87HOOVW1aYTmRp21yhjhTMgL8ItZfQJp7/Hi');
INSERT INTO public.users VALUES (2, 'Pedro', 'pedro@hotmail.com', '$2b$12$J2HkDQRnUS8cFcE8Kg58gOTlycStYWUcTHzUw5021GgDzFVXedaBK');
INSERT INTO public.users VALUES (3, 'Joao', 'joao@hotmail.com', '$2b$12$lk5EFh4hS6Cpn/m6uIHpMOD7zdNjX7wEu3MVE0cpVqegnwlr3x.ji');
INSERT INTO public.users VALUES (4, 'Gabriel Gusso', 'gabriel.gusso@hotmail.com', '$2b$12$sjrPLNxn7MRohTpgC4WIoOlQ5ufGXLlaZLE5XwvXZlYegZ.vsZuU6');
INSERT INTO public.users VALUES (5, 'teste', 'teste@gmail.com', '$2b$12$Yvj54FaREdTH2rTX2UTEuuKDcq5A0H0alJvcJym2L2LnUVlUXR.s6');


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 41, true);


--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.session_id_seq', 20, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comments comments_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_fk0 FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: comments comments_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_fk1 FOREIGN KEY ("productId") REFERENCES public.products(id);


--
-- Name: likes likes_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_fk0 FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: likes likes_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_fk1 FOREIGN KEY ("productId") REFERENCES public.products(id);


--
-- Name: products products_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_fk0 FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: session session_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_fk0 FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

