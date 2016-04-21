% MANOVA1   ���U�̕Б����ϗʉ��
%
% D = MANOVA1(X,GROUP,ALPHA) �́A���ϗʃf�[�^��2�ȏ�̃O���[�v�̕��ϒl��
% ��r���āA�Б� MANOVA ���s���܂��B
%
% X �́A�s��ŁA�e�s�͑��ϗʊϑ���\���A�e��͈�̕ϐ���\���܂��B
%
% GROUP �́AX �Ɠ��������̃x�N�g�����A�܂��́AX �Ɠ����s�������������
% �Z���z��܂��͕����z��̂����ꂩ�ł��BX �l�́AGROUP �̒��̒l�Ɠ����l��
% �Ȃ�ꍇ�A�����O���[�v�ɂȂ�܂��B
%
% ALPHA �́A�X�J���L�Ӑ�����\���A�f�t�H���g�l�́A0.05�ł��B
%
% D �́A�O���[�v���ς̑傫���𐄒肷����̂ł��B����́A���̎����ō��
% ����Ԃɕ��ς����݂���Ɖ]�����������p����Ȃ��ŏ��̑傫���ł��B
% ���Ƃ��΁AD = 0 �̏ꍇ�A���ς͓����ł���Ɖ]����������p�ł��܂���B
% D = 1 �̏ꍇ�A���ς͓����ł���Ɖ]����������p�ł��܂����A���C�����
% ���ς��ʒu����Ɖ]�����������p�ł��܂���B
%
% [D,P] = MANOVA1(...) �́AP ���o�͂��܂��B�O���[�v�̕��σx�N�g������X��
% �����ł���Ɖ]���A����������ɑ΂��� P �l��v�f�Ƃ���x�N�g���ł��B
% P(1) �͎���0�́AP(2) �͎���1�́AP(3) �͎���2�Ƃ�������P-�l���o�͂��܂��B
%
% [D,P,STATS] = MANOVA1(...) �́A���̃t�B�[���h������ STATS �\���̂�
% �o�͂��܂��B
%       W        �O���[�v���̓��a�ƃN���X��
%       B        �O���[�v�Ԃ̓��a�ƃN���X��
%       T        ���ƃN���X�ς̑��a
%       dfW      W �ɑ΂��鎩�R�x
%       dfB      B �ɑ΂��鎩�R�x
%       dfT      T �ɑ΂��鎩�R�x
%       lambda   Wilk �� lambda �l(����Ɋւ��铝�v��)
%       chisq    lambda ���J�C��敪�z�ɕϊ�
%       chisqdf  chisq �ɑ΂��鎩�R�x
%       eigenval (W^-1)*B �̌ŗL�l
%       eigenvec (W^-1)*B �̌ŗL�x�N�g���F�����́A�����ϐ��ɑ΂���
%                �W���ŁAC �̃O���[�v���̕��U��1�ɃX�P�[�����O�����
%                ���܂��B
%       canon    �����ϐ��́AXC*eigenvec �ɓ��������̂ŁAXC �́AX �̗��
%                ���S���畽�ς����������̂ł��B
%       mdist    �e�_���炻�̃O���[�v���ϊԂ� Mahalanobis ����
%       gmdist   �O���[�v���ς̊e�g�Ԃ� Mahalanobis ����
%
% �����ϐ� C �́A���̗v�f�������Ă��܂��B
% C(:,1) �̓O���[�v�Ԃ��ő�Ɉ��������悤�� X �̗�̐��`�����ŁAC(:,2) ��
% C(:,1) �ɒ�����������̂��ƂŁA�ő�Ɉ������������������Ă��܂��B
%
% �Q�l : ANOVA1, GPLOTMATRIX, GSCATTER.


%   Copyright 1993-2002 The MathWorks, Inc. 
%   $Revision: 1.6 $  $Date: 2003/02/12 17:08:02 $