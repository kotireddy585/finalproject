package controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Pappointment;
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
    @RequestMapping(value= {"signupb","newuser"})
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
    
    @RequestMapping(value="{signinb,bookappb,appstatusb}")
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
    
    @RequestMapping(value="signbookappb")
    public ModelAndView bookapp(@ModelAttribute("pat") Patient p)
    {
//    	System.out.println(p.getMobile()+" returning to appbook with bookatt");
    	return new ModelAndView("appbook","bookatt",p);
    }
    
    
    @RequestMapping("appbook1")
    public String getThePatient(@ModelAttribute("bookatt") Patient pa,Model show)
    {
    	Patient pa1 = ser1.findPatient(pa);
    	Pappointment papp1 = new Pappointment();
    	papp1.setMobile(pa1.getMobile());
    	papp1.setAge(pa1.getAge());
    	papp1.setEmail(pa1.getEmail());
    	papp1.setName(pa1.getName());
    	System.out.println(pa1);
    	show.addAttribute("cata", papp1);
    	return "Showappcata";
    }
    
    @RequestMapping("createapp")
    public ModelAndView createapp(@ModelAttribute("cata") Pappointment papp)
    {
    	ser1.createappSer(papp);
    	return new ModelAndView("appcrdone","appd",papp);
    }
}
