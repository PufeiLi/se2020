function newcos = New_cos(x)

%newcos = sqrt(1-(New_sin(x))^2);
double sum;
double a;
double b; %//sum����ͣ�aΪ���ӣ�bΪ��ĸ
double p;
char s ;
s=1; 
sum=0;
a=1;     %//��ĸ����ֵ
b=1;     %//���Ӹ���ֵ
p=1;
 while abs(a/b) >= 1e-10
 %while a/b >= 1e-6
  sum = sum+s*(a/b);    %//�ۼ�һ��
  a = a*x*x;     %//����һ�����
  b = b*2*p*(2*p-1);   %//����һ���ĸ
  s = s*(-1);
  p = p+1;
 end
 newcos = sum;