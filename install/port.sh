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
BZh91AY&SYY��  �_�<�}���?�߾?���  �� 0 @�ջ�֩���jja�Q�m@4�@4�z�i��h��	=4
='���)�OP 4=M���i���$�FjOP1=A�C@   �@�  ID�F��6�� 4d�4��A�=!�@��rΜp��hIi�Y�d�����]�,�@�t����u�Կeco���;d�xd_M�[�7h�������GP�1�c����d�=�)��K}��ZB�/`�z*{h&:��<ɖj�(���i3m� (	�rc�S�$A�Y��ٸ����H�O{�����wx$��׈�%\T}�]�Ey#Kc�%���  ����mqL���<!�#�1���]|����H�j89��P���Sg�PU�GZ�ݵ(�;�<�>:ͬ)��8����Ad2�&*5S,��*W�����!Y@G:�ūrk���-]�I�1��[��}XR����Ϡ"aL�w]��Jbx�3�y9�-�� 4�S~Q��i�[vSP�<yv�%�C��Lf�q;TnmL7��n��x���ԗK�e���!{,5��DD�u�A$�����Y�W��'��<�oc�~5R��F+Q��Ib&MJ���H]����I�s
l0R`x���QhG��Px��C� l(K�6P|O
Ζ}z�k5d�ꄺ�/n$��w-�Yzj&l ���kԒd�
�!OS�P�iN�5�i���U�AFp�� ��"�")�`���Y��D���a��T��f�D�� " ?� A��	%���軒)�Π�0