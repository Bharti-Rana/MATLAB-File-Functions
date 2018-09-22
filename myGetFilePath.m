function filePath=myGetFilePath(pathname)
% function filePath=myGetFilePath(pathname)
% A function which returns path
% Input:
% dirPath: Filename with complete path
% 
% Output:
% filePath: Returns the path of file
% 
% Example: 
% pathname='E:\Pics\NBRC\DSC_4210.JPG';
% filePath=myGetFilePath(pathname)
% filePath will have value E:\Pics\NBRC\

if ispc
    index=findstr(pathname,'\');
else
    index=findstr(pathname,'/');
end
if numel(index)==0
    filePath=pwd;
else
    lastSlash=index(numel(index));
    filePath=pathname(1:lastSlash);
end
