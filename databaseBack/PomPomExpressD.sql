PGDMP                      {            kfvpaoce "   11.19 (Ubuntu 11.19-1.pgdg20.04+1)    16.0     @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    15069667    kfvpaoce    DATABASE     t   CREATE DATABASE kfvpaoce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE kfvpaoce;
                kfvpaoce    false            9          0    15913245    user 
   TABLE DATA           R   COPY public."user" (id, username, roles, password, mail, date_inscri) FROM stdin;
    public          kfvpaoce    false    242   1       ;          0    15917020    article 
   TABLE DATA           K   COPY public.article (id, auteur_id, titre, contenu, date_crea) FROM stdin;
    public          kfvpaoce    false    244   �       )          0    15069680    attribut 
   TABLE DATA           8   COPY public.attribut (id, nom, description) FROM stdin;
    public          kfvpaoce    false    226   J       =          0    15927821    commentaire 
   TABLE DATA           N   COPY public.commentaire (id, utilisateur_id, article_id, contenu) FROM stdin;
    public          kfvpaoce    false    246   �       +          0    15069695    voie 
   TABLE DATA           4   COPY public.voie (id, nom, description) FROM stdin;
    public          kfvpaoce    false    228   /       *          0    15069688 
   personnage 
   TABLE DATA           K   COPY public.personnage (id, attribut_id, voie_id, nom, etoile) FROM stdin;
    public          kfvpaoce    false    227   �       0          0    15074222 
   competence 
   TABLE DATA           H   COPY public.competence (id, personage_id, nom, description) FROM stdin;
    public          kfvpaoce    false    233   �       %          0    15069668    doctrine_migration_versions 
   TABLE DATA           [   COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
    public          kfvpaoce    false    222   �#       -          0    15069705    messenger_messages 
   TABLE DATA           s   COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
    public          kfvpaoce    false    230   k$       5          0    15081655    normale 
   TABLE DATA           F   COPY public.normale (id, personnage_id, nom, description) FROM stdin;
    public          kfvpaoce    false    238   �$       6          0    15081664    talent 
   TABLE DATA           E   COPY public.talent (id, personnage_id, nom, description) FROM stdin;
    public          kfvpaoce    false    239   �&       7          0    15081673 	   technique 
   TABLE DATA           H   COPY public.technique (id, personnage_id, nom, description) FROM stdin;
    public          kfvpaoce    false    240   R-       1          0    15074231    ultime 
   TABLE DATA           E   COPY public.ultime (id, personnage_id, nom, description) FROM stdin;
    public          kfvpaoce    false    234   �1       D           0    0    article_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.article_id_seq', 1, true);
          public          kfvpaoce    false    243            E           0    0    attribut_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.attribut_id_seq', 7, true);
          public          kfvpaoce    false    223            F           0    0    commentaire_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.commentaire_id_seq', 6, true);
          public          kfvpaoce    false    245            G           0    0    competence_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.competence_id_seq', 7, true);
          public          kfvpaoce    false    231            H           0    0    messenger_messages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);
          public          kfvpaoce    false    229            I           0    0    normale_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.normale_id_seq', 8, true);
          public          kfvpaoce    false    235            J           0    0    personnage_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.personnage_id_seq', 40, true);
          public          kfvpaoce    false    224            K           0    0    talent_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.talent_id_seq', 7, true);
          public          kfvpaoce    false    236            L           0    0    technique_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.technique_id_seq', 8, true);
          public          kfvpaoce    false    237            M           0    0    ultime_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ultime_id_seq', 7, true);
          public          kfvpaoce    false    232            N           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          kfvpaoce    false    241            O           0    0    voie_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.voie_id_seq', 7, true);
          public          kfvpaoce    false    225            9   �   x�3����M���V
��q�wt���S��T1�T14Vq7I�
��,q��3���J6�,�JuvΩ�*1����3Oqq)-�30�4M��r51��X\R���ZQP�Z\�����id`d�khD
�V�V\1z\\\ ��'�      ;   q   x�-���0Dk{��R�N�� �8ᄌ�c��sd1\ �����on��L\Y�Q����`V�m�(J���=>[G�/iT�����S�M�,���	.L�}����9{�Xk�$�      )   X  x��R�N�@��b;7�o��H) AT4��vV���=�����(�c��(��T;ڱgfwo_�*,�";ڂА�(@N���̐�f�`���v��d�{|�L:0�G���`[.	m �PQ��U�8���T�)\Jo�8
�D�$��m�K݇,U�v�G%�F��>PwQ�Y�7��˿=5�7�.:39Z7�}F>����٤�P��^}����V81�)r�L=�y��ɢ��C�ut�>R�3Rc���L��d�jHQ�	�� 6��2^�5��p��O#gM���1w}�%�ŏ~�{���wu����8/|��؋��
оwCf�sM�c�����x      =   m   x��A
�0��s�w�B]x7�܄��NI&%�Q��J����e�w���jBUS�ȁ�]��?	u�ao����J�MZ��p`'��DIo�H�In���R>�gyM"��u$c      +   �  x����j�0F��S�.;C�ס-�BJ!���\{�;D9��qJ7��}�XG�C�Kꛝ�4����U�HcHmd/եg�{v������r�-p���ug�0QP/�AG�R�s)d�$�'"�u^��#E��j�ՕI��b4��gt���ϫ�{T��������$�rX��sd|���_T�C�x��������.\��+��E�l��/�F/���+���c��p뷳�������+ݬ�[<�yq�(-N����q���r�r�Jh��:����WG���+݈n�#y�y�˧Б�tM����f��'Ǔ��cd��K;������'Q�m۴�nc��o��U�n;� ����z�Y��Nm0J�a�z��QnJsPσd��f�"�[�
�C���u�(q�{      *   �  x�mR�n�0=�_�cwb[��c�bͶl� ]��2�`EJe�X��#���>=��G�(���q��I��4԰�'|-)�s<E��Zh2��$t\Q���,xwF����i@PE�-|J���c���~���a����������L��\&��)S��`��J�j�V5l�=s)� �3�O$�a�
���W��-��	Ó`٩���l��ae����ۃ;���C����FAS���H��+M��:p���W
�9�M�����>/{ע���wh������;�U$k�`�N�/�`�r
6i�|0U��Kơ9���bO�d�1�#�����5;)X���)LAb���s".4�wX��oA�l�A��#������{��Ոu�1"�IA��k%X����s[�܌$�*�	%V3e�Z~��rp5���þ�v����Ǣ(� ln�       0   �  x��V�nG</�b.m� DR���b�A�%!H�\��^j�ه�AX>�j �� '��O�zf�����$qw�����z��8�&+�(T�k��A���J���2�j��z���U%���ʉO-�9���W$r5�$���T�'|g p�WB�%�#�����{\�B:'q($�^���Ik�5W���gÓ����ew��J�4�j?�i(�8��p��A�G�K'���d��EA9� 	�dn�Ţ]�=Pz�jD��h�ZH���2w��Ģ��Rkծ�n�{!��R�k�jeP΋�l��*�ZR`22*
�]���`�r��������7�OD�yȖ(�IAbPn.>A�v�Q���U���9�-�/�^Qŵs��I�Qv؛d���v])� ���xϾ9RE�o�����B�U�R�� �
��[�0�u�='���� �0P�b}�J^ܑZV9�� p����D�b {ػ�.�[	��Ө,Uh������@�Rٓ>И��LIL�\*#TY�녒.��n��L&g�8Э6�y>T�;�;��m�Z�+SW�r A��н��� N�گH�ao�M��5ӭe�qƛ嚇G��8�+7�S���"��5�r1:��0�(��I�A�0��w���;z&�;o��3��/�����@(���s�l� ���o�����/N���wP�ݮ;�,Q�Eb+�
�!��0.1�!k؛e����Z�t|v�&^�x%�Q�G�-y���N'=�sJ♰1[��	�_z�=�U��Y���,�I� ~���Y�u<�<"��J���S��wβ@B.�B�k�kE�>?06x���әss��-r(�O���}B\k�:�`qO�/"6�����M�1���c[2<�1�N;�oDn�9y���DM�;?��NS�)ų�&H��w�]f�M܀��^����r��Y��i?�d2�`8�c!.�I�0{�J|2���h����n�Q��B��χ�Z����w��YF"��ׁ�}�[�Cf6�7d0#�c�x�
�`�aEqScĥN[e�!�3�qE� �ާ�]縖? %�Y������i�v����lؤ�?Cq,֥���zΖ�����]2\�5�Q�ivz�l��s-a�a��8]ǖ��~�s;~�t��Q��T�ks�G��{|��TP��_o���ia5�8����>�M�{x�����g�ቈ�ݷ�\�,��,�E�V|�ߛ���e#s��<<] �]�����Ӱ���E&Np      %   �   x��бn�0�Y�
���㉤$�Y�v�RA�%��?*��)�t� ��������}��>����X�����`Ѕ��Ҿ΂�>	=�dɗ�D�AQ�N��5��O	Ո�O�a�$��!��	�����K�2F��op����:�	�h6�!pB�δ�'�U�D�F�Z-�������C؀Q      -      x������ � �      5     x����n1���S̥�*�4M9RE��@
�^&��t����OD9��8�/�oҾ�mAHq�&
���Y����m�V�@���W�^��.�T� '��c��LcFP����x��C��Q\ӏ��_��K63�!.d,#�:nuTG�Ք3�)�)��w)�qY����]�UC
��z
�ZR�	�4�	�2�6ɺ�@NꝨ5fy�����SM-��tunKs�i���[�|T�m�0���v��mU��tNթZ�*iۓ�(�kBs�ѧ�:�����[(�9�a�w���\_�U��b#�4�8��\��M�yHsev���3u�F�&��B�Vo<kv$U�=ʜ��0�3�#�`�ע��@<xA��(&<a_Z�5Hw�O4�3�h�]~[4.#����v�mqw/�v��ȣ�
9/�p���#~z0�z	Zor�pHƽ����{���A{���Z?t'gQ^����5�\��yir�=�����^�v����N��v�uy�j�~����      6   �  x��W�n7=�|/�$�`�md���p�@[6 N7gD��lsH:���-�|���U���4r���&Y|U����4;�^;U��S�P"��h�*{V��1h���V������Ϣ���F̈́�ʜ}�Y��Ս�!�1�=�|�8�O����^��d���{�.���?�jmt�������"�e4������Ykܬ�QBU��O�l��>���ʃc���N`�-jBuxx ��u����ȯh�O�5@�	>��Ņ�BY�ZE&�u�)7R;��+����kX�h��G�T����R��pcڍ��r���2��1�$lrz���6��΄�	#�e-s�-�r�jC��d��2��;�n��P� �]�B�St-ߑ��۲Dl ɋ��E)��'o�+�_�1��z�I[��*�!_j�E�7��5�"��	56{9#G���h8
{���Oq%cP���,� }��-Z�6�R�X�]3�I�ԫ�X̄�`�k�@$�'�CE�ϥ���!"�S�@NV�)�"i�����{�U�!���ȃ�"2~5��mLq��^p>*�lS�ԕ�wՔ `��z�'b���z�-�ǴĢ��+\D�\R�a�p>9Ύ�Wrm�\�6Җ��6�Ο�����7�e�y�5�l}��֞"��6�@������JQ���gB�)U��2�p��i.<�1�K�E�F�<�䆕ʾ �����je�Z�z�����j����=����'��Ė9����D�-un����8���ж��h�)�=����T쾛�ER�¸(4�k�ҾŃ�L�,jgkG	��OX�=��͗ �ʪH�'RPd�L�擓�${VU�J�~P�h��'��V�u��9��E��r�o7� ~1�
�~�r��
�\��r��$������@���Z������-i@Gף��~�`�f4�r»�q隻�;9�%���I�E����x�I�le�ڥA3f�,>Ȝ��j�k�T����xq��J.Pץ�9mA�NW�����=��'�LSO�����I��e�����djp�M�����=d��i�+�{W�w��i��ԟyȷƐ*�G�:�f�QT�����#?��4ZWv����v����� q�Ml��Z�y�|�T����'�l�5�h@
�XC��g�w	W����(�/V���2�W��[ipw��x~�Q8�g#|��^[r�%!�g�.�N�Y7���u��(�#��~�0�b��yR64~�F`F�f��pyٺ/�Ǧљ!�x�	��Ou3��KJ��>��0��u �IO��w+�����?���)M���<����~��Oβ�윔{�4KvIM���"�_���T�!�%֖�|�Bh>mt��TS���)��p��2������j�}�lQ�+��d�a���9tӣ�-)J�D�=?9 ��������=�85����vZ�'�=�]�V�B�o/9W�J3`R�^ �GyD=�4}z�hEC<� 9���LX歹��_f=g�b&&����βO2�8��hq>y�=��o�$���G�h"t(��kHS�l����A�@C�i;�p���c��Uܵ�7��!fMY�+�щh`\wӴg�0���J�_�G�ǲzl"N"Q��>Wi\ʚ�NY��i���tt��Z���"�2�RJX���Q�K梃�yNx�BO���x��'��'�ɿ	��      7   �  x��VKr�6]S��fJ�J�Ǟl=�$5�x����"lʘ� ���r�,Gs^,����.��$�l���km�M5��:EC��bw^�qW]�qG"���m��)����_��v:�ۤE�<����i(�ĵMAtC���&E1Ϋk��R7��Ⱦ�vܙ�+
�w���p�S�6�����V��(lu�]�ԧ�{���ǯGB��f�~�WՍ4
-�c-�;�&��T�>���Z�X��	���k�E/��跜���f*��į/����;J�p2�՞��T��*W���u��lQ�Pĸ��숹�?�������R2�f��)Nd0���� ��!��۴�̔R����B��:��8�l���qu\]��q�#t�:�t���:� �,ya{�D�:0Z��OX/c&l�Mݐ�+��O��ݐ5�m�g�R�|)��S�<����� {���RDR7�k񳥽>v�{�� n��΃����+ȝ��٭2F9�!�h������Wz:��:�_���-�\�˚:��4�Rv���^�(+�4� �����BnJQw:��a����q�CmMʥYgX+dI$�B0TE���ϰ�����p��eD/�t�z���[�U�9l"�,����T�l-9n�"JQ�[�n�@�5�j� ���e�U�b�+{$�1A���t�.�F�:���r��R6�\&�p _�&�*ܑ��a*	�n�-�?6����>�T��̐V�����QPS�K
y[��^At��c�!OS��QaS��@W���JD��L�3el���y�}�M�����GiLqu�㮇	�ؽ�K���[s/���`��6����x��W[<�N�s(���-T?r?[���V���c���%2������܇"��P=-���	W`�Rl&oN1��Ph?����8{�V�Kj[��J��}�\Ts��R�B�PR8�MVH�u���>|b��n'i9�g�Y�)�8���Gh�&[>���3|au��je(y�kLF1��.���]ug�mi2R���6ͳI`�����0��x�zJ-���B|R��1�#e!��O� ~J�O����ٺ���k�����]�����r��h�a��P}�.9���ey��$�+x�)y:��0_1�����k�X,�j�t      1   .  x��TKnG]7OQ���4%{)۰aC@h� ��fϰ��Q�7�-��<Y�s�T�phYb��|��^�{�z.��}��^���}�����y�[]+������	�A���n�ޣQ6������O����;~y�mmt�dAY�Mo�&)P����G=L��jp��R)��_˨�� S�gl�>��Zq1�Pi;����(&�k�#uB��U:��5m�=��6PJ�E��\`Ԏ��m����Ql�aF�-1�����T7����j�8�0��:2���b5-��ö�����b��W������{%���C@+3�VEB���.��9�h�o��3�CҜ4��D�(�h��Bctߝ1[2OL�GbB�^�e��95~8#�'����F�����6:�,�L(&K�k�G*Mj4��+����'�$�|Jܐ��x%a�ZQ��5���U�V$�\$�(]۱9{��%��~S����=�XL��'��A/w9�2�t��:���{D��X.�ZL���X���'��tlL���`����;�_rD�얓�y�a%V���[����WR:O��a�r���?�R%�qq�$��䎽��J�q
���B*�@q���K�oPF�WF^��-.-�:Q�~`�vw�����mq�>��ȸ��B\���ޙ�����n�I�4���@��7���A^%����w׶�$�!�0C/�-=ߘ@7r��q\IB���O�rrϠ�w�br).Ś�:$5�Wb����ϡt�Z"��'�{ȭn��t��S�>\���H�Ss�Y��I���Wf\���?I�g1�L�O�^�     