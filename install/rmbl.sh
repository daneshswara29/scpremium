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
BZh91AY&SY&uE &߀PP}������~����P�    ��2bh2d�i�2@i�C &��d��dɄ� d4��&� M�24ɉ�ɓ	�@�h�M �di�A�&L���L�4
�A�z��&��S�&jm�I��G�䙕��ڧ��h]��H����b�mN�7Vu�j��Z��K����%^�>o��kRv��dZ��v��uma#���'�h}��-��`oy�{h�T�QEX}�f�A�dC�^2IABPN��G4ܤ���IB�1X�H�(Z9 �d}�T�L���(:��'��!Bm��j�6��[��M�t�&�kAF1jM�oo����Φi�d'���҄�^�{�����{``�~̢�Ӝ���T�gQ�{����z(�'���A(����|�=�a���Qs�v�����zD�~$���K��S��z��i0T;ԙ�j;	3�I��i�.Iy>��?���6�~�q6	�\b(2Zt��6��#�l;��Zh<IA.oP��#��6G9ī��u�[�"�G�J���Oy3�[��K�r)EI��:'>�[�}[Lj�Z������}&��,3����X��)<L5%��1y���k���rb�(�EE#��F���4�I��kZK�!z6E��).W�6'��KE�[���>lI��>��D���D�$��'�����1��cJXN���b�T��Lj&���ĚeX���|��r�ZM��޵
О!�+��H�J�/�X�v��2I�K��%��l�,Fd-'��"�d�m���}�X�ލ�Ao�j,'J?��I�5�*x���%���Z	j2�ph̛��^��4��#+R�3�IR�¢Q|����&����7����3�P`ȓ#�>"b�}��b�\�j�	��%��v�j���D���:X8�Q��֏�.�p� L��