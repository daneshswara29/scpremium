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
BZh91AY&SY�k/� 
�E�@ ���?�������@�D@0  `y������{�T��b��j�A$�=OHM��B1����!��<��i����� �8�ɦ�4 0@� M  &@4��I7�zG���    h����  g����4  h   Ѡ     D�&C)�h��=C@i�4F�� A�Q �&��==#(�j6�M��a�i7� � 6�4��0F���Em���tȂ��*M�F�XW�IZ% ���,f2˧d��w�UN��=P^���e�3�y�3�)e*11
�K ��Y]՘�(�/!�]v]n8�K�W�m��aZ�MR���u�R�;��8�{Z�%���m�Z�Zi�
ʘSy���03-���,#\�~å�u%^�ᯅV���ػ��R�����1,�����DDDDD@     of�(NV+�ϵ�Hꤾ8���"���:3�����Ә�m��)��O�er�ffB��!�lbp��4����!MV1!�����=|9s��	��0���%i$f�X�X(�LueV��3H�"0- ����&��uǏ���T� @~���l���������hI��t�R
�0$��D	��@��t�a$��֊ 0=�;uU��U�����sҵ,�*(%��s�lD�Y� ���"�i�(�+q֫��{���/����!B�-��a,�ˤ���d�:����0DA*�L� GE������ k=�<�x��%<�/,���%ZwΆ ur~��6�I�}�N�?�P�sCc���������&'zZS�'O�Hªf�rgH,�M)Y�#yV���� ����IN�b��D�!�8�>�L�A�p0	�l�z��O�S�a���.Q��I.�.��q�W�8�8����������V���B���9a!�����XB��J���~#����T!$�T���*�W{���TU�.`�1�ţf�]�,�@3U�Uv�w-��zXjev�m6��?x�驆\��d���C#��� �B�C��B�J����5D�Ѓ�Ua�A�����?hP�5h6E]�K�����o�HB�I$�K� �z�M� ]�,N-�ԇB�aW����4�	8F�G�X"�֫=����n���RѨ���]��NM�}^T����W_��z�L�����;F�pל�1�s���H㐛�c	�)� ��ਪz�T=M�EUUUEUUUUUEUU�� j��P�j���<{��]��Uz��g"����S"���6���3��\=R�������� b���@��l��.W�9�Zk B� 3W�ñ� [G�	\����� P���$��0�8:.��*� 2JlP:zi�&T�0UkU^1���]K�o�U��m��W8 `�l�������o��<A��2�@��4 /U�u?S,Up�",\xz�mꭠ<è9X�u\F��8@�iH�`jU��T0�*�Y���8ƣ���W��CW\��3� �1nc�1�HBI$��� �q�I$Qʪ�tX�U�*=ᬆT$�s.uZ��*���!$�II$�F�.U�y�xq��&�}����)����� �����DOx��(0{��e9�� ��rE8P��k/�