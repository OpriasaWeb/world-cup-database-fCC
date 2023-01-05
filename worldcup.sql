--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(200) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 55, 56, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 57, 58, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 56, 58, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 55, 57, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 56, 59, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 58, 60, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 57, 61, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 55, 62, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 58, 63, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 60, 64, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 57, 65, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 61, 66, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 56, 67, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 59, 68, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 62, 69, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 55, 70, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 71, 70, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 72, 61, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 70, 72, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 71, 61, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 72, 73, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 70, 57, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 61, 63, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 71, 55, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 61, 74, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 63, 62, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 55, 75, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 71, 76, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 72, 66, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 73, 77, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 70, 64, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 57, 78, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (55, 'France');
INSERT INTO public.teams VALUES (56, 'Croatia');
INSERT INTO public.teams VALUES (57, 'Belgium');
INSERT INTO public.teams VALUES (58, 'England');
INSERT INTO public.teams VALUES (59, 'Russia');
INSERT INTO public.teams VALUES (60, 'Sweden');
INSERT INTO public.teams VALUES (61, 'Brazil');
INSERT INTO public.teams VALUES (62, 'Uruguay');
INSERT INTO public.teams VALUES (63, 'Colombia');
INSERT INTO public.teams VALUES (64, 'Switzerland');
INSERT INTO public.teams VALUES (65, 'Japan');
INSERT INTO public.teams VALUES (66, 'Mexico');
INSERT INTO public.teams VALUES (67, 'Denmark');
INSERT INTO public.teams VALUES (68, 'Spain');
INSERT INTO public.teams VALUES (69, 'Portugal');
INSERT INTO public.teams VALUES (70, 'Argentina');
INSERT INTO public.teams VALUES (71, 'Germany');
INSERT INTO public.teams VALUES (72, 'Netherlands');
INSERT INTO public.teams VALUES (73, 'Costa Rica');
INSERT INTO public.teams VALUES (74, 'Chile');
INSERT INTO public.teams VALUES (75, 'Nigeria');
INSERT INTO public.teams VALUES (76, 'Algeria');
INSERT INTO public.teams VALUES (77, 'Greece');
INSERT INTO public.teams VALUES (78, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 78, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

