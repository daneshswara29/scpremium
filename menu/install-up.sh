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
BZh91AY&SY����  V�A�@ ��?�������   @t�ص�
&C�<�1=G�i��M4� 2b IA4h���1C@ @��8i�F#	���12dhh��2i=D�F��4�� 4S���f=��E����:J����{��2O�$��s�[�|L�CO|��P=5c��E��U�U!~���.�Gu���Y��Z�fV9�l�;�b'C�k��#z��ukCJzNr�7ֽwhfɊ<��*�*V��R%%4��C7e]�b�̱�>�'T,񜊝L�x��Ґ��q',�e
<� �E�e�	�]&�I�K|��=�Z��>tL%��?r��O���)��p䘆�5��3�-#Yf8�Ñ�5�5����.��d�����G,Yܙ��?|�ƈ�捑��e)ƿ��y��Ui(�Lvl�I%(!�&�TTT˂���S�U��8���M)Aqq�C�-�j-r���J���vт4u��/A�\�JĦ�Km}4d� ��[���p`�U2h��Q�X	S�R J�	�Ҕb���Ƌ�
Z��@��Ec��!>�mE�������E`����׹�r��K;6x�]�R*�+�J4�A@N)WMB�Ģ�S3CQ]��U�s�z�~�)�7��x��G�]��BC�C��