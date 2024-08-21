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
BZh91AY&SYa6��  ]_�@y�&E�����@�h  �R���Q��i���i��
�2���&L !�`0�0       )  �OMO@��#(��<B�Qid3�5�?J��#�Z�L����J�k_��n���E6vv�����7�=2-���Ëp�6gd�J���iU�_�XZ9ڝc*Q��F ;#����P=�'�g�C��KIgmO�sڗ�L��5OVspk���oQ9I&�\��w%Kѵ7��K7b�qnr���c���^�γ����.�r�w�Z���[6ϰ:?�5�������6��{]��S�?C�<�������賫��;�i����ei����>���(�)�
J%*�Q�B��lkK����N�]�����pO͗��SH�ڙ�
�כ
��&��u���,��J��}q=�<>A�y�#~I��@�v��(�4��cA�i��se(f�0�L���"�@�AbT��[�u�I�q�ܜ[F�+.#�7�Y�M�-�\����Bg�3#RjiT����I����T�iR��U�F�����:Ț�m�-J���jX<--é/K�F����Q��T4:�%���[�#O���)�	���