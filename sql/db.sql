PGDMP                         {         
   blind_deaf    14.4    14.4 =    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    40693 
   blind_deaf    DATABASE     o   CREATE DATABASE blind_deaf WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE blind_deaf;
                postgres    false            �            1259    41597    category    TABLE     �   CREATE TABLE public.category (
    id bigint NOT NULL,
    title_tm text,
    title_ru text,
    title_en text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    41596    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    222            O           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    221            �            1259    41027    certificate    TABLE       CREATE TABLE public.certificate (
    id bigint NOT NULL,
    name text,
    image text,
    file_path text,
    status boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.certificate;
       public         heap    postgres    false            �            1259    41026    certificate_id_seq    SEQUENCE     {   CREATE SEQUENCE public.certificate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.certificate_id_seq;
       public          postgres    false    220            P           0    0    certificate_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.certificate_id_seq OWNED BY public.certificate.id;
          public          postgres    false    219            �            1259    41005    constant    TABLE     4  CREATE TABLE public.constant (
    id bigint NOT NULL,
    title_tm text,
    title_ru text,
    title_en text,
    content_tm text,
    content_ru text,
    content_en text,
    type text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.constant;
       public         heap    postgres    false            �            1259    41004    constant_id_seq    SEQUENCE     x   CREATE SEQUENCE public.constant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.constant_id_seq;
       public          postgres    false    216            Q           0    0    constant_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.constant_id_seq OWNED BY public.constant.id;
          public          postgres    false    215            �            1259    40989    files    TABLE     �   CREATE TABLE public.files (
    id bigint NOT NULL,
    url text,
    parent_id bigint,
    mime_type text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    40988    files_id_seq    SEQUENCE     u   CREATE SEQUENCE public.files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    214            R           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    213            �            1259    41016    inbox    TABLE       CREATE TABLE public.inbox (
    id bigint NOT NULL,
    fullname text,
    phone_number text,
    email text,
    message text,
    is_read boolean DEFAULT false,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.inbox;
       public         heap    postgres    false            �            1259    41015    inbox_id_seq    SEQUENCE     u   CREATE SEQUENCE public.inbox_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.inbox_id_seq;
       public          postgres    false    218            S           0    0    inbox_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;
          public          postgres    false    217            �            1259    40706    news    TABLE     �  CREATE TABLE public.news (
    id bigint NOT NULL,
    title_tm text,
    title_ru text,
    title_en text,
    content_tm text,
    content_ru text,
    content_en text,
    views bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    is_project boolean DEFAULT false,
    priority bigint DEFAULT 0
);
    DROP TABLE public.news;
       public         heap    postgres    false            �            1259    40705    news_id_seq    SEQUENCE     t   CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.news_id_seq;
       public          postgres    false    212            T           0    0    news_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;
          public          postgres    false    211            �            1259    41636    stats    TABLE     �   CREATE TABLE public.stats (
    id bigint NOT NULL,
    value_text text,
    value_number bigint DEFAULT 0,
    type text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.stats;
       public         heap    postgres    false            �            1259    41635    stats_id_seq    SEQUENCE     u   CREATE SEQUENCE public.stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stats_id_seq;
       public          postgres    false    224            U           0    0    stats_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stats_id_seq OWNED BY public.stats.id;
          public          postgres    false    223            �            1259    40695    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    username text,
    password text,
    fullname text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    phone_number text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    40694    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            V           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            �           2604    41600    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    41030    certificate id    DEFAULT     p   ALTER TABLE ONLY public.certificate ALTER COLUMN id SET DEFAULT nextval('public.certificate_id_seq'::regclass);
 =   ALTER TABLE public.certificate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    41008    constant id    DEFAULT     j   ALTER TABLE ONLY public.constant ALTER COLUMN id SET DEFAULT nextval('public.constant_id_seq'::regclass);
 :   ALTER TABLE public.constant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    40992    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    41019    inbox id    DEFAULT     d   ALTER TABLE ONLY public.inbox ALTER COLUMN id SET DEFAULT nextval('public.inbox_id_seq'::regclass);
 7   ALTER TABLE public.inbox ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    40709    news id    DEFAULT     b   ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);
 6   ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    41639    stats id    DEFAULT     d   ALTER TABLE ONLY public.stats ALTER COLUMN id SET DEFAULT nextval('public.stats_id_seq'::regclass);
 7   ALTER TABLE public.stats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                       2604    40698    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            F          0    41597    category 
   TABLE DATA           \   COPY public.category (id, title_tm, title_ru, title_en, created_at, updated_at) FROM stdin;
    public          postgres    false    222   KC       D          0    41027    certificate 
   TABLE DATA           a   COPY public.certificate (id, name, image, file_path, status, created_at, updated_at) FROM stdin;
    public          postgres    false    220   hC       @          0    41005    constant 
   TABLE DATA           �   COPY public.constant (id, title_tm, title_ru, title_en, content_tm, content_ru, content_en, type, created_at, updated_at) FROM stdin;
    public          postgres    false    216    D       >          0    40989    files 
   TABLE DATA           V   COPY public.files (id, url, parent_id, mime_type, created_at, updated_at) FROM stdin;
    public          postgres    false    214   =D       B          0    41016    inbox 
   TABLE DATA           l   COPY public.inbox (id, fullname, phone_number, email, message, is_read, created_at, updated_at) FROM stdin;
    public          postgres    false    218   iH       <          0    40706    news 
   TABLE DATA           �   COPY public.news (id, title_tm, title_ru, title_en, content_tm, content_ru, content_en, views, created_at, updated_at, is_project, priority) FROM stdin;
    public          postgres    false    212   UJ       H          0    41636    stats 
   TABLE DATA           [   COPY public.stats (id, value_text, value_number, type, created_at, updated_at) FROM stdin;
    public          postgres    false    224   ��       :          0    40695    users 
   TABLE DATA           g   COPY public.users (id, username, password, fullname, created_at, updated_at, phone_number) FROM stdin;
    public          postgres    false    210   ��       W           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    221            X           0    0    certificate_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.certificate_id_seq', 9, true);
          public          postgres    false    219            Y           0    0    constant_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.constant_id_seq', 1, false);
          public          postgres    false    215            Z           0    0    files_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.files_id_seq', 135, true);
          public          postgres    false    213            [           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 13, true);
          public          postgres    false    217            \           0    0    news_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.news_id_seq', 524, true);
          public          postgres    false    211            ]           0    0    stats_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.stats_id_seq', 1, true);
          public          postgres    false    223            ^           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    209            �           2606    41606    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    222            �           2606    41037    certificate certificate_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_pkey;
       public            postgres    false    220            �           2606    41014    constant constant_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.constant
    ADD CONSTRAINT constant_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.constant DROP CONSTRAINT constant_pkey;
       public            postgres    false    216            �           2606    40998    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    214            �           2606    41025    inbox inbox_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.inbox DROP CONSTRAINT inbox_pkey;
       public            postgres    false    218            �           2606    40716    news news_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    212            �           2606    41646    stats stats_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stats DROP CONSTRAINT stats_pkey;
       public            postgres    false    224            �           2606    40704    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            �           2606    40999    files file_fk    FK CONSTRAINT        ALTER TABLE ONLY public.files
    ADD CONSTRAINT file_fk FOREIGN KEY (parent_id) REFERENCES public.news(id) ON DELETE CASCADE;
 7   ALTER TABLE ONLY public.files DROP CONSTRAINT file_fk;
       public          postgres    false    3232    214    212            F      x������ � �      D   �   x���M
�0���)�@��$3Iz75MK��ҟ����B�=��}�ѕyYŴ]���mnM�T���y�R��ҕԬ�U)�B�h<*��i�?��.�X d�{"V��V�S`Ok0���/2�%����,������?�Q1�?��HG�͗I����R{p�      @      x������ � �      >     x���_n�F���S�K����
���KR�n
'����#%��YK��XS�;��̚E��>������������?�on���~?]�F\ǏQ��FUb�r�+��+!�BZ�>0�=���%م���������?^���smܢ����n��鶈�R;G�U߀����E3���4���O+鱌^�^�5݀^ѱ�%o޼����^�Tw	�-f>ћe��Vm}�)-�G�&D�u:/�c�ٲ�K�g��HO��ݫI�܀��uiR�F�X��3�=����_'�t}w.�����㏉.��\w�.���=���ͯ��嘥����>p۫�I1�<.��O��D�)�)Rא6|��t���^z�*��GaȂ��)h���LyϪ�D���3Q�_�<��J�2A������-�d;�1���q�{�8��O���Ot��+rk ����z*l =q��>�=�]�]CTMi5�	fN�eMHmom/>�f�vah�f!��*a��V��Ʌ]�TA/U��r��@1������ٝ�C�أiKW~*��e� �iO<ds����]vg�	�Z�����<��AK��b=�;-Ol�t���X�q��l�x��(���.�{�P���JrKSI8����=|/���8��VddͶ�����F_���T[�n Np+�̓��jxw�p���
Y����L����| I����4:�eV��5<kEc�������U��h���}�����O)c�]�v,HDfEl?������RA뀠�>���D(*L��8��P6L��Hg�Dd�5=}?��3#=j�aƭ����/z7�_4-k5o$(�O�a��4#�R-i��bz�j&z��6ތ�q=��롑�����("�7���n��Ji����6���t$/�ՠh���5�H�3;j��؀�},{�Z t�)V�����j��c�hm��\g���[������"�_�m����@ea6Qm�T�)��S�YO�E��hQ�ߚ���T�Vv���U��ք��e�/ �K�%Q�^��:�v�Y�r�      B   �  x��TM�� <ïp�U��:��K{I�{����8N���'��Jv�"�d=�703� ��w�6䫵B�I������n�7#{���ڏ~G�9�
`%x�I퐳�T�"O?)��!��Z����?��]:R��
���!�Pq,@T��~܌3s?�K\��%S�J+
�dx��k҅����{1j�N���>��a�>O�璆ki��ɭ>5y�r���2m���&s7S���MK�u��:n�F	�c��d�Ҥ�æi��|]1K����;�*�]��?TǾ�Flӱ��S�r�VN �h�V��{?������#�� Q}�K]
����p�;����Q���ќb�8u!.���_2j��N}Q���g�b���t���pǥC`5X����Ӽ���{|/�`��P�(�ϖ�DmPb��(�=��,G��x��e�s�t�96����svYx� ?KpI�`|>
U������ٓQ      <      x��ms�F�.���W���>�T��D�Xr^���I<�픭�O���&	�0A� �P�n�_��S��u�Lv�$3�sk��m;�#ے\5,}_r�Z� 	��,[ �2c��н�g�^����T��?�|{�aJ�Q���DE��R��lC�E����(����Q�T�	��7�i˶L���u�(MQ��t��V�UC/�fQ3Eɲ+�Mi���oZ׼-�{����U��{��x�K���{�=���'�뭏��»'�j]��oeD�]��k]��nx��ۄ�ZW�;p���5᭷>p|z�\�7�;�=8~N���9�~��/��e����/�	M.g����]ͪ�xS��]*KW��
�e;�}���?�₼��/ZU,�VU�eM�A5qk�Ы��_ujP��0��,ò�	��i2#��/�"�-��.˪n4�����V^{C:�e�k[�?��n��,�U�g�qނjW3�g�����_���j���|�� ����]i���ei���֑n�֜c´�4z~/�Z�O+�^*������+��\W����,uδ�ZY�pi��j�Y�w�<�/���
(g���6\�%`9���X)�F�k��W����J^��b��T<^��CYX���VE��n��=/��m��b6���ٌ�z���V�l�ꖙu�z�bj�V7uW���='����۵/�N͐<Ʀ�_��X!�:T�aIׯ�ï��	C�4 ��.�y���F�Ʀp�,��e�q��2H{K���@�YBwD�9��v"�"X)X�e�x`9��$�-����e�W��]�؈U�4�a@�����µ�\��,���L �^=�����Gj��/������*
��k����m��&B��C�жPE	�\�o�0�$��Щ��``�p�Q�6�Mֵj~{�d/�_]�Ú���+�17��H��h B�ڌD����絼V(H�hh���.[F�t5�d8e���rjX�e]�l��hm��7�V��VӤ'C��*Ԧ4�f�,j���7FPXʚ�/�h�X�m�-�{���	��W�9W��|]
������wj����lk� ��8rdeee��V�c5{�`U���t���E���d5ik�H�������C��м���ƅ�5���j��3Ag'iy�hj��.:��1u��MNV!x�Ť��u�l]7ˀ0��M��:V���*8d�_�Tc��G�#@@�D8��a�hv�8�_/X���G���٩Q�uGw^="_��D%��D�i�4�-k@��h�D�J�aQ��;*ΐ�U&4�F<_����zyWC�j��`Բ'`9+PNY�Mf%llGXˢ���kP��֎(I��G[�ۚt���E�}��x�<S���t�]/`ɾ; �祫��j }����mˤ�eC��U�P�	׫s�w�iE]��^��S����M��24�D�����G�R�i|?h) ;<��p^��y�^C\�vG�^Ђz����ź�����K>����Yv��n _O���4�xM�9�RM���b
0�7>|p�S��Vw�x�C��.5��&oux�Z�����r�Tчј@��e�c�gW���)��ڲC�]V�=��a�s���� �`�j��%�dce7�a'�N4�D�� �$��9|��T�������Vx�Jΰ�r�V�lCᩡ��(��畯�3R#��V���O���Nek��A8������9��0���`���X����2tO�0r��V�-G]]2��)�� �*>MH�P,g�e"�Z��P�'�s��\�� 4!�����e |�x ]��,c�!>>����S����s����e]=�bV�@�{ t�7��:�!Uw�Tj|t���ql4z8l�uZ� d���e�x�p�T6��(L��X�;,X�/�y� `�wt�r�
�}�<;�\ח�S\���S�W�+s% L���aͿ�Ȭd5�,�U=<�Lp�8yĬ��.@����y����h�2��S��=�:����@貮�<[�^Բ���:F�P#�流��זl��J�OZ��>q��~�8����'�]��#����ņ��t�z���4γ1�'�!��j�����0���cIBoqjb�����КUx k��^E�5�ݗ�3bj�~9�hm�E]=M��T��C��yH$��H2KXJ��*�y�ע�+�D��@�լ�.@b��A�����*Mu�z��E�S��+���∘���hYC�5�����9%����f��r�L�ہ�w��:���F�N�{B`Ļ]~��A@U/Lj��IE���7e W�5_w]�܁D5�7�h,��R�@�P�nn���t]���v�J���XǦ�;8[Ӳj��ه!���������iV^dg>�a�z``�>������3���(�8�}�V�.*փ���D���	B6��-�͂:�~���"~U%�}�:W�7�:��{����Gz�o�o��}�|l�t�svj�̯��D�q�̲������'v��H+�6jZ�j�8L�Ic�9_7 >:V��v#�*�ۍ@���(�z��^�ǩ����T�	Yw�^��ȡ���ɶ��r4X!ˀ�슍�9(?��z2�ГŘ t�f:�k�=+ӵS���KPh�w�9�x�p��Ĭv3���e�@�	�)�:�.�eu�뙗-�B��sQ��re�U���=�p�"��	����NY�w����E붡���W���	�~d����@���K�#�ɩ�#�3G����,v�!�hܲ�,�4?Q+.G�/"ؗǏ��Z�N��@g8��7��"n�W���*���V)U㧵�:��i��՚�m�+DA��Aw��Bqugd#�N�t&,�t�q-[ל#ep�Ve���e����"����5x>�;��e	�&x!�$pU���!煼���s�VF^��Z�v9��1��:�U�!�RiG��eR��1U^t&�)��I�'���0GZ�E@��Zp�{A�ʒ�рj'��L���;�R�.��u[� P��D��U+��//N�����;;v���k��`���T�'T����7���c�Q� �s5��M��#�=�p���Ϥ�QXZ֩��y�z���i4T�AE6]�0!�@��08 �r똴�m����1�����=?�B��i�~��s�M�P�e)ԕs��m���kY��[s(���P>�L!�n�	ט���I#�8�t<५�?�;���(��|ە8��Qu^���=�[Ч�����L�/����%�P���'&ޘȴC��j���޾�<$E�~%�jh,\hx�E�
0BW,�ˮ�����[/�t���
z�Tc,u�8���.L�d(;�B�I2#7Akk�Z�q�t����!�+XQ�Z'h`�ߤ���e��p)��p���3���LZXGuƉ}��-Y� bޱBekj\l}��T����q���zcS5��yn�<��
�#oB͝����Ӏ6��Ie<V�]�}�/u[a�9	�y��Eɂ6m�mΞR
(S�.�� 5]+@��M�A�Р��r
_����(j���L�ׅC��L����U͌ ���s6�)��~^�C#@�K�o�K��	�9�W���d�-[���҆��mUї�E5�'�Y��| !\���SDG�	8�_*�w�""�?}0���OP#����r�x��A1<FF`���;f
�1::F ��jS�p"4��ʂ���}�����w��E�yb����̀����e0	���N>�~y�c�П�y�����S�T߷'"�L6���SE�I���
ƻ���|C�idB�G�k`�8�%θ�_�yI"�0��T8[{WD�+u=ˢQ�-W)�+[4�џ����Q��t�l��y˪@�B�V/�r�fh(g-7�&�׳�าg�����4m�H�vdjv!73�035{���S��K�u^�b`E �P`
��cbQ�j�@դxg�����o���^�y%�h�tZJ�ē�B'��A*/    �+�l�Ӷttө�
��>'ԙR�$ʷa��.�����E�*xu�i�����C	8�;<�;�?e���g{�,AH �A��$v��-�Upb=�O~ �
=�?G���=����{���w�z�?)[V�$�z*j��t)��s�8��З1*�G/b�&?c �q�7��L��Z�4�o�R����� s�Pi����� �㰎ú�	�y�*kG��Y;v�k!�	,8&��)��F������㢺`]�o��6����p������,=!�x�B;�(�_p�
R��}���F�ʸ���	�=�_?r��7�b|k�ó��O�w֋�`��$\fk�̶�qj�i;��" Tnn/󆆑0��?M݋ܝ���;@OR�	������<�E�K���V��)�L� ��m>�4]R��H�aVG>P!��|�r�>�NEh��{�S�����,�"�g�� z�вU��K�B��,�[����j����"����wި��b�7�+�}T�k��D7;�6�պ�`�\��_�pua��0Ly����]Gx���>��)���tFyaZ�K���{��ၸ��H%[�8zG�·��T��q�P�,cB�2gT/�D��N�h@V�k7�H�P�����\�.e+�����XEG�1v�b�d�%iTb&���I0��� Z������:�dQ�D�AҰJ`Jsʔ01��i��5s��7-;�38�'YG�2]F6��<H]G�ƥ�Y�(��g)�����339Y���::=;V<=)ޣ����Ԍ� �K�P����	W+�xo�x7�%��l \� \��`oHS���.�
g��pƅ��zK�:7�e�� �,{W	c���2N**�RhHvPy�`T#O���\�m��ߐiK8��V�jɢ�;X��}
�w�B�^�A=d��R!0�2<زBE��'���� mӲa�jM��"B�O��1S��E��P��*�1��S���t�	iRTԄ>l Y�1��YW���?�|�k��e�]���,k�>R�@L���sZ��b`%Mڔ�<�,N)+�c"���5�W]�	�S��ʠ(�Yri��,^�hN)�4p�\��i�7�t0�4�� �u�?�B
vQ�@5VU�SM�qѮqҽ�L���6V�e����Q�S
�Q)�"]צ5�4��W�^;��d�t��N�t�5L��VSQ`�*����g�e���U̧�	����y����v�cs���#�]]K��9=�9��;R��	S'R�Ϯ�*��8T�A�lB)�F[�h�,>\��K����ﻟ%&s���������*��DUA�[C�$�r�������F��oG?���Θ�@sR�/*o�׳FΝ�(�]�$Vģ��t5M�@�9�t��$�i�V���j4>��I��u�h��%��*��&��:#���	V��4�@��*��R�ZA� ��z.��x�}z^�k��V+R���1§v��(�-�-pz��ӜKj���� �\���\�Vg|cE��W�%�G��<N�Q��F ��@0��Z�����\��G�4�:O��j�$��贓�iH�Z�	���	t��L��Z:�b4k mQ+K�.K�.Ǧ�F"K�-JLx��%pY�%pى�ˉ�.K�.K�.Kಇd	\��e	\��e	\��e	\7X�%pY7c,���,���,���,���	�`	\���1K�.K�2٤�lX���,���,���,���֥"�c	\��u���,���%pY�%p�DX�%p���%pY�%pY�%pY�%pY�cs��essb	\��e	\��'	�@��epY�epY��Ӥ"�ep�)&<e�2�,��2��D��DY�epY�epY�ep�C�.��.��.��.�,��2�,������e\��e\��e\��e܄�@�.��rטepY�ep�lRE6,���`��e\��e\��e\�Rֱ.�����d\��e�2�,��2�L",��2��^F�2�,��2�,��2�,��2�,�˱9��9��9�.��.��������d.���e'�������c������ѝ~Z>4��f��A�,�ൡ�.3�o���f�v��ټV�|hCmA��ª�W�����(7V�P�Z�����	�^)jP���6JN�UQ��u������x�}�n)���+���Ļ������[�O��o��h]'���P����������c8.m}���n���u�{�{��觭�z뭏��<m}_�uw��Z���n��tf�j���ۂ���#��u�d�{�?t�?N�3�(�5ꌝoB0i�⒍��5}��6HƘDt���Tod���qBA+�b�~;�cݿ��JX.�@u-��}4#����5�l����B���.���>�+���fI!�5š��x���ϤW�mҁwBU�PB�4&�f~
(ϊʙ�P=���ND+�j������d:hRK[�c�'Tzm��Z�Z��<�a��V��)TƷ,��+�B%��{���{hGb���Hej2?9����2nxmX~��%�CH&v&�N��
���n�B�a�Yї]&9&�n���f����vp���z�tD��E�(��S�W���-��g��Mh�>�⃇�5ڔ��}���bb&75�rk}�b0Ϛ�V���i}��j��ʨ�&ޟ��z����h����i�p��4
C���S�Ag\�b�A�M@�5M�D���x��ݬR]/jj-2�,�n�W��ϝ��^ ��]������� FT�8����}����vn�V�nP�CB�8��f��ü���Z}u���g_��Q��즑��KuL9�2��^����4��^�9ꩂ����gùEu.-W��F�$]Mv��]����А۰������/���;�G�?����pY�Z�J5N8�$���j�n���W��J80x��9�����~�濬�GC�p"'e�|C"�¢���g�[{^ݴ��)5QF1�v,2cLZ4 d�:1�$� �ܝ�joR�SXӇ8��P�T2��9�2°�T2{���S�I���6qN%3�8�q*��v8p*�SɜJfzK-�q*�S���*��9�<rxmXs*��=Q�Ω�$��h�8������8��pH;8�̩dN%3����8��\R�=J$��c�G��'g{EJ�~"������.��v��v�ll���m�$W)��KZ��hn�޵' ��:���:�ܨI�a�ϭ�5Q�k�͍�/yk�+��u�>�{���oCx_xwZW�����V�Co��1�x�{��܂SZW��#�����~�PpɎ�#�����ۀS6�^�*#w~q�}�(XU_kpY�Mz�=t�D��v���</Xe�ץz��~q���vƱ�`{h�`H��k�SS���Mc�mH�`��n�S�}���o�?C�|����G���p��>|t�̥�Õy:��a��m�a}�>�/-�>����_��E����C�xc�~{m�^~E�^Ӌ��Z�]��,J�p��� omc÷k�yȦ"�:T6\\�E�2��T�榁< ?g�1�o��z�h�J&\~��j�47�o�h�LW0R!V�&
 �5Bs��l���G���U�����4��,6z�#diU����o��Ϳ��k��*n_�DY��v�$��}�lwK��qwi��݉�9�.���mj$�p]����nIQ��$]1$%��K�r4�$���@	v�h��&JZ�vQ��
�oB�88ݡI���঄r���jQ]���3ݘ�F�A��܄"�#�]!�F*�vqXV@%����ضn(ɲ2��(��j=tAQ�h�߲�6,�������k��/���zs�T7��V��F�C��T�����!Bp�����]E�r�?s[��FU�P5ݢ�kD�xw��uwn�;W�+��fs����
�5�:$�BH�tf7[�U!CC׀�^2�(y�L�v�M�U~��6�Ұ��q?�|r�vd24t���>o�l�̫�|Xk�nn�CC��0�{�����    fS��6V �#\�)mT���Ǒmr�BG��(� ~�ڂ2�}�}"D_�D跁2Jxk|<xu$^�� �KZ1*b��I�g��"�JEh3��pe���z;�v ��.��2}(A��n4�U�&E�C��.;��gfxffh�6 pǦ1�r]U-���^�j����HS�/M��&I�hvE[�E��Q�nTP�LyH�F�Y����\���7 �������ۢ��m�Z	E�S"����ܓu��k�I�%������a#e��-�B� �r������u�g8�1�����=L����p�=_S�g���~*"F+�zo������x��l)���T�UJ��ì�}z�+�u+��х�]�1��ޣ����a3*���\o�?�-�?x1���<!���π?�����j�E��oP��ux���n�=�o��EW� �5|[���X�Y�5b=���f�|oR2��?9|�Է���mA� 4�-�~�zo�u���h�Ц��0�+����h�s�0��"�xx�m��L�4�Y:Y˨9�����n#%��Tiq䀻�p��^�:�{��UǞ�6�&�W��>O�A���[x~7r�����V��?��wף��h8�/�
�ۢ�	2���$�	{2��q��.�>A�NY���R;����h��l�b����VF��x �T6ժ"��h�Tz��y��c��kh�z��X߭k�{7�\#B{�l�?���ѡ"Z��o6����[�ke��8��cr�����7������Cgq��y����]}qx�w���Vt�c��^�+�ك8j(�)���b���� ���IgP�mA�=��v`QN�� ���,&���`0}� �־��8��
�P|n����mz��&�0a
�	\Y�]z���'�������>�Ȟב������6[d�?�Wp�;��?�ś��+,oG�@�B�F�
|�C��#�e��B��/�k+Ƙ�1z�O���uG=~}{���*�;� �^�=$�^��U����vy���m�������!p?��(��s���6������s���X��(Ҿ1t)�-��K@�-�����w=H/^:~����8�D�Z=o腮��$M}Um9��_֝�4��c��H�֤n�v��9W��(ў7]�8����lu��4���_�`�m�&h�r�d]�l��y�u%�uB,�~�����.O���&������d�I���Zs�����9.]��N�تV�k��?���������2CL����6M�:���[�o*�v����9gҶ��D��Hk��}���]܊	�)4�<n��uI;�Ѽ�.�(��k6�f-4�h�6���e��yI5[�>�ZYMd
�.\� ��3eQ��h����y�^���q'��*�m�E�����գ��n��npn�47V���p���kUi֗%m�K��\̒��]���]u{Rm$�;���YO�����l�v,҆i��1�M8V�,�
�l��@ç��J'"n���F�m/U����KOSh�̪ژY�x"\������6ohUgB,�
�ɨ}Ө��&J8������4�����V���79�{/��ԑ�K�C��m��-�ԬB�V!Lu�w��8Z��if0�[w4(z���26�l��7�=mh�㴓DW�[�^��A;wY[�.�c4ڒn:;9������f��f'�f����4;ylrjb��������CS�8�s���Q3E�Rl�T���g��1=�[�������8:�?����S���[���+����CK���>V+X���/��`����nS�Ύm�Xٚ��U��i�tV��~%��<K���DY�h�J����f�%���k�͠�t��o@oI[V-��
>sQ[��+���)�$�t=���@���HJ�t���v�Rhظcda�=�cT���ﹹ�3'�zw����gqG�c��z1�W�������Δ4�1��y%4�w�������g�m��U?t��D��͆�iվ:ݱe�j��C���V�{Ν[vw���Ӳ�hU,rؖu+��5��9j��i�k0�{{Mm�z*{�ę5�(Sit�vMgԟ�|��I�l��d�1������F�f���E�'~/ݢ}M�/퉞�K�ݩ�^������f
�Y�֫���]���z����`7�w	~��e#4�ؼȦ0Z�����Fϣe�[5:��S<�ݳ��Zd�ݹU�.{j��K��K!��T<��y�>�veľ`�����C+�<Zݮ�}�y�n�a��P \�'���t��7$���F��hf��l5k5�1�����v"��r{�l{�_��~U]-"ƵگZ�j��zD�=�Ѝ���>��L�LL�������hc�#��O�2��Z/��,xar/�%7nҘ(ǸC�����i��t���t�۟G-Mu�ه���ɽ�[�K�$��,�R��'
i�v�!�׾FA�~��N]
u�No�
˗8�R�ݷRr�KzUs�YmE����TU�u���Bc��
�"�qްs<�Cǥ����y�������uʂ��1��	�'v	���(DB��$ᴽE�L�#J��ȧqIRyھ��T��b���"fbz���ܔ�"jLKLKC�ҥ��^=33R���F�*,z�q�����t�����a�g�n�c���� ��u�%�o���²ͳ����e��)7����hl��w4���Q���m �IilH	�huN�2%�G�#��%R��@���h��L�kHX��S�!uU���;�1����tu.y|�}����a�!�^Z��!�CAk��k�;w�����.h�K`R�R�^Sj?�]��x�㽱�ԥ�K�y����}SPJO��Lg��c�12����� �0X�+r�fQ��f��x]Q���\�좴U�&�����R!ŭ�5a�l��T���1��x[��UEeݲ�K[H��'e�q���Fw�#��3`p��[_zE/j��|h7�b��^c�f#m�z�0��ҪT;vHQmeU��m��6���*c��1��8a�ȪtE�-6l�S����=���1��xK��PT^rߛ����7Àa����%MH�c��r{M�N�.���}�p��dlr��MsdŐE�w��;�.hpn��1��8_/C�����奍]pja�΃2� 9�܀W͇U�I��3D"c�3�Àa�0`0�Àa�g����&V4s��hn47�ך5Q�ۦ�Ų�"�#1H�$��cn�R��^�V�u��- R7b����c|\�W5Q�����k��������\����0:���X�Z��jh�j�J@��N'�3����ffD��?�*NA�j�q�V��)���ɒ4�k��!C��ܢnh6t��pV:�2� 9,KR��Ѩ���JF��W��FU�����y茐�EH��T�׻2F#�%g0h�k�v!�2q)F�P���X-Bd�"��%p,� _��24Z�jR7��J�/�^���U����_p4�*j���~Ӛp_����cct0:��JB�q�]p���|'�YC�zP�3������l�l�}fMO��L���[^����+��WO���v�g�J�]�m[?�Eeyk\����T枷�f�b��ѴN�d�b��l�r���ٶض��m�pg���56/6��A]��Y�&[[�s�.\q�4ظظ��q�[wz���`����vI��v�!N���M��������`�\0�@���'�4B`� @��o[�j���C'��9?v��_�x�O����~��o]o]��Gt�:[ؘY�]��0��0��D�"�>R�W��Z� i�c�b��?��o����yw�'�龘Jp���|�v��ԺҺ!�Sp��ϖ�~N} ����4#Z7�������}����G�볭����/����!�7����2�*�cG���~N!�c�{�u�]�	�#��;�[�k����u8���Tx���d����'��.� ����*~�t�X��=��^�^SG�D�O0L��I�>e,p���l��E��    �~q��S{��'�z���.�Ucᙣ�6<X`!Y��sLw�(
��x�{w[������A|�%�5`��i��G�[�OQ_o}���D�0D"/"?� �co�O�!T�_��/����?�|)��.0�ٛ�]�����u�g8�1s�'9W�S����6�@�1�NΨ0tÅ�2vp�H#���	�}0y��@�A���   :�|]j���-������������T�=<B�g�S
���Bt�ǟ���E��r��_� �ߨ<p�����v�
:M����P����.�N�	"~߉R�JO�.l'�[�3o�)w�[b@��cJ��u���f;�]>�/8���'�ꀛ�9����(�h������9oQE��c��.Jļi���^���G^��#U��û�����[:��=�%"t��]i,F���&�!3�R���	|������?+O�ǡ?�0����&Gp�F.��F��A_w�D��#���w�U�����d�}e({�3���k�ϔ���W,}�3����U-�g�X��~{���Ә�nr�
�H0�K{O��(�h�S�.|�^@$Iif�����ך�2p�5̶�I���ώ�6p�>ۏ�C��06�{��j�#����bYu}�=n�&�<�6�����knCX��-k⸡�E!��	M.�t����x&h,��
ֹ�M�t��[K/�����pOa�%i�d����ȼ�EM�j�&�D9F#h|tYw��0B�֤n:J�U�9�(+�[V����5�!Ð_Ȕ5i�fiB,\G�o����
:�<�e˨�.��9NFh�
�Qh�ь�lɺ��&��K 3�������`)�
�*Ȏ5n�l�t�%�!`Ki;��~Y7�&/J�� �[��Aw��B[��ugB,A)U���d��p�o/	��k��X�Vp�N�|*��~�f�կ�6�L�s��>S�bY�7�5;P�;�dl�����r01- &��HD}�,j@5�A`tDA3�����T.L������	�s�pVp91TZ��t��t�)�v�6mi��C���tvr:;=)&��.�::1;?3{��N?-��o���C�U],57:�w�;�|h�>W4Q��S{<�(��U~�gYnԤ�0�R���5�*���F���5�tϟ������/�;���y:z���24BI����3�yg���fq�}̀CC��n�Z^�1r��ptW�N8�P:*�qhG�6��11Y���LM�>xE�ډ���yEtFR��,�Ƙx�7o��Ug�֗_!O-W�m{o\��6�~��^�`Х�Õy:��a��m�h�����"�K�×�	��q��y�}x�H��a�^~E�^o���G_����f�f���o�j�6�}+"�Ce��%7ì�2��57��9#����r�R��QɄ�o>\����M]-x�b0R!V�f�l��k����vEs�Vln6�bO�_����N���8��蹏@ul|2^�<��o����]��.� �ے��a龃�}�lwK�t� �`��݉�8�\ּ�hmj���<\�E(A+��[RTO��6�!)�_��Yr4�BIÁ�>�F�/5QҚ���3�W��p���M��_7%���6V�r�_��Ɣ45�۴_:�b�ˢ̈`���}�eT���W�)�`\ b��X����E��T��.ڰ|&�vڦ�v�VP��Y����^��R��V�C�PtF`J��!yt?|G�fٮ���T~�Vэ�V�j�E�׈����ݮ��ݹa�\�� ��͍��'*��eivH~�(�&c�fk�*dh���KF�*]�$��l7$_e�� h#){��mrv��O��.�L��.�Q���m�yU�k���thh���~O � x]���l���1j�۔6��N[��69AOY34
)�߰���a_|h��<�m���^�W���,��ӰO2<�P*B�)܇+�d���1�XGop4��@	��u�����7)�t╕p�y�=3�33Cc��;6�I�c�j�E77���W�p\7;�@�P�KC��I�3�]�VuQmn���6S�QjDV�3�r�;���a����>�<+z�h�~E[�VB���������0'O���aۇE��˶蝃T�j��2�� ���r�֧p�c�������b?W�M���3�/~�/��|�
_��;]O�,k��uظ��&
|�̷���mAɀ�*�c��=�}{e�5�����h�s�0��gt���a}��m���݁��"K'k5?�s��m���*+�p7�|��������=E8Bu]'H���/6|���T�P�Pa'��'�8���	��Qף���b�/�
�ۢ�	���u�[=	���Y5W� ,�z�)�9�<� <[��{�d���a" 1�M��H�.�(�avރ�%�j<�S�o�졛kDh�M���P�A7�"Z��o6�l�$ܚ^+C6��i}�4U�?������ס��G�w��D��nW���j�6�	����<R�VW��q�PHSP'�U���r�N�f�2���-��'��n,ʩw~`�L���I�S��`�8�}W�q: �����S��6=�u[���0	�F,:�G���h}���� ��� ��y��.��n�E��s��wU� w�����o񦀽�
��%�U�Hl��0��;4��:�]�Z�� �~�^[1�<���+~
E��;����[t(T)�1�0�B�!���u�v��5�-��x_��BW��;6���8����	{d�SQG�	ޟt黿�s��Ǥ���;g@E��cY�E��K@7.�áF�w=^/^:~����8�H���z&����O����ӒԄƮDU0�qO3${�-��)��KZ��/k�)���껟ب�N�تV�k��?~����I���9���p�?������F�r΁y������U+�a�e�����l�n.�[dު++�hn4#�:����E��/��3q���'�����j�}u�w 5�nY�5�0z'x
��]�	��kӲ+ �b�@W�5�h8���X7�^i8�(int����7�b�~�Ҭ/CuՑ)�?/�d����˰ؓ�Κ�;���YO�����lh�����j���'M�i��'d��Ow]�Z��,&�^��YW�z����5,�*p���,@<.�A���6ohUgB,�
�!#l��(ٚt�^��WMb�����VWEB-�}k�{/�i]
@)��jv,zB�e�5p�t	�T�x�.���	K�r�E��ݼQ�F�m���'��?nI��ѻ'���}������]�V���-��95ylr�?qt~~frv��\���;����;�h~�����g����'ϋ� Ji�Y!Z�^V�fW^>�y?z?x�!௿���������|�2שWI3;U��-5��+�/z�x�=���T�;Z6p��%0t��T /�R��u���Z���ʠ��=��W�t�q �oV4I��CeRI%k��Ym����uC�ǂ�t;}{M�x��,J����?UI��ęS�Ѧ	l�a�4�*<m�=c65_.��}R�i�uG
�6Bu�����eFvZD��A�� �
R�:�m�.�;BA��� �?��a	?x���~�9�ǔc��A�;�B����1�bH����n��,��_�=����M:�zf��i�
d��_5��rׂ�T�i}�ՠ�L���0�	1Ӗ��?���<���]F��XF`gD�m�q��qQ�#ބh�j��L�~:�C��9�>�,0L ���5���%*O�ܞq�+��&�xN���eQsb�P�ݷ��7��iM+��@E�(�œSǦ�&f�r�^���:�;:����49sh�����gN�=uai�����4��;@���Oҧ_�<����zr��ҩ�����z�����.��x��8��t����w�K'�>{��)����_5�=ۼq�S����_/^����'�k�+�������Ͻ�~�3���L����k�߽��}	���
g�M�G���[8�;8�W}    �>C ~����-|�~��|��������o�-���	?�G(���_�:y����.�� ν)��>).�{��ɥ�����:{B,'ߤ��uj���I<T��t���7�ۅ��}����^uq��[6h��<��4�&�Eݪ��b!�����k��&'��].�:99Mi��B��\A7o��}-�_~��L�]Z�g:��C�W]�E�3�����%����ѣ�O�Yֵj�Gl?>3����Z;#�,T�ÕN�k%x����Z���T���,[�i�.�'��i�PW��\	�/���1��e�����=�`W���&;��� %��/�{��	0���Ϟ t�zb��k��3 H��8����q��Mzĵc�87��ƹ���Kh����qLS���qo-SM�u��g���W�
8=k���N^X�PB�%����/�|�ԫG��~��,�r}v	�b�뺎5ε�q��c�U]�8wt.%�	崳�Mx�F�"��i�J�U\薠���v����iT2B��/�۲�S���a�2tH\8�Ԡ'$�kFTl���-1�s2q�Y���f!`�ǅ��ޛ�Z'��l[tx�14Z�����D2���}q)SsA%}��`����<#����Q��?E}�a�n�+2���g��EX�ܩ�5���z��|R�]DD_�M�0l�s�>����0t �j�+/3\.S�s�q�d����:F�฀�2�UFC�k�0{�k9����;��S+��׺�KO����!�ܚ�^k>,�z��~I��2�Ū*�\�|M(���ގ@.���c��h��D�|��w��yF�P<���V5��ڪe� 6pz��B�򠛝Q����JY/��f�n ����l�n�)ރ��֫��ظ���n|+{�$c7�ͳ3v!.nn4�b��"w��B�`
t���JFt�Lf�=��L�`��w3�y��b��O�W�oN�M������kQV�j�����f��n'CŃ"I�}L L � ���������B\7P�T�\*��飂���T�W1����QA�p��8�'���V��߫P��z�.J��*աFݮb]P)}u�|1�$�L�g��d~v ��U�"H&T�Q�-ʀ���-x�i�Z��ܶ��g�"�B5%���Q��}CS	���8r�IMvd� ��#�f�\��-#��Z^��pL�BX^27A�;���^�{���YݻP�������`EB\�֗�G��Q�oލJ��p�T�-�J�| qD��r&��ʔ���j���0��p��4��r]^����_<s��;C+��e�.;"vDC���6�Q[:1=֗�	���v<��a�&�>�O[vM+�����v��8�}D��s08[��9$��r�u���a�ѫ�ȥF��ܻ��T�4�㙧܍�Ց�P8��}�3둤��rg�5�����Y�ɍYN�����sg����޻��9����7O�,Ǝ�Q��T��ڟw�S?�݆�4�Y��h�O��ٌlT%1%l�j�P�]Yc�3�ǣmR��˶��5�����fL�Aۤӧe����|�rI2���~	[��q�%`;���rt�z��k����^��������O�s��{?���^!.����ï3����a��X�^��[��#���nX+�g_����Y`̎fg�)�,tc�����Tn>��e����*�>[78؍��bgǼ�zr{�Ѷ�q�v�{��l�l�<;`�7=�H�0�HF6#{X�Պ.l�yW�,���F�!���I9�/�+R�N
G�5�7��al3�Ǡm���Afp3�ǯmR� �ͻ��c�6�nv��l�1�7{o��8��x�;�ޛ�=�m�rx�mc4�Kۤ���˲,JהU^Dǈ��I9�OX�:�c�;�` �ZUɊj���W�p�nq���wN/��,6bEl����&|y��Ww�@��`�K�"M\1�5�����*+�v��SSx��$��bYV�	�K�ļ���\N̉I�<����bf�Q�k�F�Qҿ�)�k�x7��3�S�O���'�ޟ�vS��>��cc)��u������7�=7��M�E��f4J8�X��5C��z�T��ǯ��l��zE�|��n6�;��K���[ꌰ��l��[W�ˆ45������B�fߞ��M��eD����V�mj��ZIy��Y7��ؐ�_��*\�y���yx��mcX�;���v\��A\�RKv9�n:�B�!���q��[�&��&�������Q^�i�y懘(�겗  �hp�ņ��}��w��B���Ms��Mt�/�����'.�ךˆfh&�j��/eB@�N�@��_��.,z��M,K�2��^f3�S�<;���U�릶j�1�����ƨ<�f�'T����r~v &�*�B�j2}��iY�`{�� /�%T�[��=���mC�Xi*�Pq{;$��-	8lO���,��5,�
�IC�>QpX?�tΛͻ�0���x���޳���Q���ę���6)�ſk���j����2dB�A�ߌ�1h���G�4È�z��V!���3$�
�f��`nf �UL��j2}T9J�s�����.
";q�@�W���!��Q������Bπ#�I��d?8)0��z�2��m���Pߨ�z��;#r�~�*�+T�Nə�
�74���
����#gΨ���D�0�&Ϙc[<s��;��Q�<�?kL�#�ô� zWV~�ΖN�����A��}P�u��<�>�N����V(k���v���S�c�������F]j����7漤q'�9����6-��a:��;泙 O{W+��4�G
����ߞ?}������%��Xt�����8�%pᕪf���Z��>��Q-Ս@Z67-�ptN�����x�/B63-����ba*,BFG�f����!����e�Y���95��"d#h�,B�"d;`3�g�"��.$�\�˝K%�!BƀO�'� ?=9�xO}x���>jD���4d��K�F1��%��D%���B��G�ɔL��UVT9~eE5VT�~LL�5���6i_b���Z��@�X�M�	�E֒en�-�m���h,��*�e������c�'Ƚ3"Ydm�Z�E�F��Ҿ��9���^X��Ц�"k��f���z�U����=�J��Zd-.��m�g�����Q!{�k���Y{-Y�:Ѧ��C�y;ȭ�6�%@�i <�W˚x���"�	%U���'��B��ڜ��s�0�YZm�%��t�VccN�1���#K�����`ŉ��`ۤ<<���x[�e9kJ:9���5��gF1��Ś���Qh��J�(N�h��5���B@�nbDs,5m��4%�Ș ��6)' J��%H)�����Xh�v��d��l�,l�Z��65f����,1I��ae�� �R\?~�_l�?�p�$ ��������٘=�m�P:��������v�ސ�s���MkE�ɺN)ha�u��J�����4�o�����u�� :�R`���4�>h�?^�<�f��<�U�>�[����:%n<��ܶI�(&�:����S��#u�0'��?��{��kq(gQ��~a�2~#��'���U����~˖q��s��gЎhY�-���H��A�֦s9���bz:�����̉��c�]�FI�X뮱1�ƘYwm��u�Xwml��D,�Ԍ`ۤ|��uגn�����a�5F1�xԛ�u�Ʋ���n�]c�>o����Aw~v r�*�@��G-��5�m�a˹.�u��bq�$@r�&���j�27WKn۰������&(�d2L>`��d'A���d��Y$>(�¬�4���C�aQ>��[w���κo̐̐�j�҆J���j�����wxr��j�[Lg��U�F���G鳃�>�Q��t��	uV�cU�$������6)>fU�Q0��G�ѹ[��.zz��E�	u�c-�h=���O�9yv���R�CG�<�<p!-�0c8N    �2�K��q�Q�+�뮄�j��U�����)���\N,@(ݝ���O��9���FI�p�1�ƘYXo����XXol���`ۤ|�����n��`(�m��CC�^��?��i����뎘{�=<H̓��r/5� C��>�w)[�˒�9�Mf�D7O�s(i�8ݵF%�+��h�+� ����_�� ���gQ�`��8ih�Q��M�G)Y9	F��ܶI9�$r�̍����6)��cI�,�pJnۤ|�K"s:fD��!Xr�&�!K"3C� 
YyD*��Z��$2O��iլ��hs�1��M��LXy�Ē�L��6i�B�D#d��d�G�4OkvE;(-�@�"2x�{�[Ҩ4�JT�j���A�#6���(�AV	�̈���s3a�bu>,0�Y�x�%��\�D�Ɯcf%�4��Cf%b�?V"�,���Ͱ$�J�I7@V�Jt�]�jDՈ�>��'�33��P+3�B��3�͓z�d�V��4��Z�<c0@�B��n"&�Q#c��A�aQ�B�I02&��M�	��Z�en��ܶI�J���`Y�5�m�B�<���$"s�X�hvt0k�l7�y4���B�̐#�Bj��J��?jq[L��f�֑�A<f�c&C�d�VjMܘ
��6)�Bj#<��:w��[�ݢQ�:˺�Hd�����,ɜheH�.c7� [qFڱ������f���<�x�� s�KA��\N����>�s�cd�FI�h62�1�ƘY�y�1�z,���ǂ�#��X���X�9�Ȫv�n���ڱ s"���03�� 33�Bsߘ����9�9wŜs�dNdf~M3�9o�ܶIy���Ę�?��,��R_��Ǯæ��KrX�HZ簐��aQ��4<�2�ǫmR�vցO���|rۆu�Y~���C�m��'�X�s/#��}bͅ�>�\�Țx��@֤�Lk�<3���u�G��Ҿؘu�G���Y�p$}���ɰPg�]T��3rۤ�
Y~��š����<�Dp~���;�@���}�b�a�p�Ftt���-��Fhq�TM�Z��T��b��Q.�E������9�y�i_,:|x��X�a�Z��7J�ǼX-��95��j�#h���j�;`3�'d�5�*��2ˍ�<�!Ԣ�i<OL/�G�2���l�~���fm�D6/Faffmwf��&3g��'�����̯i�~�+g�p��R����.�q��΋��6)_$ǊʌvF������en���ܶaEeVT)�eE��+*�@#�^����b����|n0krolW��K%k��23����G��Ҿ �9)*O�wx�wx�gy��.lq:�VTI4ׯT4m�]��9��w�(�K%�YQy�ĊʣF�<|���{3bE���"8�V�A�����^�E޲����a�N3�����!���~�L����Nw��Tö�EY��A��~�16����dޚ���'�s�|��������~�����������������>����_�S��S��?x���@���`5
c��m �F߉y���#X�߽?
�ۯ���d����(�vt������{�G��w,A�����6������u����/[���kp�I�w�&��%���@떀#��x�*�{G����{��N�׺�w: ���=�������h}��=m����Slyw[���x�Y	8��nz�p���,~����[£]i]�}8�	@/��2�VWC�~�c;>�v}�ՠ����~��X�?C���'�����E�,��beq.fe1�}�ʷ�Ԓ=2{�SoCq�]8�0$^"v~ ̀�� X�w�e�2qm�w"�~�����T�}��M�G�����Կ�KQ��u�`�ŻGd}5��52���;�£�0�.� #��蠫	>��E>AK����l����U���&����rsv�;,7k�]%�ӧ>�"I�s�S(syλ��Sڇ�X���^]%w�~2��@/�Q�z���p!�	c�;v#��[߉��N�r@w�n 淰��g���!��S%wD�蘿ظ#���IG:W��I����p�8���֧���9 O���cĎ���z2f�ƞ-�ԙ�y����v1/t���G@��6��l= ����x���gؘR�F)��(�(�"J�X�cU�USJ^�&�m����8o�&߆z��s���i�,$f��1��8�������'؟��
��4ŝ&]�< ��D{�'Z��>�� ���g>��6i�|�]R��d����~���Eo�(#p��bc"�޴K8�B���vg��8���8��8i|���'��c�0�S�:��= ��A� L!-m�����~��1Y� �����B��!�7Y��0�y��fƒ##�(r����~�5�}?X&�����d7B]y\���ip��2���WdDu��!���ݐ�ɐ�v��N좫�t�����5�Q���T�Cn4�>`��H��Q���ˁ�S��R�H���\�p<��Kr�&��/a��X��^%�!��1�û��)ab�S�Y	��j��j�5���Ťs<�q7�R�t)�� �8_�����hN�R�J���Lx�ܦ�'��h)��}F��c�jRຟi��U����l(����$it�Ü<̹�y�O�&�9>�ALq>��(��0$�X-�����>���wj�?x�������7ܼa_4�g�-t&�B�Wq�;�UM��U}KڈWPC=�U9ϗ:��԰��;oȘ85�?2=x8dz�Ί�WS:�-�A��A��0�0�?mnp�~n�	`7����迧��-�B�Z�1QL-��!�E3��3�2}�ʘN�F'�G��d6�+����d �PM��N�"���MZ�˄�
�Mh-��qˠ�6��~���;��{���,p���E�~���|�MUq��ｯcID���Y�/h��?C��i_2q�Yz��:wc�)r���SLPB�����Ȣ��c�c�oh�O8�CMU��"�[�ķ���0�>��g�>f��3M�_�+^���4[����I;��(��XM�|���;���O��G�s��ڹ�Q��!T�&����7�K��s�����я�e�<HAE%�����BT��k����������??����1��w���A��>���iBx�Ad�/���!|�8����� �[3B���33S�����/��<�4�CJ�6��~}�mr��}����M�!^����p��+|��1��{������� *�b�&Ã�#��ax3����_h��FX��n��}�^�z����5{�d`�3�ǡmҎ�`�1;)h�ګ��sO��7Z��7��V�z�+��.fg��ƠmƇ�&���ƙ"� �t�p�I�I`|�f|H *``�+�X�Y�Y`�Y Ǳ � ��X���42��U1�ǢmҎ�?�ޘma�'�ߑS��M2�ǢmҎ��8\m����M�n�3�u^=����ϼ���߽�5��̊�O�Lݧ�?MĢ�s�j�Ď����}�6����@�́矘�b3�G���c���龎`-s������rbNL���Lב13�H�uϣ�(�_:��y������Qw�X�×��mN����c#+��%aZ���&A��9	*
��5�q�����@~����L�`�Ҵ�y";��#����j�ܨ�o]�{�Qw�Ւ�`e�q�g�V����E�#R�yںA��[m������b���3\�ސ}b�sc����@A�x�m�3�����[�{?c܎�ܡ�qkjK\�|~��9�ޖ�b�0�5̧t[�o�h}�m(B�n���/3? Vآm���w��t��c�v_���­9�C��7�H��\m��g$z v������~"���=2$����@��wE�T�L�@�_&-�$�vܪ�)����i���g�B�tv<S�t�.fݻ�u��>aJ�<(��AF�(AA���/� x�%���'p�    ��ڐ��]�ҸWƄ������<0��1g��L#iB銢�L_���PW�>zO[��nRO	�wfcz\����1N�1�&�r�r��;�L�xS�`ʥ�[�E��Q@�R����������YC�+���$
��g���<������L!���@D�H�>��c<�<��I��$D�
Z�	�� r�8�1�� ��Pm�A����<}�Nh��G�lC��!4����j�&�T�WZ
��މ�)��}��.�=�G�#a����͏2x\��&@�<��Je�JS�GG�'d�YG,<),����q�e�11�1�D�ȱ���uc��c#�>-��>��*�U��H_x�y?К��W}�}M;)�'�<RF�"W�--��KG�1RՅ}��Zu�*h_f�4u�_����@��c���T�)����R�F����"�>�S
o7C�0vZ��O�O���M�`:I�pF�3b{��p�u��L(�0Z�NV{�NR:�?z��
̡ �ߠW��B'��XM���bD��i�H�4p�C�Oi9i.�蕠�G�k$&��B<���Ή�ݻ��'�O�֗���G��i�0�i�{��bn��\�z���(�ϳ�^-[�xY�sӫ�,g��2/joZ�q:�;L>ߍ�,炒��YU<�jhZٍ�t�Xt�W,:vb8kH���S+���57{��XC��ۀu�dǺm�d��!�v���#Ŀ�?���Ӓ,�˄9B��5�m�����u��L�L���6L�,����j�'h����ZbY�ѴKْ�6i�R �˪��T�6�g*V�e��~��~��&��4��a��o�x �����*$�2���To���%�e!$>�1��&|�qE�$P�Ͼ���rM����$�t�=�1��N���H��4T�X�;%F�"W�"�nb�Knۤ=#�"ݩ3Y���M��E�Sh�,ҝ��H�R�IU�+�����hr,��p1�����>���	T�ۨ����
qO�����c�qB����(Q�2����s�1+���7J���,��?^��$��&�������:��0�"U]�0ϓ4n�ߞY�ݒ���л�~S�4���Y�wēp�����X���ۀ%|�dǺm�d+�;��S�G�y����cO�%|�0G��&�mR���orZ���v�ۆ�%|�~S��la�˕-,�;jv�![r�&�![�$|��=Hۋ�1313��Mڙ�%���F���

c��d���OInۤ}~
k�&��XStD*�kCYS4%F�"WŚ�nb܅Mnۤ�˚��3Y���M��5ESh��)���H�� ���b�/��W̪��3��Re���?M��Zi�S�z���/��:+�����y���@�����^��8 ϣr�t.'rbv^LOw�~;?�̉���g���FI� K��ŏ��?7I����)�1��9��J�V:����>�َZ��ׂ0���X���ۀ�l�dǺm�d�f��$��ˋF�y���c���l�0G��&�mR���mrZ���v�ۆ��l�~S���b��5U�f;jv�![r�&�![��l���:Hw��~3�1���m�Nh,
�L5��5��=f�5�M��%h�ØM��� 
� �UH(�侯�N�˱焫'H;cM�r��qK���)�~�Mt��jJx�t�F:�ј�	kL'��XczD*���Yc:%F�"W��nb�Knۤ=#�ө3Y���M��5�Sh�ҁ��	wO��+�����` aD2�@�x���Y�6�?x?z�K���y�ß�Xs>��ǚ��}՜�E����4
�&z����)�C]���箓���1�?�����ؾ��L.' ��^Y���=��*��������ks�!,�=����Q8�f�/�n"�S��}�	��ttϏh��.ә�I�Pv�ga[���}elz�� ��Bᣗ�c�g��s?�bᑜ��9����h�z�b�jKͦ�r�t93x�'�Vc����.96�a�ixt&q��>x��`��RΜ�4NὴXUbhNn����m��@DP���Mpt�L�L4>L�b� �ʔ�XXp�-�͓����(�ǆoÓ^l��\�.dyBߞ&J"?��|2B����<$��Y���?�vɑZr�&�+�'��%SS��M�)n��9��l��^ܝ{�^���0�K1p@3f��R�	26����J��c��N�Q��U�����X�"U���E�,u�:�e:Inۤ�NX�:�F���j��)]~C�s�@O�em�gp%k;�`O#�w�����i7H�������%��?n}B��M�e���c�āh����33"'���L����>,0�Yz�%�CW��?^�t}hέ��vA���{�u�Q1Z��rR0��.�n�q������/�ú���s��ڿ�n�խR����bz�=��O蹅����1�&t�K&��+��|�b���qF��YQ�W��1�1Ҋ�LR#DR�d�$�ވjd4d�����4d��Ə�8Jc�K�r���:�̆�Ć������0'��\G�.��b��$���{�И�Ơm�Nhc���L�4�bm
�=�TVkM���1�֌�<73��*&���@5�Bb�� *��hǀ���A����P�֨?�Em0�QфO �!���j����W��D���*��GL'i������s���şG��R���şSb�)rU,�|�&���M�3b,��:�e:Inۤ�NX�9�F{ h�p����Bk�oxF$30$�XR�%e��yB�=�O���<�}_E�e��>�_���� �Уx@��I�1���wv�mG�N�� W)@�!E�E�'�M��.@��7��;࢖b;H���G?�@dK�%ˍ�>��+�I�;�P"E�gg�?dʔh��gfg~�������\w�~o��e�+���4M6�����{$M�=<�{��b���;���"�b7��?��+�A]d"��#�����I��_��~) �y"0 ��D < ��u �&�y���9l'k�8B�#Dڄ��S�N�44�B��c�Z�-�?��G�~D8��8p�C�j�-L-�hn����޵�=�nq@�"Z��-(U������5nqPl|���a"��������P�'y��1JC[����)�޵��]7g�ȉ޵�.'`���q�,�9rc��r��'�w�Z�I0�e���*`+�I�?(E�:���N$Hx+G��C����4(� �mׇk�^2�-���N�&ݍ�}z�G�I�� zQ���b�qY���^)�Pʩ�ܤ
�JAG[A��Q�ʲI��4 5k5x]�Z5��@j�	�	�9$Q����zDR�I�g�" �_Ƹ8�����'53�HQh��PO�����@��V?�4��+�`�j�ƚ��@^C�KEE.4#�"�W �ZDkc]Ѐ��TA�kT�"K׀�*6>&����I�=�d#�8������e�<�ҵϜ����p|��G������D�I�k��o��I�^LG��p��h��e�8Ɉ"q�bF���|���f�2ɁJ�����;Fik���z#�Ի6�CN���L9ѻ6���A��!(��7?��y�}����}��{ɟ�����ɧ��.�㧟}V�ug�/b��i���p�W��g�}��-9���H�J�灻N���\�u��}�;�:!ـ�M�ʀ���$A�=V���8C�cʮk3�m�*`krY���ci����<�r�5Y�l�Hu:�Hu
Pb>șՑ�!g.V�uy��Bya�`|t�����Cx����y���&��;>}�21L2������t!�B��MwY��!&N��.E1aC`CmC �ت~�m�?:�gM�2��!�RI"¾cP�HDT/��D�N�q}4Y�b����fP:�#ջ6��H5a��m�j��B�J�J�jT��U����Xu:�}��/cN���PeJ�9 瀵��[�ѧ>���J&_��?�@pV�}���J�J�jP��|�]땏�-ipo������}il*= ܜ:�/"}��2Zt�@���]��n}@    �17�Q0X\�nq�vE#[#I:�L��7'��oN�w��9t�o��:��M��L��k�ݗ�"Lʄ��jN�qK\h��럇6U�q�4(N�7�-�+�WtG '��9y�̑j��:2�p�7���U�z ���Cպ��\��'���>��h�r��E��X?}Y�š����
J�Ru'�I��ä�>����djt���L͙,ǜz���1g��L�+T�|h��/A�LZh��BG�E�[�U�lnU\��r[�՞<iW�������6z�+�:��zw�" �
@w��[]��v�y*_Fk�܂j�d�$'�r�>=��,�RN�4('܂j�h�V�R*h�U��5�O�g.j��}������9�����}j;����_���L}�=*���U_��F�]}꾬�h)���,}���l�����s�h1����ld�ݛ3���{W�|�Gު��D���Ʒ��a�ެ߳�G��O�aL:�\V|\���-������u�I
Xo�F�S����<\��O����U�t�|���j3ť�l/{�~�q�V֏�K�igX��VLz�>���"y���������������m{Q����>�x5^���-z��Z�m�ȼ��<���������`en-���<�_kw:���H��>~}~��#�GJ�)���e�7�K����~7��ۦ�+g�|�����s����pO��d��~X����X<���b���p�L!�ƽu�˜��Q~�������/w_��쨘d�����ƺ�(���f"��n
��e���w���o�g�5����D�6�H@���h@�0%p��?D�x�&��� k�
��@�*���@�*�#'�o��X����ߍy�?�E6��\4�G�6�����8<����M�m>~��չ:ӓ�Q����ߤ���뜡d̊��`�{�n�V��;rժ������}�_��o�:u�u;�Z�����������y����p��̩{I���i�t���x�1�H?���d��_�S���=s�Zt�'���r������c)��J'�v�UFV�<����������'!/���k��o\N:�o
=�7��(A��w&��`^��2����{�}dw����/X�5��?�t�s?�n~Z�1�������CZmC.>Nw���npW������^ɋ?)}u[Efx<~!�Z�����ԕ���śq��7�eǞ*8�*�쵏����{����������'6�^��\�Yl�[C��\��60�k�6�r;����GN~�k�_�����t�"���LZ�E�_z�..�%��l�=:��^蝰�����ܾ}!~�����촻;�"�݇s������Yo�
��̫�޹�{\�4���gʍ|����p��-f㷜��mpҦA�A�E��шdr�ν_����'����j&es����L=��j�&F����<4��`D�K���2�[��5&�.'�.�����{7���kɔ�x獒��T9/��QCrUIn+���VZ-��yHn���{��z���Q��o��Wn���\�w]U-	F�5IpgR�;�J�诼���'��"Y/�o5=���U�	�m�A�M"��/ţ_���aX0<�<�C<JC�� ���3�����H�ߝ��P�t�D����ƺT�CfA]�v���"��0G��2%#/G��C/Xŷ���'�x��1l��>�Y_�ҦT�H�hȈ,m
+�w��~@A�^'CH�@#��*4�R���W>��p{dT��\A@B�T1Sŗ��o����?J�^�0{$7)��-�A������GG�g�y
���v4�3�U���7lP�6��Id�F���7����/�A�,���}�Z��y+�糽���?#M�暊Ƌц��D�r�MN��Q�ٚ���k_\GPl-@h]�a)���ٓl�%#0��{.+�(�B�&��_��o3w����ˉ��������s�C�)a�l	L�_q���F7���ً��&��C�i'�F;�g��������~��j�_�uvx�X|\e�Z�@T���E�cՖqfg4�σ����DW]U��<�RXt�",��1�4逥��fn�Dl0�W�p٨���̐���c�����,K��E0rJV�kc>`��g5�[�6�An��"��]\���Y�X�0풐M��X�`u��T��y����R��1=YUW��)��@"���s:��A��s�M�H�|X��ʳ)���ȏ�|��8y4Qȡ�+J$���.(��Ӌ�2�N��rBF�� �Vdl@�Y(�( �F���V�{�&FEL��X���6g�ȉ޵�.'@�-�n]�a���T��]z�0�B�̍�_���D����#_@-v��wgp�q�%ك�N�&q��G>H��iP��&d�n����."C@p��(��� ����,��ܭfo�8�c�Q�<���J���K�um���BW�8ҷ�}��k~4��B���ǀ>uD ��� �/"�� �j��/���/3�l��tA�"�9%�޵1���ճ�-r�� � |�_�.�h���r��ohvIȦwm��l��U4^�AZ�1J�G�6֕D1Jd�	A!�<D�b�?E��X�O�)���`��P�gCa�1JC[Lѕ�)�޵����5g�ȉ޵�.'0E-LQ]�a2�i�{.y�=wY1TQ}F�*�(o�����2it0��>R�C���������'�.����ѽe����v�&i��K��s���':ݤ��?��Q�b������+C�.�=�kd��p�#�,I>�\��-}m�lC+�2���;h�+^h��l�k�Ȫ����_��_������C�E0rJV�kc>`�f�g5�[�6�An��"��]\�L��L4��쒐M��Xٔ�l��\���^���!h��ƺ��E��L��ώ,]
����y ��y�9��р�9��H��>�}o�I���}��'���c�<�(�����NZ^K�}��M��bj�}��Ģ��E&'0���@���2�i#Fih��1�r�"�wm�W�`L�3Y�D��X���v%	4�	�IqbwK���fG�1U�u: zn�to�=Ϟ8��A���َ���B�9��/�9_������K'�>o$����� �%�xw��xq�s��f+���.@ם4M�.�rYYC){-�~�Ou���Y��-n�� �Q�������+�d���	�t�U�t�<��*-2/m�u,������ndl�O� ��
�v��#�����a�S5��s�F �����g=���_�n*�u��63��N�ow��/�����p:�N�i������
)�h�6M�.-�k�bW�Do3�S�������%B��Q��`�<�R���T/���[0$���mq�+��BZ����tP"��䓀T2>G5�,!�h�Djz��z����p���!q��u����OM�n��E:w�/��ʌO�0�D&����@���1�k#Fih�u�rS����E���͙,r�wm��	�k�F�V�z�#]�
}n�e�`m�ܪ���ݢ����n��� k��m�r�fpO��\������x��M��t�4鶒n�[:�����ÇQ�]�����x�|hj�ѱ��/�u�$F'��� x���D.NT�v}Q�����Ry��[>��<-a�AW'�iR��~����!�Ղ.�%�~��x��@�8NXrQ�)�占���T@"E��"C=�
�!��N�cȢ~�Q꧞[S/����!�!���j�DAs�.�ЌȊ\�\��=���X�ح(�6��MA�v�Vh�ʌoI�023>4�n�R���Ja�wҠ0�9�Dр�3�}@"E�az+Oz�t-3�
���q�h��CW���9iy-u�M�7�Ӌ�
�N��rBF�� Vdl��Y(���������
���M���޵�^�l�d��kc]N�?4ڕ$Ф'�'ŉ�-��U�Te@�� HY��eň�쉇��Whp@�q��B��>��   +��h�G.�8���tp/�⺸n0�=���C�{��
�}=M�����~6�I�nO����?�����e����H�������J}P����%rq��lR�� �%�_
@d� >$Q  �zD �I�g^* �g��ɚ%����6!�S"�FD�P��دr�����Q���-���r�S�5���!D�z�wm�CϹŁ[���ƺ�q�Jd�F�*�t�[���!B�Ⱥ���+26��,��I^��F���Vv}�&F
�wm���`�͙,r�wm��	�u�F�r�2K`�ܘ��\����ݳ�}kY��
�J�`��J�ί��	�ʑ�񐺼�~=��;�}���Z��L�_�k���Iw#i��^��F�� �^�_��r@�X|\e�WJ9�r�47���R��V��Dk�²�lR�|�!H�Z^}�V�����cBwBjI�!5Cj�Q��lR��H�1.NA!�q��I�́�$R(4�* ��?P��Տ(��J,�y���Fc#���RQ�͈����+���X4 �(U������5 ����I�kc}�a��و$��7}@"E�az+Oz�t�3'?� ,���D! �.�(=�s��Z���>o���Q�+� '��d N2��@������6�'� Ǩ٤Lr�ң!{@� ��Q��s ����9�����=�EN���u9�n�hk��A����?�Bs���g�~�^�^�L�7������~���m�������Y���{��������۳��      H   4   x�3�4 ²���N###]CC]cCc+#+s=3s3CS<R\1z\\\ �      :   >   x�3�LL���C!���tu�,-��ͬ���L�-M��h[Z�����s��qqq ��     