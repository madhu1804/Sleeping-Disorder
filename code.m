Detecting RR Peak Series:



Load a01
Figure
Plot(tm,ecgsig)
Hold on
Plot(tm(ann),ecgsig(ann),’ro’)
Xlabel(‘Seconds’)
Ylabel(‘amplitude’)
Title(‘Apnea-ECG’)


SVM Algorithm:


Clear all;
Clc;
A=csvread(‘a01.mat’);
A=[a(:,1:end-1,a(:end)];

%Divide Data in training and testing sets

[atr, ate] =  holdout(a, 80);
Xte=ate(:,1:end-1);Yte=ate(:,end);
Xtr=atr(:,1:end-1);Ytr=atr(:,end);
Fm = [];


%Scatter Plot of data

Figure
Hold on
X=[Xtr;Xte];Y=[Ytr;Yte];
Scatter(X(Y==1,1),X(Y==1,2),’*g’)
Scatter(X(Y==-1,1),X(Y==-1,2),’*r’)
Hold off
Xtrain=[Xtr(:,1).^2, Xtr(:,2).^2,sqrt(2).*Xtr(:,1),*Xtr(:,2)];
Xtest=[Xte(:,1).^2, Xte(:,2).^2,sqrt(2).*Xte(:,1),*Xte(:,2)];
fm_=[];

%for different values of ‘C’
For c=[0.2,0.5,0.7,1,2,5]

%Applying Gradient Ascent
Alpha =. Grad_asc_poly(Xtrain,Ytr,c,2);

%Choosing data points for non-zero alphas
Alpha =alpha(alpha>0);Ys=Ytr(alpha>0);Xs=Xtrain(alpha>0,:);

%Caluculating Weights & Bias

W=sum(alpha.*Ys.*Xs);
Bias=mean(Ys-(Xs*W’));

%Predictions
f=sign(Xtest*W’ +bias);
[~,~,fm] = confusionMatrix(Yte,f);
fm = [fm_; c fm];

End

[max_fm, indx] =  max(fm_(:,2));
c_opt=fm_(indx,1)

alpha = grad_asc_poly(Xtrain,Ytr,c_opt,2);
alpha= alpha(alpha>0); Ys=Ytr(alpha>0);
Xs=Xtrain(alpha>0,:);

%% Weight & Bias

W=sum(alpha.*Ys.*Xs)
Bias=mean(Ys-(Xs*W’))

%% Predicted Values

F=sign(Xtest*W’ +bias);
Ft=Xtrain*W’ +bias);
Zeta=max(0,1-Ytr.*ft);
Non_Zero_Zeta=sum(zeta~=0)
figure
hold on
scatter3=(Xtrain(Ytr==1,1), Xtrain(Ytr==1,2), Xtrain(Ytr==1,3))
scatter3=(Xtrain(Ytr==-1,1), Xtrain(Ytr==-1,2), Xtrain(Ytr==-1,3))
syms x1 x2
fn=vpa((-bias-W(1)*x1-W(2)*x2)/W(3),4);
fsurf(fn);
fn1=vpa((-1-bias-W(1)*x1-W(2)*x2)/W(3),4);
fsurf(fn1,’r’);
fn=vpa((1-bias-W(1)*x1-W(2)*x2)/W(3),4);
fsurf(fn2,’b’);
hold off
xlim([-0.7686 3.18]);
ylim[-0.58 2.37]);
zlim([-9.92 9.82]);
hold off
interp_cubic_spline_qrs(qrs_inddex, qrs_amp, fs);
time_qrs = qrs_index / float(FS)
time_qrs = time_qrs – time_qrs[0]
time_qrs_interp = np.arrange(0, time_qrs[-1], 1/float(fs))
tck = interpolate.splrep(time_qrs, qrs_amp, s=0)
qrs_interp = interpolate.splev(time_qrs_interp,tck,der=0)
return time_qrs_interp, qrs_interp

data_path = ‘./data/’
train_data_name = [ ‘a01’, ‘a02’, ’a03’, ‘a04’, ‘a05’]
test_date_name = [‘a20’, ‘b05’, ‘c10’]

age = [ 21, 23, 56, 67, 48, 69, 78, 60, 17, 30]
test_date_name = [‘a20’, ‘b05’, ‘ c10’]
age = [ 21, 23, 56, 67, 48, 69, 78, 60, 17, 30]
sex = [1,1,1,0,0,0,0,0,0,1,1,1,1,1,0]
Margin = 10
Fs_intp = 4
Max_hr = 300.0
Min_hr = 20.0
Min_rri = 1.0 / (max_hr / 60.0)* 1000
Mix_rri = 1.0 / (min_hr / 60.0)* 1000
Train_input_array = []
Train_label_array= []

X1range=min(X(:,1)):0.01:max(X(:,1));
X2range=min(X(:,2)):0.01:max(X(:,2));
[x1, x2]=meshgrid(x1range,x2range);
X1p=reshape(x1,1,size(x1,2)*size(x1,1));
X2p=reshape(x2,1,size(x2,2)*size(x2,1));
Xp=[(x1p.^2)’ ,(x2p.^2)’, (x2p.*x1p)’];
Ynp=sign(Xp*W’+bias);
Figure
Hold on
Imagesc([min(X(:,1)) max(x(:,1))], [min(x(:,2)) max(X(:,2))
Scatter(X(Y==1,1), X(Y==1,2), ‘*g’)
scatter(X(Y==-1,1), X(Y==-1,2), ‘*r’)
axis([min(X(:,1)) max(X(:,1)) min(X(:,2)) max(X(:,2))])
hold off





Performance Evaluation:



Targets = [1,1,0,0,0; 0,0,1,1,0,0];
Outputs = [0.1, 0.86, 0.2, 0.1, .02, 0.1;0.4, 0.12, 0.768, 0.145, 0.1,0.8; 0.454, 0.35, 0.21, 0.0, 0.89, 0.9999];

Eval = evaluation(targets,outputs);

Fprintf(‘%s\n’,’Confusion Results’);
Fprintf(‘Confusion value = %0.2f\n’, eval.confusion.c);
Fprintf(‘%s\n’,’Confusion Matrix’);
For row = 1:sixe(eval.confusion.cm,1)
Fprint(‘\t’);
 For col = 1:size(eval.confusion.cm,2)
Fprintf(‘%0.2f’, eval.confusion.cm(row,col));
End
Printf(‘\n’);
End
Fprint((‘%s\n’,’iNDICES’);
For row = 1:size(eval.confusion.ind,1)
For col = 1:size(eval.confusion.ind,2)
S = size(eval.confusion.ind{row,col},2);
If s == 0
Fprintf(‘\t[]’);
Elseif s == 1
Fprintf(‘\t[%d]’,eval.confusion.ind{row,col}(1));

End
end













