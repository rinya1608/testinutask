--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-4.pgdg110+1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-05-22 18:45:57

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
-- TOC entry 200 (class 1259 OID 2822171)
-- Name: contract; Type: TABLE; Schema: public; Owner: gtm_admin_develop
--

CREATE TABLE public.contract (
    id integer NOT NULL,
    customer_id integer,
    amount integer
);



--
-- TOC entry 201 (class 1259 OID 2822176)
-- Name: customer; Type: TABLE; Schema: public; Owner: gtm_admin_develop
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    customer_name character varying(255),
    location character varying(255)
);



--
-- TOC entry 202 (class 1259 OID 2822184)
-- Name: department; Type: TABLE; Schema: public; Owner: gtm_admin_develop
--

CREATE TABLE public.department (
    id integer NOT NULL,
    name character varying(255)
);



--
-- TOC entry 203 (class 1259 OID 2822189)
-- Name: employees; Type: TABLE; Schema: public; Owner: gtm_admin_develop
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    department_id integer,
    name character varying(255)
);



--
-- TOC entry 204 (class 1259 OID 2822194)
-- Name: executor; Type: TABLE; Schema: public; Owner: gtm_admin_develop
--

CREATE TABLE public.executor (
    tab_no integer NOT NULL,
    contract_id integer NOT NULL
);



--
-- TOC entry 3013 (class 0 OID 2822171)
-- Dependencies: 200
-- Data for Name: contract; Type: TABLE DATA; Schema: public; Owner: gtm_admin_develop
--

INSERT INTO public.contract VALUES (1, 1, 20000);
INSERT INTO public.contract VALUES (2, 2, 10000);
INSERT INTO public.contract VALUES (3, 5, 50000);
INSERT INTO public.contract VALUES (4, 7, 150000);
INSERT INTO public.contract VALUES (5, 8, 200000);
INSERT INTO public.contract VALUES (6, 9, 14000);
INSERT INTO public.contract VALUES (7, 5, 26000);
INSERT INTO public.contract VALUES (8, 4, 60000);
INSERT INTO public.contract VALUES (9, 3, 30000);
INSERT INTO public.contract VALUES (10, 1, 32000);
INSERT INTO public.contract VALUES (11, 2, 30000);
INSERT INTO public.contract VALUES (12, 8, 40000);
INSERT INTO public.contract VALUES (13, 7, 50000);
INSERT INTO public.contract VALUES (14, 9, 60000);
INSERT INTO public.contract VALUES (15, 5, 70000);
INSERT INTO public.contract VALUES (16, 4, 80000);
INSERT INTO public.contract VALUES (17, 3, 90000);
INSERT INTO public.contract VALUES (18, 4, 100000);
INSERT INTO public.contract VALUES (19, 2, 110000);
INSERT INTO public.contract VALUES (20, 1, 120000);
INSERT INTO public.contract VALUES (21, 2, 130000);
INSERT INTO public.contract VALUES (22, 7, 140000);
INSERT INTO public.contract VALUES (23, 8, 150000);
INSERT INTO public.contract VALUES (24, 9, 160000);
INSERT INTO public.contract VALUES (25, 3, 170000);


--
-- TOC entry 3014 (class 0 OID 2822176)
-- Dependencies: 201
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: gtm_admin_develop
--

INSERT INTO public.customer VALUES (1, 'Dmitry Bolshakov', 'Innopolis');
INSERT INTO public.customer VALUES (2, 'Olesya Lavrenteeva', 'Innopolis');
INSERT INTO public.customer VALUES (3, 'Anton Tarasov', 'Saratov');
INSERT INTO public.customer VALUES (4, 'Marya Chelnakova', 'Moscow');
INSERT INTO public.customer VALUES (5, 'Andrew Nilov', 'Kazan');
INSERT INTO public.customer VALUES (6, 'Dmitry Egorov', 'Moscow');
INSERT INTO public.customer VALUES (7, 'Ekaterina Fedorova', 'Moscow');
INSERT INTO public.customer VALUES (8, 'Sergey Nikonov', 'Kazan');
INSERT INTO public.customer VALUES (9, 'Alexey Lomovoi', 'Vladivostok');


--
-- TOC entry 3015 (class 0 OID 2822184)
-- Dependencies: 202
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: gtm_admin_develop
--

INSERT INTO public.department VALUES (1, 'Manufacturing');
INSERT INTO public.department VALUES (2, 'Logistic');
INSERT INTO public.department VALUES (3, 'Sales');
INSERT INTO public.department VALUES (4, 'Economy');
INSERT INTO public.department VALUES (5, 'Production');


--
-- TOC entry 3016 (class 0 OID 2822189)
-- Dependencies: 203
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: gtm_admin_develop
--

INSERT INTO public.employees VALUES (1, 1, 'Ivan Ivanov');
INSERT INTO public.employees VALUES (2, 1, 'Sidor Sidorov');
INSERT INTO public.employees VALUES (3, 2, 'Egor Egorov');
INSERT INTO public.employees VALUES (4, 3, 'Petr Petrov');
INSERT INTO public.employees VALUES (5, 4, 'Vasily Vasilev');
INSERT INTO public.employees VALUES (6, 5, 'Marina Marinina');
INSERT INTO public.employees VALUES (7, 5, 'Dmitry Dmitriev');
INSERT INTO public.employees VALUES (8, 2, 'Alex Alexeev');
INSERT INTO public.employees VALUES (9, 1, 'Olga Olgova');
INSERT INTO public.employees VALUES (10, 3, 'Olesya Olesyeva');


--
-- TOC entry 3017 (class 0 OID 2822194)
-- Dependencies: 204
-- Data for Name: executor; Type: TABLE DATA; Schema: public; Owner: gtm_admin_develop
--

INSERT INTO public.executor VALUES (1, 1);
INSERT INTO public.executor VALUES (2, 2);
INSERT INTO public.executor VALUES (3, 3);
INSERT INTO public.executor VALUES (4, 4);
INSERT INTO public.executor VALUES (5, 5);
INSERT INTO public.executor VALUES (7, 6);
INSERT INTO public.executor VALUES (2, 7);
INSERT INTO public.executor VALUES (3, 8);
INSERT INTO public.executor VALUES (5, 9);
INSERT INTO public.executor VALUES (6, 10);
INSERT INTO public.executor VALUES (7, 11);
INSERT INTO public.executor VALUES (9, 12);
INSERT INTO public.executor VALUES (10, 13);
INSERT INTO public.executor VALUES (1, 14);
INSERT INTO public.executor VALUES (2, 15);
INSERT INTO public.executor VALUES (5, 16);
INSERT INTO public.executor VALUES (2, 17);
INSERT INTO public.executor VALUES (3, 18);
INSERT INTO public.executor VALUES (7, 19);
INSERT INTO public.executor VALUES (8, 20);
INSERT INTO public.executor VALUES (5, 21);
INSERT INTO public.executor VALUES (4, 22);
INSERT INTO public.executor VALUES (3, 23);
INSERT INTO public.executor VALUES (4, 24);
INSERT INTO public.executor VALUES (5, 25);


--
-- TOC entry 2869 (class 2606 OID 2822175)
-- Name: contract PK_contract; Type: CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT "PK_contract" PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 2822183)
-- Name: customer PK_customer; Type: CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_customer" PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 2822188)
-- Name: department PK_department; Type: CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT "PK_department" PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 2822193)
-- Name: employees PK_employees; Type: CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "PK_employees" PRIMARY KEY (id);


--
-- TOC entry 2877 (class 2606 OID 2822198)
-- Name: executor PK_executor; Type: CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.executor
    ADD CONSTRAINT "PK_executor" PRIMARY KEY (tab_no, contract_id);


--
-- TOC entry 2878 (class 1259 OID 2822199)
-- Name: sqlite_autoindex_executor_1; Type: INDEX; Schema: public; Owner: gtm_admin_develop
--

CREATE UNIQUE INDEX sqlite_autoindex_executor_1 ON public.executor USING btree (tab_no, contract_id);


--
-- TOC entry 2882 (class 2606 OID 2822225)
-- Name: executor contract_fk; Type: FK CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.executor
    ADD CONSTRAINT contract_fk FOREIGN KEY (contract_id) REFERENCES public.contract(id);


--
-- TOC entry 2879 (class 2606 OID 2822230)
-- Name: contract contract_fk; Type: FK CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_fk FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- TOC entry 2880 (class 2606 OID 2822210)
-- Name: employees employees_fk; Type: FK CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_fk FOREIGN KEY (department_id) REFERENCES public.department(id);


--
-- TOC entry 2881 (class 2606 OID 2822220)
-- Name: executor executor_fk; Type: FK CONSTRAINT; Schema: public; Owner: gtm_admin_develop
--

ALTER TABLE ONLY public.executor
    ADD CONSTRAINT executor_fk FOREIGN KEY (tab_no) REFERENCES public.employees(id);


-- Completed on 2023-05-22 18:46:00

--
-- PostgreSQL database dump complete
--

