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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: a; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.a (
    a_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions1 integer,
    distance integer,
    life_support_chance1 numeric(3,2),
    description1 text NOT NULL,
    researching1 boolean,
    has_structure1 boolean
);


ALTER TABLE public.a OWNER TO freecodecamp;

--
-- Name: a_a_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.a_a_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.a_a_id_seq OWNER TO freecodecamp;

--
-- Name: a_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.a_a_id_seq OWNED BY public.a.a_id;


--
-- Name: b; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.b (
    b_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions2 integer,
    distance integer,
    life_support_chance2 numeric(3,2),
    description2 text NOT NULL,
    researching2 boolean,
    has_structure2 boolean
);


ALTER TABLE public.b OWNER TO freecodecamp;

--
-- Name: b_b_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.b_b_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.b_b_id_seq OWNER TO freecodecamp;

--
-- Name: b_b_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.b_b_id_seq OWNED BY public.b.b_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions integer,
    distance integer,
    life_support_chance numeric(3,2),
    description text NOT NULL,
    researching boolean,
    has_structure boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions integer,
    description text NOT NULL,
    radius integer,
    water_percent numeric(5,2),
    has_oxygen boolean,
    has_atmosphere boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions integer,
    description text NOT NULL,
    radius integer,
    water_percent numeric(5,2),
    has_oxygen boolean,
    has_atmosphere boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions integer,
    description text NOT NULL,
    radius integer,
    light_intensity_level integer,
    has_solar_system boolean,
    is_neutron_star boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: a a_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a ALTER COLUMN a_id SET DEFAULT nextval('public.a_a_id_seq'::regclass);


--
-- Name: b b_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.b ALTER COLUMN b_id SET DEFAULT nextval('public.b_b_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: a; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.a VALUES (1, 'Mi', 13, 0, 1.00, 'Our home', true, true);
INSERT INTO public.a VALUES (2, 'Androa', 10, 2, 0.85, 'Nearest mthe Milky Way', true, true);
INSERT INTO public.a VALUES (3, 'ulum', 11, 2, 0.10, 'Third-laber of the Local Group', true, true);
INSERT INTO public.a VALUES (4, 'Soo', 13, 29, 0.35, 'Notalarge centrale', false, true);


--
-- Data for Name: b; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.b VALUES (1, 'Mi', 13, 0, 1.00, 'Our home', true, true);
INSERT INTO public.b VALUES (2, 'Androa', 10, 2, 0.85, 'Nearest mthe Milky Way', true, true);
INSERT INTO public.b VALUES (3, 'ulum', 11, 2, 0.10, 'Thirdthe Local Group', true, true);
INSERT INTO public.b VALUES (4, 'Soo', 13, 29, 0.35, 'Notalargerale', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 0, 1.00, 'Our home', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 2, 0.85, 'Nearest major galaxy to the Milky Way', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12, 2, 0.40, 'Third-largest member of the Local Group', true, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 13, 29, 0.15, 'Notable for its large central bulge', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 6, 23, 0.05, 'Classic spiral galaxy with a clear structure', true, true);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13, 54, 0.02, 'Supergiant elliptical with a famous supermassive black hole', true, true);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 13, 12, 0.10, 'Peculiar galaxy notable for intense radio emissions', true, true);
INSERT INTO public.galaxy VALUES (8, 'Bodes Galaxy', 13, 12, 0.30, 'Bright spiral galaxy in the Ursa Major constellation', false, true);
INSERT INTO public.galaxy VALUES (9, 'Black Eye Galaxy', 13, 17, 0.12, 'Spiral galaxy with a spectacular dark band of absorbing dust', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 5, 'Earths only natural satellite', 1737, 0.01, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'Larger, inner moon of Mars', 11, 0.00, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'Smaller, outer moon of Mars', 6, 0.00, false, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Most geologically active body in solar system', 1821, 0.00, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Icy crust over a liquid water ocean', 1560, 8.00, true, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Largest moon in the solar system', 2634, 40.00, true, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Heavily cratered, ancient surface', 2410, 40.00, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 'Reddish, irregularly shaped inner moon', 83, 0.00, false, false, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 5, 'Largest of Jupiters irregular moons', 85, 0.00, false, false, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 5, 'Prograde irregular satellite of Jupiter', 43, 0.00, false, false, 5);
INSERT INTO public.moon VALUES (11, 'Titan', 5, 'Dense atmosphere with methane lakes', 2574, 20.00, false, true, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 5, 'Active geysers spewing water ice', 252, 10.00, false, true, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 5, 'Small moon with the giant Herschel crater', 198, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (14, 'Rhea', 5, 'Saturns second-largest moon', 763, 25.00, false, true, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 5, 'Small moon with bright wispy cliffs', 561, 20.00, false, false, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 5, 'Features the massive Ithaca Chasma canyon', 531, 30.00, false, false, 6);
INSERT INTO public.moon VALUES (17, 'Iapetus', 5, 'Distinct two-toned black and white moon', 734, 25.00, false, false, 6);
INSERT INTO public.moon VALUES (18, 'Phoebe', 5, 'Dark, irregular outer moon of Saturn', 106, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (19, 'Titania', 5, 'Largest moon of Uranus', 788, 30.00, false, false, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 5, 'Outermost major moon of Uranus', 761, 30.00, false, false, 7);
INSERT INTO public.moon VALUES (21, 'Ariel', 5, 'Brightest moon of Uranus', 578, 40.00, false, false, 7);
INSERT INTO public.moon VALUES (22, 'Umbriel', 5, 'Darkest moon of Uranus', 584, 40.00, false, false, 7);
INSERT INTO public.moon VALUES (23, 'Triton', 5, 'Retrograde orbit; nitrogen geysers', 1353, 25.00, false, true, 8);
INSERT INTO public.moon VALUES (24, 'Proteus', 5, 'Second largest moon of Neptune', 210, 0.00, false, false, 8);
INSERT INTO public.moon VALUES (25, 'Charon', 5, 'Largest moon of the Pluto system', 606, 20.00, false, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5, 'The only known planet with life', 6371, 71.00, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 5, 'Smallest planet, closest to Sun', 2440, 0.00, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 5, 'Earth-sized with extreme greenhouse effect', 6052, 0.01, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 5, 'The Red Planet, home to Olympus Mons', 3390, 0.10, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 'Largest gas giant in our system', 69911, 0.00, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 5, 'Known for its spectacular ring system', 58232, 0.00, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, 'Ice giant with a 98-degree tilt', 25362, 50.00, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 5, 'Coldest planet with extreme winds', 24622, 50.00, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 5, 'Closest exoplanet in the habitable zone', 7100, 10.00, false, true, 2);
INSERT INTO public.planet VALUES (10, 'Proxima d', 5, 'A lightweight sub-Earth orbit', 5100, 2.00, false, true, 2);
INSERT INTO public.planet VALUES (11, 'Sirius Prime', 0, 'Hypothetical planet in Sirius system', 12000, 0.00, false, true, 3);
INSERT INTO public.planet VALUES (12, 'Alpheratz I', 0, 'Young gas giant in Andromeda constellation', 75000, 0.00, false, true, 4);
INSERT INTO public.planet VALUES (13, 'Trianguli b', 4, 'Rocky world in a binary star system', 6800, 5.00, false, true, 5);
INSERT INTO public.planet VALUES (14, 'Spica Alpha', 0, 'Very young proto-planet', 15000, 0.00, false, false, 6);
INSERT INTO public.planet VALUES (15, 'Alkaid Major', 0, 'Super-Jupiter class planet', 82000, 0.00, false, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4, 'The heart of our solar system', 695700, 5, true, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 5, 'Nearest star to the Sun', 107280, 1, true, false, 1);
INSERT INTO public.star VALUES (3, 'Sirius A', 1, 'The Dog Star, brightest in the night sky', 1190000, 10, true, false, 1);
INSERT INTO public.star VALUES (4, 'Alpheratz', 0, 'Brightest star in the Andromeda constellation', 1878000, 8, false, false, 2);
INSERT INTO public.star VALUES (5, 'Delta Trianguli', 3, 'Spectroscopic binary in Triangulum', 700000, 4, true, false, 3);
INSERT INTO public.star VALUES (6, 'Spica', 0, 'Brightest object in Virgo constellation', 4800000, 9, false, false, 4);
INSERT INTO public.star VALUES (7, 'Alkaid', 0, 'Easternmost star in the Big Dipper', 2300000, 7, false, false, 5);


--
-- Name: a_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.a_a_id_seq', 4, true);


--
-- Name: b_b_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.b_b_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: a a_description1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a
    ADD CONSTRAINT a_description1_key UNIQUE (description1);


--
-- Name: a a_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.a
    ADD CONSTRAINT a_pkey PRIMARY KEY (a_id);


--
-- Name: b b_description2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.b
    ADD CONSTRAINT b_description2_key UNIQUE (description2);


--
-- Name: b b_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.b
    ADD CONSTRAINT b_pkey PRIMARY KEY (b_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

