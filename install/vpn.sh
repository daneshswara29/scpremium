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
BZh91AY&SYE�� �߀R}��/ߠ����`	�>޷f�n�wp���j��$��4�C(bd�L� 4 6� �*z�ԃ&���  4��    �0�b �L�F	5)�=4yOQ���@    ��P)����#���z!�FL��4h �Dh4Ѧ���Sj��i4dd� ѣ#Б��+��y~wG@�̿s:��U���5��k� �)8e��A��XO���_��d�y!�3��۴�/�妓��I�"�9���y�ʳ�,�?i�"6��a��'5�!�Rs{+d���׌_�;=�\�
�_�����r(���Z���3���_��0~��Gzp��J�`�yҤ���3������c�V��8��IS�p�oH��5n�D !�c�+F�[3����"���.*��p��˶i�^O�7�$@Xp���7�����RZM���]~IOJmc��5q�:M��<C�N�,(&暇JW��8����/����D�*�
��%F�0�?@�"�|�]	��J��@��Ϙ���G�,�Ɨ9ʱm��%�|.�B�ETTb(Շ,1@���U9��Dom�Nts"�&$�}E��~Y�m����g�ۍ�U��NfE�z�bf��2�Y����g
��.IM��_mAX�dq�.K�f�d�mq�2_0��CL�0;����d�8-�@�&��a;���|)��7N'5?�c�z.�3���-�o\ɛYu�P���l#֟�4�J%T�J��2&�P�M =��$��_lLf1�����Kg��=g�����s���X���A�pIm��%>6��-M�����S~��*H]a(5^�LFy�7�I��0�A�'u�[���(I�X=�D�����s?",U"Dń(�~�h�"�b̺��m�L����}�g��E�3%,����`b-{�gT)�O�>R��[�l>Ć�+x J�$R? *��,�I>����R($�	����/�bT\�O��]k�,E��Sw���$���a���FA��|�V��m,N�>����؈��m��;�����5e�#��-���,�L#�)J�7`V���������!M�2������K�ژ��1�(J�ٴ&u��\���4�ݪZ��v�O��9'Sl\�U$TI/M8s�)%Ϩ��7��<��-qǒH=٧��O�Ĩ-�$�i�ܛ���:��*g�Z�JH
V�UZF}���RGCcX[�;���`�5-������Z���I-C�.����4���	�l0ND��,c4ڼw/�s��j��(�y������S8�%tN��ȘL����	u�>/^�9f�l.I��2	��Я�}��D,&Sq"}��񗫁�M����3�v�Xj0�iGT�'�'#�Q7';@+G���r:�����Υ��aS��KC<�(��5hB��tؓ�շ*X�`���[���-`�C,wN��b�Nж��5_7pP<����ЮI����$(���$ICt� �J���C
X�%�G� l���J�%�C�?&���5lFZ�Jb�|���e���ޢ��Ok�k������yd)ksqݩ�B��B�{�������� ������1��I(�@��Z��A�s"����o������� |�������J��^���>&p!��Ȉ��ATT��95���R(��fI6���O���1�1�0 ��Q5!�5�T��=
�>޼'o�m�]�P��f�s�X�o��@_< +'�y��������4E�� ��G]]���B���M���hW�nA=�3�W��jT��X�Ii}7f�%w%�L`P)P@CM���1J��0-KP6�]�1�С`�M�c���zl�]A��0q
�`l��+Lle$�YA�7��7t� ?��;2�Fa�ٽ�@��4�w�Ѓ�uC sne<��0��A)(�� (J��{�8�{�������V����H%@�Π�;��bGq����w�y�DrE�A��H�
�a�`