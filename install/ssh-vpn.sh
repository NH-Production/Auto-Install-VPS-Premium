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
BZh91AY&SY��j� h�vp@ }�����������`[wdϵH峃V��mXtT
�(  �(  �2"hЙ4�&jfTz�4�@Ѡ�4=@h�4�hdh�6��7��Q��   @ =@�CF��   ��F� A�@ �&����(z�E=��C��S��Lj4Q��=&�S@s&� FA�L1 Ѧ���"@@��hi1&��(�zBSG��6�z@<��X ��b��X �j�/ĭOr}��cf%rl��|'�S�i.��35��,�~�dn�B�*PƏ��`cs�`}A�ۈz��F�3;�Z�o�6(�QcF��?y%s��_�|T�23�D�I�l���hQ�&]�"�t��M)P0���&cN-�Pi7m�+���0lOy�ܬ0�-��T�4�S�HR����+���B����N]3D��k�"H��e���}�.WE2dAM�7���^�2�tr]I����q阒g�
"�� �%��gԯ:*;^�ZP�!�6g�͚*���De4.��YC
��W��J�z�#�� �o�{�Z�)/4Y5�����1g�I\q��-"w��(B&�P���Ml:��?+l���r��/�{YHq.�)q��41�����[F�)���<S �0p1�=h� `�����!q����i�[��z�z�	Q\݁�ι��~XritLQC(���n�|��,��o�"�:꼽�w��RAV�8�`�,;���n!�2G&w��47�A0�L�m�u1G;�e
T*�ݙ�����Ǚ�Jji雞���6�EP�g�ب
^QGt�*�+
�`��u�_��@���l�}�O�F�T�֭@X�R�dAF��R����QG^���,�P上pi�nEi�cϞ�3���S��BΒ!��=R�`�?�"�~���[V��[���9�*�����=xm���
ߚh
�B�vi��r���h���[��(ng߮ů5C��O7lrѭ�nV@�1��&8y�Z��%�G����!"Oƅ��-�
	��(N�A�c��j�@^����IG7�6cGCk ۿ������eb~,���v���B6#,��I{P��,�gDL��1r�����"� ��s�������p�8���"��᪢wMڳoM���%]�����|mu�-�N�u��c�e���Kv(�����;��vb7"5x� �Ŋ�#:ꍠ�R��M�P�,ϛ^#���uqO{hA��Т� �v+Yo��[
�ۓm���*}oJJ��/sø�@+s���7��G�A��ٶ�a[N����^��!�Hc`��e��o.���֘��#z�,�^p1�u��B>u�^hl4_en� �������-P&��M��z!�+�ȑX5�r	�R�FL��44^%�)�h�>�l(�R��ߺ��s�֛�J3�	Un�h��%�7�� �� ׆�Z]�i�^�r�5�Vgգ��8��5s��S���1���έ؇��{���EI%u�ы�t� �w��r�*����-�;Qf�Qq��7ە������0jk�`*�1�Ns�����N�@�@��������g�E��|����r�<������}���5�4����ޯ	��}U"��`�s��Q���*�r��l:u M-���3�A���o����2����ï6Vm�@�Xǈ���$ÇtT�О䌉a��0�G���`H���6O޻E�A��d]5tA����\z�0���ieGd(��[�?�"���p&ˣ�đ�>f�˝J��Ԃ����%�)�����#��]�g�4�Cr ^:�O>�}���˒�o�:�3g)�)#j���ә�Q�V����u��ŝ�2#4�u �7��c�ў"�  ZN��2���� `f���R�D�П�]6�t�z�x7��T8^[lj�"I-!�^d̘<"E��
ObŘ�Z�_����D\�B�!�,���yY����1b�f>��n��&���o�]�/�b�2f�th�ڂ���0��:���n���lf�	�Lh�1"�J��w	_T�� $������	�1�8|䲄��f�A�cm�hhb'�SD%	H��4J�AQU#�aY�
���-JBA��5&������]Ʋ`��6�
��ٷ�m���I0�1���?X�e��IM
k%h"��R���$a@��4��
&^z��Ã�3Hy;��(;�X����N��C-"�0 ��Gւa����ݽ$u�kreT��-׃����b:��q�RH��4��r[�	:��0���n�ػt��]��.��51s��H��!75�s��d�3w�)D�S"�EL4� �����o}��65]��//׷��{�����D�P�p������j��	�S��9���6��v�F�ݳ���Fk�A��.Bˍe�TO�4�01U�
ǀ���w0�I�@˞_
Vk a/��&м��$�wl۟�@qn�!5LFmj'�ϭ��|�X�^(�2D�|^b�\Z܇�p��|�2�y��נ����W��YXE1���ri���]"G陵��3��&�;��$�}��ӈ�K�1���LM�:ońK*�p�21���E�O����K�?�'BBl�H�J��.�do�m4���z@�A,w8�ɓ_ &�iB\�iO�wy��Am�#"Pk��K����Q{��I�M�M��dwt��}"F�w>�`�˳4���M�ػ�M%ٳ�b\wlHU���V Ϋ4*�x8��q��Ap�S :�ฮ�1��O��k�T�M_V⁤��$Ic��)��I��%�O9T��5�̇9Ȕ9��)$	�F�CR�k+"	��P!*eH��2��i&Q���jU$��rq����d�v���n?Y-��}�С�E�H��U)|枒�;�f `����E��\`�K���q�Rm��=:�B�rlب� >���ʾ;�L�#LJ�e��r�MUU+$#@ܪ��g�����`�F�F�$,�bF�e=��iD-�(�=:]�"���&�˄�:P�Rb$H@4�4
&8u�(I)��UJ;@ା�Ad6mb.Ի#�	q6⪀��2`&�XSM���C�E��R��
b��ُz	�a�`Ip�Cim����*R�	ԕ�l�A�_��	P�ɤpi�$t�d����)v�$���B��e���x$$]f���� BH�pV��!S�ܱ$��.i1�<���lxG��kxl��p-��zт>Du$�Kg�8NKr�v����݆�F������6<E7*X��N@�"��"]���w}�D�,�?{� �.F9�VY�6�u�w�jB��賓~43%��C<�H� i"Ij�԰K$�4c��J�$b���9p����)l�d)1%�TsMX30��u �$U��(Q�ܽQ�����`N�v�3&���"�ZR���0X��B��Z5�/KU�h�մ��B@P��B�`��	 {id:���9�M�q��Lp�lSwT��Y6{�b4��职�PKB�|� ѻx�`k|�-�o,]�$�Ŷa�z8&øAU���A��*���D+�$����� �)�~�W0��ϰ5<�صx�8�j`��H�n	��w_,�HU��dwU!.jH�����ٰB��;$BD��M��"G7�PXPPWB4��H��83�D�>�yN5��JRjH&�nMU!Ȱ�rೈ���.쨢�$�`�Zr���n����L��n,E�Q0�.�%bd*��Ҫ��!��E+\сI�ay�	U%8K�����	��i ,���>6�I�B꒹�W9pO��8E�f�fڜ)\w&P��h��c&�[-m�oW-�)ܨ�����޴~��;��Q�B[.���A��B�H_;�Ƙ=V�[mQ5�O�R�3��%,�ߒ�(�3a����&4���˝%�F���<ĢJ��JI�hF�D�Bg�a��֒�z�$,�%�/U�*��Z�R��o��zc\`�4i/��B�M�H��з����`E� =TU*t��^�:���B��*�VKDȌ�'���l���ܑN$.�ڳ�