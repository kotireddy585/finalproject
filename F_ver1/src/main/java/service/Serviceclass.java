package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.Patientdao;
import model.Patient;

@Service
@Transactional
public class Serviceclass 
{
	@Autowired
	private Patientdao dao1;

	@Transactional
	public void addPatient(Patient pa) {

		dao1.addPatientForward(pa);
		
	}

	public boolean signp(Patient p) {
		
		boolean success = dao1.signinp(p);
		if(success)
		{
			return true;
		}
		else
		{
			return false;
		}
		   
	}
	
	

}
