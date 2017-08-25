package com.my.project.services.bbs2;

import com.my.project.daos.bbs2.IDaoBoard;
import com.my.project.models.bbs2.ModelArticle;

public interface IServiceBoard extends IDaoBoard {
    
    ModelArticle transUpdateHitAndGetArticle(int articleNo);
    
}
