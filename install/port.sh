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
BZh91AY&SY_�zz  �_�<�}���?�߾?���  �� 0 @��b*D�SƦ�F�	���i�h�FM0��6��2�'�4d��h@   4h�hd�L�  M &� � 	$�ji��@��dbyF� ��Q�ڞ��L���8.\7�>m"e�ˋ''�L���r�+Iu`(c��~x��&��������w���*NI���t� ���e�Z{�����4��G��**��,z�]S(Ľ���1}E��>�� �n�j�DXH��x�[a���#Y�,$H��Os۫اD%CX)��ևl�ȫ3�w�Z�}������+��h��t"d8�440�7�]u��u�`v��A�)�%B	 ���0��G�ظ
�W�)�������"~�ō�p�Q����.�|�c�6�Ј �l���5�[@%*�[�J��;<��OZ��W�2�O����I���O��[d�YJ)]��ȉ�1�nlr-�K�n���4�E�4�Q2�Dl�W�Q�
�]S�	1��6�J���2�{�zu�J1Wt3�!79�+D�4,
�*m$�	R­�9q`֞���~�,��L�#�MB��E�$*�5ݯ+}teђ��F�W����f"��u6�	i�-	f"��Ί��m]�ZVfk�H����XU%��B� #N�5
�X�/���Ρә��f�gj%���_�*lH�kj��!W'3ą�-t�ޜo�$[���66'i\�ȑ� � � a��\ �	%�����ܑN$�ޞ�