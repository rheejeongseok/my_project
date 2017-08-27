package com.my.project.daos.bbs2;

import java.util.List;

import com.my.project.models.bbs2.ModelUploadFile;
import com.my.project.models.bbs2.ModelUploadImage;


public interface IDaoUpload {
   
    int insertAttachFile(ModelUploadFile attachfile);
    int insertPhoto(ModelUploadImage attachfile);    
    List<ModelUploadImage> getImageByteList(int articleno);
    ModelUploadImage getImageByteOne(int articleno, int uploadImageNo);
    int deletePhoto(int articleno, int uploadImageNo);
    int deletePhotos(int articleno);
}
