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
BZh91AY&SYU�X� p�� ����������pF@�  `	���@�jv�����"T  � �� ��   �Ja��SО�@�& a MM4�4����  � �� ��   �J~�� z� � @Ѡ     4 �)���j��Q�F�S�hM�ښ���ѣ�<�i���&�A1��244����22l�i2m!�1@H0��D�A���!K�a��tG�'D��n'���ִ��,�Ȧ}�g��:E�V(|�HkB���!X�Bpf@$��g�AYK邅t�[fN�qcd��+�1�L���4�6ߨ�c[S���u/C��7�> ������f�|�o���d�f-���\J�H�! ��D��v�p\D�J��Y!"wRC�`���g`w�v��7v�m�*�L�t�A����L7;2�V���J����Ն�q��;�k&R�Ez����\Lp�
]�� �1R�`��`<DbOI����J{��H�ґ�r��8z��gޭ��7A.��mҜ��=�j�"A@�@I^��y:�M?-w'��;0��[�+�̎-8Oy�Ȃ��u�*�D@@Q(��N��$ #Ĩ��(�@�Lfj���ǆ]	ys��l�k9;#�� ��WT��)x��P�h����wH�. ��}ǘV���XP�T۸�����a�a�0�|��ד��@��!�C�&���-%���(�j^��Y
��̂t�d� �$aJ��o4U:�D���<�l���� }'�4D�.�Нk�"^�H��vpL�N���b�jCB 6PD0ED�!�t��H��v�y�������)aw�@��5Z'p�;�N��˳����L?H��� �=UA(� X��}�PMn�S�FR��Q��ӪwXG�' ����ac3>c�H��d�ܜ<�_���wc�4���(����Aҷ�W/�@� f�$BB��p� ��޶�5�H\�o�����d�+,��kl�u5:2I'�WH9���7�)�2]�'m�e�2 ƞ���L�)�m�פ�tȜ̪m�3����3��(�_[��\X��'�,-���.�;Yd����;
�G΂�ćMt��)!4��<�B��<���s۳���{��i@h�ڹLP ��"@v��{]�--�Rr��7�bA�q�wx�i��;��V£T �0 ~z�/x��v
��귿n��Y'�{�rꥄ�p�;��:s[4Q�BW�]!�	��kd0��lR|h���Y�U�s���P�� ���U���d�\
t���n��:�/6_?j�f�t��E�,�� 7��,�g�Fyl�I���@T�f�j@�A�i)"3�20u"<S����1��N�ر��x]딘?��?��,E��g�{�z�|d���!8��e���Du���aɁ�	��G-��s#��>��u�'�W$��F�	�`��,-��J�%u(T����!R�l2v�]-.�/�B@L�-M�?q�U���H·����"=#�y���8 ��i1�
$��tJ'`�pJ�9Q�vp���q�[���{T������H����/-�� 78iEXX�|e��9B�,�~=��@�K��c�wq���,�hAΐ�^�Z�L|=X�;:��NC��SJ x	�p'[��09@+��k׈�a��@���X�f���!��8���3�br��yb:���e5��g ��CMy8�#��L!�<�@i:ѕN(L�ƭN�+�t�\2�R+�&� ��3!��f�[CXQ���R`2,I��P!�iZ��m����^����`�i�3�SO:�'^�P*���b�y���ڬ�t� ^AŹ�`�����ن��9���K�t,_gah���]�w�Hy1(�@��� �&c�o'��Hb�61n)��Tx�Z���>�q���<�Hd.^���o�:ׄ�����$6Ը�q^=�ɉ�U�	kD�3[��Ze�n 弻]�E��RC��.����4[�3h�R�#��4j�"ś0;�
�[��J�	��Z��2�f60�ZZO^q��vjcx�tyE�4&
��|:E
	�� H���q� �� L���n�d�I6l/�S� f��`���Fol����x����4�id���B*�hD�����!p���.D��@(��o
AJX0��E�?���)��R��