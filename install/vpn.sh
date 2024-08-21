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
BZh91AY&SY`�� �߀R}��oߠ����`	�{�����7��ڐI��*I��������&���Rl�4���i�dhH2@ҧ��H4h  4d�   ��=�� �      5I�?Pi�F �     I2M=S�3I�������� ��4  �Di�@A��)�6F�jhѵ�0!���"�����W�����e���
�$a���#+_���m)�H��86����pc?�NZ������͍3��h�Ἰ0���Y���q��RK�ɕ`�]z~vV���S4��ŹZ�
I
$�I7�T�mR�O	m��8:@HY���4R�b�� EpՄ�{�.wm�Bj�G�����#Jg��mu��@X�Nr9u���mI���Q'�8f�IC�p�nȄ␨5.C�!�c����ݤY�4���Z弼�ڜ朼&���4�ӎM����_X�&�!:F������tTƒ��R/ӟ����ڙ��!&��J@F*�U�4_���D����D�,)��1��a��&O��,����$�N��d]��w��|����[�"��mi�S�S�vj�@� @�@!�^s�hۅ�9�1�#�،s27�}�"����������<���B��~5;,�;�����ɣ�a��/��o��-9y[	"��N�L,|����kA�Q#EZ�Cs�O)�D���#n8�K�'g$���&�[ZX@�9��͜�m2�i�nM9n��*�8*CV%��Ȇ��E������
Q,�D�0� a!i�nh"�K��N&�p�،!NG(6�}8?�
ՠ`��-���y)T��5;QMI����V�R7D�$3�����������f�$�lI��O�߸'hd
~�e��J4je�V�}��R��愹�Ï�0�wk����.���������F3%E��1��;C��/=��6�0|��0���e�f��|�l�a��η,h��e�
�T�a�I>�Iob)���7��ۈAaU�݃���"�ކ���|��k���a�'��r�#0��}�*��j\��}�(FXb"#��}���0Iȡ�cf|�9�9"�Y��	�t�)A�&�RԨ��d׏0�~�E�U�|B���L�d��K�n3�����cAԏ����^��f�:'c|eMԔ�&I*����%���Q����]乼�	 �k�'�>Yav@�p&�}�S@�
����P�<4�<��#���+�<A��1]Չ��[w� �Ia�$�C�.ϪҠkɎd�6�h,SQ5��N���^���VM�h�3���2\���2Uh��A'$��K�&�XQ]C"kUY��L�!����kԷ��4�$.&S�"}K�����r9������҆�.�� �蜎ضD�n��h�<�Lc���xF?�K����<��%CLR��Q��lԄ� �'��v�F��8&�"�X$m��nO���;0��(��G jd���o�!D�W4��"�o�@R�`BM��J�I�fa(>4����Q�VR^�:��#�`����l	LTӧ�=(�^U�!0�P>����ɜ������{y��B��R����Ƅ��"�� �ϕH���1��J	��A��Pʙ�)e�T   �y[hu^x���@~�qʅ��T�k;è���x��4w,���E�q�n H�"��ӑ$ۼ��w$c}���,tݥR�`z%��N��Z��v�:���.E�臍0���2��9��	�h�<��U$�L�(���itBD�Du�L�3QűL�`���d\�@�5H,���4���C!�[��Rw%�)$��!���1Ie�&B�����P�p�M�\f4pM��+�j7�&.AcX��nS+��I&ꕭ�pY^p���N솼c0τ�0�:f2M9 �to�ac��zS��#AA($7� ا�ٕ�L�L<�
U��e��4/' �L�[@�>�&b�#��p��i�����w$S�	�`