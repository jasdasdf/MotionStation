% DSOLVE   ������������̃V���{���b�N�ȉ�
% DSOLVE('eqn1','eqn2', ...) �́A������������Ə���������\�킷�V���{��
% �b�N�ȕ���������͂Ƃ��Ă����܂��B�������⏉�������́A�P��̓��͈�����
% �ŃO���[�v�����ꂽ��A�J���}�ŋ�؂邱�Ƃ��ł��܂��B
%
% �f�t�H���g�̓Ɨ��ϐ��́A't' �ł��B�Ɨ��ϐ��́A�Ō�̓��͈����Ƃ��ĕϐ�
% ��ݒ肷�邱�Ƃɂ���āA't' ���瑼�̃V���{���b�N�ϐ��ɕύX���邱�Ƃ���
% ���܂��B
%
% ���� 'D' �́A�Ɨ��ϐ��ɂ��Ă̔�����\�킵�܂��B�ʏ�́Ad/dt �ł��B"D
% " �ɑ��������́A�J��Ԃ������̉񐔂������܂��B���Ƃ��΁AD2 �� d^2/dt^2
%  �ł��B�����̔������Z�q�̂�����ɑ��������́A�Ɨ��ϐ��ł��B���Ƃ���
% D3y �́Ay(t) ��3�����֐��������܂��B�V���{���b�N�ϐ����́A���� "D" ��
% �܂�ł͂����܂���B
%
% ���������́A'y(a) = b' �� 'Dy(a) = b' �̂悤�ȕ������Ŏw�肳��܂��B��
% ���ŁAy �́A�]���ϐ���1�ŁAa �� b �͒萔�ł��B�^�����Ă��鏉������
% �̐����]���ϐ��̐��������Ȃ���΁A���ʂ̉��ɂ͔C�Ӓ萔 C1, C2 ������
% �܂�܂��B
%
% 3�̈قȂ�^�C�v�̏o�͂𓾂邱�Ƃ��ł��܂��B�P�ꎮ�ɑ΂���1�̏o�͂�
% �w�肷��ƁA���ʂƂ��āA����`�������ɑ΂��镡���̉����V���{���b�N�x�N
% �g���ɏo�͂���܂��B�A���������ɑ΂��āA����Ɠ����̏o�͂��w�肷��ƁA
% ���ʂ̓A���t�@�x�b�g���ɕ��ׂ��A�o�͂Ɋ��蓖�Ă��܂��B�A����������
% �΂���1�̏o�͂��w�肷��ƁA�����܂ލ\���̂��o�͂���܂��B
%
% �����`�̉������߂��Ȃ��ꍇ�́A�ԐړI�ɉ����悤�Ɏ��݂܂��B�ԐړI��
% ��������ꂽ�Ƃ��́A���[�j���O���ł܂��B�����I�ȉ����ԐړI�ȉ��𓾂��
% �Ȃ��ꍇ�ɂ́A���[�j���O�Ƌ��ɋ�̃V���{���b�N�ϐ����o�͂���܂��B���
% �`�������������ہA�����̒᎟�������������ϕ����o�͂���邱�Ƃ�����܂��B
%
% ��� :
%
%   dsolve('Dx = -a*x') �́A���̌��ʂ��o�͂��܂��B
%
%   ans = exp(-a*t)*C1
%
%   x = dsolve('Dx = -a*x','x(0) = 1','s') �́A���̌��ʂ��o�͂��܂��B
%
%   x = exp(-a*s)
%
%   y = dsolve('(Dy)^2 + y^2 = 1','y(0) = 0') �́A���̌��ʂ��o�͂��܂��B
% 
%   y =
%        [  sin(t)]
%        [ -sin(t)]
%
% S = dsolve('Df = f + g','Dg = -f + g','f(0) = 1','g(0) = 2') �́A��
% ���̃t�B�[���h�����\����S���o�͂��܂��B
%
%      S.f = exp(t)*cos(t)+2*exp(t)*sin(t)
%      S.g = -exp(t)*sin(t)+2*exp(t)*cos(t)
%
%      Y = dsolve('Dy = y^2*(1-y)')
%      Warning: �z�I�ȉ��͋��܂�܂���B�A�I�ȉ����o�͂���܂��B
%      Y =
%      t+1/y-log(y)+log(-1+y)+C1=0
%
%      dsolve('Df = f + sin(t)', 'f(pi/2) = 0')
%      dsolve('D2y = -a^2*y', 'y(0) = 1, Dy(pi/a) = 0')
%      S = dsolve('Dx = y', 'Dy = -x', 'x(0)=0', 'y(0)=1')
%      S = dsolve('Du=v, Dv=w, Dw=-u','u(0)=0, v(0)=0, w(0)=1')
%      w = dsolve('D3w = -w','w(0)=1, Dw(0)=0, D2w(0)=0')
%      y = dsolve('D2y = sin(y)'); pretty(y)
%
% �Q�l   SOLVE, SUBS.



%   Copyright 1993-2002 The MathWorks, Inc. 