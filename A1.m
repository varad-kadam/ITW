clc;
clear all;
close all;

%we will start with Arithmatic Operations on Images
% First we will read the 2 images
x=imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');
y=imread('C:\Users\Varad\Pictures\IPPR\flower.jpg');
% Now we will convert to B&W and resize the image for bitwise operation

u=rgb2gray(x);
v=rgb2gray(y);
m=imresize (u,[256,256]);
n=imresize (v,[256,256]);
 %displaying the images
 subplot (4,4,1)
 imshow (m);
 title ('Image1');



 subplot (4,4,2);
 imshow (n);
 title ('Image2');

 %Performing Addition
 sum=imadd(m,n);
 subplot(4,4,3)
 imshow(sum)
 title ('Arithmatic Addition');

 %Performing Subtraction
 diff1=imsubtract (m,n);
 subplot(4,4,4)
 imshow(diff1)
 title ('Image1 minus Image2');

 diff2=imsubtract (n,m);
 subplot(4,4,5)
 imshow(diff2)
 title ('Image2 minus Image1');

 %Performing Multiplication
 m1=im2double (m);
 n1=im2double (n);
 mul=immultiply(m1,n1);
 subplot(4,4,6)
 imshow(mul);
 title ('Multiplied Image');

 %Performing Division
 div1=imdivide(m1,n1);
 subplot(4,4,7)
 imshow(div1);
 title ('Divide Image1 by Image2');

 div2=imdivide(n1,m1);
 subplot(4,4,8)
 imshow(div2);
 title ('Divide Image2 by Image1');

 %Now we are performing Logical Operations
 %Logical AND
 and=bitand(m,n);
 subplot(4,4,9)
 imshow (and);
 title('Logical AND');

  %Logical OR
 or=bitor(m,n);
 subplot(4,4,10)
 imshow (and);
 title('Logical OR');

  %Logical NOT
 not1=bitcmp(m);   %bitwise complement
 subplot(4,4,11)
 imshow (not1);
 title('Complement of Image1');

 %Logical NOT
 not2=bitcmp(n);   %bitwise complement
 subplot(4,4,12)
 imshow (not2);
 title('Complement of Image2');

 %Logical EX-OR
 xor=bitxor(m,n);   %bitwise complement
 subplot(4,4,13)
 imshow (xor);
 title('Ex OR Operation');

  %Logical NAND
 nand=bitcmp(and);
 subplot(4,4,14)
 imshow (nand);
 title('Logical NAND');

 %Logical NOR
 nor=bitcmp(or);
 subplot(4,4,15)
 imshow (nor);
 title('Logical NOR');

  %Logical EX-NOR
 xnor=bitcmp(nor);   
 subplot(4,4,16)
 imshow (xnor);
 title('Ex NOR Operation');
