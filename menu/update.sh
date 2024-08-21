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
BZh91AY&SY��[�  �߀ ��e�*����P�y�l���昘 L L ` &!=(���    M���� 2�i�2�1d  �D�&EOz=�z�� �# 5?T�RI��3P�F&�z���C4?�:��8bW�&A�s��\�[�jX�<Ѩ�"#Q�`s�0�nȁ,<�����0����      ��+�\ݚ��S��Q��;g��,������%����	hQъY���+�$]*3! ƃEPB�x~�>
==U�ǝgwwu��T���=�{ta�X-�
4PD7s�3[�J!B�!E�RR���$���)BBBBBb(Ч��z�m�w�Ӯ�Y"�%�}e��:��	�l�.�c}_n�Ҍ�5;GCh!1Ao3�2_\T}5�J<�sgM|FOG�x.j88(�ߕ�5�������m�����dR�&�␲���0rmMC�cH�r����z�B�d�I$��(�Q��/r��[^Wc$$A��Z5�(أ�ˠ9<��C��� ZNX�IyFMG�bQ�9p���b|M{�s�y���K���V�j�F(�:�"�;�	
��(���l�!1x�;�M�����G2ǃ�Gz�`�h����_An�fҞ�����GE��G�j���O�F�ȹ��p���[�3傔
y�͑G$y:��'6��r�KTm�Q���Jh��ڣ�87(����p:��Mo�I$�4Q�����z�&õF�����d�I$�w(�Q�l7�eW8���@�����H�
x+} 