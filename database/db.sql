PGDMP                         x            timeTableGeneration    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25282    timeTableGeneration    DATABASE     �   CREATE DATABASE "timeTableGeneration" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
 %   DROP DATABASE "timeTableGeneration";
                postgres    false            �            1259    25283 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25286    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    202            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    25288    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25291    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    204            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    25293    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25296    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    25298 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25304    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25307    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210            �            1259    25309    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    25311    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25314 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    213            �            1259    25316    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25323    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    215            �            1259    25325    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25328    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    25330    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25336    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    218            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    219            �            1259    25338    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25344    mainapp_classtimetable    TABLE     �   CREATE TABLE public.mainapp_classtimetable (
    id integer NOT NULL,
    day text NOT NULL,
    period integer NOT NULL,
    "classId" text NOT NULL,
    "staffId_id" text NOT NULL,
    "subCode_id" text NOT NULL
);
 *   DROP TABLE public.mainapp_classtimetable;
       public         heap    postgres    false            �            1259    25350    mainapp_classtimetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mainapp_classtimetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.mainapp_classtimetable_id_seq;
       public          postgres    false    221            �           0    0    mainapp_classtimetable_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.mainapp_classtimetable_id_seq OWNED BY public.mainapp_classtimetable.id;
          public          postgres    false    222            �            1259    25352    mainapp_staffdetails    TABLE     g   CREATE TABLE public.mainapp_staffdetails (
    "staffId" text NOT NULL,
    "subName" text NOT NULL
);
 (   DROP TABLE public.mainapp_staffdetails;
       public         heap    postgres    false            �            1259    25358    mainapp_stafftimetable    TABLE     �   CREATE TABLE public.mainapp_stafftimetable (
    id integer NOT NULL,
    day text NOT NULL,
    period integer NOT NULL,
    "classId" text NOT NULL,
    "staffId_id" text NOT NULL,
    "subCode_id" text NOT NULL
);
 *   DROP TABLE public.mainapp_stafftimetable;
       public         heap    postgres    false            �            1259    25364    mainapp_stafftimetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mainapp_stafftimetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.mainapp_stafftimetable_id_seq;
       public          postgres    false    224            �           0    0    mainapp_stafftimetable_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.mainapp_stafftimetable_id_seq OWNED BY public.mainapp_stafftimetable.id;
          public          postgres    false    225            �            1259    25366    mainapp_subjecttable    TABLE     �   CREATE TABLE public.mainapp_subjecttable (
    "subCode" text NOT NULL,
    "subName" text NOT NULL,
    semester integer NOT NULL,
    "isLab" boolean NOT NULL
);
 (   DROP TABLE public.mainapp_subjecttable;
       public         heap    postgres    false            �
           2604    25372    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    25373    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    25374    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    25375    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    208            �
           2604    25376    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    25377    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    25378    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    25379    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    25380    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    25381    mainapp_classtimetable id    DEFAULT     �   ALTER TABLE ONLY public.mainapp_classtimetable ALTER COLUMN id SET DEFAULT nextval('public.mainapp_classtimetable_id_seq'::regclass);
 H   ALTER TABLE public.mainapp_classtimetable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �
           2604    25382    mainapp_stafftimetable id    DEFAULT     �   ALTER TABLE ONLY public.mainapp_stafftimetable ALTER COLUMN id SET DEFAULT nextval('public.mainapp_stafftimetable_id_seq'::regclass);
 H   ALTER TABLE public.mainapp_stafftimetable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �          0    25283 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    202   �       �          0    25288    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    204   �       �          0    25293    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   ,�       �          0    25298 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   �       �          0    25304    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   ��       �          0    25311    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   ö       �          0    25316    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   �       �          0    25325    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   ��       �          0    25330    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   ��       �          0    25338    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   9�       �          0    25344    mainapp_classtimetable 
   TABLE DATA           h   COPY public.mainapp_classtimetable (id, day, period, "classId", "staffId_id", "subCode_id") FROM stdin;
    public          postgres    false    221   ��       �          0    25352    mainapp_staffdetails 
   TABLE DATA           D   COPY public.mainapp_staffdetails ("staffId", "subName") FROM stdin;
    public          postgres    false    223   ��       �          0    25358    mainapp_stafftimetable 
   TABLE DATA           h   COPY public.mainapp_stafftimetable (id, day, period, "classId", "staffId_id", "subCode_id") FROM stdin;
    public          postgres    false    224   k�       �          0    25366    mainapp_subjecttable 
   TABLE DATA           W   COPY public.mainapp_subjecttable ("subCode", "subName", semester, "isLab") FROM stdin;
    public          postgres    false    226   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 226, true);
          public          postgres    false    215            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    217            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    219            �           0    0    mainapp_classtimetable_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.mainapp_classtimetable_id_seq', 1, false);
          public          postgres    false    222            �           0    0    mainapp_stafftimetable_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.mainapp_stafftimetable_id_seq', 69, true);
          public          postgres    false    225            �
           2606    25384    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    202            �
           2606    25386 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    204    204            �
           2606    25388 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    204            �
           2606    25390    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    202            �
           2606    25392 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            �
           2606    25394 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            �
           2606    25396 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            �
           2606    25398 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            �
           2606    25400    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208            �
           2606    25402 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            �
           2606    25404 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212            �
           2606    25406     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208            �
           2606    25408 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    214                       2606    25410 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216                       2606    25412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216                       2606    25414 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    218                       2606    25416 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220                       2606    25418 2   mainapp_classtimetable mainapp_classtimetable_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.mainapp_classtimetable
    ADD CONSTRAINT mainapp_classtimetable_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.mainapp_classtimetable DROP CONSTRAINT mainapp_classtimetable_pkey;
       public            postgres    false    221                       2606    25420 .   mainapp_staffdetails mainapp_staffdetails_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mainapp_staffdetails
    ADD CONSTRAINT mainapp_staffdetails_pkey PRIMARY KEY ("staffId");
 X   ALTER TABLE ONLY public.mainapp_staffdetails DROP CONSTRAINT mainapp_staffdetails_pkey;
       public            postgres    false    223                       2606    25422 2   mainapp_stafftimetable mainapp_stafftimetable_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.mainapp_stafftimetable
    ADD CONSTRAINT mainapp_stafftimetable_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.mainapp_stafftimetable DROP CONSTRAINT mainapp_stafftimetable_pkey;
       public            postgres    false    224                       2606    25424 .   mainapp_subjecttable mainapp_subjecttable_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mainapp_subjecttable
    ADD CONSTRAINT mainapp_subjecttable_pkey PRIMARY KEY ("subCode");
 X   ALTER TABLE ONLY public.mainapp_subjecttable DROP CONSTRAINT mainapp_subjecttable_pkey;
       public            postgres    false    226            �
           1259    25425    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    202            �
           1259    25426 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    204            �
           1259    25427 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    204            �
           1259    25428 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            �
           1259    25429 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            �
           1259    25430 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            �
           1259    25431 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            �
           1259    25432 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212            �
           1259    25433     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            �
           1259    25434 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    214            �
           1259    25435 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    214                       1259    25436 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            	           1259    25437 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220                       1259    25438 *   mainapp_classtimetable_staffId_id_f9da3a83    INDEX     w   CREATE INDEX "mainapp_classtimetable_staffId_id_f9da3a83" ON public.mainapp_classtimetable USING btree ("staffId_id");
 @   DROP INDEX public."mainapp_classtimetable_staffId_id_f9da3a83";
       public            postgres    false    221                       1259    25439 /   mainapp_classtimetable_staffId_id_f9da3a83_like    INDEX     �   CREATE INDEX "mainapp_classtimetable_staffId_id_f9da3a83_like" ON public.mainapp_classtimetable USING btree ("staffId_id" text_pattern_ops);
 E   DROP INDEX public."mainapp_classtimetable_staffId_id_f9da3a83_like";
       public            postgres    false    221                       1259    25440 *   mainapp_classtimetable_subCode_id_a6a3b684    INDEX     w   CREATE INDEX "mainapp_classtimetable_subCode_id_a6a3b684" ON public.mainapp_classtimetable USING btree ("subCode_id");
 @   DROP INDEX public."mainapp_classtimetable_subCode_id_a6a3b684";
       public            postgres    false    221                       1259    25441 /   mainapp_classtimetable_subCode_id_a6a3b684_like    INDEX     �   CREATE INDEX "mainapp_classtimetable_subCode_id_a6a3b684_like" ON public.mainapp_classtimetable USING btree ("subCode_id" text_pattern_ops);
 E   DROP INDEX public."mainapp_classtimetable_subCode_id_a6a3b684_like";
       public            postgres    false    221                       1259    25442 *   mainapp_staffdetails_staffId_db1c714f_like    INDEX     �   CREATE INDEX "mainapp_staffdetails_staffId_db1c714f_like" ON public.mainapp_staffdetails USING btree ("staffId" text_pattern_ops);
 @   DROP INDEX public."mainapp_staffdetails_staffId_db1c714f_like";
       public            postgres    false    223                       1259    25443 *   mainapp_stafftimetable_staffId_id_8b71536d    INDEX     w   CREATE INDEX "mainapp_stafftimetable_staffId_id_8b71536d" ON public.mainapp_stafftimetable USING btree ("staffId_id");
 @   DROP INDEX public."mainapp_stafftimetable_staffId_id_8b71536d";
       public            postgres    false    224                       1259    25444 /   mainapp_stafftimetable_staffId_id_8b71536d_like    INDEX     �   CREATE INDEX "mainapp_stafftimetable_staffId_id_8b71536d_like" ON public.mainapp_stafftimetable USING btree ("staffId_id" text_pattern_ops);
 E   DROP INDEX public."mainapp_stafftimetable_staffId_id_8b71536d_like";
       public            postgres    false    224                       1259    25445 *   mainapp_stafftimetable_subCode_id_c1e5ed6f    INDEX     w   CREATE INDEX "mainapp_stafftimetable_subCode_id_c1e5ed6f" ON public.mainapp_stafftimetable USING btree ("subCode_id");
 @   DROP INDEX public."mainapp_stafftimetable_subCode_id_c1e5ed6f";
       public            postgres    false    224                       1259    25446 /   mainapp_stafftimetable_subCode_id_c1e5ed6f_like    INDEX     �   CREATE INDEX "mainapp_stafftimetable_subCode_id_c1e5ed6f_like" ON public.mainapp_stafftimetable USING btree ("subCode_id" text_pattern_ops);
 E   DROP INDEX public."mainapp_stafftimetable_subCode_id_c1e5ed6f_like";
       public            postgres    false    224                       1259    25447 *   mainapp_subjecttable_subCode_d03704aa_like    INDEX     �   CREATE INDEX "mainapp_subjecttable_subCode_d03704aa_like" ON public.mainapp_subjecttable USING btree ("subCode" text_pattern_ops);
 @   DROP INDEX public."mainapp_subjecttable_subCode_d03704aa_like";
       public            postgres    false    226                       2606    25448 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    204    2794    206                       2606    25453 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    204    202    2783                       2606    25458 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    206    216    2819                       2606    25463 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    202    2783                        2606    25468 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    208    2796            !           2606    25473 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    212    206    2794            "           2606    25478 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2796    212    208            #           2606    25483 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    216    2819    214            $           2606    25488 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    214    208    2796            %           2606    25493 L   mainapp_classtimetable mainapp_classtimetab_staffId_id_f9da3a83_fk_mainapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_classtimetable
    ADD CONSTRAINT "mainapp_classtimetab_staffId_id_f9da3a83_fk_mainapp_s" FOREIGN KEY ("staffId_id") REFERENCES public.mainapp_staffdetails("staffId") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.mainapp_classtimetable DROP CONSTRAINT "mainapp_classtimetab_staffId_id_f9da3a83_fk_mainapp_s";
       public          postgres    false    223    221    2833            &           2606    25498 L   mainapp_classtimetable mainapp_classtimetab_subCode_id_a6a3b684_fk_mainapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_classtimetable
    ADD CONSTRAINT "mainapp_classtimetab_subCode_id_a6a3b684_fk_mainapp_s" FOREIGN KEY ("subCode_id") REFERENCES public.mainapp_subjecttable("subCode") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.mainapp_classtimetable DROP CONSTRAINT "mainapp_classtimetab_subCode_id_a6a3b684_fk_mainapp_s";
       public          postgres    false    2842    226    221            '           2606    25503 L   mainapp_stafftimetable mainapp_stafftimetab_staffId_id_8b71536d_fk_mainapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_stafftimetable
    ADD CONSTRAINT "mainapp_stafftimetab_staffId_id_8b71536d_fk_mainapp_s" FOREIGN KEY ("staffId_id") REFERENCES public.mainapp_staffdetails("staffId") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.mainapp_stafftimetable DROP CONSTRAINT "mainapp_stafftimetab_staffId_id_8b71536d_fk_mainapp_s";
       public          postgres    false    2833    224    223            (           2606    25508 L   mainapp_stafftimetable mainapp_stafftimetab_subCode_id_c1e5ed6f_fk_mainapp_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainapp_stafftimetable
    ADD CONSTRAINT "mainapp_stafftimetab_subCode_id_c1e5ed6f_fk_mainapp_s" FOREIGN KEY ("subCode_id") REFERENCES public.mainapp_subjecttable("subCode") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.mainapp_stafftimetable DROP CONSTRAINT "mainapp_stafftimetab_subCode_id_c1e5ed6f_fk_mainapp_s";
       public          postgres    false    224    2842    226            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����L���k M�TZԄM��Zǉ��]㜏�1��4ca��b�����T�Z�_�����mƫT(Xx���% {�'��@P���v����Ө*P�� ю�[�'Xd�	���'��<=�A�����}�B��NAD*R� X�v��Ϊ��S�?w�� ��t�� tt6n��as�N>M�_�V��ݪ��Vt��"�B��s��G?�W��h�l���]�@W���L�x턡^��['�B/�ys�,��M?8�^kK��=ǣ�H�W�'��H����A\�4�q������q�j�CJ����^$�|�h/l\r>������7�����b�ym����X���`�.o�Q7X�M�`���	Fs�����7�8�YNN�\U�k���I����Ç���G�      �   �   x�%�K�@����+\����f���j��!C��c��<��,��w��䥊�0n`��)�Wi�U���:Mh_��������U�w.��0*t�x�衊��A��� tL=%���#�0�P�6�EM�UC���T�Z��5���Bp3�,��\�9g�=-M��R�1y      �      x������ � �      �      x������ � �      �   
  x����o7ǟ��B�K�Ǚ�O�)��8��R]�>8�\S�.�ׇ���~Cjw�K.+m0C�|Dq�3��x�
ե��`VHk�Ju�+��/ʬI]���]\�zA���+pk�k��7������ �����|z~���r����߿���H㚠�x��Ň��)mi����Pl��|���A�dt��`���(��Wr�Z��i�lc<9�����#��?�����㇗�_>�=��������!�su>?�|�] ���<����<�*If��N�3q��jf�a�5�Bg!�Ѩx6w`G�YX��z�H���A�zm��U� Ќ��7�0?�J�6
߂UF�������<�r�6�D���7�����<�����u�k��Xf��'��`��;"��ς�J7�)�9�9���b�+%͖�vF�q86%�fG�����]ϒ֓!h��9����bFc�1��sJ!3����C=�X��1���Aw�pav�r?*�� ~����|��I����=��� �л�wr?O�t��1;k0��������*�ڈ��ސ��vo@�y�T�~��2ہv�옃��sB���V�ҔC��rH��F�-�<J�4ˈâ�c��Ú���&!/J�`&$��<�j��;�f��,�~��k�!����� ��y�)A�U1��d����<��$�	h�1ig\��I�&��A`�d�v��~�T��G�Y�P���f�}���>�v�W�5���m�y��J����.�F�Y���8r����b��(k��y��1�L��>(N;��޼?�ġo��>@�2�����%/���J�{�ҭuF~���H7�)U����.�x���sJ�3��r���xH�yN)y�8;�0�h��<��<� pN�)����s?O*%�$r�5�2�1���ϓJ�3��H������ϒL)w�)�p�!=!��ϓ*e�u�$�0��{�s?O*���n�]� ���mj5�E@)jL�:�%ӳyxH�A(�I��y5��W��5��y��KG�Xn�RkJ	3�#���Gs��O�A(���C���a&��oRkJ�"�AĒ�d������R�L���[D�0���ש�l)Q�k����aE}}{�Z�PJ�	�.��w�=�ݻ���J�n���!����UjB�ɘ?q�P�����Z�Piү�C5�'�0����5�&Cx����۫��R��k�8I6�`���O�A(5I�?CD�W���R�L�y��4��pwH�A(5I:.z���~Þ���+5��	%ڿ�O�A(5I&&��J⺿ݤְ/��b��f����&��T$�8�3�<�����R���<Z~2�����R�L �9�����!��Rd1L ����Sk*E����1N���ݥ� T�b:^+�,��\=�� ���*n>5z+zz|�Mj�?(�]���|@�"���r@d�Z����V�~z�����_W���6D��/�,Nǵw՟m�n�r���bL�x_�iEq'!4��mOB���u�k��!k8I1�xG����:)�&W��G��y��^�'����/�L{��sb4�9���I��՗N�W�Ͽ�'qh�	j�c��:�A���|*�1�Z���cNv��N�x ��N�y�c�������s���2{0���1�]���/��y�y~�*�1�={T>$sr0�A	 	2��4��Sx�?<"�	��WG�W�OAa䔖=�<鯫��y*��T�j���,��<�wmJ�:�W��J[AaX<@jP}�}��P�M9z��ѝ�1�G=D<�����S ���=�F���O
Լ�
��#�����z9�B<��y�O1'C%�����sT}�"���(D��6���H���u�Wv4�R����Aȼ�?��bI���T� �$��F�1�R�=��:g<����N����� �3�R��=8�Qg�����rĦ���R�=�T�ڟ��8��iw΀�&N~��Ɔ��89]��(�&�ˀ�P46M�i�p�#ilH�������464��G��hl(Z�Q�ɼ�!h��˅����z�ɟ�4Ĭ��a͡��:�����$��t5��??�S�򁲒y7۟,��q����鿟^]��'
\�?=�
\�t�6w������y��B��ɱ�Ʉ�c����6���y�Bi�p4�$��;�%+��"��d_��u,+�8�E�-$��̳�it��)Bj��Z�d:�ʝ���_W����/�(�!^r�`N�$y�y�~��`��ft�{��H^]�n&�~S�!���XN��B�"�AӺ��zt�X��m�C���|zQ��m�KɖSyEy�em�XW��[kGzl=*��#z[��ڗ��M�+������BiRt7ؚJ�!�ZY���
<�ҝq�/ӂ)uM*�I���d��,`�R�L �D���?"�o,�H#��L�es�����~�o,K�J�{�����o!�T3sy9���M���:���R��҆:��t�>�-�^���9��u<E�<��[jRi'rbYz�`�=L�٤Fo����{K����ra�XV��x(���x���߲���i������y���>����h��}�1�Ք�K�~�7T~@��#��\����Kw�*�]�`��g��[���-B�k�����ͰE��u*7���V��ܥ��ז���c�i�Ir�.ڤT�s>�"�sdW���k NM���3�Ӻrp���e�EG�Ӛ���ңS��tR�)����m��(>��RŶ�����i.��R��������<�:��̾N��Y���1�J,�7�f)<�Rɱ���C���fZ�.֥Zca0υ�o���2��R��*aG^I9��.�-�B5�z
��E>W�b �8��R�&]�Ɠ5��Mm!��9��:ց���!�-�>`L\͜獓������+1��/��oަ��\������9P��Ŀ��ʁL�#q���>�YȮ\��k<މi��l�5�wb���ژ�{烜�DA��ò��Gڸ�9�'2��A"T^w���s�-JtŶ��֌����j�������N��G��b[��і�]�;*��ŶRo���Im���]l+}���5��Z{��4��:?��R�/�3
M�>�qu~�@,g�--��X�;�%���,���B,+=�d:C��m�ׯR[�rT��B��dHE�f�Im!��b�������lnw�o!��iH�ouܰ6���S[H�Tb9��LTR�o���-$Wq=�F�='O��).���W\��Y����r
}���k>�k��	R��K�_����D���������𷛻�����oU~�UCap�B�q���� �D�ؑ��]l�a[X�Bx���%�s�r|��ې��ʗ����j�8`b�_M[۰գ�&�G�e%�ޒ]{2byAC,+���^���yED,+��|g/�K�ؿ#VR�/"u!`���z����<�-�Y������\�0V���x	5y�(�h�S�U"�a�J�d����MԨ��V�Q�*�+H]|�-�K'������	�RgϠ���J�! ����{�I?c~*�a��W��������ƏF���݋/�v�v      �   �   x�U�K�0D��a��.l��-F�)v�=��v3��u@c�>��,x ����%����Ƕ�%Ռ�V�r�\���lɬ�Ϡ��ux�@)gP�i�H��u���dgF�g���M7����yR��}��/�HQ      �   �  x����n� E�������K�e�#�P�6�U���#����}����b�]����}��Cap�K�A�#����.��9�\�?�_(:��,��8$0fB���mt�qJJ�.)�����;;�/y
�v��h��o�ar�59?��`z�~zw�6�p
q�*N��G�Le���h�i\*JM6�̐l�ن�Ÿ�"`4�0ة�_��U��T��[b^�h�pȑX�z_���3h]3�9�0���J��a�3f01���	�a�JiY+�q㈬���Bs��X��c4����[we����f��Q�0�M���m0ڀj�ӁsM�V�	�5��a�W4J4g��+�B�_�ߑҢR4�eζ,��ߟ��BS7���5��<���g�u�A�E[�r���W���t:�v9[�      �   w  x���n�0���)�W �;8�,�fՎ@@~4��? ���tT�ST��ٜ�s���.���/��E�{o�Gs�ְ���E¦�7��h�T�Wj9���q"��Yw�Ek�,�4!�q���Z��\?tV�<e��L��k�3/{�J����d��s�=
���N��RCd2�J~��=]�Tk������>���ބ�T
��sUD[1��FK�#Y�!��Xl���]n�jg|�DqB�X1�^�_/� ���vs�[���xE��hbw�ԜHsWe���i�֝R��^�?���a4�l��М�(��G-�LFے�6I�p.X^_+ڧ�3?��|3d� ���}KÜQ�ߟ�d2�$d8#      �      x������ � �      �   ~  x�5QKn�0]{N1'�dɑ!��@�d3����L:��@Y��^N�]��yVJ�ԂUȋ#T��Һ ��Q �a�?������ckG<&�f427~�꣌���	�hg���a�;4�#[ϛ��i��6�<��l
&�@�zYhi
{8�ԮIx�UL�	9�8x�a>3����?��W��OEW�}W��^�v�㛳0��=$����2{r�˺DNӣ�tc
��C"�/f�EBې�	��i�`��'�z4��8�v�ɡ$hsʷDM`TU^��Ux}%���l+���aЏ7~��!���>͞�Ŗ��tw�7�_��mA�E~��c�e��ҋ�y[b�}	W���]�Qr\�/�\z�4��E���w�p�� ��A�I      �      x������ � �      �   B  x�}U�r�0>+O�wH;�a���:nq��v�a���ȶ�-IN)'ށ7�IX��4I�X�����$N�x���,�dq��A�{���R�yd�͓��MÕ�ɝԊw�Ե���%�=ŧ�7UN%�k([|�<������-:�ܵ�)�yW�`��dR	n ��4�]�z����%�A�0���}���dK��]r���C�FV���@qz����,�b���:����Z,y�zr����u�3bj_�Kt˻��A_bw�zcHY�t��I�����=�Q\�[����nX	��A.�r�U%���(Ž�@?��q�b
Õ���a��k�҃������c̆^�!��AXl]=�l���r��w�z�!�ON�E��E8E�!�D6���HM�{X<g�������vX�Qc�G�D���p�<���=����9��IAN����>E3��+�W�r�	˹���J�3bmp�c[����Z��.��'�j�0�̃�Kn}���ţu����Y48�{�e+��!�Rv҅<E��h\���k�
KC��i�k]
��}:=r�V?h+���<�7IB�E:e�����$��o�T�B�G��8Y�JbC�1�:��@�3<_G`� W��«Dj�L�Ftz�5�*�ߩ����N?�Fx���\*9�j�!��%��N,�nh����s��}�q����D�j��9��<���G% �3��j�:�]:`�1][�8*��n�K�uS�z�Ӎ�?��:��~�g$�3^�r�D��d����o�y:�8Og��۾�I��~� ����!.����ԣ�g���/�\Lh     