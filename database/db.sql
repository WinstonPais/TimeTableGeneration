PGDMP     7                    x            timeTableGeneration    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    216    �       �          0    25330    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   ��       �          0    25338    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   _�       �          0    25344    mainapp_classtimetable 
   TABLE DATA           h   COPY public.mainapp_classtimetable (id, day, period, "classId", "staffId_id", "subCode_id") FROM stdin;
    public          postgres    false    221   ��       �          0    25352    mainapp_staffdetails 
   TABLE DATA           D   COPY public.mainapp_staffdetails ("staffId", "subName") FROM stdin;
    public          postgres    false    223   �       �          0    25358    mainapp_stafftimetable 
   TABLE DATA           h   COPY public.mainapp_stafftimetable (id, day, period, "classId", "staffId_id", "subCode_id") FROM stdin;
    public          postgres    false    224   ��       �          0    25366    mainapp_subjecttable 
   TABLE DATA           W   COPY public.mainapp_subjecttable ("subCode", "subName", semester, "isLab") FROM stdin;
    public          postgres    false    226   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 228, true);
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
       public          postgres    false    224    2842    226            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����L���k M�TZԄM��Zǉ��]㜏�1��4ca��b�����T�Z�_�����mƫT(Xx���% {�'��@P���v����Ө*P�� ю�[�'Xd�	���'��<=�A�����}�B��NAD*R� X�v��Ϊ��S�?w�� ��t�� tt6n��as�N>M�_�V��ݪ��Vt��"�B��s��G?�W��h�l���]�@W���L�x턡^��['�B/�ys�,��M?8�^kK��=ǣ�H�W�'��H����A\�4�q������q�j�CJ����^$�|�h/l\r>������7�����b�ym����X���`�.o�Q7X�M�`���	Fs�����7�8�YNN�\U�k���I����Ç���G�      �   �   x�%�K�@����+\����f���j��!C��c��<��,��w��䥊�0n`��)�Wi�U���:Mh_��������U�w.��0*t�x�衊��A��� tL=%���#�0�P�6�EM�UC���T�Z��5���Bp3�,��\�9g�=-M��R�1y      �      x������ � �      �      x������ � �      �   0  x����o�6ǟ��b��>�YǙ��}��n�d�ޭ�"���k
\[��>E��ršDJ�UX�
��������Bu��9��Z��R���8��2kRgx�xFgg��^P��vnMvMء�]����l� �>����ǧ�秗������g��@�]�ƫ9�}8ؚږ�h:@K
����w���l�mAFw�\m��J=�q5G���6�δ#�_���@z�������/?���������g�o�!���t~h�� �q� �ԓ� �&�5��;������-���4Z��Bp�Vqon�.�Yز�	�B$3��A�zm��U����7��nJ#|�o�*�]�f~p1�j�]D��`4>l.�6ëiZ=�Z���7C��z�T�l��}ԎP�iN-����ynS�X-i�4�3�á)I5��mp<�,i=j��j�S��9,f4��#�4�2s���;�C��jS��t��fK��ӠZ��7 l�ɗz�Tk�Iڳ�
J�{xG��ӤF���`���w������1ύ�)�	�]�H5��دU�f;��rP�iNh9���[sH�I����?�hÐ����@��f�[Tz��6�d�-	y�PJ3"Q��IԒ�G�mF�f���$ݒ�?�"��RO�L:̊��F�du��I�%a�H@#I[�J=Mr-��Fݴ5��ӤF�<9��j��/�w�W�W��v�������1��V���_mS�	0�&G�P�՗�����Ǐ%fҵ�Aq��!`������s=��Z� �˰/v>{�s����3�Z��ɥ[�<���9�j�S��9,1�]��" ���Ԣg�s����TӜZ�@�w<*Pa��P�iR-y&A��@S��A�z�TK�I�:k8d�C�ѥ�&�2g���8;쥭���$�Z�aCzDr��&5��1��Nra��wΗz�T+!�����,���M*-�E@-jL�:^%����ߧ2C��I��y6�S�W�Tf��y��SG2Y^�٧2C�%��D�"�Ws��Ke�PKy���!t�'�.ޤ2C�%�<K�c��Wow��j�2�/M�n����S�&�Z�h��3hOyF}}s����&x��#^��w�nR�!4�tk��!@~�۷���M������77�Tf�&���U�zR�6ܾ�Oe��h2�6�gQgE��\�2C�5I�V��d�.;����Tf�&�b�gȀh��r����$�,(yt���S�!Ԛ$'=^�Z�۰���f��jM2�]�CB��v��R�!Ԛ$�{o%p��lR��������&����&�B�H��G`�w���jE�K�h�]H?��R�!Ԋd��iפ����EF� �5�{x���Q��;�dn��m*3�F��]L�s��I��ˇTf�"���O�ފ��~��4�gE�sVhV��q�l�8W����շ�O??~z�}+�vjC�@��q��@��t�{W����旟] XA��� ��8��!�(�& ������Q�AxݣkM;�dG)f�2\��8�[J���+�Q8v�����	�8n�プE�=��9�ǜ�	3��N��՗v�W�O���84�5ͱec�N�����+�1�Z���CN
g8!H�pL;��)�G�(P����9'
<*�0#cF��>ƴ��ɾ������-�;V����xD�}@2G�f($@���&�i
/��+"A>|u�|���ANiY3N������

J�P���W��T���M�P�<5(�Ai+(�H3T_V��G�,�1GOs��@t'p�ǣ���%����Ȭ�Guϡ�E�G�jZ�N�đ�S�e� �lw!����ǘ��`Z��˾��sg�]��(�Z׆�# q����A#���T9cx��B���eVSҸ=��3ȓ��}B�j%�T��o���R�Di�МZ���� �ҞZ�d�΃¨T�9s�l��pB{�t�!U<���ۃ��3�_|�v�4hFФ�ɓ��h�Q4'�k�E㌢��Ҡ�3�&�,8N�4�H�����O�4�hZ�N�>E�8�hMDAG�>�A�*_�h�4�g-��qȌ��ה�:�����Q�$���_����=�(�(�W��΢�{�ܿ7����yu~].�$�\��4Hp��-l���˵����He!ٴ��dBY1e2?��ƶ6�o�}@�m���d��Y�2t�E����[2��c%�GQ*ɡ%sohlfr���2�V-ل��r&v�������� ��!Gt�$o��:�s�����`�������"yu��]/�S3C<��1��d��IRYӺa��`�N��f�����E��&��XJ��+*��s�ĺ/��v��փ@�mFDo�p��R'��u���:8d(��it���eY�Y���Ό�z�L�kR�Lڀ-;&�e%�Ժe�'���� �X�� z2ő*�1�f~}}-��g�K)K�{t~���[ȭ��\�ά�r���Je!��z<��No%�x��(`n��ܖ<�*�O�S=
��5ʴ�9��G@��F�l���-m���R� ����(���1n�kD/;^���[փ�Q;�t����٥��܌Z��x]l5���\/�C3(e|�s��]���B|=��g�6/����98`���1Ggc��&�"�Z�:����KN��mnSY���p`�!�Ԋ4�"�.ڤP�c>�"�kdW'm� 4� ��'��y������'9d�s:�+r��ʦ��A>�(�Sl�1�C��6h��0�J�z4���ȏLKj���J7O0mॴ�����yLg�]p���Jޯ��Vz�ތ�%�X,k%�Tc?q�q��X�j����>�o����eR��TY��t����[ȭ�jR�:S�|._E�j����M:Ѝ;k����"���Z�L6��"���[ȭǀ1q6s�N��oSYHn���)@�xI�xw�6���f�����z���u�-�6����1⇺۫���Bv3�l<�㕘�u���!g��/L���6���� �3QЇ�=_,�GhF���#~#��a"qv�u[M�8�*EWl�Q�ۚA��T-�͸�m���<�Aj��6c�`�ᮜ���bۨ���e�(7}��.���{[��A���6�m�?�����B��j�D]�8�	�EK�G���Co�jFQ��Ou!����2�!���۫W�,R9�Fm!zD2
$�as�Ie!��b�������nn����4�`��:.��ۻT���Σ8����]*ɍ�C��<�� j���ni��j<�'�q�U��Oz9���Z��-��5^�I`�%r��!�w@��i�ٽ�{�����ߎ���	T}'�����������< �M����a���meY�Œf,y��K�[=c�6S�Q�ؚi[��l˧	bkgl������b�H���=j�|�!��H{K�a�i�|""���h�����%�Z�#6R�"u!`9��z<黸~�S>���|z��h�g+ky{8�}xTN����0o%b��C�|5Ȥ�<T���	R�h+��	u��;y6=b4��T>��t�Ѩ4����z����������jj�p����O�h��j��u�zRY��6��z����_�Ҫ�η �BL���-���^�x�?}g:�      �   �   x�U�K�0D��a��.l��-F�)v�=��v3��u@c�>��,x ����%����Ƕ�%Ռ�V�r�\���lɬ�Ϡ��ux�@)gP�i�H��u���dgF�g���M7����yR��}��/�HQ      �   �  x����n� E�������K�e�#�P�6�U���#����}����b�]����}��Cap�K�A�#����.��9�\�?�_(:��,��8$0fB���mt�qJJ�.)�����;;�/y
�v��h��o�ar�59?��`z�~zw�6�p
q�*N��G�Le���h�i\*JM6�̐l�ن�Ÿ�"`4�0ة�_��U��T��[b^�h�pȑX�z_���3h]3�9�0���J��a�3f01���	�a�JiY+�q㈬���Bs��X��c4����[we����f��Q�0�M���m0ڀj�ӁsM�V�	�5��a�W4J4g��+�B�_�ߑҢR4�eζ,��ߟ��BS7���5��<���g�u�A�E[�r���W���t:�v9[�      �   w  x���n�0���)�W �;8�,�fՎ@@~4��? ���tT�ST��ٜ�s���.���/��E�{o�Gs�ְ���E¦�7��h�T�Wj9���q"��Yw�Ek�,�4!�q���Z��\?tV�<e��L��k�3/{�J����d��s�=
���N��RCd2�J~��=]�Tk������>���ބ�T
��sUD[1��FK�#Y�!��Xl���]n�jg|�DqB�X1�^�_/� ���vs�[���xE��hbw�ԜHsWe���i�֝R��^�?���a4�l��М�(��G-�LFے�6I�p.X^_+ڧ�3?��|3d� ���}KÜQ�ߟ�d2�$d8#      �      x������ � �      �   ~  x�5QKn�0]{N1'�dɑ!��@�d3����L:��@Y��^N�]��yVJ�ԂUȋ#T��Һ ��Q �a�?������ckG<&�f427~�꣌���	�hg���a�;4�#[ϛ��i��6�<��l
&�@�zYhi
{8�ԮIx�UL�	9�8x�a>3����?��W��OEW�}W��^�v�㛳0��=$����2{r�˺DNӣ�tc
��C"�/f�EBې�	��i�`��'�z4��8�v�ɡ$hsʷDM`TU^��Ux}%���l+���aЏ7~��!���>͞�Ŗ��tw�7�_��mA�E~��c�e��ҋ�y[b�}	W���]�Qr\�/�\z�4��E���w�p�� ��A�I      �      x������ � �      �   E  x�}U�r�0>+O�wH;�a���[�$S�2�pQ��-�� �)��;��<	+)I���k����۟�i�a���E�,_h��.d_*ͭ�����y���n���J����ʊJ4���C�TZ�-�k([
|�<�����59�ܶ�)�yW�`��dB"�u.5g�->|a�lȀڑ^��FT�ے,a��>!鈧��� ��8�ed�QZ��Xl�G���9V-���x=9�v����)�+�):��]Py��C�bw�zcHYIt��	������,��q�Dsij�{�i��Ԡj(������c�b�А��hR�	�
������z��u>�I�"��x�D4�:^��%s�x�bկ8o,V���q�G��<r""L��"�y���f;"~О's:a��;��z����G.%_q�+OX�%o���T��ךV`Цk �!-A��`��a� �vÌ7L.� ��W�>tqo,��1��zǵl����!$_�Nؐ�(�"MK�h��ZQi�7X{�K4���O�GN�j�e�+���y����C�����L7�Bz�2=�EڊZT��A׉)�����9��ҼG��W�`�`����i�U6�SuO��:4����N�r!Ř��F,<�sr�>�2솢�
��G���UGl/ڞH��VX�Ω���=J��Θt��7�,[t�����p�Z�f�Qq����^:�Oũ9}���v�B�x���̋�ׁzo�w"�S2�NF緸��/��Yy3c�w:�n�/���4�KA��<�ztKW0�Kv˻I5+�B�t�.4�X�6xYNe�]t�a�����h4�5�Lp     