package com.example.demo.basicService;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class FIleUploadService {

	private final String uploadLocation="C:\\Users\\HP\\Documents\\workspace-spring-tool-suite-4-4.5.1.RELEASE\\AdvertisementManagementSystem\\src\\main\\resources\\static\\upload\\";
	
	public String upload(MultipartFile file,int id) throws IOException
	{
		byte data[]=file.getBytes();
		String name=file.getOriginalFilename();
		File dir=new File(uploadLocation+id);
		if(!dir.exists())
		{
			dir.mkdir();
		}
		String ext=name.substring(name.lastIndexOf("."));
		String filename=System.currentTimeMillis()+ext;
		
	    FileOutputStream fos=new FileOutputStream(new File(dir,filename));
        fos.write(data);
        fos.flush();
        fos.close();
        return filename;
    
	}
	
	 public String getProfilePic(int agencyid,String filename) throws FileNotFoundException, IOException
	   {
	         File file = new File(uploadLocation+agencyid+"/"+filename);
	         try{
	   FileInputStream fis = new FileInputStream(file);            
	            int size = fis.available();
	            byte arr[] = new byte[size];
	            
	            fis.read(arr);
	            fis.close();
	            byte[] encoded = Base64.getEncoder().encode(arr);
	           
	            return new String(encoded);   
	            
	         }
	          catch (FileNotFoundException ex) 
	        {
	            System.out.println("Profile Pic Not Found !");
	            return null;
	        } catch (IOException ex) 
	        {
	            System.out.println("Profile Pic reading error");
	            return null;
	        }
	    }

	
}
