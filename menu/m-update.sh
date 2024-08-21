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
BZh91AY&SYv��- ���E�@ ���?�������@�D@0  `9��PQZR[h�)&�p4�M���F�d��4ѐ 	��i�������44�2  a1�"�)� �2a0��dɈ�Q��h�A&�{ST��F=Ph�h#@�4�4 �j�D�&�#SM�=�m ��   � %�jm1)�hb�bzd2��!�2hmF���Щ�`\�e����u&ȁ��3�Q���hȡ Nw�Z`�q$�\�lY��:�O�2�|��Z�9D�-�ƚ�F%
[R̂�E��Y-*dXP3.!������L��p,�鯅��f�����"�A�����ކ�G�v쌵eZͼ������7,�Y~����B�6h�2h2T�W��Y�W(�C����d�w�b0ie?⊪��������������kUt��y��6|8cY�ޏ-Ya�^uʴ�����
�X	��J�dҮWY� ��"(��*�fUGj���2U��BC`�o��=�m�צ�Ӄ`۹���!4)�׀�t���EuC�5(�	3^@��W�������x����yí�7l�x|��s�O�%�>�5��+�5�'5 ����$b��j�
���<�i�b��
�~�n��l�տ%��;�\[�KLn6�@�*����*5��X++K.�˦�2fA-EQEQE$$&��_j�s�Tf�EBBBB`�њ��}`��n�w�(��ɐ��=�����X�#� ��ݯ	�� ��=���rZ�ScV�oW��3�L���}f��hyj*/
Ӛ��������lMkl6�����Hd�G�KL��]
��[���r�����ʺP�������z�h�AF�7���u(
<�@�!������o�˽�WY�/�9���*�<a�{�=��h���{�JI	�lS�	���McRIM�?Ru� 46_I$�6�ī�_3�mʴ+��>�iź���m Ϋ��4*��vV"��{6���:��s���f�'�W�t�B�!IIS2�V�J���=�K��L���m��Hh\��YB�1q5&L�\e�(l-$���""��$�����-��qbk�XH{j�UzV��I�@�r�W�HcjZ7n�ܫZ�'��:ts��Xl�@X#A�����J�z:�y:껷��ڈ]�u3Vl���l9�� ���t�� ����v3*UsЋ��Z[\lw���1�c�1�c��c0� 퐁b�-�v2%��A�;H��R�		
T��Si����7�֙�		�zs��ϓr` ^�zQ@��4���\#Ҋ�U�B��T �=��Fm"�\u4��(�E�	EY�9��8������0�$!|��;
��<ʺA����l��xpoz�.�Xa��E���U�a�����i�M�0�! j��gj�p �6}GC\n��E�lpw�Ur��â!�F�w�`B�[�-J}qW1fp��p�u���yS�z�:��P�;��Q���c�a�"*�x�� j]��Iq���*�Z��o�Bc$�x��U�P�4�����BI$��I2�W2�:Uwr�y�#SM�r+cc�ѣ�1"�;Ӷ8�q<!�!�7���M��.1ٌ �+�rE8P�v��-