% MIN    �z��̍ŏ��v�f
% 
% X���x�N�g���̏ꍇ�AMIN(X)��X�̍ŏ��v�f���o�͂��܂��BX���s��̏ꍇ�AMIN
% (X)�́A�e��̍ŏ��v�f���܂ލs�x�N�g�����o�͂��܂��BX��N�����z��̏ꍇ�A
% MIN(X)�͍ŏ���1�łȂ������ɂ��čŏ��v�f���o�͂��܂��B
%
% [Y,I] = MIN(X)�́A�x�N�g��I�ɍŏ��l�̃C���f�b�N�X���o�͂��܂��B�ŏ���1
% �łȂ������ōŏ��l�����v�f����������ꍇ�́A�ŏ��̃C���f�b�N�X���o��
% ����܂��B
%
% MIN(X,Y)�́AX�AY�̑Ή�����v�f�̏��������̂��o�͂��AX,Y�Ɠ����T�C�Y��
% �z����o�͂��܂��B�܂��AX,Y�̂ǂ��炩���X�J���ł��\���܂���B
%
% [Y,I] = MIN(X,[],DIM)�́A����DIM�ɂ��čŏ��v�f���o�͂��܂��B
%
% ���͂����f���̏ꍇ�AMIN(ABS(X))���g���܂��B�ŏ��l�̌v�Z�ł́ANaN��
% �����܂��B
%
% ���: X = [2 8 4   �̏ꍇ�Amin(X,[],1)��[2 3 4]�ł��B
%            7 3 9]
%         
%    min(X,[],2) �� [2  �ł���Amin(X,5) �� [2 5 4
%                   3]                      5 3 5]�ł��B
%
% �Q�l�FMAX, MEDIAN, MEAN, SORT.


%   Copyright 1984-2002 The MathWorks, Inc. 
%   $Revision: 1.10.4.1 $  $Date: 2004/04/28 01:46:57 $