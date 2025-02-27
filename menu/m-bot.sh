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
BZh91AY&SYл� ��h5����������P F �  `����re:)v�S�BE�  )4S�Q�14���i��G�m	� � �a4�M 2I5='����4���      � @�C@�CM 4� �� 	!�4��R���T�O�)�OS6��Q��O)�?TzMFA��4@�����@4@ d1 �RH	��$ɓ@&�50L2H��z�)����4z\#��y��w���)�x|3�.�)y����Ja�q�Zg �+BV����>�D]����֢�A�P@^���rc���*ʭ��R5{jB�U.]4cm�fmk���.C�ld�hg>��M��ɂ��0�D�ݍ�̦��-����v�i߲H�>���n}g�s���F����a�ao�)e`�b֤��ԓ������(�h�qBPX�T��m��d��#��W�2ِ��r[n!$�O�>����{�H�f�̺�T�����*[��c��R�
"��%���۷�-��O3%�y;�A��w�����8$�Ø��9�w{��8�0Du����Ԯ�~���y�����ߓ'��{v����!t��SD ��w�S��)XY��"�+\aXT\�x�n� &I�5qZ�s�d��B�O�`��&��F��N������ۿuI�g��7��c>cZknɻE�^�濑vW����9w�x�M0R�� ��9;�X����Y�����l�_�*���0�n� ��0cC[H��J�L���w��RGEtEI%�6_�b/��(�$�i��}�ޏG�D�?9�,�|�ۗ@f�h��n��:R87a@�x+e�U���2����t��F��
��^�2X���h�#��1 �1yi�x��F�9�Q1�-44�r�׳9�v�$i�3@��`SG��^�^��]��%��2�^���d���h_AT�*t~�E�W�(_G�[vv�|<?!��� ��lX�l|/K~���Ԫ��`�UUU��t��phe~Mܜ��z�T��<��1�Bm��oB^�!.�2шoe��Lч]pU�jK�SP�������.b""(�����@b<F��	�1&�*L������NZN����MKGE��,���#&*�����b]�P5��n6��<�!T
t$���A�ȱ�įK�%�W�y�S4����Iԛc�=Ri�%N�/�:nڜf�]�55�}��$�d21�I( :6�N����ǘ�(}||~�w����BIr��+��?���/��G�M=��ь��>7����L�=2�n��?��^���)�v��7s~�{�Z_0�i��{���]�V+��s�d\����Si��x��1���m;<�0LcV.w�=��C|Ԙ�6;j��8�5������v��O1@�80>�vg�w15R���ڒxwts���p�����S"�Y�>�����hX�������:y��π��*xf�OK�O}=B�'��8]Tx�r� �^E�p�L,���!Y%p�5I�'�]j�D�1�3��$a��i���Y���9���b��^e��?�}f�쨒�gGyښ�.z���ME>I�W�� f�.�$�9�� ���&��k𸲔Q�L�f?I��ܤ7=��w&EI獑�S����A�-��G'|ì�MsS��ؑt�r[��Ss|�̫%I%Iy��)�g�r�jc�o+����v�V�[�瞋c@NY�f�ķ.,�Ky��V�F��H���@����y�"�9�~,e�Z�)f����}*B���.0��0e� �ˆ$�������\�ҡ.Nقr)Q;��iё����c:�Y�.�t\�R�T}��΄��aN-��m���5�|��ĐV|� ���Ӫ&����8�̾���R�UyY��X��y��g�qv�����2��[�v��拄>���.=���vh��⹿����>E[�˵O��jtl]�yhQz�TZ��b�H�KIQM[(���;�D����1�Ib��Pp>��c�:�z�s(�o��o�ƿg�7�������6���f�Ļ��!�-ڐeUf�7%��7�Vb��c�u���0{�jF����%ڙu<8�J*��NmnN��K�)�/������v��C�H_:
5ca5�}w;S5��z�=ι<��/���$�p���7E�(���W
qK�]e��&�$Lm�ՠ�q
"&�I � �����л�g)��'�r\�}w����f׻VI{b�"��+�RI�k�,�u-������[$��5�Ђ���4���Κ�SCp���^�Z���[o��K��|�R9}�RT�<d��Oj�����$���it�H�����<=�����<z�yZ�A���u�z�pN�$����':�M�o��Ip��YR���&g�y���qnk���Gƛ��7mJ]���6KM�W0���$�Y3i'��st,�Jև�IT�)&�����/�&/D�&��߿T�$���'wc�a�M��M}Ύ��Ȍ���渿t�2TTٓZ�^���Ji�9�u���F�5h�/6��A�5�-�I��#(�.!B�������2�(,�]�Y���J��B�JR���J�cy{3\�1���z�)Q�l�J���2n�Vy"^\���3o6x�.��ͩi#�)�8¸92^���3cP�-��ҍ���b�2KU	��o��]$�{<�7wp��$��6/�����.���D��4��t� �t�K�/	e����ӛ��a|�?i���ڵ�sq����\2��V���I�X��7�v�GMi����>��*$�UQ>ꃟ`�����O�H���I�ňo6�$��??"��R	"�R�.�p�!�w�t