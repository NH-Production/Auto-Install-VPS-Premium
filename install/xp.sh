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
BZh91AY&SY��I �߀ ��_A @+����P��	v�ѡB�%M����hh4i��� � 	� 	��0� � $�U6�2h��hC ɠ�� D���6H3Q�b4�i��M4�)#&�4��I���zj4d��3S�z��6rMUw� >��v��t��5#9�I�C`a,"#���T���w���h�"u�e�m)idQ�>N�c�l�&%�%�i�yH8���Io�Z �M�-z���p0YA��[j�8^���o����c=j}r��kxS��lf���çXEH��Usz)E�=����1xj�/򈈈�mᬁ��&<����7H|#���D� 	�M�����6�����cx�#����[���XPu��S[a׬	��}�z���={s1� � �"���P0$H��aC�-�p �tň�p���;Hz�8�Wm����#��X���|�@'�y���$ǖ'/r���!Squ'|&�G�0�c�1������1-����YU7z�� c �� �!��f@���K5�H��|"�2���G�~y�嵆���j;(4�Vr�HJ�\��ʃH*�����B
�@\YH���9:F�Ó=kM/�C@��}�8~���n0��(An�X�c���W �wCE��LĘ�,�ޑA�A�X>G��V��� w S�@������*m��^2��J�Ω��<
�T ȦY�aL^���6C� P�j:��\4ҠluƏ$�=��o60�2E���:�fWK��k����Ek�Y$�I,�X�Z���$)x2�(ݒjCE	"v��s2ۙ��H�wl+I���)_�jm�!MA�=U<T�L�2�<ìv)�R�:������mL�;GK�z �4��;�*.���.%���������_xaf�6Ĵ��D��� b���$�2c�ȐI�А���� ��6�kC�^HqSM�!�;w4C��'�`-)@|�!�80	�ݽ��3f��� z�� `0$@�@��� ����@�JXw��pv6� ����䴩e78)�V���>��!�
,������� dZ����0m�2�Fh�Ɏ�#T\$�/g`kktER��$��^�}���^��C �F6���P�w`�'c,Ύ��j/@f�WJ�@� ���� �Z������0?�w$S�	
��