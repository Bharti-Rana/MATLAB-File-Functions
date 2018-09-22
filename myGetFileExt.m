function fext=myGetFileExt(fname)
% function fext=myGetFileExt(fname)
% A function which will return extension of a given file
% 
% Input:
% fname: Filename with complete path
%  
% Output:
% fext: Returns the extension of the file
% 
% Example: 
% fname='E:\Pics\NBRC\DSC_4210.JPG';
% fext=myGetFileExt(fname)
% fext will have value JPG

indx=findstr(fname,'.');
if numel(indx)~=0
    fext=fname(indx(end)+1:end);
else
    fext=fname;
end