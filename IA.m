x = dir ("*.jpg");
arquivo=fopen('histograma.txt','a');
for ii=1:length(x)
img=imread(x(ii).name);
flag=isgray(img);
if(!flag)
img=rgb2gray(img);
endif
hist=imhist(img);
hist=hist';
fprintf(arquivo,'%d,',hist);
fprintf(arquivo,'%s',"'----categoria aqui----'");
fprintf(arquivo,'\n');
endfor
fclose(arquivo);