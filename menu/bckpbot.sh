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
BZh91AY&SY���^  ���� ����������@D@ @�V�+@$��=L�L���!�i��CF� �� %MG�(x���#'��1 A��1�4 s	�#CC!�hd4Ѡ� @0	"&AS�h��OM21 �dh44��h��:�Jq]x���K49[�c��e��b��-B?�?;9$�K��1̖�d��*������r�`�'�^�x�h����&�5O%3���9�Uz�i�D"&ܖt��4�l�Q�u����m�&/7e�5�M���1]�m|ld���vOpk�"g|�sL��x���7���Izb���V��	�#�:De�B  �(�~a��y ��}��t�����4�y~4Ѡ�P���
�JR8�hR+����X�@��]�x�W��c}��9x#	���	݌�3{��-��ٱ��q�$�G��!=���~cm�^-SdD<l�ZE�Cf�1m�5|�bW�B�[M� U��[�+Tj`J<��D4����>u��� m�j�"y뮒�щ@qLE���B0��4T����HrB��"G&4t"F*FbfbLUK~F�Wk�q����ё�1|�D+���9:�aQ޽��`ȩ�)^9#��oDjr�%1��,#�0�jR}�ݴ0d��+�Xc���GT;���j��7�|xi�r�F��D=U[o���5D��cHZ&�05��A�����Ť�nP�k��~�0��(�lC�(��>6�w ͉�&�$h+H���L�\�JY2j�ܦ�>7���5N2�N��h"K p��v�$0v�v�}c�.�p�!m/ȼ