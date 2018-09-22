function filename=mygetFileName(fname,flag)
% function filename=mygetFileName(fname,flag)
% A function which will return filename present in the path.
% Sometimes mat file is required to be saved with filename on which some
% task/processing has been carried out.
% Input:
% fname: Filename with complete path
% flag: Specifies separating char '/' or '\'; if not mentioned then the
% function will find itself.
%  
% Output:
% filePath: Returns the name of file
% 
% Example: 
% pathname='E:\Pics\NBRC\DSC_4210.JPG';
% filePath=mygetFileName(pathname)
% filePath will have value DSC_4210

if nargin<2
      if ispc
        flag='\';
    else
        flag='/';
      end
end
index1=findstr(fname, flag);
index2=findstr(fname,'.');
if numel(index1)==0
    index1=0;
else
    index1=index1(numel(index1));
end
if(numel(index2)==0)
    index2=size(fname,2)+1;
else
    index2=index2(numel(index2));
end
filename=fname(index1+1:index2-1);