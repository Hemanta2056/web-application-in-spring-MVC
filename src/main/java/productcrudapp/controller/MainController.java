package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		
		m.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute( "title", "Add Product");
		
		return "add_product_from";
	}
	
	//handle add product form
	
	@RequestMapping(value="/handle-product" , method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product ,HttpServletRequest request) {
		
		System.out.println(product);
		RedirectView redirectview = new RedirectView();
		productDao.createProduct(product);
		redirectview.setUrl(request.getContextPath()+"/");
		return redirectview;
	}
	
	// handler to delete data
	
	@RequestMapping("/delete/{productID}")
	public RedirectView deleteProduct(@PathVariable("productID")int productID,HttpServletRequest request) {
		
		
		this.productDao.deleteProduct(productID);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/");
		return redirectview;
		
	}
	
	//update handler
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId")int pid ,Model model) {
		
		Product product = this.productDao.getProduct(pid);
		model.addAttribute("product",product);
		
		return "update_form";
		
		
	}
}
