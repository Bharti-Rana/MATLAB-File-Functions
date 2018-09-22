function folderName=myGetFolderName(fileName,flag)
% function filePath=myGetFolderName(fileName,flag)
% A function which will return name of the folder of file mentioned in
% pathname
% Sometimes to save result, name of the file is required to save folder
% name of the file on which we carried some operation(s).
% Input:
% fileName: Filename with complete path
% flag: Specifies separating char '/' or '\'; if not mentioned then the
% function will find itself.
%  
% Output:
% folderName: Returns the name of the folder
% 
% Example: 
% pathname='E:\Pics\NBRC\DSC_4210.JPG';
% folderName=myGetFolderName(fileName);
% folderName will have value NBRC

if nargin<2
    if ispc
        flag='\';
    else
        flag='/';
    end
end
index=findstr(fileName,flag);
if numel(index)==0
    folderName=pwd;
else
    lastSlash=index(numel(index));
    secLastSlash=index(numel(index)-1);
    folderName=fileName(secLastSlash+1:lastSlash-1);
end