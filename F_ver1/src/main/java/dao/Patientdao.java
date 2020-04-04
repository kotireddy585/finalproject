package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
