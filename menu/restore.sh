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
BZh91AY&SY��P� �߀P���?�������P�z
))T�M0C!��0�i�&�2`C��`�CM22a �@Md��4���dd���0�4ɀRC)�4	<ښz)��OF��#hF�=�6�R�M&�x	6S�z�F�jh�F�42F��4�%ȏ�+,L����j�Ũ�`V�!�a���{�%��H���y	8����$�+�|/P�$��a!�(x��dɣ�a�ldY_��=,Oi�K~anƳ;�o�ܱ7��(̹�5���po��Aq<N&癆nU��v9��ٴd�d[\F�����C�z�[Y�݌���mq9�7�6֬�5l;P�Zq9_s��A�ػ.�S���FQ��వ�q.e�#��q4|ζCs�)cW3�K��?@�f�8�����֙�qd9�\e9��3�൝+&ɩ<p�|�.�JܶO�gT�1�}�3����v�Wv�]6,����x����-�r�)THf�Õ��AaB᣽fцѫ425�,����ާ�۵���r�&��bݺ�C��w�C��g�x/[���X�1��_��zY��x�#R��J޼�k��A���;P�C��!�xSQ�B����<vQ������eo޹�H��,�SQᴻKS�Ϥ�v�9�F��_��n�F��9PyԀ f���y���/
�\��3ֿF�X�8
�����O�gqY�o���p�Z�T�Z&��Y��]�1������e�G2���FN�0�]l�K'��0�}����B�ܽ$R��\*�!�5M��Ff���&jo�͆4ft0K����H�
o68�,F���Z�5H��u�;��ذ2��fyNk1���'��MB[w;Y?��	'��s���[�����v�ۄ*X!�T�N�ҺG�֖u�����/��9�8��{ϫ�z�5�)'������܄>VC�I�ҍ��İjB�ݠI�ނȩ��59O���P��Cx�v^K��i;f����Y�2��K��#��a���^(�͌��p� ������hͫ����1�	Ql`w&�	�*gh%F��jW��8ڹ���� �6G0���	F��������Fl�Bs=�����oa�}I��F���lX�Nj��+�l�F/�`(�ء$��]���X��`�v��¬�#A���f�/odA��:�B��6Ѽ\���hoR�T4.�[Fe�;Ѫ�F�zv5G�.�p�!�� 