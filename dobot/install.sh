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
BZh91AY&SY��j  �_� U�7>�ު?���@K���b�4I�$��yC�D4њ�j�I��	�?O��4��y@ ѣ &�Sj4�FA�M4 z�  I�4m'���@  �rׇnՅ�43�����&~���'`�BĨ��C�ja@���Ir,ɴY�mr�גt��΍6O�΄��;Lf�}M��Fz��o��Y`��"�J�y�'��SOWZ����MiS9=R(��n2h6VJ�ۛd!�����n�k������ƽ�I�ŉk�׃|5@�2�c��APs���u b��<�\��·R�{X3���O汾PT�%]�؁)�5���^@���5X�u�fʠ���z{h�:��A���I
N�$���.Ӓ�X�QM�rLby)�p�."
-.�&$�Q%���k���m(e\���U�`�`���(�p�a��V3��Y� �)���SC1V{)���~��S�!.YIQ�ʠ:%,M�Z
�F��RV�G��{$z���S-�l�V״�W��UZ{�:J_�]�%2�R�Л�=d�)��I���e,�*�j�����!��E�����I�.�j����tܧ�n&%���8Q��[{G
���W%�)��h���g4C��Љ?��"�(HFʵ 