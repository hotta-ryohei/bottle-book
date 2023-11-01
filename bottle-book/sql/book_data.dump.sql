--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-01 15:05:01 JST

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
-- TOC entry 214 (class 1259 OID 16390)
-- Name: book_user; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.book_user (
    user_id character varying(255) NOT NULL,
    passwd character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_shi character varying(255),
    user_mei character varying(255),
    del boolean
);


ALTER TABLE public.book_user OWNER TO book_user;

--
-- TOC entry 216 (class 1259 OID 16398)
-- Name: books; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(255),
    volume character varying(255),
    author character varying(255),
    publisher character varying(255),
    memo text,
    create_date timestamp with time zone NOT NULL,
    del boolean
);


ALTER TABLE public.books OWNER TO book_user;

--
-- TOC entry 215 (class 1259 OID 16397)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: book_user
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO book_user;

--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: book_user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 3465 (class 2604 OID 16407)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 3612 (class 0 OID 16390)
-- Dependencies: 214
-- Data for Name: book_user; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.book_user (user_id, passwd, email, user_shi, user_mei, del) FROM stdin;
だらをんぬ	password	kd1337577@st.kobedenshi.ac.jp	hotta	ryohei	f
ほったさん	pass	test@gmail.com	堀田	凌平	f
吉川氏	yossi	yossi.com	吉川	隆平	f
test2	test2	test2.com	hotta	ryo	f
					f
test3	pass3	test3.com	hotta	ryohei	f
test4	pass4	test4	test	test	f
test5	pass5	test5	test	test	f
test6	test	test	test	test	f
test7	test	test	test	test	f
test8	test	test	test	test	f
\.


--
-- TOC entry 3614 (class 0 OID 16398)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.books (id, name, volume, author, publisher, memo, create_date, del) FROM stdin;
1	制作実習	上巻	岡田直己先生	神戸電子専門学校	それなりに面白かった	2023-11-01 13:44:20.493256+09	f
5	制作実習	上巻	岡田直己先生	神戸電子専門学校	そファフィオ亜sfじ	2023-11-01 14:30:29.421968+09	t
3	制作実習	上巻	岡田直己先生	神戸電子専門学校	afanく面白かった	2023-11-01 13:59:18.90746+09	t
6	ふじさfじょあ	jふぃあおいfじゃおf	時事亜fjsふぁおs	ファiOSfjさおf	フォアsjふぉあふぃお	2023-11-01 14:38:37.711515+09	t
2	堀田凌平の伝記	上巻	堀田凌平	(株)堀田出版	・ミリオンセラー作品\r\n・ノーベル文学賞受賞\r\n・面白い	2023-11-01 13:52:31.205854+09	f
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: book_user
--

SELECT pg_catalog.setval('public.books_id_seq', 1, false);


--
-- TOC entry 3467 (class 2606 OID 16396)
-- Name: book_user book_user_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.book_user
    ADD CONSTRAINT book_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3469 (class 2606 OID 16405)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


-- Completed on 2023-11-01 15:05:02 JST

--
-- PostgreSQL database dump complete
--

