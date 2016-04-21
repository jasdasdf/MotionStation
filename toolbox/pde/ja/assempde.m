% ASSEMPDE   �����}�g���b�N�X��PDE���̉E�ӂ�g�ݗ��Ă܂��B
%
% U = ASSEMPDE(B,P,E,T,C,A,F) �́A�֐��� B �ŗ^�����鋫�E�������g���āA
% P, E, T�ŕ\�킳��郁�b�V����� PDE ��� -div(c*grad(u))+a*u = f ����
% ���܂��BU�ɂ��ĉ����Ƃ��ɁA���`�������̃V�X�e������f�B���N�����E��
% �����������܂��B
%
% [K,F1] = ASSEMPDE(B,P,E,T,C,A,F)�́A�����o�l�Ńf�B���N�����E�������ߎ�
% ���邱�Ƃɂ���čs���g�ݗ��Ă܂��BK �� F �́A���ꂼ�ꍄ���}�g���b�N
% �X�ƉE�Ӄx�N�g���ł��BPDE����FEM�`���ɑ΂�����́Au = K\F1 �ł��B
%
% [K,F1,B1,UD] = ASSEMPDE(B,P,E,T,C,A,F) �́A���`�������̃V�X�e������f
% �B���N�����E�������������邱�Ƃɂ���āAPDE ����g�ݗ��Ă܂��BUN = 
% K\F1 �́A�f�B���N�����E�����łȂ��_�ł̉����o�͂��܂��B���S�� PDE ���
% �̉��́AMATLAB �R�}���h U = B1*UN+UD �œ��邱�Ƃ��ł��܂��B
%
% [K,M,F1,Q,G,H,R] = ASSEMPDE(B,P,E,T,C,A,F) �́APDE ���̕��������\��
% ��^���܂��B
%
% U = ASSEMPDE(K,M,F,Q,G,H,R) �́A���������\����P��̍s��/�x�N�g���`��
% �ɂ��A���`�������̃V�X�e������f�B���N�����E�������������邱�Ƃɂ����
% PDE ���������܂��B
%
% [K1,F1] = ASSEMPDE(K,M,F,Q,G,H,R) �́A�傫�Ȓe���萔�����f�B���N����
% �E������ύX���邱�Ƃɂ���āA���������\����P��̍s��/�x�N�g���`����
% ���܂��B
%
% [K1,F1,B,UD] = ASSEMPDE(K,M,F,Q,G,H,R) �́A���`�������̃V�X�e������f
% �B���N�����E�������������邱�Ƃɂ���āA���������\����P��̍s��/�x�N
% �g���`���ɂ��܂��B
%
% PDE ���̌`��́A�O�p�`�f�[�^ P, E, T �ɂ���ė^�����܂��B�ڍׂ́A
% INITMESH �܂���PDEGEOM���Q�Ƃ��Ă��������B
%
% �X�J���̏ꍇ�̉�u�́AP �̐ߓ_���W�l�ɑΉ�����Ƃ���ŉ��̗�x�N�g����
% ���ĕ\�킳��܂��BNP �̐ߓ_�������� N �̃V�X�e���ɑ΂��ẮAU �̍ŏ�
% �� NP �̒l�� u�̍ŏ��̐����AU ��2�Ԗڂ� NP �̒l�� u ��2�Ԗڂ̐���
% �Ƃ����悤�ɑΉ����܂��B���̂悤�ɂ��āAu �̐����́A�ߓ_���W�l�� N �u
% ���b�N�Ƃ��ăx�N�g�� U �ɐݒ肳��܂��B
%
% B �́APDE ���̋��E������\�킵�܂��BB �́ABoundary Condition �s���
% ���� Boundary M-�t�@�C�����̂ǂ���ł��\�ł��B�ڍׂ́APDEBOUND ���Q
% �Ƃ��Ă��������B
% 
% ���̌`�����g�����Ƃ��ł��܂��B
% 
%    U = ASSEMPDE(B,P,E,T,C,A,F,U0)
%    U = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME)
%    U = ASSEMPDE(B,P,E,T,C,A,F,TIME)
%    [K,F1] = ASSEMPDE(B,P,E,T,C,A,F,U0)
%    [K,F1] = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME)
%    [K,F1] = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME,SDL)
%    [K,F1] = ASSEMPDE(B,P,E,T,C,A,F,TIME)
%    [K,F1] = ASSEMPDE(B,P,E,T,C,A,F,TIME,SDL)
%    [K,F1,B1,UD] = ASSEMPDE(B,P,E,T,C,A,F,U0)
%    [K,F1,B1,UD] = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME)
%    [K,F1,B1,UD] = ASSEMPDE(B,P,E,T,C,A,F,TIME)
%    [K,M,F1,Q,G,H,R] = ASSEMPDE(B,P,E,T,C,A,F,U0)
%    [K,M,F1,Q,G,H,R] = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME)
%    [K,M,F1,Q,G,H,R] = ASSEMPDE(B,P,E,T,C,A,F,U0,TIME,SDL)
%    [K,M,F1,Q,G,H,R] = ASSEMPDE(B,P,E,T,C,A,F,TIME,SDL)
%
% �T�u�h���C�����x���̃��X�g SDL �́A�g�ݗ��ĉߒ������X�g�̃��x���Ŏ���
% ���T�u�h���C���֐������܂��B�I�v�V�������͈��� U0 �� TIME �́A���ꂼ
% �����`�\���o�Ǝ��ԉ����̃A���S���Y���ɑ΂��Ďg���܂��B�b��I�ȓ���
% ���x�N�g�� U0 �́AU �Ɠ����t�H�[�}�b�g�ł��B
%
% �X�J���̏ꍇ��PDE�W��
%
% PDE ���̌W�� c, a, f �́A�l�X�ȕ��@�ŗ^���邱�Ƃ��ł��܂��B
% - �萔
% - �O�p�`�̏d�S�ł̒l��\�킷�s�x�N�g���B�O�p�`�̏d�S�ł̌W���l���v�Z��
%   �邽�߂�  MATLAB �̃e�L�X�g�\���B�\���́A�O�p�`�̏d�S�ł̒l��\�킷
%   �s�x�N�g���ϐ� X, Y, SD, U, UX, UY, T ���g���Čv�Z����܂�(T �̓X�J
%   ���ł�)�B�s�x�N�g���́Ax ���W  �� y ���W�A�T�u�h���C�����x���A���A��
%   �� x �� y �̓��֐��A���Ԃ��܂݂܂��BU0  �� ASSEMPDE �ɓn���ꂽ�Ƃ���
%   ���AU, UX, UY �͎g�����Ƃ��ł��܂��B�������Ƃ�  TIME �Ƃ��� ASSEMPDE
%   �ɓn�����X�J�� T �ɓK�����܂��B
% 
% - ��A�� MATLAB �e�L�X�g�\���́A���Q��!�ɂ���ĕ������܂��B�e�L�X�g�\
%   ���̊e�X�̃V���^�b�N�X�́A��L�̍��ڂɑΉ����܂��B�\�����́A�O�p�`��
%   �X�g t �̃T�u�h���C�����x���̐��ɓ������Ȃ���΂Ȃ�܂���B
% 
% - ���[�U����`���� MATLAB �֐����́A����(P,T,U,TIME)���󂯓���܂��BP 
%   �� T �̓��b�V���f�[�^�ŁAU �͓��͈��� U0 �ł��BT �́AASSEMPDE �ւ̓�
%   �͈��� TIME �ł��B�Ή�����p�����[�^�� ASSEMPDE �ɓn����Ȃ��ꍇ�́A
%   U �͋�s��ŁATIME ��NaN �ł��B
%
% C ����L�̍��ڂ̂����ꂩ�ɑΉ�����f�[�^������2�v�f�̍s�x�N�g���̏ꍇ�A
% ������2�s2��Ίp�s��̗v�f c(1,1) �� c(2,2) �ł��Bc ����L�̍��ڂ̂�
% ���ꂩ�ɑΉ�����f�[�^������3�v�f�̍s�x�N�g���̏ꍇ�A������2�s2���
% �̍s��̗v�f c(1,1) �� c(1,2) �� c(2,2) �ł��BC ����L�̍��ڂ̂����ꂩ
% �ɑΉ�����f�[�^������4�v�f�̍s�x�N�g���̏ꍇ�A������2�s2��s��̗v
% �f c(1,1), c(2,1), c(1,2), c(2,2) �ł��B
% 
% �V�X�e���̏ꍇ�� PDE �W��
%
% PDE �V�X�e���̎����� N �Ƃ��܂��Bc �� (N, N, 2, 2), a �� (N,N) �s��A
% f �͒��� N �̗�x�N�g���ł��Bc �� a �� f �̗v�f c(I,J,K,L), a(I,J), 
% f(I) �́AMATLAB �s�� C, A, F �ɍs�P�ʂɊi�[����܂��B�����̍s��̊e
% �X�̍s�́A�X�J���̏ꍇ�̃V���^�b�N�X�Ɠ��l�ł��B�������A�Ⴂ��1����
% ����܂��BMATLAB �e�L�X�g�\���ł́A�ϐ� U, UX, UY �́A�e�X�̐����ɑ΂�
% ��1�s�� N �s�̍s����܂݂܂��B�P�ʍs��A�Ίp�s��A�Ώ̍s��́A���ʂȏ�
% ���Ƃ��Ĉ����܂��B�e���\�� c(I,J,K,L) �ɑ΂��ẮA�C���f�b�N�X I, J 
% �� K, L �̗����ɓK�p���܂��B
%
% F �ɂ�����s���́APDE �V�X�e���̎��� N �����肵�܂��BF ��I�Ԗڂ̍s�́A
% ���� f(I) ��\�킵�܂��B
%
% A �ɂ�����s�� NA �́A���̕\�ɏ]���āA���� a(I,J) �Ɋ֘A���܂��B�Ώ�
% �ȏꍇ�́AJ> = I �����肵�܂��B�`������Ȃ��S�Ă̗v�f a(I,J) �́A�[��
% �ɉ��肳��܂��B
%
%     ---------------------------------------------------------
%     | NA            | �Ώ̐� | a(I,J)        | A�ł̍s      |
%     ---------------------------------------------------------
%     | 1             | �Ȃ�   | a(I,I)        | 1             |
%     | N             | �Ȃ�   | a(I,I)        | I             |
%     | N*(N+1)/2     | ����   | a(I,J)        | J*(J-1)/2+I   |
%     | N^2           | �Ȃ�   | a(I,J)        | N*(j-1)+I     |
%     ---------------------------------------------------------
%
% ���� N �ƍs��̍s���́AMATLAB �s�� C �ɂ����� c �̃R�[�h�������肵�܂��B
% �s�� NC �́A���L�̕\�̍ŏ��̗�ɂ��� N �̊֐��ɁA�ォ�牺�ւƑΉ�����
% ���B�ŏ��̗�́AC �̃R�[�h���̃^�C�v�����肵�܂��B����́A���ۂɂ́A
% 2< = N< = 4 �𖞑����鏬���Ȓl�ɑ΂��āA����̏����ɂ���Ă̂݃R�[�h��
% �����肳��邱�Ƃ��Ӗ����܂��B�Ώ̂ȏꍇ�ł́AJ> = I �� L> = K ������
% ���܂��B�`�����ł��Ȃ����ׂĂ̗v�f c(I,...J,K,L) �́A�[�������肵�܂��B
%
%     -----------------------------------------------------------------
%     | NC            | �Ώ̐� | c(I,J,K,L)    | C�ł̍s              |
%     -----------------------------------------------------------------
%     | 1             |�Ȃ�    | c(I,I,L,L)    | 1                    |
%     | 2             |�Ȃ�    | c(I,I,L,L)    | L                    |
%     | 3             |����    | c(I,I,K,L)    | L+K-1                |
%     | 4             |�Ȃ�    | c(I,I,K,L)    | 2*L+K-1              |
%     | N             |�Ȃ�    | c(I,I,L,L)    | I                    |
%     | 2*N           |�Ȃ�    | c(I,I,L,L)    | 2*I+K-2              |
%     | 3*N           |����    | c(I,I,K,L)    | 3*I+L+K-4            |
%     | 4*N           |�Ȃ�    | c(I,I,K,L)    | 4*I+2*L+K-6          |
%     | 2*N*(2*N-1)/2 |����    | c(I,I,K,L)    | 2*J^2+J+L+K-4        |
%     |               |����    | c(I,J,K,L)    | 2*J^2-3*J+4*I+2*L+K-5|
%     | N^2           |�Ȃ�    | c(I,I,K,L)    | 4*N*(J-1)+4*I+2*L+K-6|
%     -----------------------------------------------------------------
% 
% �Q�l   INITMESH, PDEGEOM, PDEBOUND, ASSEMA, ASSEMB



%       Copyright 1994-2001 The MathWorks, Inc.