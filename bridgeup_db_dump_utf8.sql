--
-- PostgreSQL database dump
--

\restrict JyBf8JPeS7RgrLkeC0k9vLdglMsLIqw4c7vj1dcGKjUUBvn53U33FHJJkvKIVCg

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Debian 16.14-1.pgdg13+1)

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

ALTER TABLE IF EXISTS ONLY public.xp_transactions DROP CONSTRAINT IF EXISTS xp_transactions_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.students DROP CONSTRAINT IF EXISTS students_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.skill_verifications DROP CONSTRAINT IF EXISTS skill_verifications_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.skill_passports DROP CONSTRAINT IF EXISTS skill_passports_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.roadmap_steps DROP CONSTRAINT IF EXISTS roadmap_steps_roadmap_id_fkey;
ALTER TABLE IF EXISTS ONLY public.roadmap_resources DROP CONSTRAINT IF EXISTS roadmap_resources_step_id_fkey;
ALTER TABLE IF EXISTS ONLY public.quizzes DROP CONSTRAINT IF EXISTS quizzes_resource_id_fkey;
ALTER TABLE IF EXISTS ONLY public.quiz_attempts DROP CONSTRAINT IF EXISTS quiz_attempts_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.quiz_attempts DROP CONSTRAINT IF EXISTS quiz_attempts_quiz_id_fkey;
ALTER TABLE IF EXISTS ONLY public.peer_reviews DROP CONSTRAINT IF EXISTS peer_reviews_verification_id_fkey;
ALTER TABLE IF EXISTS ONLY public.peer_reviews DROP CONSTRAINT IF EXISTS peer_reviews_reviewer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.passport_courses DROP CONSTRAINT IF EXISTS passport_courses_passport_id_fkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.learning_roadmaps DROP CONSTRAINT IF EXISTS learning_roadmaps_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.events DROP CONSTRAINT IF EXISTS events_employer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.event_registrations DROP CONSTRAINT IF EXISTS event_registrations_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.event_registrations DROP CONSTRAINT IF EXISTS event_registrations_event_id_fkey;
ALTER TABLE IF EXISTS ONLY public.employer_skill_signals DROP CONSTRAINT IF EXISTS employer_skill_signals_employer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.employer_skill_requirements DROP CONSTRAINT IF EXISTS employer_skill_requirements_signal_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussions DROP CONSTRAINT IF EXISTS discussions_community_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussions DROP CONSTRAINT IF EXISTS discussions_author_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussion_likes DROP CONSTRAINT IF EXISTS discussion_likes_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussion_likes DROP CONSTRAINT IF EXISTS discussion_likes_discussion_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussion_comments DROP CONSTRAINT IF EXISTS discussion_comments_discussion_id_fkey;
ALTER TABLE IF EXISTS ONLY public.discussion_comments DROP CONSTRAINT IF EXISTS discussion_comments_author_id_fkey;
ALTER TABLE IF EXISTS ONLY public.daily_tasks DROP CONSTRAINT IF EXISTS daily_tasks_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.community_memberships DROP CONSTRAINT IF EXISTS community_memberships_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.community_memberships DROP CONSTRAINT IF EXISTS community_memberships_community_id_fkey;
ALTER TABLE IF EXISTS ONLY public.challenge_submissions DROP CONSTRAINT IF EXISTS challenge_submissions_student_id_fkey;
ALTER TABLE IF EXISTS ONLY public.challenge_submissions DROP CONSTRAINT IF EXISTS challenge_submissions_challenge_id_fkey;
DROP INDEX IF EXISTS public.students_user_id_key;
DROP INDEX IF EXISTS public.students_email_key;
DROP INDEX IF EXISTS public.skill_verifications_student_id_skill_name_key;
DROP INDEX IF EXISTS public.skill_passports_student_id_key;
DROP INDEX IF EXISTS public.skill_passports_share_token_key;
DROP INDEX IF EXISTS public.peer_reviews_verification_id_reviewer_id_key;
DROP INDEX IF EXISTS public.passport_courses_passport_id_resource_id_key;
DROP INDEX IF EXISTS public.learning_roadmaps_student_id_key;
DROP INDEX IF EXISTS public.event_registrations_event_id_student_id_key;
DROP INDEX IF EXISTS public.employer_skill_requirements_signal_id_skill_name_key;
DROP INDEX IF EXISTS public.discussion_likes_discussion_id_student_id_key;
DROP INDEX IF EXISTS public.daily_tasks_student_id_task_date_title_key;
DROP INDEX IF EXISTS public.community_memberships_community_id_student_id_key;
DROP INDEX IF EXISTS public.challenge_submissions_challenge_id_student_id_key;
DROP INDEX IF EXISTS public."User_email_key";
ALTER TABLE IF EXISTS ONLY public.xp_transactions DROP CONSTRAINT IF EXISTS xp_transactions_pkey;
ALTER TABLE IF EXISTS ONLY public.weekly_challenges DROP CONSTRAINT IF EXISTS weekly_challenges_pkey;
ALTER TABLE IF EXISTS ONLY public.students DROP CONSTRAINT IF EXISTS students_pkey;
ALTER TABLE IF EXISTS ONLY public.skill_verifications DROP CONSTRAINT IF EXISTS skill_verifications_pkey;
ALTER TABLE IF EXISTS ONLY public.skill_passports DROP CONSTRAINT IF EXISTS skill_passports_pkey;
ALTER TABLE IF EXISTS ONLY public.roadmap_steps DROP CONSTRAINT IF EXISTS roadmap_steps_pkey;
ALTER TABLE IF EXISTS ONLY public.roadmap_resources DROP CONSTRAINT IF EXISTS roadmap_resources_pkey;
ALTER TABLE IF EXISTS ONLY public.quizzes DROP CONSTRAINT IF EXISTS quizzes_pkey;
ALTER TABLE IF EXISTS ONLY public.quiz_attempts DROP CONSTRAINT IF EXISTS quiz_attempts_pkey;
ALTER TABLE IF EXISTS ONLY public.peer_reviews DROP CONSTRAINT IF EXISTS peer_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.passport_courses DROP CONSTRAINT IF EXISTS passport_courses_pkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_pkey;
ALTER TABLE IF EXISTS ONLY public.learning_roadmaps DROP CONSTRAINT IF EXISTS learning_roadmaps_pkey;
ALTER TABLE IF EXISTS ONLY public.events DROP CONSTRAINT IF EXISTS events_pkey;
ALTER TABLE IF EXISTS ONLY public.event_registrations DROP CONSTRAINT IF EXISTS event_registrations_pkey;
ALTER TABLE IF EXISTS ONLY public.employer_skill_signals DROP CONSTRAINT IF EXISTS employer_skill_signals_pkey;
ALTER TABLE IF EXISTS ONLY public.employer_skill_requirements DROP CONSTRAINT IF EXISTS employer_skill_requirements_pkey;
ALTER TABLE IF EXISTS ONLY public.discussions DROP CONSTRAINT IF EXISTS discussions_pkey;
ALTER TABLE IF EXISTS ONLY public.discussion_likes DROP CONSTRAINT IF EXISTS discussion_likes_pkey;
ALTER TABLE IF EXISTS ONLY public.discussion_comments DROP CONSTRAINT IF EXISTS discussion_comments_pkey;
ALTER TABLE IF EXISTS ONLY public.daily_tasks DROP CONSTRAINT IF EXISTS daily_tasks_pkey;
ALTER TABLE IF EXISTS ONLY public.community_memberships DROP CONSTRAINT IF EXISTS community_memberships_pkey;
ALTER TABLE IF EXISTS ONLY public.communities DROP CONSTRAINT IF EXISTS communities_pkey;
ALTER TABLE IF EXISTS ONLY public.challenge_submissions DROP CONSTRAINT IF EXISTS challenge_submissions_pkey;
ALTER TABLE IF EXISTS ONLY public."User" DROP CONSTRAINT IF EXISTS "User_pkey";
ALTER TABLE IF EXISTS ONLY public."Skill" DROP CONSTRAINT IF EXISTS "Skill_pkey";
ALTER TABLE IF EXISTS public."User" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Skill" ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.xp_transactions;
DROP TABLE IF EXISTS public.weekly_challenges;
DROP TABLE IF EXISTS public.students;
DROP TABLE IF EXISTS public.skill_verifications;
DROP TABLE IF EXISTS public.skill_passports;
DROP TABLE IF EXISTS public.roadmap_steps;
DROP TABLE IF EXISTS public.roadmap_resources;
DROP TABLE IF EXISTS public.quizzes;
DROP TABLE IF EXISTS public.quiz_attempts;
DROP TABLE IF EXISTS public.peer_reviews;
DROP TABLE IF EXISTS public.passport_courses;
DROP TABLE IF EXISTS public.notifications;
DROP TABLE IF EXISTS public.learning_roadmaps;
DROP TABLE IF EXISTS public.events;
DROP TABLE IF EXISTS public.event_registrations;
DROP TABLE IF EXISTS public.employer_skill_signals;
DROP TABLE IF EXISTS public.employer_skill_requirements;
DROP TABLE IF EXISTS public.discussions;
DROP TABLE IF EXISTS public.discussion_likes;
DROP TABLE IF EXISTS public.discussion_comments;
DROP TABLE IF EXISTS public.daily_tasks;
DROP TABLE IF EXISTS public.community_memberships;
DROP TABLE IF EXISTS public.communities;
DROP TABLE IF EXISTS public.challenge_submissions;
DROP SEQUENCE IF EXISTS public."User_id_seq";
DROP TABLE IF EXISTS public."User";
DROP SEQUENCE IF EXISTS public."Skill_id_seq";
DROP TABLE IF EXISTS public."Skill";
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: bridgeup
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO bridgeup;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: bridgeup
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Skill; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public."Skill" (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public."Skill" OWNER TO bridgeup;

--
-- Name: Skill_id_seq; Type: SEQUENCE; Schema: public; Owner: bridgeup
--

CREATE SEQUENCE public."Skill_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Skill_id_seq" OWNER TO bridgeup;

--
-- Name: Skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bridgeup
--

ALTER SEQUENCE public."Skill_id_seq" OWNED BY public."Skill".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    role text DEFAULT 'student'::text NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    age integer NOT NULL,
    city text NOT NULL,
    university text NOT NULL,
    degree text NOT NULL,
    "currentYear" text NOT NULL,
    "aboutMe" text,
    "selectedRoles" text[],
    "companyName" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."User" OWNER TO bridgeup;

--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: bridgeup
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO bridgeup;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bridgeup
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: challenge_submissions; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.challenge_submissions (
    id text NOT NULL,
    challenge_id text NOT NULL,
    student_id text NOT NULL,
    response_text text,
    response_link text,
    status text DEFAULT 'accepted'::text NOT NULL,
    submitted_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.challenge_submissions OWNER TO bridgeup;

--
-- Name: communities; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.communities (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    skill_tag text NOT NULL,
    member_count integer DEFAULT 0 NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.communities OWNER TO bridgeup;

--
-- Name: community_memberships; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.community_memberships (
    id text NOT NULL,
    community_id text NOT NULL,
    student_id text NOT NULL,
    joined_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.community_memberships OWNER TO bridgeup;

--
-- Name: daily_tasks; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.daily_tasks (
    id text NOT NULL,
    student_id text NOT NULL,
    title text NOT NULL,
    description text,
    skill_tag text,
    xp_value integer DEFAULT 10 NOT NULL,
    task_date date NOT NULL,
    status text DEFAULT 'pending'::text NOT NULL,
    completed_at timestamp(3) without time zone,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.daily_tasks OWNER TO bridgeup;

--
-- Name: discussion_comments; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.discussion_comments (
    id text NOT NULL,
    discussion_id text NOT NULL,
    author_id text NOT NULL,
    body text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.discussion_comments OWNER TO bridgeup;

--
-- Name: discussion_likes; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.discussion_likes (
    id text NOT NULL,
    discussion_id text NOT NULL,
    student_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.discussion_likes OWNER TO bridgeup;

--
-- Name: discussions; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.discussions (
    id text NOT NULL,
    community_id text NOT NULL,
    author_id text NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    like_count integer DEFAULT 0 NOT NULL,
    comment_count integer DEFAULT 0 NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.discussions OWNER TO bridgeup;

--
-- Name: employer_skill_requirements; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.employer_skill_requirements (
    id text NOT NULL,
    signal_id text NOT NULL,
    skill_name text NOT NULL,
    proficiency text NOT NULL
);


ALTER TABLE public.employer_skill_requirements OWNER TO bridgeup;

--
-- Name: employer_skill_signals; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.employer_skill_signals (
    id text NOT NULL,
    employer_id integer NOT NULL,
    job_role text NOT NULL,
    industry text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.employer_skill_signals OWNER TO bridgeup;

--
-- Name: event_registrations; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.event_registrations (
    id text NOT NULL,
    event_id text NOT NULL,
    student_id text NOT NULL,
    registered_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.event_registrations OWNER TO bridgeup;

--
-- Name: events; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.events (
    id text NOT NULL,
    employer_id integer NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    mode text NOT NULL,
    location text,
    link text,
    event_date timestamp(3) without time zone NOT NULL,
    capacity integer,
    registration_count integer DEFAULT 0 NOT NULL,
    skills text[],
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.events OWNER TO bridgeup;

--
-- Name: learning_roadmaps; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.learning_roadmaps (
    id text NOT NULL,
    student_id text NOT NULL,
    target_role text NOT NULL,
    total_weeks integer DEFAULT 12 NOT NULL,
    potential_xp integer DEFAULT 1000 NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.learning_roadmaps OWNER TO bridgeup;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.notifications (
    id text NOT NULL,
    student_id text NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    type text NOT NULL,
    is_read boolean DEFAULT false NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.notifications OWNER TO bridgeup;

--
-- Name: passport_courses; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.passport_courses (
    id text NOT NULL,
    passport_id text NOT NULL,
    resource_id text NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    url text NOT NULL,
    skill_name text NOT NULL,
    completed_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.passport_courses OWNER TO bridgeup;

--
-- Name: peer_reviews; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.peer_reviews (
    id text NOT NULL,
    verification_id text NOT NULL,
    reviewer_id text NOT NULL,
    approved boolean NOT NULL,
    comment text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.peer_reviews OWNER TO bridgeup;

--
-- Name: quiz_attempts; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.quiz_attempts (
    id text NOT NULL,
    student_id text NOT NULL,
    quiz_id text NOT NULL,
    score integer NOT NULL,
    passed boolean NOT NULL,
    submitted_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.quiz_attempts OWNER TO bridgeup;

--
-- Name: quizzes; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.quizzes (
    id text NOT NULL,
    resource_id text NOT NULL,
    title text NOT NULL,
    questions jsonb NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.quizzes OWNER TO bridgeup;

--
-- Name: roadmap_resources; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.roadmap_resources (
    id text NOT NULL,
    step_id text NOT NULL,
    title text NOT NULL,
    type text NOT NULL,
    url text NOT NULL,
    duration_mins integer DEFAULT 30 NOT NULL,
    xp_reward integer DEFAULT 50 NOT NULL,
    completed boolean DEFAULT false NOT NULL,
    justification text,
    completed_at timestamp(3) without time zone
);


ALTER TABLE public.roadmap_resources OWNER TO bridgeup;

--
-- Name: roadmap_steps; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.roadmap_steps (
    id text NOT NULL,
    roadmap_id text NOT NULL,
    skill_name text NOT NULL,
    demand_percent integer NOT NULL,
    duration_weeks integer NOT NULL,
    status text DEFAULT 'locked'::text NOT NULL,
    "order" integer NOT NULL,
    description text,
    "weeksDetails" jsonb,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.roadmap_steps OWNER TO bridgeup;

--
-- Name: skill_passports; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.skill_passports (
    id text NOT NULL,
    student_id text NOT NULL,
    is_public boolean DEFAULT false NOT NULL,
    share_token text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.skill_passports OWNER TO bridgeup;

--
-- Name: skill_verifications; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.skill_verifications (
    id text NOT NULL,
    student_id text NOT NULL,
    skill_name text NOT NULL,
    response_text text,
    response_link text,
    status text DEFAULT 'pending'::text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.skill_verifications OWNER TO bridgeup;

--
-- Name: students; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.students (
    id text NOT NULL,
    user_id integer,
    email text NOT NULL,
    name text NOT NULL,
    current_xp integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    streak_count integer DEFAULT 0 NOT NULL,
    last_active_date timestamp(3) without time zone,
    study_mode_until timestamp(3) without time zone,
    weekly_hours integer DEFAULT 5 NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.students OWNER TO bridgeup;

--
-- Name: weekly_challenges; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.weekly_challenges (
    id text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    skill_tag text NOT NULL,
    xp_reward integer DEFAULT 50 NOT NULL,
    start_date date NOT NULL,
    deadline date NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.weekly_challenges OWNER TO bridgeup;

--
-- Name: xp_transactions; Type: TABLE; Schema: public; Owner: bridgeup
--

CREATE TABLE public.xp_transactions (
    id text NOT NULL,
    student_id text NOT NULL,
    amount integer NOT NULL,
    reason text NOT NULL,
    related_task_id text,
    related_entity_id text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.xp_transactions OWNER TO bridgeup;

--
-- Name: Skill id; Type: DEFAULT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public."Skill" ALTER COLUMN id SET DEFAULT nextval('public."Skill_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Data for Name: Skill; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public."Skill" (id, name) FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public."User" (id, email, password, role, "firstName", "lastName", age, city, university, degree, "currentYear", "aboutMe", "selectedRoles", "companyName", "createdAt") FROM stdin;
2	student@bridgeup.dev	$2b$10$BYp8Hkk3pY.rSP.FLDKwL.IOMHBDY5.qctyRl3pimvw0LLt1ZHPq2	student	Kavindu	Perera	22	Colombo	University of Moratuwa	BSc (Hons) in Computer Science & Engineering	Year 3	\N	{"Backend Developer","Software Engineer"}	\N	2026-08-11 05:18:53.945
1	employer@bridgeup.dev	$2b$10$UH27cSElFp8aFQPYic70EOVsF5.ommmAHpiNjC5Tr4u5bVvF7tT3C	employer	Sysco	Labs	0	Colombo	N/A	N/A	N/A	\N	{}	Sysco Labs	2026-08-10 15:58:54.639
5	sachini@sliit.lk	$2b$10$JJPgO2p828EKUtLp2vrNz.TY8eN66ZGPGr/75oDUW/wglzK9TJw1W	student	sachini	K	24	Colombo	SLIIT (Sri Lanka Institute of Information Technology)	Computer Science	Year 3	Hi im sach	{"DevOps / Cloud"}	\N	2026-08-11 05:55:08.025
6	kavindu@uni.lk	$2b$10$WAW2qENZeQIrNM8V7Ucl/OJPp50.u5whFGlHZT/qwzukaFK3R3T1e	student	Kavindu	Perera	22	Colombo	University of Colombo	Computer Science	Year 3	I'm a 3rd year computer science undergraduate currently in search for software engineering skill development.	{"Software Developer"}	\N	2026-08-11 07:04:12.74
7	kavindup@uni.lk	$2b$10$VSadJXold4OzzbxGcl9Sf.pAzWzRcha/QEpNr73uC.tnbEAHu7RfO	student	Kavindu	Perera	24	Colombo	University of Colombo	Computer Science	Year 3	I'm a 3rd year computer science undergrad currently in search for software engineering skill development	{"Software Developer"}	\N	2026-08-11 07:24:07.118
8	kavindup@university.lk	$2b$10$TlEGLPE0t54kFzi4UsbeROgGoeevLJy44adBI98tr2XkZKsKPNYeK	student	Kavindu	Perera	22	Colombo	University of Colombo	Computer Science	Year 3	I'm a 3rd year computer science student currently in search for software engineering skill development.	{"Software Developer"}	\N	2026-08-11 07:31:54.421
\.


--
-- Data for Name: challenge_submissions; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.challenge_submissions (id, challenge_id, student_id, response_text, response_link, status, submitted_at) FROM stdin;
\.


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.communities (id, name, description, skill_tag, member_count, created_at) FROM stdin;
2d75c284-c8d2-4a29-a54e-535c70c6a4be	Frontend Developers	Connect with peers learning HTML, CSS, JavaScript, and modern frontend frameworks.	Frontend Development	0	2026-08-10 15:58:54.514
d318a84f-cb73-493f-b6d5-ecf1447e47f9	Python Programmers	A community for students mastering Python programming and data science.	Python	0	2026-08-10 15:58:54.514
67ec66fa-eab6-4c05-af1f-7f28938fb69c	Backend Engineers	Discuss APIs, databases, server-side architecture, and backend best practices.	Backend Development	0	2026-08-10 15:58:54.514
4e2ef8b7-b774-4940-aba8-f2f968f9d18a	Data Science Enthusiasts	Share insights on data analysis, machine learning, and statistical modeling.	Data Science	0	2026-08-10 15:58:54.514
9a5b79c1-e064-4089-8d8b-5750bf325bbc	Mobile App Developers	Build and discuss mobile applications for iOS and Android platforms.	Mobile Development	0	2026-08-10 15:58:54.514
\.


--
-- Data for Name: community_memberships; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.community_memberships (id, community_id, student_id, joined_at) FROM stdin;
\.


--
-- Data for Name: daily_tasks; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.daily_tasks (id, student_id, title, description, skill_tag, xp_value, task_date, status, completed_at, created_at) FROM stdin;
b79d5dc0-aa53-4fe4-b8e5-23878a61ab21	4ad78286-e5fe-4e26-a992-2ee42d1964e5	Complete a practice exercise on React	Implement a small component or write a function using React and test its behavior.	React	10	2026-08-11	pending	\N	2026-08-11 06:01:45.453
1b20d13f-9b30-45bf-b4d6-ad333e266813	4feb5840-187a-40b8-8619-363aba9afc23	Complete a practice exercise on React	Implement a small component or write a function using React and test its behavior.	React	10	2026-08-11	pending	\N	2026-08-11 06:55:05.756
5656caeb-6386-4cd0-9c3e-38f1a9d1aa8d	d17628e4-095c-4a97-807d-bda3bf035411	Complete a practice exercise on React	Implement a small component or write a function using React and test its behavior.	React	10	2026-08-11	pending	\N	2026-08-11 07:24:17.406
f4e55260-f399-44cf-8c9f-e349ebc975e4	86552c81-3efe-454e-bc52-623d5ec380eb	Complete a practice exercise on Algorithms & Data Structures	Implement a small component or write a function using Algorithms & Data Structures and test its behavior.	Algorithms & Data Structures	10	2026-08-11	pending	\N	2026-08-11 07:54:52.483
\.


--
-- Data for Name: discussion_comments; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.discussion_comments (id, discussion_id, author_id, body, created_at) FROM stdin;
\.


--
-- Data for Name: discussion_likes; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.discussion_likes (id, discussion_id, student_id, created_at) FROM stdin;
\.


--
-- Data for Name: discussions; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.discussions (id, community_id, author_id, title, body, like_count, comment_count, created_at) FROM stdin;
\.


--
-- Data for Name: employer_skill_requirements; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.employer_skill_requirements (id, signal_id, skill_name, proficiency) FROM stdin;
\.


--
-- Data for Name: employer_skill_signals; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.employer_skill_signals (id, employer_id, job_role, industry, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: event_registrations; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.event_registrations (id, event_id, student_id, registered_at) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.events (id, employer_id, title, description, mode, location, link, event_date, capacity, registration_count, skills, created_at) FROM stdin;
873bb1d8-b735-4e64-945e-51c34caad5e8	1	Backend Community Check-in	Join our backend engineers for a live Q&A session about API design, database optimization, and career paths in backend development.	online	\N	https://meet.bridgeup.dev/backend-checkin	2026-08-24 15:58:54.65	50	0	{"Backend Development",Python}	2026-08-10 15:58:54.657
f7f5c18b-9f39-425f-94ea-29e57aa9e36d	1	Sysco Labs Industry Visit	Visit Sysco Labs headquarters to learn about their tech stack, meet the engineering team, and explore internship opportunities.	physical	Sysco Labs, Colombo 03	\N	2026-08-31 15:58:54.65	30	0	{"Frontend Development","Backend Development"}	2026-08-10 15:58:54.657
1b9474be-caee-41e1-8895-9a07c27a7d5a	1	Data Science Workshop	Hands-on workshop covering Python data analysis with pandas and introductory machine learning concepts.	hybrid	University of Colombo, Faculty of Science	https://meet.bridgeup.dev/data-science-workshop	2026-09-14 15:58:54.65	100	0	{"Data Science",Python}	2026-08-10 15:58:54.657
\.


--
-- Data for Name: learning_roadmaps; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.learning_roadmaps (id, student_id, target_role, total_weeks, potential_xp, created_at, updated_at) FROM stdin;
c80ac9e4-b790-4461-90b5-cfb58b117010	4ad78286-e5fe-4e26-a992-2ee42d1964e5	DevOps / Cloud	9	230	2026-08-11 05:55:41.892	2026-08-11 05:55:41.892
08b65ac9-b506-4a03-953f-efab7c6a4c38	4feb5840-187a-40b8-8619-363aba9afc23	Backend Developer	13	450	2026-08-11 06:55:05.692	2026-08-11 06:55:05.692
bd582a08-27db-4ae1-b0ed-b5322bd6acc1	d17628e4-095c-4a97-807d-bda3bf035411	Backend Developer	13	450	2026-08-11 07:24:17.382	2026-08-11 07:24:17.382
b2460a32-9bcd-4947-9d72-b96ba8835bc2	86552c81-3efe-454e-bc52-623d5ec380eb	Software Developer	8	240	2026-08-11 07:52:54.394	2026-08-11 07:52:54.394
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.notifications (id, student_id, title, body, type, is_read, created_at) FROM stdin;
\.


--
-- Data for Name: passport_courses; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.passport_courses (id, passport_id, resource_id, title, type, url, skill_name, completed_at) FROM stdin;
fdf79bd0-863f-4e9e-9a71-932c9ee664be	16c7fefd-dcb4-4d65-b298-7d8b2559148d	3dc20108-d035-442e-bcc0-33d704a6b87c	Docker Tutorial for Beginners ΓÇö TechWorld with Nana	youtube	https://www.youtube.com/watch?v=3c-iBn73dDE	Docker & Containerization	2026-08-11 06:01:26.545
\.


--
-- Data for Name: peer_reviews; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.peer_reviews (id, verification_id, reviewer_id, approved, comment, created_at) FROM stdin;
\.


--
-- Data for Name: quiz_attempts; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.quiz_attempts (id, student_id, quiz_id, score, passed, submitted_at) FROM stdin;
\.


--
-- Data for Name: quizzes; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.quizzes (id, resource_id, title, questions, created_at) FROM stdin;
\.


--
-- Data for Name: roadmap_resources; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.roadmap_resources (id, step_id, title, type, url, duration_mins, xp_reward, completed, justification, completed_at) FROM stdin;
afcd1b54-341f-42c1-81ed-a3cc51e860f7	0dc9dcde-f6cd-4e9f-854f-ac0343bef240	AWS Cloud Practitioner Essentials ΓÇö Amazon (Coursera)	coursera	https://www.coursera.org/learn/aws-cloud-practitioner-essentials	160	130	f	Industry standard certification for cloud engineering.	\N
3dc20108-d035-442e-bcc0-33d704a6b87c	cff16da5-ca59-4389-bfed-aec6dcd05a5c	Docker Tutorial for Beginners ΓÇö TechWorld with Nana	youtube	https://www.youtube.com/watch?v=3c-iBn73dDE	50	100	t	Required by 82% of DevOps and Cloud engineering roles.	2026-08-11 06:01:26.395
2232eb84-9ab1-4992-a769-3066ad613690	9799fbc7-3a83-40eb-a1e6-442940dd7231	REST API & HTTP Crash Course ΓÇö Traversy Media	youtube	https://www.youtube.com/watch?v=iYM2zFP3Zn0	45	120	f	Required for 87% of local job postings including WSO2 and Sysco LABS.	\N
bc28187b-47ce-4347-b1e7-3f7f1d25a82d	9799fbc7-3a83-40eb-a1e6-442940dd7231	IBM Node.js & Express.js Back-End App Development	coursera	https://www.coursera.org/learn/developing-backend-apps-with-nodejs-and-express	180	150	f	Highly recommended by Sysco LABS for internship eligibility.	\N
80b2fdfb-3dc3-4bb6-a790-aaed19f9a35c	9f133055-ef79-4f2a-ad31-b86877349d15	Git & GitHub Full Course for Beginners ΓÇö freeCodeCamp	youtube	https://www.youtube.com/watch?v=RGOj5yH7evk	60	80	f	Required by 82% of entry-level engineering postings.	\N
1e63ef59-2270-457a-8f2f-55ab8c354cd7	6b061712-e7d0-43f7-b025-bf9adf57cb7d	IBM Databases and SQL for Data Science with Python	coursera	https://www.coursera.org/learn/sql-data-science	120	100	f	Required for IFS screening assessment.	\N
61e12d33-ac43-4f3c-85d5-5afe68638be9	a582322a-213a-48a5-a448-55f768f22028	REST API & HTTP Crash Course ΓÇö Traversy Media	youtube	https://www.youtube.com/watch?v=iYM2zFP3Zn0	45	120	f	Required for 87% of local job postings including WSO2 and Sysco LABS.	\N
f6a67fcf-b9ff-4a30-9ea8-d5f984e39aab	a582322a-213a-48a5-a448-55f768f22028	IBM Node.js & Express.js Back-End App Development	coursera	https://www.coursera.org/learn/developing-backend-apps-with-nodejs-and-express	180	150	f	Highly recommended by Sysco LABS for internship eligibility.	\N
ead291b5-9dd2-4a5d-bb2a-89d2047af643	3ea35cd1-f059-4b35-b663-e4a2be7dfd49	Git & GitHub Full Course for Beginners ΓÇö freeCodeCamp	youtube	https://www.youtube.com/watch?v=RGOj5yH7evk	60	80	f	Required by 82% of entry-level engineering postings.	\N
99bbca3f-c713-4faa-8ea0-7bc4403a8b3b	bb58d125-1da2-49a1-8432-9e559fa507c4	IBM Databases and SQL for Data Science with Python	coursera	https://www.coursera.org/learn/sql-data-science	120	100	f	Required for IFS screening assessment.	\N
e3798456-de14-468c-b085-c2c5dffc2dbc	d2209b3b-1bb4-4060-8867-5d510c6247f5	Algorithms Specialization ΓÇö Stanford (Coursera)	coursera	https://www.coursera.org/specializations/algorithms	180	150	f	Highly recommended for tech assessment preparation.	\N
b8baaa56-4071-4d24-bca0-816fc3f64089	8877f89c-d1cc-401c-8f79-3cec12e583eb	Git & GitHub Crash Course ΓÇö Traversy Media	youtube	https://www.youtube.com/watch?v=SWYqp7iY_Tc	45	90	f	Mandatory standard skill for all software developers.	\N
\.


--
-- Data for Name: roadmap_steps; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.roadmap_steps (id, roadmap_id, skill_name, demand_percent, duration_weeks, status, "order", description, "weeksDetails", created_at) FROM stdin;
cff16da5-ca59-4389-bfed-aec6dcd05a5c	c80ac9e4-b790-4461-90b5-cfb58b117010	Docker & Containerization	82	4	completed	1	Containerizing applications, writing Dockerfiles, and managing images.	[{"weeks": "Wk 1-2", "content": "Containers vs VMs, Docker run, volumes"}, {"weeks": "Wk 3-4", "content": "Writing Dockerfiles, multi-stage builds, compose"}]	2026-08-11 05:55:41.899
0dc9dcde-f6cd-4e9f-854f-ac0343bef240	c80ac9e4-b790-4461-90b5-cfb58b117010	AWS Cloud Infrastructure	80	5	active	2	AWS essentials: EC2, S3, RDS, VPC, and IAM policies.	[{"weeks": "Wk 1-2", "content": "Cloud concepts, EC2 computing, S3 storage"}, {"weeks": "Wk 3-4", "content": "VPC networking, security groups, RDS databases"}, {"weeks": "Wk 5", "content": "IAM users, roles, security best practices"}]	2026-08-11 05:55:41.912
9799fbc7-3a83-40eb-a1e6-442940dd7231	08b65ac9-b506-4a03-953f-efab7c6a4c38	REST APIs	87	6	active	1	Asked in 87% of backend JDs across Colombo. Without this, you won't pass first-round interviews.	[{"weeks": "Wk 1-2", "content": "HTTP methods, status codes, headers"}, {"weeks": "Wk 3-4", "content": "Build your first API (Express.js / Flask)"}, {"weeks": "Wk 5-6", "content": "JWT auth + deploy API"}]	2026-08-11 06:55:05.703
9f133055-ef79-4f2a-ad31-b86877349d15	08b65ac9-b506-4a03-953f-efab7c6a4c38	Git & Version Control	82	3	locked	2	Every Sri Lankan tech company uses Git. Not knowing it signals lack of real project experience.	[{"weeks": "Wk 1", "content": "Init, commit, branching"}, {"weeks": "Wk 2", "content": "Pull requests & teamwork"}, {"weeks": "Wk 3", "content": "Resolve merge conflicts"}]	2026-08-11 06:55:05.741
6b061712-e7d0-43f7-b025-bf9adf57cb7d	08b65ac9-b506-4a03-953f-efab7c6a4c38	SQL / Databases	74	4	locked	3	Backend roles almost always require databases. SQL is the most transferable skill.	[{"weeks": "Wk 1", "content": "SELECT, WHERE, JOIN"}, {"weeks": "Wk 2", "content": "GROUP BY, aggregations"}, {"weeks": "Wk 3-4", "content": "Schema design + integrate with API"}]	2026-08-11 06:55:05.75
a582322a-213a-48a5-a448-55f768f22028	bd582a08-27db-4ae1-b0ed-b5322bd6acc1	REST APIs	87	6	active	1	Asked in 87% of backend JDs across Colombo. Without this, you won't pass first-round interviews.	[{"weeks": "Wk 1-2", "content": "HTTP methods, status codes, headers"}, {"weeks": "Wk 3-4", "content": "Build your first API (Express.js / Flask)"}, {"weeks": "Wk 5-6", "content": "JWT auth + deploy API"}]	2026-08-11 07:24:17.389
3ea35cd1-f059-4b35-b663-e4a2be7dfd49	bd582a08-27db-4ae1-b0ed-b5322bd6acc1	Git & Version Control	82	3	locked	2	Every Sri Lankan tech company uses Git. Not knowing it signals lack of real project experience.	[{"weeks": "Wk 1", "content": "Init, commit, branching"}, {"weeks": "Wk 2", "content": "Pull requests & teamwork"}, {"weeks": "Wk 3", "content": "Resolve merge conflicts"}]	2026-08-11 07:24:17.421
bb58d125-1da2-49a1-8432-9e559fa507c4	bd582a08-27db-4ae1-b0ed-b5322bd6acc1	SQL / Databases	74	4	locked	3	Backend roles almost always require databases. SQL is the most transferable skill.	[{"weeks": "Wk 1", "content": "SELECT, WHERE, JOIN"}, {"weeks": "Wk 2", "content": "GROUP BY, aggregations"}, {"weeks": "Wk 3-4", "content": "Schema design + integrate with API"}]	2026-08-11 07:24:17.437
d2209b3b-1bb4-4060-8867-5d510c6247f5	b2460a32-9bcd-4947-9d72-b96ba8835bc2	Algorithms & Data Structures	78	5	active	1	Essential for technical interviews at top firms like WSO2 and Sysco LABS.	[{"weeks": "Wk 1-2", "content": "Arrays, Lists, Stacks, Queues"}, {"weeks": "Wk 3-4", "content": "Sorting, searching, hashing"}, {"weeks": "Wk 5", "content": "Big O notation & complexity"}]	2026-08-11 07:52:54.399
8877f89c-d1cc-401c-8f79-3cec12e583eb	b2460a32-9bcd-4947-9d72-b96ba8835bc2	Git & Version Control	82	3	locked	2	Standard version control system for code management.	[{"weeks": "Wk 1-2", "content": "Branching, merging, commit guidelines"}, {"weeks": "Wk 3", "content": "GitHub flow & pull requests"}]	2026-08-11 07:52:54.408
\.


--
-- Data for Name: skill_passports; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.skill_passports (id, student_id, is_public, share_token, created_at) FROM stdin;
16c7fefd-dcb4-4d65-b298-7d8b2559148d	4ad78286-e5fe-4e26-a992-2ee42d1964e5	f	af17a1e16991f48507f3e3f71ac27ca7	2026-08-11 06:01:26.529
\.


--
-- Data for Name: skill_verifications; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.skill_verifications (id, student_id, skill_name, response_text, response_link, status, created_at) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.students (id, user_id, email, name, current_xp, level, streak_count, last_active_date, study_mode_until, weekly_hours, created_at) FROM stdin;
test-student-id	\N	test@bridgeup.dev	Test Student	0	1	0	\N	\N	5	2026-08-10 15:58:54.468
4feb5840-187a-40b8-8619-363aba9afc23	2	student@bridgeup.dev	Kavindu Perera	240	2	3	\N	\N	5	2026-08-11 05:19:02.923
4ad78286-e5fe-4e26-a992-2ee42d1964e5	5	sachini@sliit.lk	sachini K	160	1	0	\N	\N	5	2026-08-11 05:55:08.044
17fc1b46-d98d-47aa-ac26-4dc94ef55955	6	kavindu@uni.lk	Kavindu Perera	0	1	0	\N	\N	5	2026-08-11 07:04:12.763
d17628e4-095c-4a97-807d-bda3bf035411	7	kavindup@uni.lk	Kavindu Perera	0	1	0	\N	\N	5	2026-08-11 07:24:07.123
86552c81-3efe-454e-bc52-623d5ec380eb	8	kavindup@university.lk	Kavindu Perera	20	1	0	\N	\N	5	2026-08-11 07:31:54.432
\.


--
-- Data for Name: weekly_challenges; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.weekly_challenges (id, title, description, skill_tag, xp_reward, start_date, deadline, is_active, created_at) FROM stdin;
f4de8f50-eafe-41e5-b26b-08c862d6b21d	Build a Responsive Landing Page	Create a fully responsive landing page using HTML and CSS. Include a hero section, features grid, and a contact form. Submit a link to your hosted page or a GitHub repository.	Frontend Development	75	2026-08-10	2026-08-17	t	2026-08-10 15:58:54.53
\.


--
-- Data for Name: xp_transactions; Type: TABLE DATA; Schema: public; Owner: bridgeup
--

COPY public.xp_transactions (id, student_id, amount, reason, related_task_id, related_entity_id, created_at) FROM stdin;
f153d7a3-ef07-44a9-be75-2c70da2bd7bb	4ad78286-e5fe-4e26-a992-2ee42d1964e5	100	learning_resource_completed	\N	3dc20108-d035-442e-bcc0-33d704a6b87c	2026-08-11 06:01:26.483
b1a7a8c2-ea11-4bd5-ba57-e64d932c9ab5	4ad78286-e5fe-4e26-a992-2ee42d1964e5	20	learning_path_task_completed	\N	0dc9dcde-f6cd-4e9f-854f-ac0343bef240-0	2026-08-11 06:01:32.109
94fe8e58-da00-4d2a-8e54-3da82ae500e2	4ad78286-e5fe-4e26-a992-2ee42d1964e5	40	learning_path_task_completed	\N	0dc9dcde-f6cd-4e9f-854f-ac0343bef240-1	2026-08-11 06:02:17.637
d22681ea-4247-4055-9f5d-748146e09453	86552c81-3efe-454e-bc52-623d5ec380eb	20	learning_path_task_completed	\N	d2209b3b-1bb4-4060-8867-5d510c6247f5-0	2026-08-11 07:54:31.229
\.


--
-- Name: Skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bridgeup
--

SELECT pg_catalog.setval('public."Skill_id_seq"', 1, false);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bridgeup
--

SELECT pg_catalog.setval('public."User_id_seq"', 8, true);


--
-- Name: Skill Skill_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public."Skill"
    ADD CONSTRAINT "Skill_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: challenge_submissions challenge_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.challenge_submissions
    ADD CONSTRAINT challenge_submissions_pkey PRIMARY KEY (id);


--
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: community_memberships community_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.community_memberships
    ADD CONSTRAINT community_memberships_pkey PRIMARY KEY (id);


--
-- Name: daily_tasks daily_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.daily_tasks
    ADD CONSTRAINT daily_tasks_pkey PRIMARY KEY (id);


--
-- Name: discussion_comments discussion_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_comments
    ADD CONSTRAINT discussion_comments_pkey PRIMARY KEY (id);


--
-- Name: discussion_likes discussion_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_likes
    ADD CONSTRAINT discussion_likes_pkey PRIMARY KEY (id);


--
-- Name: discussions discussions_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussions
    ADD CONSTRAINT discussions_pkey PRIMARY KEY (id);


--
-- Name: employer_skill_requirements employer_skill_requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.employer_skill_requirements
    ADD CONSTRAINT employer_skill_requirements_pkey PRIMARY KEY (id);


--
-- Name: employer_skill_signals employer_skill_signals_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.employer_skill_signals
    ADD CONSTRAINT employer_skill_signals_pkey PRIMARY KEY (id);


--
-- Name: event_registrations event_registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.event_registrations
    ADD CONSTRAINT event_registrations_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: learning_roadmaps learning_roadmaps_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.learning_roadmaps
    ADD CONSTRAINT learning_roadmaps_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: passport_courses passport_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.passport_courses
    ADD CONSTRAINT passport_courses_pkey PRIMARY KEY (id);


--
-- Name: peer_reviews peer_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.peer_reviews
    ADD CONSTRAINT peer_reviews_pkey PRIMARY KEY (id);


--
-- Name: quiz_attempts quiz_attempts_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.quiz_attempts
    ADD CONSTRAINT quiz_attempts_pkey PRIMARY KEY (id);


--
-- Name: quizzes quizzes_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_pkey PRIMARY KEY (id);


--
-- Name: roadmap_resources roadmap_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.roadmap_resources
    ADD CONSTRAINT roadmap_resources_pkey PRIMARY KEY (id);


--
-- Name: roadmap_steps roadmap_steps_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.roadmap_steps
    ADD CONSTRAINT roadmap_steps_pkey PRIMARY KEY (id);


--
-- Name: skill_passports skill_passports_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.skill_passports
    ADD CONSTRAINT skill_passports_pkey PRIMARY KEY (id);


--
-- Name: skill_verifications skill_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.skill_verifications
    ADD CONSTRAINT skill_verifications_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: weekly_challenges weekly_challenges_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.weekly_challenges
    ADD CONSTRAINT weekly_challenges_pkey PRIMARY KEY (id);


--
-- Name: xp_transactions xp_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.xp_transactions
    ADD CONSTRAINT xp_transactions_pkey PRIMARY KEY (id);


--
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- Name: challenge_submissions_challenge_id_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX challenge_submissions_challenge_id_student_id_key ON public.challenge_submissions USING btree (challenge_id, student_id);


--
-- Name: community_memberships_community_id_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX community_memberships_community_id_student_id_key ON public.community_memberships USING btree (community_id, student_id);


--
-- Name: daily_tasks_student_id_task_date_title_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX daily_tasks_student_id_task_date_title_key ON public.daily_tasks USING btree (student_id, task_date, title);


--
-- Name: discussion_likes_discussion_id_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX discussion_likes_discussion_id_student_id_key ON public.discussion_likes USING btree (discussion_id, student_id);


--
-- Name: employer_skill_requirements_signal_id_skill_name_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX employer_skill_requirements_signal_id_skill_name_key ON public.employer_skill_requirements USING btree (signal_id, skill_name);


--
-- Name: event_registrations_event_id_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX event_registrations_event_id_student_id_key ON public.event_registrations USING btree (event_id, student_id);


--
-- Name: learning_roadmaps_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX learning_roadmaps_student_id_key ON public.learning_roadmaps USING btree (student_id);


--
-- Name: passport_courses_passport_id_resource_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX passport_courses_passport_id_resource_id_key ON public.passport_courses USING btree (passport_id, resource_id);


--
-- Name: peer_reviews_verification_id_reviewer_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX peer_reviews_verification_id_reviewer_id_key ON public.peer_reviews USING btree (verification_id, reviewer_id);


--
-- Name: skill_passports_share_token_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX skill_passports_share_token_key ON public.skill_passports USING btree (share_token);


--
-- Name: skill_passports_student_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX skill_passports_student_id_key ON public.skill_passports USING btree (student_id);


--
-- Name: skill_verifications_student_id_skill_name_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX skill_verifications_student_id_skill_name_key ON public.skill_verifications USING btree (student_id, skill_name);


--
-- Name: students_email_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX students_email_key ON public.students USING btree (email);


--
-- Name: students_user_id_key; Type: INDEX; Schema: public; Owner: bridgeup
--

CREATE UNIQUE INDEX students_user_id_key ON public.students USING btree (user_id);


--
-- Name: challenge_submissions challenge_submissions_challenge_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.challenge_submissions
    ADD CONSTRAINT challenge_submissions_challenge_id_fkey FOREIGN KEY (challenge_id) REFERENCES public.weekly_challenges(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: challenge_submissions challenge_submissions_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.challenge_submissions
    ADD CONSTRAINT challenge_submissions_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: community_memberships community_memberships_community_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.community_memberships
    ADD CONSTRAINT community_memberships_community_id_fkey FOREIGN KEY (community_id) REFERENCES public.communities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: community_memberships community_memberships_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.community_memberships
    ADD CONSTRAINT community_memberships_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: daily_tasks daily_tasks_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.daily_tasks
    ADD CONSTRAINT daily_tasks_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discussion_comments discussion_comments_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_comments
    ADD CONSTRAINT discussion_comments_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discussion_comments discussion_comments_discussion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_comments
    ADD CONSTRAINT discussion_comments_discussion_id_fkey FOREIGN KEY (discussion_id) REFERENCES public.discussions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: discussion_likes discussion_likes_discussion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_likes
    ADD CONSTRAINT discussion_likes_discussion_id_fkey FOREIGN KEY (discussion_id) REFERENCES public.discussions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: discussion_likes discussion_likes_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussion_likes
    ADD CONSTRAINT discussion_likes_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: discussions discussions_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussions
    ADD CONSTRAINT discussions_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discussions discussions_community_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.discussions
    ADD CONSTRAINT discussions_community_id_fkey FOREIGN KEY (community_id) REFERENCES public.communities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: employer_skill_requirements employer_skill_requirements_signal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.employer_skill_requirements
    ADD CONSTRAINT employer_skill_requirements_signal_id_fkey FOREIGN KEY (signal_id) REFERENCES public.employer_skill_signals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: employer_skill_signals employer_skill_signals_employer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.employer_skill_signals
    ADD CONSTRAINT employer_skill_signals_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: event_registrations event_registrations_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.event_registrations
    ADD CONSTRAINT event_registrations_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_registrations event_registrations_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.event_registrations
    ADD CONSTRAINT event_registrations_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: events events_employer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: learning_roadmaps learning_roadmaps_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.learning_roadmaps
    ADD CONSTRAINT learning_roadmaps_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: notifications notifications_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: passport_courses passport_courses_passport_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.passport_courses
    ADD CONSTRAINT passport_courses_passport_id_fkey FOREIGN KEY (passport_id) REFERENCES public.skill_passports(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: peer_reviews peer_reviews_reviewer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.peer_reviews
    ADD CONSTRAINT peer_reviews_reviewer_id_fkey FOREIGN KEY (reviewer_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: peer_reviews peer_reviews_verification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.peer_reviews
    ADD CONSTRAINT peer_reviews_verification_id_fkey FOREIGN KEY (verification_id) REFERENCES public.skill_verifications(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quiz_attempts quiz_attempts_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.quiz_attempts
    ADD CONSTRAINT quiz_attempts_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quizzes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quiz_attempts quiz_attempts_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.quiz_attempts
    ADD CONSTRAINT quiz_attempts_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quizzes quizzes_resource_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES public.roadmap_resources(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: roadmap_resources roadmap_resources_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.roadmap_resources
    ADD CONSTRAINT roadmap_resources_step_id_fkey FOREIGN KEY (step_id) REFERENCES public.roadmap_steps(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: roadmap_steps roadmap_steps_roadmap_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.roadmap_steps
    ADD CONSTRAINT roadmap_steps_roadmap_id_fkey FOREIGN KEY (roadmap_id) REFERENCES public.learning_roadmaps(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: skill_passports skill_passports_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.skill_passports
    ADD CONSTRAINT skill_passports_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: skill_verifications skill_verifications_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.skill_verifications
    ADD CONSTRAINT skill_verifications_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: students students_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: xp_transactions xp_transactions_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: bridgeup
--

ALTER TABLE ONLY public.xp_transactions
    ADD CONSTRAINT xp_transactions_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: bridgeup
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict JyBf8JPeS7RgrLkeC0k9vLdglMsLIqw4c7vj1dcGKjUUBvn53U33FHJJkvKIVCg

