package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Pappointment;
import model.Patient;

@Repository
public class Patientdao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addPatientForward(Patient pa) {
		System.out.println(pa.getAge()+" "+pa.getName()+" "+pa.getPassword()+" "+pa.getMobile()+" "+pa.getEmail());
		Session session = sessionFactory.openSession();
		session.save(pa);
		System.out.println("patient record inserted");
		session.flush();
		session.close();
	}

	public boolean signinp(Patient p) {
	    
		System.out.println(p.getMobile());
		Session session = sessionFactory.openSession();
		boolean patientfound = false;
		String sql_query = "from Patient as p where p.mobile=? and p.password=?";
		Query query = session.createQuery(sql_query);
		query.setParameter(0, p.getMobile());
		query.setParameter(1, p.getPassword());
		List list =query.list();
		
		if((list!=null)&&(list.size()>0))
		{
			patientfound = true;
		}
		session.close();
		return patientfound;
	}

	public Patient findPatientF(Patient pa) {
       
		String mobile = pa.getMobile();
		System.out.println(mobile);
		Session session = sessionFactory.openSession();
		String sql = "From Patient as p where p.mobile=?";
		Query query = session.createQuery(sql);
		query.setParameter(0, mobile);
		List<Patient> list =(List<Patient>)query.list();
		System.out.println(list);
		session.close();
		return list.get(0);
	}

	public void createappDao(Pappointment papp) {
		System.out.println(papp.getMobile()+" "+papp.getName()+" "+papp.getAge()+" "+papp.getDoctor()+" "+papp.getSlot());
		Session session = sessionFactory.openSession();
		session.save(papp);
		System.out.println("patient appointment record inserted");
		session.flush();
		session.close();
		
		
	}

}
