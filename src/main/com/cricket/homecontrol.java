package com.cricket;

//import java.awt.List;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
//import java.util.List;
import javax.naming.Binding;
import javax.validation.Valid;

import java.util.List;

import javax.servlet.ServletContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cricket.Product.Product;

import com.cricket.Product.ProductService;
import com.cricket.UserModel.User;
import com.cricket.UserModel.UserService;

@Controller
public class homecontrol {
	@Autowired
	UserService us;
	@Autowired
	ProductService ps;
	
	@Autowired
	ServletContext context;

	@RequestMapping("/")
	public String goo()
	{
		System.out.println("control of com.cricket");
		return "first";
	}
		
	@RequestMapping("/first")
	public String goo1()
	{
		System.out.println("control of com.cricket");
		return "first";
	}
	
	@RequestMapping("/head")
	public String head()
	{
		return "head";
	}
	
	@RequestMapping("/head-meta")
	public String head_meta()
	{
		return "head-meta";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
		@RequestMapping("/Product")
		public String Product()
		{
			return "Product";
		}
	
	@RequestMapping(value="/log",method =RequestMethod.POST)
	public ModelAndView admincheck(@RequestParam("username") String name,@RequestParam("password") String pass)
	{
		ModelAndView mav = new ModelAndView("login");
		ModelAndView mav1 = new ModelAndView("adminhomepage");

		if(name.equals("vicky") && pass.equals("pass"))
		{	
		
		return mav1;
		}
		else
			return mav;
					
		}
	
	
	
	@RequestMapping("/ADDProduct")
	public String ADDProduct()
	{
		return "ADDProduct";
	}

	@RequestMapping(value ="/ADDProduct", method = RequestMethod.POST)
	public ModelAndView ADDProduct(@ModelAttribute("Product") Product P,BindingResult bind)
	{	
		ModelAndView mav = new ModelAndView("ADDProduct");
		System.out.println(P.getProductName());
		
		ps.insert(P);
		return mav;
	}
	
	
	
	
	@RequestMapping("/register")
	public ModelAndView register (@Valid @ModelAttribute("User") User i)
	{
		
		ModelAndView mav  = new ModelAndView("register");
		mav.addObject("User", new User());
		return mav;
	}
	@RequestMapping(value="/ADDUser",method =RequestMethod.POST)
	public ModelAndView ADDUser(@Valid @ModelAttribute("User")  User i,BindingResult bind)
	{
		ModelAndView mav = new ModelAndView("register");
		System.out.println(i.getLASTNAME());
		System.out.println(i.getFIRSTNAME());
		System.out.println(i.getEMAILID());
		System.out.println(i.getMOBILENO());
		mav.addObject("User", i);
		us.insert(i);

					return mav;
		}
	

	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	@RequestMapping(value = "/ADDProductToDB", method = RequestMethod.POST)
	public ModelAndView ADDProductToDB(@ModelAttribute("adminhomepage") Product p, BindingResult bind) {
		ModelAndView mav = new ModelAndView("adminhomepage");
		ps.insert(p);
		
		Product pi = ps.getProductWithMaxId();
		
		//
		
		try
		{
			String path = context.getRealPath("/");
	        
	        System.out.println(path);
	        
	        File directory = null;
	        
	        if (p.getProductFile().getContentType().contains("image"))
	        {
	        	directory = new File(path + "/resources/images");
	        	
	        	System.out.println(directory);
	        	
	        	byte[] bytes = null;
	            File file = null;
	            bytes = p.getProductFile().getBytes();
	            
	            if (!directory.exists()) directory.mkdirs();
	            
	            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + pi.getProductId() + ".jpg");
	            
	            System.out.println(file.getAbsolutePath());
	            
	            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
	            stream.write(bytes);
	            stream.close();
	            
	            pi.setProductImage("resources/images/image_" + pi.getProductId() + ".jpg");
	            
	            ps.update(pi);
	        }
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		//
		
		//List<Product> list = ps.getAllProducts();
		List <Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCateogry());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
		

		return mav;
	}

	@RequestMapping("/viewproduct/{ProductId}")
	public ModelAndView viewproduct(@PathVariable("ProductId") int pid) {
		System.out.println("view product");
		ModelAndView mav = new ModelAndView("viewproduct");
		
		Product p = ps.getProduct(pid);
		
		if( p!=null )
		{
			mav.addObject("ProductId",p.getProductId());
			mav.addObject("ProductName",p.getProductName());
			mav.addObject("ProductCateogry",p.getProductCateogry());
			mav.addObject("ProductPrice",p.getProductPrice());
			mav.addObject("ProductQuantity",p.getProductQuantity());
			mav.addObject("ProductImage",p.getProductImage());
			mav.addObject("ProductDescription",p.getProductDescription());
			
		}
		return mav;
	}

	@RequestMapping("/deleteproduct/{ProductId}")
	public ModelAndView deleteproduct(@PathVariable("ProductId") int pid) {
		ModelAndView mav = new ModelAndView("adminhomepage");
		
		ps.delete(pid);
		
		List <Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCateogry());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
				
		return mav;
	}

	@RequestMapping("/updateproduct/{ProductId}")
	public ModelAndView updateproduct(@PathVariable("ProductId") int pid) {
		ModelAndView mav = new ModelAndView("updateproduct");
		
		Product p = ps.getProduct(pid);
		mav.addObject("ProductId", p.getProductId());
		mav.addObject("Product", p);
		return mav;
	}


	@RequestMapping(value = "/UpdateProductToDB", method = RequestMethod.POST)
	public ModelAndView UpdateProductToDB(@ModelAttribute("Product") Product p, BindingResult bind) {
		ModelAndView mav = new ModelAndView("adminhomepage");
		//ps.update(p);
		
	//
		
		try
		{
			String path = context.getRealPath("/");
	        
	        System.out.println(path);
	        
	        File directory = null;
	        
	        if (p.getProductFile() != null)
	        
	        if (p.getProductFile().getContentType().contains("image"))
	        {
	        	directory = new File(path + "/resources/images");
	        	
	        	System.out.println(directory);
	        	
	        	byte[] bytes = null;
	            File file = null;
	            bytes = p.getProductFile().getBytes();
	            
	            if (!directory.exists()) directory.mkdirs();
	            
	            System.out.println(p.getProductId());
	            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + p.getProductId() + ".jpg");
	            
	            System.out.println(file.getAbsolutePath());
	            
	            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
	            stream.write(bytes);
	            stream.close();
	            
	            p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
	            
	           // ps.update(pi);
	        }
	        else 
	        {
	        	p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
	        }
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		//
		
		ps.update(p);
		
		List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCateogry());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
		

		return mav;
	}

	@RequestMapping(value ="/log", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam("username")String a,@RequestParam("password") String b)
	{	
		ModelAndView mav = new ModelAndView("login");
		ModelAndView mav1 = new ModelAndView("adminhomepage");
		
	List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCateogry());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		mav.addObject("JSONData", jarr.toJSONString());
		mav1.addObject("JSONData", jarr.toJSONString());
		
		if(a.equals("vicky") && b.equals("pass"))
		{
			return mav1;
		}
		else
			
		return mav;
	}



	}

	
	
	

