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
BZh91AY&SYA���  �_� �����������Pz��U�w�r�a(H�&I�{H��=O�z&��S�M���h�T4	$ODjmO�3Sjb  �h  �4��=)�zj=OD� ��4�� p�L�i�FL h	�L� @�H��ԧ�Sт��=4�M���hh@h��T���g�{_��>�M7�J}uI��GTrɪk�!|��v�O,��c�)��)[����6�������w��Ʋ��f�ZO"����@�Fą�I��{��]I�����'5ɣ�C0�-n�Za��&y�D6[�UD��y���P�$gD���pU-�$���er�g�Z���2�K�_�c�l2�I\nH˦���m:Bq��NW���`�+/����ra��|���8��a���D1�;��e�X��`$��~2��h�ZFM�R��@j,��$��X�U���HU/)	�	]D'�Tbd<�
��NJ�![�ݪLNJ�. �[ڈc�C�UnN�N��M{yNz�����s�e$��oVh*\��zm��?:����ݣ���G�w{�(lݝ	�x;Gn�:�TE���Cs�ye)=�xъ{�E���#��l���lcc���Ǚa!Yd\dVY���HQ���ó^�&j-�4�}��aq�|����)p�I�,-]i�Q�Tu���=�M�R�/�#�D}Os�6�R8�*���#�V*.�3cx�F�̐�p�+��T�t��Kq�4p���V$��! ���.�˝��a%�Y��U�+�������u�ٻ�f�H8]Z�xx$��x�o�`����Bc-��،���2(�p�-��bZ�sT^���k�X����p�=I%YZ�w�#�֯*Cc��O�Y��|�ٰ�1G�T@��8��
T���U��N��q$+*/*-	���ۋ�_�v�Ɯ�ifї6s�|�.��w�����"i�ԙ+	�����	
�hǽv��뎥�h���;�R"L�B���g̓��yM���eP=,�A�1ȡ�-4�i�aBjFX�,��\�Lۀ�FۥQ��{� ��:I&�(IO#q�J�d��	�ci��7�ϕ����S�=;��h6J�5�yJ��C1��
��A�It,��Wg
�9��Z�H�X6�BP�t���Ʈd��﷥� �^���HrAs�N���(���E� �
�xƮ���ܑN$w�<�