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
BZh91AY&SY��_ �_������������p�D� 0  ` �>H(��Y�k����D"����!@
����PUT	��R!B�@R�(RD$�E4�OR{S6�C�<��4�z�    @  PИm & �  �&  `  p  @   4 @       4   �@ 4  �   "I	���2m&����OI�i�jmL��~��6�Q��#M7�z���$@�&@�'�4�CCM2$����{I=OЧꞏSH���zM6�@�H@��!�T��0cD�L(Hȩ	�!�?(�C�#��e��a_Xܕ��l�H�t�Y1��5l��Sb�	�O��-^��e���9���t��Z��t�u���h�S��x�LKvA�@a�A@aS������AL�F���X8�jY81?�C��f��u���6�L���*l5�������v8?��`ߋU�4�'(�U�R9I�"6?��,R+e3b�JO�iu-��F�-_ܬz��~�'fv������NZ�Z�*�����~%3��-���e���_��lh'�ms]�?1%��1��E�-�%��MS2���U�`����VUʱ���0��z�ښt��|m�d�V���6��y}nM�Է:�^Xٴƕ]5L�QvYtu:�tᲵ��.�����N��a3�{�om������������Q�����$v'j�Z�DLS�XBL�}V'gc�<�7�Oz���'��VoiN	�$,�2�^GS�x8��X7� ��ӹfcJ2	���P�GA?�cm+A��yo���Q�!�i�߳�`.i�+�2��@� ��@WX��]F�(���fC�^���9Ȥ���	h	#���R?���0����%�����h�d�E=��%ѭH�����j���X��B9H)ěދ��8{W��2		QG>)�o��5�IJJ�	e?O�4�6�Zt�c�K�.�)0�Jm�!ငA�s��bG�?�ڝi�a	����ܪJ���S�K)�Jd�)E�j\�?V�������y��OX{x飥GH*��C���Ծv��0���g̘QW%�E P�P��K���5�h��|��9Q�3hޮ���}���	��䘓�8�QT�xo~��ԛu�ɿ*^� eLάW��R�UJ-ʘ���r�S�{B�h4f�%�z#Ue�N�:��=���Q�_k�ީ��V��O��)�{=�������e�N\�j��z��y��q{i��٭#ͷ���{�CQgz�Bz�E"(�T���lH�B�\Z\ݙ(.�'}�3��W�����W='�rt�yԧ��zx�����v2���`��� .p�0t��$�B�Hn_�y}��@��3r(�B�䩙�B<�۲	f�a�i�3n��|�N��a64Q�Yu>���\����b��m�����2� ��g2i�ڛyDT��f���oM�O���{�0LIm�RU%	�v�3�Qlh}�fhHA��{���>�4 iGtu��I�fZ��[�<Hڴ�P���Snڮ��|��RoM�w�C|��?^쟪���6{=scc�'И'�-uUUUy���C�mL�+|�`�=~ƽqԵ��ʘ6!�a7^D=}��CE�+���{{C��cbMӱ���rԉ���&�/-�-|�G�W[��+8c%҂S@���|�A�&�������V0�B	���=��K%�(���z��M�σ��9�ZR��:�]~&lܗ�mO}�&�
|ܦ�z��^�YW�Tۏ6.Ԕ���LB���޻�_Tt��3o�K�3 �B�C&o57���fP�r!�^1P��\�ܛK�L��&̺ׇEɆ�v3��Hsm�=1���rZ�T���oi�z觃�\�nӃ��f��=E2�uӓ�A�X�y$�0����K��x��s8u�ѴL	��QD�9)LI��t���������$����I��"SZJI�(w��~���v)�%��b3l��t&�	�?����ILl��
Ir3%�aB�)D��R=��HP'�B�Cۼ���P�R�J
聕��X��9�:i ?T�O��#o렽$�O�-���D�(��^�Iv�ة3R��|���iR�Zg��)V��Օ7J��2),9I-@@l@Z�j:��y����?�yN�,�Qu���~?|����0ײ�u�����)ݡC1����?��S����ms�4�=����}�>V�|K�ha�)��+�`:��F�[/�������'�����]�Zǌ��yر��tK)e�\�X,��/.[���[�!B�� !���bzSĘ'ۤ��ՂR|kY?4�1,޲YqbJm#���-(�S4K�,� B(��=s�x�����Y7�J��e�Ui���'���j�C��c0����󳡋C[�6���4|s���X�A��P�������}�|�
m�v��=����"���O��/����X{�Ai3RpEI>�%@ܫ��(Ċ���o.9��ک1�'�y���^\a�E_,9m���7�a�6޽��r.ađ�	���ª���E�<���ŭ�I�F>�0��CEI��&/oO�v��~��A4zH�;��(�5�X�l����}%�O��{c��1�KecD�"Eb�����)��ܚ��`uD}p�jVS�i��w�SL&h�sy�[%:��]6I�s}�R�"��%5,���7��J����^��V(��8z�3��1?�|�^��ɞ��5_�RI$��VF�R��C�숌�A�e�V0�d�$��=I��v"�������Ȍ�)$R���j�M�;��݌�`��ڰe��Њ���Rj)&�q4�I}����SE3�L����Le�la�L���y�2�Yo9�_}��jMMo��{%����G���<_/R��t���WDZO�I�!��)�<b�~���b/��>g�����+�F
m6>��͖����!��8��dT��z�6����z���bu��(N7�H��C����2�)�0���k��f�w{쬞����)�(O���I�B��,� HWدBFx�2F�S�wE��3o�����"9�c/[χ!~3�TVŃ�����ݰ���H�c�q���T�_��~>��M����)%R����UV�r�"� �"�*�U(��J))b�?#���g�����c����Nk��C7ўLd���gM���*��"t/s�0aH}�Ι>a�����<����5a@�d�H,^j{K'�'k��.�][�>]W�I���f+~�6;����-�n{lu<���6�q!_�&I7`�JI&	�P��17N���r���,X�NĝUY!��)�3NZTF��pՀ�w<�]C�]�Bf���Ug�;.�RvD���h]=FҪ��8Fq]���)OXɀ^B�e�����I	 {`��=i�%r�����u&�Ե���Ѯ#Q!�7�`�uC!�b��1Nm�R�t�.�2D8&�I�BR`������LlQ^2sN����	'(�:�v�+�0�lyL̔b&
H�RjB�̞�G'%�:T�<;��ړX����0$��I� d9���$wE�,��K_�i'K��I��*���Y̚(TB��iٯ:��h�g֥R��6h�C�G��KVV�֏���l�]fԚM\�7x��!���CsI�0O�v�
Y�9�%JMYu'4����k��Y�e��dR��*�TM��f�D�~=W�c�K��Hפܛ��e!L�q�)JR��V�I�u�CB#�v�y����4bY{h$JyW�l=h5��R	�|�\��W�9��M1k�1��qB$ 󘡢+3t��������B}�,yJ1x�>����X��0x�>��d�xh(����m�A_��+���~�x�9�g89H�ԓ.��@�R���s�#���F�=�
��S�v�h�����O�'��j<�����>4ȁ��A����xT�{��m����u�L�dtP�M����H)i�p���c�M��:�xTm�Y�~���8��4JH�&;jMjQLg�:��J��Vr�W��7��I먐cvjyf'�*�Z��)'ڨ�Q0Lå�x�oY9�HXs�&��U���EE
`�t��S��1Ag	��"��5��\��4)�49G}���9�ؐ��$�F5�Z��3��J!��-T��6��X�z�8�\*�[_u**�l��x��;BI��R��B'�}��k�Re6E�ܑ;�)R�l�Ɲ#S��Hy�i���E)Db]P�J ��j �Cw\l^�Iy>̽���Rŉ�x"�q4d�gz�4�jU�e5<�0�m�PډI��
F���`�����Sbp� �iA�@������R�)�E�
8���%�aiU��@�H0�Y�AEUI�nYA!3(i<@DX:�R�,(p�s3NƩ�Ox�ZF�����b���Y4�ˤ/�_&2����H�& �PVA�D����GX�Yn)�cʅTE	��HMy�lEI���j��,��;��(��B����#�hލ�5���$	"��'QR�#J,��CE;V��2�V|#�-#A��sH��WfK��Ƌ�&&�.�ܢ�I�I�h����ƕIEB�SJW5<
8�q_���QK�,�rΨ�)��5����o"���?@h/aG���6��<�?oy�K޸����M��d���q�l���9Π��	�r�t�{�ICG���&D��EDߡO��Z�JN�ɚFhx��除Ke#[֝���`a%:~�+$�OI�uK�6�ĕJL�w���Q'�:#���zZ�貖Rh��WZ���t,�`����μ�g5��E�(e��A6�c@ޅ�.n�t&�X�U*����2��u�OI��Ќ�!�a31H�I��%�ЇQwoT/	��l\��^֌�<P�0����0�;<%
p%懬�HR��_���~Q�="���R��SY�K-K�@Q��ɧy�����(�^j�.�L�	E2���"���p\(r��Hg/��J�2k�(~2���h�B��$P!i	JHVW�^KZ ��I-WW�f����g3)!��I��0��L熩�0��R4"��Mj�����\RZ�OL&RD�I�T=��(YS�1=l(�M$��?�{�1�H1���{&��})Fo�^$����7��,�� ����JdJ#?mI'�����un����o��A1�'�Nr�SRJNǿ�=C�v(���C�G�rpDA��טV�E"�����R(\�"w&��|ɢOq7pH��m�حpuZH��5��Mɩ�^˭2�	{Ho�RHA6�.��%A�eK�T������H@*"u]9���/c}>�U�K���J	Q�N��r��/�Gu,�0��#�0q���jv�bZc�U`Nɒ-5�C����I2�ԱQD��,(Y�.C�(���JI��u����MJ�%Զ���kb�Ȱ�I�Kq�ׄ�,��[�Z*B1T4�jN	Mc��4�bn���k��"�(������V�a���E
JI*��0C$q`	�cF�J~I�-�@�]�(kar�dJ\��:z�'8����	�6��R�iM�c��Ū���0Ilj�.�.�J���t&	4,�j��a��a�RK�L��pT��T��L�B�Q!Y$i�#���d�I�����g�U*�UJ؛�v�n7�I���.�E�=I&�Y�4`i$���q9A�b2�+�:��H���v�؍I�`��I�5�z#���"�@s:Mb<��7������W���)ёeD�I5���3Fp��p|���MCH�SƓ�6���L�	�$�&L��X��R-���a%?�o��K�&#�zpMe�
QJ-$`�A��$� �^���p��h���ПT&rCH0LVJ9:��L&=A]B�H�"�y�>�}�)�I¢*b�'�z�kA�}��� 0 }��E�� zK@�]��Ζ)q'�Q7*b�7)��ȹ,K�Yf��LE!���]0I�~�f��9��S[�`���Z4��aC�R�l���������
P(V�U����(����B"B�'��P�ũ*��DQ�(
9��$B
�R7�EKՊ�n1 ����H�
�+�