%% VRSYS   �V�X�e���s��^�C�v���o��
%
% [VARS,N] = VRSYS(NAME)�́A������VARS�Ɛ���N���o�͂��܂��BVARS�́A�V�X�e
% ����NAME�����V�X�e���Ɋ֘A����N�̕ϐ������X�g���܂݂܂��B�L���ȃV�X
% �e�����́A���̌`���̕�����ł��B
%
%              NAME = [TY '_' SUF]
% 
% �����ŁASUF�́A���̂悤�ȕ�����TY�ɂ���Ďw�肳��郊�X�g���̕W���ϐ�
% ���ɕt�������T�t�B�b�N�X������ł��B
% -----   -------------------------------  ---------------------------
% TY      �t������T�t�B�b�N�X�̑O��VAR		�ڍ�
% -----   -------------------------------  ---------------------------
% 'ss'    'a,b,c,d'                        �W���̏�ԋ�Ԍ^(�f�t�H���g)
% 'des'   'a,b,c,d,e'                      �f�B�X�N���v�^�V�X�e��
% 'tss'   'a,b1,b2,c1,c2,d11,d12,d21,d22'  2�|�[�g�̏�ԋ�Ԍ^
% 'tdes'  'a,b1,b2,c1,c2,d11,d12,d21,d22,e'2�|�[�g�̃f�B�X�N���v�^
% 'gsm'   'sm,dimx,dimu,dimy'              ��ʓI�ȏ�ԋ�Ԍ^
% 'gdes'  'e,sm,dimx,dimu,dimy'            ��ʓI�ȃf�B�X�N���v�^
% 'gpsm'  'psm,deg,dimx,dimu,dimy'         ��ʓI�ȑ������V�X�e���s��
% 'tf'    'num,den'                        �`�B�֐�
% 'tfm'   'num,den,n,m'                    �`�B�֐��s��
% 'sm'    'sm,dim'                         ��ԋ�ԃV�X�e���s��
% 'tsm'   'tsm,dim'                        2�|�[�g�̏�ԋ�ԃV�X�e���s��
% 'imp'   'y,ts,nu,ny'                     �C���p���X����
% ----------------------------------------------------------------------
% �啶���̕�����TY�́A��L�̂悤�ɑ啶���ŕ�����VAR���o�͂��܂��B



% Copyright 1988-2002 The MathWorks, Inc. 