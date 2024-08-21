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
BZh91AY&SY��M� &߀PP}������~����P� h   �@h0�#LL��#@�L���OH�  4hh�  �M�4h�4�12bh0� 09��F�#A��&&��2� �D
`L�z	��f�zOQ�g��I�� yF�mR�.�t�(�w>-'�����=xװ�UO���砕��J��,k:��iIp�T����?�Y79����y&W�l��>�!���]���RUEn(���M!�z���3�!x�Hs��w�j:`�r��TJ���*�cJƄ�������I��b��3�A>�T�	�N!�$���io�17�Ӏ��YJ6�Ԛ��L�n�`�3����9�.|�J��'��[\~s�1/�I��D �e� BRH�8)�쮌�
q4���g�+�n��'2�&�(���{����bxڮ�
Xo��ӜO��%&�.'���k׭KI�P�;Rc%��$�XC�'���͘\��|��z��J��U�;���ƑA�6S��*m�5f��q�KL���PK�&6Dz�BH�>�]ě��}�>�7��:b/Ty��D�M/��O5쨡1�g�����5�|��7p�%	��D�����u6	��imcg��]��j�^"uɥ�(�EE#}���p���aq96�%�H\���s��E��%���&���KE�2x��Ë�]�L	������lKe���	������?qRgi���`�R;�&���Rjp�ƸX�18�I2(��x��s��ZN&H�
�'�|�ı|�yL�A�ȱ����$�%�j%��Iy���HZ0���������&��>�Zý�u����XO�#}&q�Px���h�,%,Z�KQ�o�$�޹��c
F��l�%KG!|���o.kJ����KU��ʅFF�M��M	7�:&�1s��2��q;Gށ�=�y(m(O͐�Ȣ�X���}����H�
�� 