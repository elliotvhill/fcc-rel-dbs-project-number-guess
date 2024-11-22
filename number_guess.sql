--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (18, 'terry', 1, 3);
INSERT INTO public.users VALUES (17, 'elliot', 2, 2);
INSERT INTO public.users VALUES (65, 'user_1732246143602', 5, 461);
INSERT INTO public.users VALUES (55, 'user_1732246123400', 5, 730);
INSERT INTO public.users VALUES (30, 'user_1732245588861', 2, 77);
INSERT INTO public.users VALUES (20, 'user_1732245373119', 2, 218);
INSERT INTO public.users VALUES (38, 'user_1732246057466', 2, 791);
INSERT INTO public.users VALUES (29, 'user_1732245588862', 5, 435);
INSERT INTO public.users VALUES (19, 'user_1732245373120', 5, 646);
INSERT INTO public.users VALUES (46, 'user_1732246106079', 2, 675);
INSERT INTO public.users VALUES (37, 'user_1732246057467', 5, 645);
INSERT INTO public.users VALUES (22, 'user_1732245442515', 2, 446);
INSERT INTO public.users VALUES (32, 'user_1732245942014', 2, 821);
INSERT INTO public.users VALUES (76, 'user_1732246405017', 2, 708);
INSERT INTO public.users VALUES (45, 'user_1732246106080', 5, 241);
INSERT INTO public.users VALUES (21, 'user_1732245442516', 5, 710);
INSERT INTO public.users VALUES (58, 'user_1732246125874', 2, 135);
INSERT INTO public.users VALUES (31, 'user_1732245942015', 5, 83);
INSERT INTO public.users VALUES (40, 'user_1732246062852', 2, 11);
INSERT INTO public.users VALUES (24, 'user_1732245462982', 2, 947);
INSERT INTO public.users VALUES (68, 'user_1732246204195', 2, 478);
INSERT INTO public.users VALUES (23, 'user_1732245462983', 5, 591);
INSERT INTO public.users VALUES (34, 'user_1732246001367', 2, 754);
INSERT INTO public.users VALUES (39, 'user_1732246062853', 5, 717);
INSERT INTO public.users VALUES (57, 'user_1732246125875', 5, 881);
INSERT INTO public.users VALUES (48, 'user_1732246108978', 2, 898);
INSERT INTO public.users VALUES (26, 'user_1732245470417', 2, 585);
INSERT INTO public.users VALUES (33, 'user_1732246001368', 5, 79);
INSERT INTO public.users VALUES (75, 'user_1732246405018', 5, 455);
INSERT INTO public.users VALUES (25, 'user_1732245470418', 5, 127);
INSERT INTO public.users VALUES (67, 'user_1732246204196', 5, 730);
INSERT INTO public.users VALUES (42, 'user_1732246071222', 2, 802);
INSERT INTO public.users VALUES (47, 'user_1732246108979', 5, 714);
INSERT INTO public.users VALUES (36, 'user_1732246031572', 2, 149);
INSERT INTO public.users VALUES (28, 'user_1732245493926', 2, 270);
INSERT INTO public.users VALUES (41, 'user_1732246071223', 5, 854);
INSERT INTO public.users VALUES (35, 'user_1732246031573', 5, 517);
INSERT INTO public.users VALUES (27, 'user_1732245493927', 5, 860);
INSERT INTO public.users VALUES (60, 'user_1732246135947', 2, 985);
INSERT INTO public.users VALUES (50, 'user_1732246111172', 2, 754);
INSERT INTO public.users VALUES (44, 'user_1732246100336', 2, 268);
INSERT INTO public.users VALUES (59, 'user_1732246135948', 5, 721);
INSERT INTO public.users VALUES (49, 'user_1732246111173', 5, 125);
INSERT INTO public.users VALUES (43, 'user_1732246100337', 5, 908);
INSERT INTO public.users VALUES (70, 'user_1732246241988', 2, 925);
INSERT INTO public.users VALUES (78, 'user_1732246472966', 2, 221);
INSERT INTO public.users VALUES (52, 'user_1732246113277', 2, 223);
INSERT INTO public.users VALUES (62, 'user_1732246138195', 2, 130);
INSERT INTO public.users VALUES (69, 'user_1732246241989', 5, 117);
INSERT INTO public.users VALUES (51, 'user_1732246113278', 5, 59);
INSERT INTO public.users VALUES (77, 'user_1732246472967', 5, 405);
INSERT INTO public.users VALUES (61, 'user_1732246138196', 5, 176);
INSERT INTO public.users VALUES (54, 'user_1732246116447', 2, 352);
INSERT INTO public.users VALUES (72, 'user_1732246335832', 2, 535);
INSERT INTO public.users VALUES (53, 'user_1732246116448', 5, 514);
INSERT INTO public.users VALUES (64, 'user_1732246141619', 2, 82);
INSERT INTO public.users VALUES (71, 'user_1732246335833', 5, 65);
INSERT INTO public.users VALUES (63, 'user_1732246141620', 5, 133);
INSERT INTO public.users VALUES (56, 'user_1732246123398', 2, 323);
INSERT INTO public.users VALUES (66, 'user_1732246143601', 2, 63);
INSERT INTO public.users VALUES (74, 'user_1732246385352', 2, 600);
INSERT INTO public.users VALUES (73, 'user_1732246385353', 5, 370);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 78, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

