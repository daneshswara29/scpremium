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
BZh91AY&SY�/��  �߀ ��7%�*����P�9��@ a�#ji�CF���i��Bd�F�C�@ 4���ꪍ	�0��0C44�D�L�4К���i��OF�G�yF� ��P�0`  0 ��^���g�ӧ�u����-�f��`�ւU����#JF��&�x#�kJ��N���I0�#(�����      ���K��J*S��"#�F~�+�W""JE����E[� |:��6*ܫ��O΀���t@(��	%UkA
A�j����hI�;�Zѣ#�0����� �Ђ�)w��a�\*BBBBBBBBBBBBUV� �UaHO�V�HHHHHMB�
r��<�vd _�h�!H
l��E�Y$�-�!��i�<�O�{��n2s��Q��(�!!���d�/�U~5�J'5\��zoU�1y�OPZ�z���]uU���j�����}����\Udd^�@���и�ȍ�ln%h�oE��нW�ԫ��$�I0���*�J�U���c�T�$Q�(
��lU�߰^~��S��`�.Ӷq�G3�u��_�yf�����7~���m(4�߹P�r .U���b.���r�=$����c@����0s̐��� �WKD\���L�x����R��۔f��>M���W <���h�7���U�w���[mqDE[�0�$��B�_ۂ��Cj,v���
�#��4p9�x���f���hU��V�֦��-���{�W[kpp:5�& �$�4U��b����D���V��Se��I$�L�v�櫹�����s�����(4��H�
���