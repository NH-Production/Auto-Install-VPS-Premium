#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY;HJ� >���8�����������p�F��  `%��٧�l,�eFe�*�ܥk���*�ݱͻ�d4����E@*����Iv��D�B���HT���D�YT����p�P	��6��m�L5L�*=���#i��T22M 4zmLA�A�` &	�   `    �0 �   0	��  �  ����0OI4��#i=F�O)�z���@�A�jP  �$2T��
z0�4b�OI�4���zj<Sjh{T�C  4�4
�!4	��	����馂���T�S(��Sm&��'�~����$hd�!c���c�Gh)�PWL�����bJm��_p6��XYE�DrO��`lSi�ř��������s?Vi��c���v�&�8��86�Y>�1�#&ߕ>�hO�):��>�%��ŭ�C��Og�~���N,ya�I��s[n��p�o�cD��*�D�<�!a���1��8�K�<�$��$��W~[���l:�@��35Ɛ\�=m"��l�#y�̮Q����fK�Y��f�+C6Ӣd�-J�C&݃
��$ C�"Tm��K�	!�6!�(i�*��Rd���FX�v����ƕ�cgCj��ͮ*B�[[�*��̚#��ي�)4�;ܴ8yr�nَ�4�W�}��6x5(�p���D���L62b�'n�[R�=r2X�d��V��͒�nm���i����꽿a��f�.�
SA��^eXiy�2>���HA=��=X���֯��Y���bQ��+L�W�����_���sXs)��xm��]��s��J룟���>,�ɡO�p-'Of��7k6a{����1�ַ9�����ȥ0ي2L���F!�2[�qw�7���q�Θs��I�V��#
M4֏�����D�D�&"�����?���d��ÿ��+x?_�{����vp��{�Ə@�#�{�K�#�T�(R��� �J��xX(C�󖂨��;<�^�čnU���
VEZJ�Y�I�>(��NN��_��M�/_I��B�"ʓ����"��>��v8�i����qڴK�D��w[��nm�g��������ţo�w𼝮V���<,���݄l�3�p;�|�8��ŰM#@�ꙵ$�aT�X�����	��4�䲩��c��T�E(w�^�R�R�r���9��	��^����:n��3��n����!c�^j:%���y�g���D���iM	!��v�n�?0@�E۩"0�J�XI�Tn���)���ѐ?7���x(_��ۙ]�H���%�x.�&�1X@ÔM���� ��B�{`w�_p_9���n�peE���W@�UJ��ІPo�\Mb�ޡ9�
� �Z_IsL��miv�e��e �P�^�{6�G`�Y)��=[8F��3B�QN����L�4�����˞���������f���<��Y��D�q쁌<�%�b��;M�7S<H�e����[�m���6Zn3���S3�}�ϧF��|v�yE�Dr�Nɡ�Q�Ҕ'��*�1��\�_#�hWU�|�9z��ۦ����M8�i�A�<���8|6 �������Q���R���*|�Ֆ����Y�� \�O��^�~cg��t���;#������1�wG�N�ܽ�֤�jr��Zt��%y��p�Omn�e0@>oRY-=���J���-����x�Nf��^�{k4��s��b���I��"��|����׼Y����
���l~�:�t�+ZM�q��� ��	[Y�ƴ(*PsWa�`��[@K(���`�=�2���}�ӡ���륄�ې�dH��r>������-�6y$�z'G��g;B�ez�`����V�4zw����]y�v/����v�=� ����������ԥǜդ�U�m�������h�U����)Ej���R��7k~��chv��V7�/�k�6��g�Цsr�%Bm�EG���w�mؘ@s9k�Ö6�N_��÷�-�h��ӿ��S,��NM��e�{:��j�}�Ǉ�٧Us#��Ϡ[[sH�r���Gl��I�^h��q{��Uu�Z�P6)
PR��nnwmG�e�x�Szc+�a���rc�~��D\dq�naSc�k�ǝ��гfk���"��ͦ�����/ꕒ��$��;P�rȋL̪J�P��d��O���W�qeϋ10����-��vE��Ю�@�wq�)�Y#�Q=p�(������t�>w�����^�bJ}BEV]�sAz���� `�E&�� �UUt��^�G�8����ػ�ΦK=�cԻQ��C��=-nLW]��V�hTH���< �~V$��>w�����V �I$ϊR�X�v�5]~�ʿ�)sآ�yG3|D�@����Gܨ��}�������M$O�̦k��`%!u"+,����%�P1$T�Em��Q���Ra�#��#��a�"�b�Al e()�a���P�W��"�Fؿ1y���T��� ��I���A9K�6*�	�,�R*9�"lʇ�)�&�A���I
'Q�:���zSl�p�3��\[��;GI7)��L�ԕ��1������%�s�$}y.���pU��R�,ფ#y�CʃҘn!�y�2Ky�����t�7��HčJ{O��i��~�����U#r��ơ��b� BKdd Z����?F}���窑�c��3�t�q��!�s��8�،����}��_�>�0C(?�<��o������GJc'�~��`��K�P������Q�bF���/Oɯ�З��?vX��{D4 ����t��O�3H�+1t��DY��C�n�������}:�h��2仗.WK1����u���Ǧ�����\�����'�X_8�2��'(�9��ܔ��&�۳���Q��bGh/� s@���1|��6?�{��TIG�$Q"�RG�I=E�d�Anr0<��b�|T-�ޗ���c�q�+��^;s�D}�X��4ҹ�И3�T߃����剂�`����tC��wy�OS�-��$��i�i]�q��/<�R$jN��!����>Eݍ��֟"j�v�4�*T�c1B���$U$�
� �Rk=���D��"a�&Q�B�`�%��'��/I�5�s�qz��3Md'������O�Sy9)/�+����f�:���uL�枲|$ҧ��c&��#��d������+��
|G�#�B��a9���(��m���1a��|�2%��*cj���Q!�vT=O���#E�a�	�=�g��AϮ1��.K-�U��9�rs'������c(�ۜ��f�H;�����i��[��h�͇�{�����IJJn2lۧ?�j����\�n��᳆���̌0a��{jN��?٠����Oj����F�^��wҔ�#�}�2�G�F���C�шҙQԍfM,�JcExg
�:\(̤��K��bYLRL&��P�8b�Z#���s�h�#��,`~A���dO$��/�c�}�Y��y�����Q�++Y�H����>-N+,����}���]FIq��I����}р\�3 ��C�O��
��t��!�*^Tn��R/�)�,�(ȴ2�>���g���K{�e$��7�H@��m�EO}(�(C���@u��g�˫Y��|�>_��D���^&͆F$o���/
��1���q��ыK�["#S��"%�
yZd�,�,1Aԩ��b�<������C(٩ܒ@�R}Q�ʉ䔌$��e��c*R��1�,�����ĥ(�'����������"�p���	q��ӽ���OVzY<!�����$��"��j:?A/�� �x-�z�᳎��q7��C ����} }D�ߠ��) �Q�KX��A/#�6�֧�7� �I��k)Q*��h�:n�\��t�
h.8MfHT�Hؙ�q�8�-u�������T�4�0w�k��f�Q�Rcs� m�(�5�E�����������`pCX�����9$���uX�����:��ˑ�6^��^`o���3B�k��ډ�"�"�Ώʗ����ZQ���RI����;ݸ�[̑����]>���\L#��Q-xaͽ)\�iVY6)�����k���Ljf�JOO�[�Q�"V��<��<�J���;�2f��RORZ��E���J�*鍬�Cf��sg&���ty^��59�����D'8�#{f���*�,�F�mH�g4$���B$8Z7�_xޣ��K�h����$��Ф��T����� �����2etY3�\�!��g�'C(Č"����(��$���Ӿ�.���y5�"�xDܜ��p"���LGB�����I[Ч�4�#Qk,��R�{ުK�Z���1�`(�F�h�g�m:r4�8I�gv)�	�����Y,��/м�U�b��ɑ*���'i��7v,c���a�ɑ\�� �) ݿ�0a'0�g��NKK�jM�6m\.hczj�n�ԑ��`3�����z��3��ܴ"3Q)*LlI�{%]��0L�V���E�<Hr dv�Ε�K��!yl@9B�jR�NJ���;��*7C�����-ʵ��ER7C����n�"`j�~��ة��7
i���)0 攀��S�����uc0e|
�|T��C%LV�U
.-��Jb���v
P��I^��;�,�k�I$]�RU*�;Ƣ���!�2H/�%���;I��P�)D$T� �i�xaDh�$�θb�������}�_k	!��0��2�=�<=@���\}#����E�����%�?���z^��E����`I�J��������8$o�b�(m������p�������H~BǬ���C/u�q;F�~B?h�ʡ$�8��߃�Hg�ʑl���E=2�b���A~"?x��=�>	��;�E�.F@>��!�Xo2f`/�8U��Rn�݈����N�[���,�L���y��#�	�Q�+�`wñۆ�<t��}(gRJ��N��08k��!�8D&p��	!$���6�̾��>�d���ZnUC��˭!�(#��*�]�r=� l^e-s�ס��\�����5�a�N����qQ��V�mL9��Jb� �C
�����)F�N���-xP��E�*�V�X�¸#��6!�W��</I�n����'H�ϫUWW�lq�$�GU��c�'v��K+�#�ZC���������ͧ�p�(�]٪�ccX�*��()�fɐ/CH��y.r\�<��&~�X��lB;�t"B�F�S�>�P�wq�ᳪe7&	 �ީqb�A�yE"gD9�A3,)0��H��W�� �hc�^^d9b�H��ݙ&W�~K�{���I����be���%	Z���VD�?��]�3�p٦P�x�$�"�:̫׈H��T ��U�`��4f`B*k�5Ct����
'6�ɘ����^�dL;�Cwx!�!���;��[&�3�.���*"d��$���V���%��+0�`2�r�����@7�(���Qa�{G�FIan�Ci�&fn�leu��v���"W���m��/UE�b�UWYS��蘥J&x�J�z)!&��Y8#x�F��/]��^�B0T.�&2���f��q�6i_p{{X!�I�V��	�R���RU-)&� 6:��VP(�C��I�8����u�'>�f�(�#_8��̏ᇲl?�IJJRSҖ�A'O��`j�1:�\f�e���y���lr'�0��ӯ޴���3M#�vLtI<��F�6 �"<�p��K'��.�z��	��fL�ObK!�g�**+߲�Bҭij��Qe(h3f���=Zh�9S �`��8��u�c�w��Z+M�`�T�ZC8�-��������L�}��o}Hw��k&q��dI���W U}���J$ �L�^����H��n�SlpI���$V�^׍Kw
�M�Z�y���"�~(h;�g�*M�5ų�-1.�v���ֺN���h�L����SQn���W�3�螺�Bwu�7ͱ3��M	M�S7�����؎�8�&���W�^i�{dX�A���sN0���-�5���N��)(�$�`ԥI+{��t0LN�j��b��V�8-<���u$]d^�%�iO�0�
Z��4�X�	@G�yh�.-
<�a��_p��	HБe�Ņ"`���QiT�xX�&�
&yj2�4��U#��u�r2UQ�
	��_g���{���1tݯ.��d 3I%�MHh!Cb��L/#
�MBjb�`2�"�uS�Si:��QK��dH�#�0�0 ��*�QB��ueʸ���"�J�crE�1����a�^'��Q�IR�Y=2�����A_�� ���<�L�	�M趴�6�B �8���H����dR�z�Ab�ʮ��<��瘝�F� ���q`w���C����'`���;�v-�"\a�O@m<�N���]S��#툶9P�zV����ev����~�Ym$&!CP��c�Xsd �0��"�#Q�j%FL�TO	QE�,��J/Ox*������S�$:��I��.j���j�:G_��K��4@�F���nA�Ce'��=�i|��4�j�
�K-#y�c�Di���� �5K,.m<"e��E'�r5����)&)�qR�q���`�Ln���,�M���N��ܞe�QҜ`��/N����#�{�hH�	 0I�E3Yeh-�����������}�l��4��x��l`�2�:��]�\�W�c�Kcٳn�2�M���/<KPѢ�M;��:�v�i.Z��W�%=�(��@mfL��VI�N�\+b�H�=(,����)B��f#�*	��R�[N3(��r
�$�3�TOIp�9�13�Y
)�^�F��q�8�*R��/#��Ϧ�8d9�x| ��S%�B��I�v9$�(l�m�q�2z���z�+j�Us���>||MqN~=�w���枚�'��Bm0|�H�d �Qx��ᳳ�� ��I:�`eT�
Ywƣ��b�O祲[K4jD� �j����y�;sb8��r��mI��� �Lc��!��!�F��C����`Rw�1���2dB�#�~�Z�F�$�|�h_[�p1xubl�CѕY�⪅1� ����X�v@QO#P
B�T�ɽ���>�$E!#� 7"H���Iķ�
�R�1�1�a��]�D�Ģ*D�9�]VOڗgH&�Q��؆� x"�	)lJ1"�?�� �H
��
�C�@@�Q�B�$��:�O,B�Q��HjB�V� ��!QU�K�`���UK�}���/������v�d ����[BSAL�!A H���**Tdj+"*	7ЂT�EI#�Hy�i!�?�w$S�	����