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
BZh91AY&SY$;�0  [߀ y�w?oߊ����P}���QQ�`� & ` s �0 	� � ��AOBh�i�@���z�)���L����蚞��6�G��=OI��)Jy1'��&jz�=OS ������|�w�t�`s���l}*&���e��a�ph*���T�[ ��2x[o��Jm6�a2�J0�(՛1��v�"���bkm:h�P����i����&J�n?��gHb*�X��XI�J���KBPe>��Mk��
h�`|~5���������S�n��|��2��C�7���`z5��cX2�9����݄�p��2���o�:���4nM�8>/s@kja�r���u����'h�x�Ǩ1!��n�¿���zi{S�w渾c4a����rՆϨ^%��n d���Ã�/m�F�6BCs�7E��ѼI�@m63�ٰ��O��7�sP4tk~OC��w��&)b�cD%�q��RI�/t�����0%����p8Z�q���m�F��I��$��qz��d2Z�m��xH(�:�)����?�&{�$ Hku9�@��~�V<Y�6�cru����}���k5�A��<�_�﫢�:Ƶ����k�ⵥ��802	(H8C���N��c�f��z�t�0�kP��������`ˋcL��z@2���!�с���^�f�7���B����2 @w��8V�6F�(�X���p*iv��&���������oV���68����8X �!�/��t�4�-@9��w$S�	C�� 