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
BZh91AY&SYR�`� _� ���?ǜ�����P�ݬ���� ('�Sih&�f��z�!�P4�F�%����ꞣC#C@ 44  �I�Q�G���i���  �= 8���  0�2d�0�E"�iH�#y�M�4d ����q��7�t3!Q�uz�&�OQ*�����M�*WPD�;fbJ�E�E��d�uz������&=�\����l�*�<�1XPh�-gL�l�/�C�6X�cQ��:*�9)H�Ee0gK`|ˋ$���M!�z�v�)I���U�Ϻ@|?ɤ���� -VC��4�,  �S�POI.�������Ʈ�wo?���L���`��� x:>'��0c
$g(��W �X���!�&���� ��BRB�0u�>m�uȤ�e( ��.qqTL���Z�����!l4�����5�#ؒ�	�-2Bj%��sv�1;�G+X,�8�G53��\aI*):3��)C퉨]K2j�v2l�����GNWk����S�8Ӄ��J����Q��
Н��)��LH�׭�K�\KO�y�Z�yf���Ȏ�>�<P�+!�o��di�I�p�R��Ƀb��|Te��->Y�l�pD�QpFg5J��b �X��!,,!��d/�&q�<� ^w�=�.
K�"Dֳj��2�:̬%#����>&;;�$�礴5e�J�C9����4��{�R��C�ص-�w��:��Y��-ۆ�B�ҡ��Q�cY�l���H^�
	0*T��䡋}{�'�E-#�
'�J�F� ���`��vo+C}���@i����mBv3ɟ@������^^L��?ٔ�n�D/�do27�S��<�A}$UPf������l3�,��B\�h���+����N�p�"	����{a��;�N���0����܍%��B��$0�1��!x۽et�p�uW�/۳S8c9$�W���y������GL����6@EumP���T��nc�<�/ ���:/���=�e�\�s|�S���e�%��`\AA��۱R��A0`�v��1�5�i�eUm'��32�!xV��n[���C�#Js�Qv��� !�L%k��0��wS��GJt�A��	薕�\�hpBA�LxiSm��
*v�i�K�O��w2uwCA��.�p� �
��