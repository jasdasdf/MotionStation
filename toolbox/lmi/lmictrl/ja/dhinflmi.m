% [gopt,K,X1,X2,Y1,Y2] = dhinflmi(P,r,gmin,tol,options)
%
% ���U���ԃv�����gP(z)���^����ꂽ�Ƃ��A���[GMIN,GMAX]�ł̍œKHinf���\
% GOPT�Ƃ��𖞑�����Hinf�R���g���[��K(z)���v�Z���܂��B
% 
%    * �v�����g������I�Ɉ��艻���܂��B
%    * ���[�v�Q�C����GOPT�ȉ��ɂ��܂��B
% 
% DHINFLMI�́ALMI�x�[�X�̃A�v���[�`���������܂��B
%
% GOPT�݂̂��v�Z���邽�߂ɂ́A�o�͈�����1�����ݒ肵��DHINFLMI�����s��
% �܂��B���͈���GMIN, TOL, OPTIONS�́A�I�v�V�����ł��B
%
% P(z)�Ɋւ���O��:  ���� + ���o
%
% ����:
%  P          �v�����g��SYSTEM�s��(LTISYS���Q��)�B
%  R          D22�̎�����ݒ肷��1�s2��̃x�N�g���B���Ȃ킿�A
%                      R(1) = �ϑ��ʂ̐�
%                      R(2) = ����ʂ̐�
%  GMIN       ���[�v���\�ɑ΂��ă��[�U���ݒ肵���^�[�Q�b�g�B
%             GOPT���v�Z����ɂ́AGMIN=0�Ɛݒ肵�A���\GAMA���B���\����
%             �����𒲂ׂ�ɂ́AGMIN = GAMA��ݒ肵�܂��B
%  TOL        GOPT�̖ڕW���ΐ��x(�f�t�H���g = 1e-2)�B
%  OPTIONS    ���l�v�Z�p�̐���p�����[�^�̃I�v�V������3�v�f�x�N�g���B
%             OPTIONS(1:2): ���g�p�B
%             OPTIONS(3): �f�t�H���g = 1e-3�B
%                         ���̏ꍇ�A�᎟���������s����܂��B
%                             rho(X*Y) >=  ( 1 - OPTIONS(3) ) * GOPT^2
% �o��:
%  GOPT       �œKHinf���\�B
%  K          gamma = GOPT�ɑ΂���Hinf���S�R���g���[���B
%  X1,X2,..   X = X2/X1��Y = Y2/Y1�́Agamma = GOPT�ɑ΂���2��HinfRic-
%             cati�s�����̉��ł��B�܂��AR = X1��S = Y1�́AX2=Y2=GOPT*eye
%             �Ȃ̂ŁA����LMI�̉��ł��B
%
% �Q�l�F    DHINFRIC.



% Copyright 1995-2002 The MathWorks, Inc. 