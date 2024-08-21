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
BZh91AY&SY�hZ`  �� 0 }���?�߮����P�    ��`�CM22a �@Md��4���dd���0�4ɀi�4�ɄM a4i� 4�2i��� �h�& 4H@�h4&CD�M16���L��i�3h
@��1��D}��Y4h�DU���_���z�����Ɇd1F
���6�0�w���������Õ������_" -��wq�u=�w�� �y�C��JR����n���gFg�6�Y�"R%+�+�,!kL����'��q�)?��ч�x[����x�\�^v��a��cq`�z::3W����������)Jc�r_�}HN���t����������}��-�T�%���6�{p3����ը�{����ƛ(Ȳ�&�L�������Z�\\1��f�m8K���y��L����{�6����k[c���� �:F���wC�#1���ꝺ�e`�����B��������^�Ӵl��ְ����0�>cwk�=���^{?G6�ߥ�5��n�q�]���.�CP�
O�����ŀs�L�q8�����+�82�8ӊ��f�L:�xK9�V4N���we�:�g��#6���	��� �����{ϥ���C��g��{��>���7l+X����t�7aj�������&�L���s���s|kh�[S42Њ9�;�xY�F�]-N��=l����"d8�WKQ��V�&�k��k�!����#%v�0����6���s����͍���1k�r�!���9G�B����0���d�}4h<����nm٭�r��+�f!���XɆ�c�s�to;ǡ�^���^�cj�ف`V�G���������{}�L�A��Y	��t?�6��f�r!��I4������]��JI��{�C������	5hx\��z{5!̈́01����C[t���Kn"z�F�+��?���+�4$FՌdϿGs�u�_sa����=d7���	� ��p��և�C�+P�b.V���������)�b��(�a��5�б��	�w��i�`<h͵a��C'x^͔�
�d�k�st!�ѭ�H�Y[50�܆w;%�ko�N!�h��C��ߨo}�7C��E32h�n���q֍S���7���f��.�p�!�д�