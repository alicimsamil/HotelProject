PGDMP                 
        z            hotel    14.2    14.2 ]    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    16396    hotel    DATABASE     b   CREATE DATABASE hotel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hotel;
                root    false            ?            1259    16468    bill    TABLE     ?   CREATE TABLE public.bill (
    id integer NOT NULL,
    customerid integer,
    date timestamp without time zone,
    total double precision NOT NULL
);
    DROP TABLE public.bill;
       public         heap    postgres    false            J           0    0 
   TABLE bill    ACL     (   GRANT ALL ON TABLE public.bill TO root;
          public          postgres    false    218            ?            1259    16467    bill_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.bill_id_seq;
       public          postgres    false    218            K           0    0    bill_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.bill_id_seq OWNED BY public.bill.id;
          public          postgres    false    217            L           0    0    SEQUENCE bill_id_seq    ACL     ;   GRANT SELECT,USAGE ON SEQUENCE public.bill_id_seq TO root;
          public          postgres    false    217            ?            1259    16432    customer    TABLE     $  CREATE TABLE public.customer (
    id integer NOT NULL,
    name character varying(75) NOT NULL,
    surname character varying(25) NOT NULL,
    phonenumber numeric NOT NULL,
    customerlogin timestamp without time zone,
    customerexit timestamp without time zone,
    "RoomID" integer
);
    DROP TABLE public.customer;
       public         heap    postgres    false            M           0    0    TABLE customer    ACL     ,   GRANT ALL ON TABLE public.customer TO root;
          public          postgres    false    214            ?            1259    16431    customer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    214            N           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    213            O           0    0    SEQUENCE customer_id_seq    ACL     ?   GRANT SELECT,USAGE ON SEQUENCE public.customer_id_seq TO root;
          public          postgres    false    213            ?            1259    16497    customermalfunction    TABLE     x   CREATE TABLE public.customermalfunction (
    id integer NOT NULL,
    malfunctionid integer,
    customerid integer
);
 '   DROP TABLE public.customermalfunction;
       public         heap    postgres    false            P           0    0    TABLE customermalfunction    ACL     7   GRANT ALL ON TABLE public.customermalfunction TO root;
          public          postgres    false    222            ?            1259    16496    customermalfunction_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customermalfunction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.customermalfunction_id_seq;
       public          postgres    false    222            Q           0    0    customermalfunction_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.customermalfunction_id_seq OWNED BY public.customermalfunction.id;
          public          postgres    false    221            R           0    0 #   SEQUENCE customermalfunction_id_seq    ACL     J   GRANT SELECT,USAGE ON SEQUENCE public.customermalfunction_id_seq TO root;
          public          postgres    false    221            ?            1259    16398    malfunction    TABLE     ?   CREATE TABLE public.malfunction (
    id integer NOT NULL,
    name character varying(75) NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.malfunction;
       public         heap    postgres    false            S           0    0    TABLE malfunction    ACL     /   GRANT ALL ON TABLE public.malfunction TO root;
          public          postgres    false    210            ?            1259    16397    malfunction_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.malfunction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.malfunction_id_seq;
       public          postgres    false    210            T           0    0    malfunction_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.malfunction_id_seq OWNED BY public.malfunction.id;
          public          postgres    false    209            U           0    0    SEQUENCE malfunction_id_seq    ACL     B   GRANT SELECT,USAGE ON SEQUENCE public.malfunction_id_seq TO root;
          public          postgres    false    209            ?            1259    16514    menu    TABLE     ?   CREATE TABLE public.menu (
    id integer NOT NULL,
    food character varying(50) NOT NULL,
    drink character varying(50) NOT NULL,
    desserts character varying(50) NOT NULL
);
    DROP TABLE public.menu;
       public         heap    postgres    false            V           0    0 
   TABLE menu    ACL     ?   REVOKE ALL ON TABLE public.menu FROM postgres;
GRANT ALL ON TABLE public.menu TO root WITH GRANT OPTION;
GRANT ALL ON TABLE public.menu TO postgres WITH GRANT OPTION;
          public          postgres    false    224            ?            1259    16513    menu_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.menu_id_seq;
       public          postgres    false    224            W           0    0    menu_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;
          public          postgres    false    223            X           0    0    SEQUENCE menu_id_seq    ACL     ;   GRANT SELECT,USAGE ON SEQUENCE public.menu_id_seq TO root;
          public          postgres    false    223            ?            1259    16456    payment    TABLE     ?   CREATE TABLE public.payment (
    id integer NOT NULL,
    paymenttype character varying(25) NOT NULL,
    amountpayment double precision NOT NULL,
    paymentdate timestamp without time zone,
    "CustomerID" integer
);
    DROP TABLE public.payment;
       public         heap    postgres    false            Y           0    0    TABLE payment    ACL     +   GRANT ALL ON TABLE public.payment TO root;
          public          postgres    false    216            ?            1259    16455    payment_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.payment_id_seq;
       public          postgres    false    216            Z           0    0    payment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.payment_id_seq OWNED BY public.payment.id;
          public          postgres    false    215            [           0    0    SEQUENCE payment_id_seq    ACL     >   GRANT SELECT,USAGE ON SEQUENCE public.payment_id_seq TO root;
          public          postgres    false    215            ?            1259    16405    room    TABLE     ?   CREATE TABLE public.room (
    id integer NOT NULL,
    roomno integer NOT NULL,
    bednumber integer NOT NULL,
    location character varying(25) NOT NULL,
    isfull boolean NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false            \           0    0 
   TABLE room    ACL     (   GRANT ALL ON TABLE public.room TO root;
          public          postgres    false    212            ?            1259    16404    room_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public          postgres    false    212            ]           0    0    room_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;
          public          postgres    false    211            ^           0    0    SEQUENCE room_id_seq    ACL     ;   GRANT SELECT,USAGE ON SEQUENCE public.room_id_seq TO root;
          public          postgres    false    211            ?            1259    16480    roommalfunction    TABLE     p   CREATE TABLE public.roommalfunction (
    id integer NOT NULL,
    roomid integer,
    malfunctionid integer
);
 #   DROP TABLE public.roommalfunction;
       public         heap    postgres    false            _           0    0    TABLE roommalfunction    ACL     3   GRANT ALL ON TABLE public.roommalfunction TO root;
          public          postgres    false    220            ?            1259    16479    roommalfunction_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.roommalfunction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.roommalfunction_id_seq;
       public          postgres    false    220            `           0    0    roommalfunction_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.roommalfunction_id_seq OWNED BY public.roommalfunction.id;
          public          postgres    false    219            a           0    0    SEQUENCE roommalfunction_id_seq    ACL     F   GRANT SELECT,USAGE ON SEQUENCE public.roommalfunction_id_seq TO root;
          public          postgres    false    219            ?            1259    16521    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    menuid integer,
    name character varying(75) NOT NULL,
    surname character varying(50) NOT NULL,
    password character varying(75) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            b           0    0    TABLE users    ACL     )   GRANT ALL ON TABLE public.users TO root;
          public          postgres    false    226            ?            1259    16520    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    226            c           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    225            d           0    0    SEQUENCE users_id_seq    ACL     <   GRANT SELECT,USAGE ON SEQUENCE public.users_id_seq TO root;
          public          postgres    false    225            ?           2604    16471    bill id    DEFAULT     b   ALTER TABLE ONLY public.bill ALTER COLUMN id SET DEFAULT nextval('public.bill_id_seq'::regclass);
 6   ALTER TABLE public.bill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    16435    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            ?           2604    16500    customermalfunction id    DEFAULT     ?   ALTER TABLE ONLY public.customermalfunction ALTER COLUMN id SET DEFAULT nextval('public.customermalfunction_id_seq'::regclass);
 E   ALTER TABLE public.customermalfunction ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    16401    malfunction id    DEFAULT     p   ALTER TABLE ONLY public.malfunction ALTER COLUMN id SET DEFAULT nextval('public.malfunction_id_seq'::regclass);
 =   ALTER TABLE public.malfunction ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    16517    menu id    DEFAULT     b   ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);
 6   ALTER TABLE public.menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    16459 
   payment id    DEFAULT     h   ALTER TABLE ONLY public.payment ALTER COLUMN id SET DEFAULT nextval('public.payment_id_seq'::regclass);
 9   ALTER TABLE public.payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    16408    room id    DEFAULT     b   ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    16483    roommalfunction id    DEFAULT     x   ALTER TABLE ONLY public.roommalfunction ALTER COLUMN id SET DEFAULT nextval('public.roommalfunction_id_seq'::regclass);
 A   ALTER TABLE public.roommalfunction ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    16524    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ;          0    16468    bill 
   TABLE DATA           ;   COPY public.bill (id, customerid, date, total) FROM stdin;
    public          postgres    false    218   2a       7          0    16432    customer 
   TABLE DATA           i   COPY public.customer (id, name, surname, phonenumber, customerlogin, customerexit, "RoomID") FROM stdin;
    public          postgres    false    214   Oa       ?          0    16497    customermalfunction 
   TABLE DATA           L   COPY public.customermalfunction (id, malfunctionid, customerid) FROM stdin;
    public          postgres    false    222   la       3          0    16398    malfunction 
   TABLE DATA           5   COPY public.malfunction (id, name, date) FROM stdin;
    public          postgres    false    210   ?a       A          0    16514    menu 
   TABLE DATA           9   COPY public.menu (id, food, drink, desserts) FROM stdin;
    public          postgres    false    224   ?a       9          0    16456    payment 
   TABLE DATA           \   COPY public.payment (id, paymenttype, amountpayment, paymentdate, "CustomerID") FROM stdin;
    public          postgres    false    216   ?a       5          0    16405    room 
   TABLE DATA           G   COPY public.room (id, roomno, bednumber, location, isfull) FROM stdin;
    public          postgres    false    212   b       =          0    16480    roommalfunction 
   TABLE DATA           D   COPY public.roommalfunction (id, roomid, malfunctionid) FROM stdin;
    public          postgres    false    220   =b       C          0    16521    users 
   TABLE DATA           D   COPY public.users (id, menuid, name, surname, password) FROM stdin;
    public          postgres    false    226   Zb       e           0    0    bill_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.bill_id_seq', 3, true);
          public          postgres    false    217            f           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    213            g           0    0    customermalfunction_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.customermalfunction_id_seq', 1, false);
          public          postgres    false    221            h           0    0    malfunction_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.malfunction_id_seq', 1, false);
          public          postgres    false    209            i           0    0    menu_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.menu_id_seq', 5, true);
          public          postgres    false    223            j           0    0    payment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payment_id_seq', 1, false);
          public          postgres    false    215            k           0    0    room_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.room_id_seq', 3, true);
          public          postgres    false    211            l           0    0    roommalfunction_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.roommalfunction_id_seq', 1, false);
          public          postgres    false    219            m           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    225            ?           2606    16473    bill bill_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_pkey;
       public            postgres    false    218            ?           2606    16439    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    214            ?           2606    16502 ,   customermalfunction customermalfunction_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.customermalfunction
    ADD CONSTRAINT customermalfunction_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.customermalfunction DROP CONSTRAINT customermalfunction_pkey;
       public            postgres    false    222            ?           2606    16403    malfunction malfunction_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.malfunction
    ADD CONSTRAINT malfunction_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.malfunction DROP CONSTRAINT malfunction_pkey;
       public            postgres    false    210            ?           2606    16519    menu menu_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    224            ?           2606    16461    payment payment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    216            ?           2606    16412    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    212            ?           2606    16485 $   roommalfunction roommalfunction_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.roommalfunction
    ADD CONSTRAINT roommalfunction_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.roommalfunction DROP CONSTRAINT roommalfunction_pkey;
       public            postgres    false    220            ?           2606    16526    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    226            ?           2606    16462    payment CustomerID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "CustomerID" FOREIGN KEY ("CustomerID") REFERENCES public.customer(id) NOT VALID;
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT "CustomerID";
       public          postgres    false    216    3218    214            ?           2606    16508    customermalfunction CustomerID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customermalfunction
    ADD CONSTRAINT "CustomerID" FOREIGN KEY (customerid) REFERENCES public.customer(id) NOT VALID;
 J   ALTER TABLE ONLY public.customermalfunction DROP CONSTRAINT "CustomerID";
       public          postgres    false    3218    222    214            ?           2606    16540    bill CustomerID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT "CustomerID" FOREIGN KEY (customerid) REFERENCES public.customer(id) NOT VALID;
 ;   ALTER TABLE ONLY public.bill DROP CONSTRAINT "CustomerID";
       public          postgres    false    3218    218    214            ?           2606    16491    roommalfunction MalfunctionID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.roommalfunction
    ADD CONSTRAINT "MalfunctionID" FOREIGN KEY (malfunctionid) REFERENCES public.malfunction(id) NOT VALID;
 I   ALTER TABLE ONLY public.roommalfunction DROP CONSTRAINT "MalfunctionID";
       public          postgres    false    210    3214    220            ?           2606    16503 !   customermalfunction MalfunctionID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.customermalfunction
    ADD CONSTRAINT "MalfunctionID" FOREIGN KEY (malfunctionid) REFERENCES public.malfunction(id) NOT VALID;
 M   ALTER TABLE ONLY public.customermalfunction DROP CONSTRAINT "MalfunctionID";
       public          postgres    false    222    3214    210            ?           2606    16527    users MenuID    FK CONSTRAINT     u   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "MenuID" FOREIGN KEY (menuid) REFERENCES public.menu(id) NOT VALID;
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT "MenuID";
       public          postgres    false    224    3228    226            ?           2606    16440    customer RoomID    FK CONSTRAINT     z   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "RoomID" FOREIGN KEY ("RoomID") REFERENCES public.room(id) NOT VALID;
 ;   ALTER TABLE ONLY public.customer DROP CONSTRAINT "RoomID";
       public          postgres    false    3216    212    214            ?           2606    16486    roommalfunction RoomID    FK CONSTRAINT        ALTER TABLE ONLY public.roommalfunction
    ADD CONSTRAINT "RoomID" FOREIGN KEY (roomid) REFERENCES public.room(id) NOT VALID;
 B   ALTER TABLE ONLY public.roommalfunction DROP CONSTRAINT "RoomID";
       public          postgres    false    3216    212    220            ;      x?????? ? ?      7      x?????? ? ?      ?      x?????? ? ?      3      x?????? ? ?      A   4   x?3?L:??(5?????JΤ???ĲD.c?D?2?L,N"N(? ?=... L?i      9      x?????? ? ?      5   &   x?3?4?4?L-K-?,?2?4?4??/?M??b???? s??      =      x?????? ? ?      C      x?????? ? ?     