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
BZh91AY&SY]T��  �� 0 }���?�߮����P�    ��D=@i�  �  �  p�L�i�FL h	�L� @�ᦘ!��L��@4�F�0 ���M0C!��0�i�&�2`A�	��BdhSmMM11=S��OLje3H�2L�1k� �H�^�JP`�ue��hh�2	�zG Nb�p��mla�t���͒������Y�!�����o~?2 -���8���?G;�� �=1��%)J\�����f�Yљ퍮vDH����ߖ��o�#�r8生�Ϲ��x[����z\�o7[�w��S���
��xpᚾg�����P��Jc�R_�}h�m�k��;F�W0r�K�hm�Ҕ�W������f�_�SV���u6V4�FE�!6r�7��#�J5�ꋂ�!����m�@�z�:O׫�c����ow����ja����F��� z��X���wFc���T���+��d=%CQavq���n�fk��v�����k	��u���p������^{<�l-��5�n���-�6]l���
O{?�����9�J8���Ź+�82�\i�NZj�S��	g3�Ɖ����vXӮ`�w�df�7�n�0&� s�?����[�����<g��:�����������mW�,�a��6�L�/��cM�`�7�'����բV��"�&Ѻ�����Q��'��a��KS�jc.��ND6<�j�j65�����t�mt�?`u6�d�І��<��,ĭ��b�̍�f���`Zǽ^!�9\�z�W5�_1?N��F���\���ݚ���P�_�0��ǚ�L5;u����+z�5�
<u�&6���m�z[[�>o�g����˄K!<��C��l��7[�o�$�s+k�w75)'������+Yj�4�����5!������C[t�����D�={\�����>,��БV1�?��י}�u3x����z�o���$&=##Z�yGU���8ܭ���������)�b��)�å�5�hX�v���u�d�}��8id�Vl�T�&�1�����l2G���٭�g��i���7��F��v��C{�s�Y�����)��G;�ɔ������[��a��r#���?�]��BAuRN�