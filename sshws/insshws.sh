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
BZh91AY&SYCGC�  [_� y�W?oߊ����P}��Q�10 � � � L9�&    � 	�i"4�e h���  4PE!54i�y
l���R����4����*Jd��G��h	�=@`�j4��:z/���m��y6�Os&ƍ��֬7��_J��uX�>&N���_֛M��TVbGu�2d49�	�b���խ��,���B�Kx4�	���0%zL��n�G�3��b)���-2r�(�3l�$k�j;Y
t\Y�{��^��F���ц��3�> ��nC!�����02_�h��%0�1���3�a;���#!�!���Cxb��\ۇ3�h���Plh��= o8�&�n0�s�s��;��}_x�����G�⾮ч�nrB�Z������
	k�����U��Z�-%�L����&���é�6�q@LY��&l!���G������c�Ҿ繚�s�sha���S�f;?
�fɐ�le(a�)c��렘8�0͜<y:����iBN_�����C%�z��5n
���h�s>��]�Q|\�1		+c��ΐ�������inNJr}���*�c�R�(�6����w?íj�Cb��k�z�����`�� .o;Z�������d)��]=� m���
�<�P��ih��L-��� �P~"CcF�ɜ,d͆n���OՆ�Xd��5�V[�+i�N��Vu��7�/��v�N�<�c��t+��qks�70@�a#���h
7ٺU��rE8P�CGC�