function newsin = New_sin(x)
%ʹ��sinx��̩��չ��ʽ���
double sum;
double a;
double b; %//sum����ͣ�aΪ���ӣ�bΪ��ĸ
double p;
char s ;
s=1; 
sum=0;
a=x;     %//��ĸ����ֵ
b=1;     %//���Ӹ���ֵ
p=1;
 while abs(a/b) >= 1e-6
 %while a/b >= 1e-6
  sum = sum+s*(a/b);    %//�ۼ�һ��
  a = a*x*x;     %//����һ�����
  b = b*2*p*(2*p+1);   %//����һ���ĸ
  s = s*(-1);
  p = p+1;
 end
 newsin = sum;

 
 
 
 

% double sum
% double t
% double n
% sum = 0;
% t = x;
% n = 1;
%  while abs(t) >= 1e-6
%      sum = sum + t;
%      n = n + 1;
%      t = (-1)*t*x*x/(2*n-1)/(2*n-2);
%  end
