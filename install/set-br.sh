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
BZh91AY&SY����  b_�@y�6G�����@�h  V�d��z#Ѩ�`@0��@V���L� �4!�M0 0	�  � 	� �Be44&�i6R��jC�=� ��V�y�D�9-g�D:@W���N{6��vrio��㎉��k����Z^��<0+�b�$r�}�b��m�&�$y��l]�
�Pm���taQ;n�d��$�:�<7Hc�	���q�1qʱ9���7�u�NP�>L�;L�X���2�#�DF�f.�XJ	5�{evW���?�h�sP!ɇ�[�l-��u~�N���oW��7�e��;��
�����|߾�ɯ����3���7Ѻ�H~'�b|�x��R��;�>	m���߳T0��eA�=� ���=������C�N��� ��=�6�N�'��]rN�CB��F#�����3�7;����S�8T�!���b]4������9��Xv�l0D�y��ì�����̒`�$9f3w0�Y�i�Z�S\�oKӵ$Ɋz�� �/R$���U�t�+���4c��z&�#(���F������_�&�������4��9Oۉ�j���YL\�ҟ)0Jsd�A9�Âq$:�Z�]a�U��n�]-��V��R�{�u"^�pM�&��	C���)��Ͽ@