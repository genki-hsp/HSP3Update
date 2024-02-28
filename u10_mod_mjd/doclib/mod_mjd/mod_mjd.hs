;--------------------------------------------------
; HSP �w���v �\�[�X�t�@�C�� (hs �`��)
; hs �t�@�C���̏����ɂ��ẮAHS_BIBLE.txt ���Q�Ƃ��Ă��������B

;--------------------------------------------------
; ���� hs �t�@�C���̃f�t�H���g�̃t�B�[���h�l��ݒ�

%dll
; �v���O�C��/���W���[���� ���L��
mod_mjd

%ver
; �o�[�W���� ���L��
1.00

%date
; ���t ���L��
2017/02/20

%author
; ����� ���L��
GENKI

%url
http://mclab.uunyan.com/

%note
mod_mjd.hsp���C���N���[�h���邱�ƁB

%type
�g������

%port
; �Ή��� ���L��

%portinfo
; �ڐA�̃q���g ���L��


%index
ConvertG2MJD
�O���S���I����C�������E�X���֊��Z

%prm
( Year, Month, Day )
int Year  : �N
int Month : ��
int Day   : ��
val : �C�������E�X��

%inst
�O���S���I��i���ݎg���Ă��镁�ʂ̑��z��j���C�������E�X���iMJD�j�ɕϊ����܂��B

Year
�N�𐮐��l�Ŏw�肵�Ă������B
����2017�N�̏ꍇ�́A2017���w�肵�܂��B
�I���O100�N�̏ꍇ�́A-99�i=1-100�j���w�肵�܂��B

Month
����1�`12�̐����l�Ŏw�肵�Ă��������B

Day
����1�`31�̐����l�Ŏw�肵�Ă��������B

�߂�l
�C�������E�X���𐮐��l�ŕԂ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
ConvertMJD2G
ConvertTime2MJD
MJD2Weekday
MJD2Jyunishi
MJD2Jikkan
MJD2Kanshi

%group
���t���Z

%index
ConvertTime2MJD
�������C�������E�X���֊��Z

%prm
( Hour, Min, Sec )
int/double Hour : ��
int/double Min  : ��
int/double Sec  : �b
val      : �C�������E�X������

%inst
�����ihh:mm:ss.ss�j���C�������E�X���̎����֊��Z���܂��B
���ʂ͎����ŕԂ���܂��BConvertG2MJD�֐��ł̊��Z���ʂɑ����Z���ė��p���Ă��������B

Hour
�����������͐��l�Ŏw�肵�Ă��������B
�ʏ�͐����l���g���Ă��������B

Min
�����������͐��l�Ŏw�肵�Ă��������B
�ʏ�͐����l���g���Ă��������B

Sec
�b���������͐��l�Ŏw�肵�Ă��������B
�����_�ȉ����g���ă~���b���w��ł��܂��B

�v�Z���ʂ̗�F
  0��00��00�b�@0.00000
  0��00��01�b�@0.00001
  9��00��00�b�@0.37500
 19��00��00�b�@0.79167
 24��00��00�b�@1.00000

�����ł͎��̂悤�Ȍv�Z�����Ă��܂��B
Hour/24 + Min/(60*24) + Sec/(60*60*24)


%sample
	; 10��09��08�b
	;�o�͌��ʂ́u0.42301�v
mes strf("%0.5f", ConvertTime2MJD(10, 9, 8))


%href
ConvertMJD2Time
ConvertG2MJD

%group
���t���Z


%index
ConvertMJD2Time
�C�������E�X���������֊��Z

%prm
mjdtime, Hour, Min, Sec
double mjdtie : �C�������E�X������
var Hour      : ��
var Min       : ��
var Sec       : �b

%inst
�C�������E�X���̎����i�����_�ȉ��̕����j�������ihh:mm:ss.ss�j�Ɋ��Z���܂��B

mjdtime
�C�������E�X���̏������������o���Ďw�肵�Ă��������B
�܂���ConvertTime2MJD�֐��̒l���w�肵�Ă��������B

Hour
�����l���玞�����o���Đ����l�ŕԂ��܂��B

Min
�����l���番�����o���Đ����l�ŕԂ��܂��B

Sec
�����l����b�����o���Ď����l�ŕԂ��܂��B


%sample
 ;�o�͌���
 ;10��09��08�b

ConvertMJD2Time 0.42301, h,m,s
mes strf("%02d��%02d��%02d�b", h, m, s)

%href
ConvertTime2MJD
ConvertMJD2G
GetMJDNow

%group
���t���Z

%index
ConvertMJD2G
�C�������E�X������O���S���I��֊��Z

%prm
mjd, Year, Month, Day
int mjd   : �C�������E�X��
var Year  : �N
var Month : ��
var Day   : ��

%inst
�C�������E�X���iMJD�j���O���S���I��i���ݎg���Ă��镁�ʂ̑��z��j�ɕϊ����܂��B

mjd
�C�������E�X���̐����l�������w�肵�Ă��������B

Year
�C�������E�X������N�����o���Đ����l�ŕԂ��܂��B

Month
�C�������E�X�����猎�����o���Đ����l�ŕԂ��܂��B

Day
�C�������E�X������������o���Đ����l�ŕԂ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
ConvertG2MJD
ConvertMJD2Time
GetMJDToday

%group
���t���Z

%index
MJD2Weekday
�C�������E�X������j�����擾

%prm
( mjd )
int mjd : �C�������E�X��
val     : �j���i0�`6�j

%inst
�C�������E�X������j�����擾���܂��B

���ʂ�0�`6�̐��l�ŕԂ���܂��B���l�̑Ή��͎��̒ʂ�B
      0  1  2  3  4  5  6
�j�� �� �� �� �� �� �� �y


%sample
 ;2012/1/1�i���j���j�̏ꍇ

�j�� = "��", "��", "��", "��", "��", "��", "�y"
mes �j��( MJD2Weekday(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
���t�v�Z

%index
MJD2Jyunishi
�C�������E�X������\��x���擾

%prm
( mjd )
int mjd : �C�������E�X��
val     : �\��x�i0�`11�j

%inst
�C�������E�X������\��x���擾���܂��B

���ʂ�0�`11�̐��l�ŕԂ���܂��B���l�̑Ή��͎��̒ʂ�B
  0  1  2  3  4  5  6  7  8  9 10 11
 �q �N �� �K �C �� �� �� �\ �� �� ��


%sample
 ;2012/1/1�i�сj�̏ꍇ

�\��x = "�q", "�N", "��", "�K", "�C", "��", "��", "��", "�\", "��", "��", "��"
mes �\��x( MJD2Jyunishi(ConvertG2MJD(2012,1,1)) )


%href
ConvertG2MJD
GetMJDToday
%group
���t�v�Z

%index
MJD2Jikkan
�C�������E�X������\�����擾

%prm
( mjd )
int mjd : �C�������E�X��
val     : �\���i0�`9�j

%inst
�C�������E�X������\�����擾���܂��B

���ʂ�0�`9�̐��l�ŕԂ���܂��B���l�̑Ή��͎��̒ʂ�B
  0  1  2  3  4  5  6  7  8  9
 �b �� �� �� �� �� �M �h �p �

%sample
 ;2012/1/1�i�h�j�̏ꍇ

�\�� = "�b", "��", "��", "��", "��", "��", "�M", "�h", "�p", "�"
mes �\��( MJD2Jikkan(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
���t�v�Z

%index
MJD2Kanshi
�C�������E�X�����犱�x�I�����擾

%prm
( mjd )
int mjd : �C�������E�X��
val     : ���x�I���i0�`59�j

%inst
�C�������E�X�����犱�x�I�����擾���܂��B

���ʂ�0�`59�̐��l�ŕԂ���܂��B���l�̑Ή��͎��̒ʂ�B
    0  �b�q
    1  ���N
    2  ����
    3  ���K
    4  ��C
    5  �Ȗ�
    6  �M��
    7  �h��
    8  �p�\
    9  ᡓ�
   10  �b��
   11  ����
   12  ���q
   13  ���N
   14  ���
   15  �ȉK
   16  �M�C
   17  �h��
   18  �p��
   19  ᡖ�
   20  �b�\
   21  ����
   22  ����
   23  ����
   24  ��q
   25  �ȉN
   26  �M��
   27  �h�K
   28  �p�C
   29  ᡖ�
   30  �b��
   31  ����
   32  ���\
   33  ����
   34  ���
   35  �Ȉ�
   36  �M�q
   37  �h�N
   38  �p��
   39  ᡉK
   40  �b�C
   41  ����
   42  ����
   43  ����
   44  ��\
   45  �ȓ�
   46  �M��
   47  �h��
   48  �p�q
   49  ᡉN
   50  �b��
   51  ���K
   52  ���C
   53  ����
   54  ���
   55  �Ȗ�
   56  �M�\
   57  �h��
   58  �p��
   59  ᡈ�

%sample
 ;2012/1/1�i�h�сj�̏ꍇ

sdim ���x, 64, 60
���x( 0) = "�b�q", "���N", "����", "���K", "��C", "�Ȗ�", "�M��", "�h��", "�p�\", "ᡓ�", "�b��", "����", "���q", "���N", "���", "�ȉK", "�M�C", "�h��", "�p��", "ᡖ�"
���x(20) = "�b�\", "����", "����", "����", "��q", "�ȉN", "�M��", "�h�K", "�p�C", "ᡖ�", "�b��", "����", "���\", "����", "���", "�Ȉ�", "�M�q", "�h�N", "�p��", "ᡉK"
���x(40) = "�b�C", "����", "����", "����", "��\", "�ȓ�", "�M��", "�h��", "�p�q", "ᡉN", "�b��", "���K", "���C", "����", "���", "�Ȗ�", "�M�\", "�h��", "�p��", "ᡈ�"
mes ���x( MJD2Kanshi(ConvertG2MJD(2012,1,1)) )

%href
ConvertG2MJD
GetMJDToday

%group
���t�v�Z

%index
GetMJDToday
���݂̏C�������E�X�����擾

%prm
()
val : ���݂̏C�������E�X��

%inst
���݂̏C�������E�X�����擾���܂��B
�N�����������擾����̂Ō��ʂ͐����ł��B

%sample
; �T���v���X�N���v�g ���L��

%href
GetMJDNow
ConvertMJD2G

%group
���t�擾

%index
GetMJDNow
���݂̏C�������E�X���i�����j���擾

%prm
()
val : ���݂̏C�������E�X���̎���

%inst
���݂̏C�������E�X���̎������擾���܂��B
�����݂̂��擾���܂��B���ʂ�1.0�����̎����ɂȂ�܂��B
GetMJDToday�֐��̌��ʂƑ����Z���ė��p���Ă��������B

%sample
; �T���v���X�N���v�g ���L��

%href
GetMJDToday
ConvertMJD2Time

%group
���t�擾

