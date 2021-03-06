package net.pkusoft.service;

import java.util.List;

import net.pkusoft.model.Photo;

public interface PhotoService {

	Integer getTotalNum();
	
	Photo getPhotoById( Integer photoId );
	
	Photo getPhotoDataById( Integer photoId );
	
	List<Photo> getPhotoList();
	
	int insert( Photo photo );
	
	int update( Photo photo );

	List<Photo> getPhotoListByUserId( Integer userId );	
	
	List<Photo> getPhotoListByUserIdAndCategory(Integer userId, String category);	
}
