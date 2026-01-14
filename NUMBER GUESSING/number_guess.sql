--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE scoredb;
--
-- Name: scoredb; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE scoredb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE scoredb OWNER TO freecodecamp;

\connect scoredb

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
-- Name: scores; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scores (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    guesses_taken integer NOT NULL
);


ALTER TABLE public.scores OWNER TO freecodecamp;

--
-- Name: scores_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scores_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scores_game_id_seq OWNER TO freecodecamp;

--
-- Name: scores_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scores_game_id_seq OWNED BY public.scores.game_id;


--
-- Name: scores game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scores ALTER COLUMN game_id SET DEFAULT nextval('public.scores_game_id_seq'::regclass);


--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scores VALUES (1, 'abc', 3);
INSERT INTO public.scores VALUES (2, 'abc', 1);
INSERT INTO public.scores VALUES (3, 'user_1768401397761', 960);
INSERT INTO public.scores VALUES (4, 'user_1768401397761', 619);
INSERT INTO public.scores VALUES (5, 'user_1768401397760', 422);
INSERT INTO public.scores VALUES (6, 'user_1768401397760', 909);
INSERT INTO public.scores VALUES (7, 'user_1768401397761', 84);
INSERT INTO public.scores VALUES (8, 'user_1768401397761', 783);
INSERT INTO public.scores VALUES (9, 'user_1768401505193', 554);
INSERT INTO public.scores VALUES (10, 'user_1768401505193', 656);
INSERT INTO public.scores VALUES (11, 'user_1768401505192', 153);
INSERT INTO public.scores VALUES (12, 'user_1768401505192', 924);
INSERT INTO public.scores VALUES (13, 'user_1768401505193', 847);
INSERT INTO public.scores VALUES (14, 'user_1768401505193', 762);
INSERT INTO public.scores VALUES (15, 'user_1768401648346', 142);
INSERT INTO public.scores VALUES (16, 'user_1768401648346', 662);
INSERT INTO public.scores VALUES (17, 'user_1768401648345', 614);
INSERT INTO public.scores VALUES (18, 'user_1768401648345', 141);
INSERT INTO public.scores VALUES (19, 'user_1768401648346', 358);
INSERT INTO public.scores VALUES (20, 'user_1768401648346', 511);
INSERT INTO public.scores VALUES (21, 'user_1768401706163', 255);
INSERT INTO public.scores VALUES (22, 'user_1768401706163', 39);
INSERT INTO public.scores VALUES (23, 'user_1768401706162', 508);
INSERT INTO public.scores VALUES (24, 'user_1768401706162', 184);
INSERT INTO public.scores VALUES (25, 'user_1768401706163', 599);
INSERT INTO public.scores VALUES (26, 'user_1768401706163', 815);
INSERT INTO public.scores VALUES (27, 'user_1768401796830', 964);
INSERT INTO public.scores VALUES (28, 'user_1768401796830', 295);
INSERT INTO public.scores VALUES (29, 'user_1768401796829', 445);
INSERT INTO public.scores VALUES (30, 'user_1768401796829', 361);
INSERT INTO public.scores VALUES (31, 'user_1768401796830', 221);
INSERT INTO public.scores VALUES (32, 'user_1768401796830', 389);


--
-- Name: scores_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scores_game_id_seq', 32, true);


--
-- Name: scores scores_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

