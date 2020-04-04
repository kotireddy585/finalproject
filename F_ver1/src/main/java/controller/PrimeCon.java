package controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Patient;
import service.Serviceclass;

@Controller
public class PrimeCon 
{
	@Autowired
	private Serviceclass ser1;	
	
	//loads when project is runned
    @RequestMapping(value= {"/", "home"})
	public String WebIndex1()
	{
		return "index";
	}
    
    //trying to signup a patient
    @RequestMapping("signupb")
    public String signupm(Model model)
    {
    	model.addAttribute("patient", new Patient());
    	return "signup";
    }
    
    //after completing form filling
    @RequestMapping(value="spdone", method = RequestMethod.POST)
    public String spdone(@Valid @ModelAttribute("patient") Patient pa,BindingResult br, Model m)
    {
    	
    	m.addAttribute("patdetails", pa);
    	if(br.hasErrors())
    	{
    		return "signup";
    	}
    	ser1.addPatient(pa);
    	return "redirect:/home";
    }
    
    @RequestMapping("signinb")
    public String signinp(Model m2)
    {
    	m2.addAttribute("signinModel", new Patient());
    	return "signin";
    }
    
    

 
    @RequestMapping(value="signindn",method = RequestMethod.POST)
    public String signindn(@ModelAttribute("signinModel") Patient p, Model m)
    {
        boolean success = ser1.signp(p);
        if(success)
        {
        	m.addAttribute("pat",p);
        	return "signedhome";
        }
        else
        {
        	m.addAttribute("msg","Invalid Moblie or Password");
        	return "signin";
        }
    	
    }
}
