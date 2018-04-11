package com.appfone.bharathiya.controller;

import java.io.File;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.appfone.bharathiya.pojo.Byodhaarticles;
import com.appfone.bharathiya.pojo.Byodhabanner;
import com.appfone.bharathiya.pojo.Byodhacomments;
import com.appfone.bharathiya.pojo.Byodhareply;
import com.appfone.bharathiya.service.AdminArticleService;
import com.appfone.bharathiya.service.AdminCommentService;
import com.appfone.bharathiya.service.AdminLoginService;
import com.appfone.bharathiya.service.AdminRecoveryService;
import com.appfone.bharathiya.service.AdminbannerService;
import com.appfone.bharathiya.util.Emailutility;

@Controller
public class BharathiyaController {
	
	@Autowired
	private ServletContext context;
	@Autowired
	private HttpSession sessionn;
	
	@Autowired
	private AdminRecoveryService recovery;
	
	@Autowired
	private AdminLoginService admincheck;
	
	@Autowired
	private AdminArticleService articleservice;
	
	@Autowired
	private AdminbannerService bannerservice;
	
	@Autowired
	private AdminCommentService commentservice;
	
	
	
	@RequestMapping(value="/admin")
	public ModelAndView adminController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value="/admindashboard")
	public String admindashboardController(@RequestParam Map<String, String>reqparam)
	{
		
		
		String user=reqparam.get("username");
		String pass= reqparam.get("password1");
		System.out.println("in controller");
		
		int res=admincheck.checkAdmin(user, pass);
		if(res==1)
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminindex");
		sessionn.setAttribute("activeuser", user);
		sessionn.setAttribute("activpass", pass);
		String activeuser=user;
		mv.addObject("activeuser", activeuser);
		return "redirect:/adminloginsuccess.html";
		}
		
		return "redirect:/adminloginfailure.html";
	}
	

	
	@RequestMapping(value="/adminloginsuccess")
	public ModelAndView adminloginsuccessController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminindex");
		return mv;
	}
	
	
	@RequestMapping(value="/adminloginfailure")
	public ModelAndView adminloginfailureController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		System.out.println("in controller");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		String err="Username or Password Missmatch";
		mv.addObject("logerr", err);
		return mv;
	}
	@RequestMapping(value="/adminlogout")
	public String adminlogoutController()
	{
		sessionn.invalidate();
		return "redirect:/admin.html";
	}
	
	@RequestMapping(value="/forgotcredentials")
	public ModelAndView forgotcredentialsController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("recoverycredentials");
		return mv;
	}
	
	
	@RequestMapping(value="/recovery")
	public ModelAndView recoveryController(@RequestParam("email")String email)
	{
		
		int res=recovery.checkMailidtosend(email);
		if(res==1)
		{
			String username=recovery.getusername(email);
			String password=recovery.getpassword(email);
			String subject ="login credentials Recovery ";
			String msg="Dear Admin your username and password is as follows \n \n \n Username :" +username +"\n Password is :"+password +"\n \n \n Please don't reply to this message this is computer generated";
		Emailutility.send(email, subject, msg);
		
			ModelAndView mv = new ModelAndView();
		mv.setViewName("popup");
		return mv;
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("recoverycredentials");
		String recerror="please enter the registred email id";
		mv.addObject("recerr", recerror);
		return mv;
		
		
	}
	
	@RequestMapping(value="dashboard")
	public String dashboardController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin.html";
		}
		return"redirect:/adminloginsuccess.html";
	}
	

	@RequestMapping(value="/adminarticle")
	public ModelAndView adminarticleController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("in controller");
		Byodhaarticles articles = new Byodhaarticles();
		List list = articleservice.getadminArticles();
		ModelAndView mv = new ModelAndView();
		mv.addObject("adarticlelist", list);
		mv.addObject("adminarticle", articles);
		mv.setViewName("adminarticle");
		return mv;
	}
	
	@RequestMapping(value="/saveadminarticle")
	public String saveadminarticleController(@ModelAttribute("adminarticle")Byodhaarticles articles,@RequestParam Map<String, String>reqparam)
	{
		System.out.println("save controller");
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin.html";
		}
		String artcounter=reqparam.get("artcount");
		String article_detail="";
		int artcount=Integer.parseInt(artcounter);
		System.out.println("article text area count is  " +artcount);
		String article[] = new String[artcount];
		String param;
		String temp;
		for(int i=0;i<artcount;i++)
		{
			param="article"+(i+1);
			temp=reqparam.get(param);
			temp="<p style='text-align: justify;'>"+temp+"</p><br/>";
			article[i]=temp;
			
			
		}
		for(int i=0;i<artcount;i++)
		{
			article_detail=article_detail+article[i];
		}
		
		articles.setArticle_detail(article_detail);
		System.out.println("save controller");
		
		
		 MultipartFile file = articles.getArticlegridfile(); 
		  String fileName = file.getOriginalFilename();  
		  System.out.println("filename is " +fileName);
		  articles.setArticle_gridimage(fileName);
		   String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"articlegridimages"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath);
		   File targetFile = new File(uploadPath, fileName);  
		  try {
			file.transferTo(targetFile);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		  
		  MultipartFile file2= articles.getArticlefile();
		  String fileName2=file2.getOriginalFilename();
		  System.out.println("filename is " +fileName2);
		  articles.setArticle_image(fileName2);
		   String uploadPath2 = context.getRealPath("") + File.separator + "images" + File.separator +"articleimages"+ File.separator;
		   System.out.println("uploadpath is" +uploadPath2);
		  File targetFile2 = new File(uploadPath2, fileName2);  
		  try {
			file2.transferTo(targetFile2);
			System.out.println("transfer starts");
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		  String caption=articles.getArticle_caption();
		  caption="<p style='text-align: justify;'>"+caption+"</p>";
		  articles.setArticle_caption(caption);
		  String grid = articles.getArticle_brief();
		  grid="<p style='text-align: justify;'>"+grid+"</p>";
		  articles.setArticle_brief(grid);
		  articles.setArticle_view(0);
		  articles.setArticle_comment(0);
	  articleservice.saveArticle(articles);
		return "redirect:/adminarticle.html";
	}
	
	@RequestMapping(value="/adarticlemore")
	public ModelAndView adminarticledetailController(@RequestParam("article_id")int article_id )
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		System.out.println("in controller");
		Byodhaarticles detailarticle=articleservice.getSingleArticle(article_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("detailarticle", detailarticle);
		mv.setViewName("adminarticledetail");
		return mv;
	}
	
	
	@RequestMapping(value="/deleteadminarticle")
	public String deleteadminarticleController(@RequestParam("article_id")int article_id,@RequestParam("article_gridimage")String article_gridimage, @RequestParam("article_image")String article_image)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin.html";
		}
		  String uploadPath1 = context.getRealPath("") + File.separator + "images" + File.separator +"articlegridimages"+ File.separator;
			System.out.println("article grid image path " +uploadPath1);
			File delfile1= new File(uploadPath1,article_gridimage);
			delfile1.delete();
		
			String uploadPath2 = context.getRealPath("") + File.separator + "images" + File.separator +"articleimages"+ File.separator;
			System.out.println("article  image path " +uploadPath1);
			File delfile2= new File(uploadPath2,article_image);
			delfile2.delete();
			
			articleservice.deleteadminarticle(article_id);
		return "redirect:/adminarticle.html";
	}
	
	@RequestMapping(value="/adminbanner")
	public ModelAndView adminbannerController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		ModelAndView mv = new ModelAndView();
		List list= bannerservice.getAdminBannerList();
		int size =bannerservice.getBannersize();
		Byodhabanner banner = new Byodhabanner();
		mv.addObject("adbannerlist", list);
		mv.addObject("adbannersize", size);
		mv.addObject("adbanner", banner);
		mv.setViewName("adminbanner");
		return mv;
	}
	@RequestMapping(value="/saveadminbanner")
	public String saveadminbannerController(@ModelAttribute("adbanner")Byodhabanner banner)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin.html";
		}
		MultipartFile file=banner.getBannerfile();
		
		String fileName=file.getOriginalFilename();
		System.out.println("the uploaded image name is " +fileName);
		banner.setBanner_image(fileName);
		String uploadpath= context.getRealPath("")+File.separator+"images"+File.separator+"banner"+File.separator;
		
		File targetFile=new File(uploadpath,fileName);
		
		try {
			file.transferTo(targetFile);
		} catch (IllegalStateException | IOException e) {
			
			e.printStackTrace();
		}
		bannerservice.saveAdminBanner(banner);
		
		return"redirect:/adminbanner.html";
	}
	
	@RequestMapping(value="/deleteadminbanner")
	public String deleteadminbannerController(@RequestParam("banner_id")int banner_id,@RequestParam("banner_image")String banner_image)
	{
		if((sessionn.getAttribute("activeuser"))==null)
	{
		return "redirect:/admin.html";
	}
		
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"banner"+File.separator;
		File delfile=new File(floderpath,banner_image);
		delfile.delete();
		bannerservice.deleteadminBanner(banner_id);
		return "redirect:/adminbanner.html";
		
	}
	
	@RequestMapping(value="/editadminbanner")
	public ModelAndView editadminbannerController(@RequestParam("banner_id")int banner_id,@RequestParam("banner_image")String banimgtoedit)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView();
		Byodhabanner banner = bannerservice.getsingleBanner(banner_id);
		mv.setViewName("adminbanneredit");
		mv.addObject("banimgtoedit", banimgtoedit);
		mv.addObject("banneredit", banner);
		return mv;
	}
	
	@RequestMapping(value="/saveadmineditbanner")
	public String saveadmineditbannerController(@RequestParam("banimgtoedit")String banimgtoedit,@ModelAttribute("banneredit")Byodhabanner banner)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin.html";
		}
		MultipartFile file=banner.getBannerfile();
		String fileName=file.getOriginalFilename();
		if(file.getSize()==0)
		{
			banner.setBanner_image(banimgtoedit);
			bannerservice.updateadminBanner(banner);
			return "redirect:/adminbanner.html";
		}
		else
		{
			System.out.println("image choose method");
			String uploadPath = context.getRealPath("") + File.separator + "images" + File.separator +"banner"+ File.separator;
			File delfile=new File(uploadPath,banimgtoedit);
			delfile.delete();
			
			  System.out.println("filename is " +fileName);
			 banner.setBanner_image(fileName);
			  String relativepath = "images/team/"+fileName;
			   System.out.println("uploadpath is" +uploadPath);
			   File targetFile = new File(uploadPath, fileName);  
			  try {
				file.transferTo(targetFile);
				System.out.println("transfer starts");
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			
		}
		
		
		bannerservice.updateadminBanner(banner);
		System.out.println("image to edit is " +banimgtoedit);
		return "redirect:/adminbanner.html";
	}
	
	
	@RequestMapping(value="/admincomment")
	public ModelAndView admincommentController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		List list = commentservice.getComments();
		ModelAndView mv= new ModelAndView();
		mv.addObject("commentarticles", list);
		mv.setViewName("admincomment");
		return mv;
		
		
	}
	
	@RequestMapping(value="/admindeletecomment")
	public String admindeletecommentController(@RequestParam("comment_id")int comment_id)
	{
			commentservice.deleteComment(comment_id);
			
			return"redirect:/admincomment.html";
		
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexController()
	{
		List list = bannerservice.getAdminBannerList();
		List artlist=articleservice.getadminArticles();
		Collections.shuffle(artlist);

		ModelAndView mv= new ModelAndView();
		mv.addObject("usergridlist",artlist);
		mv.addObject("userbannerlist", list);
		mv.setViewName("index");
		return mv;
	}
	

	@RequestMapping(value="/viewarticle")
	public ModelAndView singleController(@RequestParam("article_id")int article_id)
	{
		Byodhaarticles viewarticle=articleservice.getSingleArticle(article_id);
		System.out.println("view article id  is  " +viewarticle.getArticle_id());
		int views=viewarticle.getArticle_view();
		views=views+1;
		viewarticle.setArticle_view(views);
		articleservice.updateArticle(viewarticle);
		List artlist=articleservice.getadminArticles();
		Collections.shuffle(artlist);
		Byodhacomments comments= new Byodhacomments();
		ModelAndView mv = new ModelAndView();
		mv.addObject("commentarticleid", article_id);
		mv.addObject("currentarticle", viewarticle);
		mv.addObject("usergridlist",artlist);
		mv.addObject("comments", comments);
		mv.setViewName("single");
		return mv;
	}
	
	@RequestMapping(value="/postComment")
	public String postCommentControler(@ModelAttribute("comments")Byodhacomments commnet,@RequestParam("commentarticleid")int commentarticleid)
	{
		Byodhaarticles articles=articleservice.getSingleArticle(commentarticleid);
		int comment= articles.getArticle_comment();
		comment=comment+1;
		articles.setArticle_comment(comment);
		articleservice.updateArticle(articles);
		commnet.setArticle_id(commentarticleid);
		commentservice.saveComment(commnet);
		return "redirect:/viewarticle.html?article_id="+commentarticleid+"";
	}
	
	
	
	
	
	
}
