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
BZh91AY&SY��3  �� �����������P���Y[&����hh�Sj�����A��d��h$�Sx��SQ��@  h   SB�'�D�L�=OI�G� 4 ��� hɑ�b��`A�dɣ&C$Q4�ɩ����zLCM4h �  I��8�+?n��~=��pΆl8QmS<;�5l�S�3���&��h�x�ɞ5���~�n�]!�C`C�
�fX�3�B�YK �����:R
��0+y�)7�i~���TVcϾ7���+���U4[���l�`���2����f�aeOݼ�媈���,�7(1��)I��OA��v���0����m�@>�%�}=��R�@�����`�j�I���&)W!�*�1�SB�øU֩ ���e���0;{� e%��.�ͼ�)`�-�����sVy���a�,?Ul��S� �:;� h��j����l�Z��&����K��L7�'�x�@��XE����a�f�.Z|S�W�GÑ��fV����ë0�`���M�F�N얒�}A�30N4%0�`���"��{`�`��b�c;C:�ܬjh6��H��c�o9|�s�IF�AL*��N��3�Μf|��7�F�)����^�ЯD�?T���@���in�+���iDx�RQ�5A�^��1Kf��4�#dM��N���$>@�T7��3B��V|�����-ĉ�4��@h� ���΋$��a*��zpy
�$u�.��H2X^Xd����GBjuС���f������Q4�e�ڐ�-P��*@�o����df�w�H�N�C�Q����]�&H4���+��)�mX �*&�@�h���Mh9bB�A9IP�Ӏ�ư��P13U�ƙ[lO�s<��J��vl��� � �ޞ�k��$�<dI�B�h1S�2endRm�R�FB��y:�RA��'���<�$D઼sD5�j<�y?�w$S�	��C0