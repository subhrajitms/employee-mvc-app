package org.jsp.employeemvcapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.jsp.employeemvcapp.dto.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDao {
	@Autowired
	private EntityManager manager;
	
	public Employee addEmployee(Employee e)
	{
		EntityTransaction transaction=manager.getTransaction();
		manager.persist(e);
		transaction.begin();
		transaction.commit();
		return e;
	}
	
	public Employee updateEmployee(Employee e)
	{
		Employee eDb=manager.find(Employee.class, e.getId());
		if(eDb!=null)
		{
			eDb.setName(e.getName());
			eDb.setEmail(e.getEmail());
			eDb.setPhone(e.getPhone());
			eDb.setPassword(e.getPassword());
			eDb.setSalary(e.getSalary());
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			transaction.commit();
			return eDb;
		}
		return null;
	}
	
	public Employee findById(int id)
	{
		return manager.find(Employee.class , id);
	}
	
	public Employee verifyEmployee(long phone,String password)
	{
		Query q=manager.createQuery("select e from Employee e where e.phone=?1 and e.password=?2");
		q.setParameter(1, phone);
		q.setParameter(2, password);
		try {
			return (Employee)q.getSingleResult();
		}catch(NoResultException e)
		{
			return null;
		}
	}
	
	public Employee verifyEmployee(String email,String password)
	{
		Query q=manager.createQuery("select e from Employee e where e.email=?1 and e.password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		try {
			return (Employee)q.getSingleResult();
		}catch(NoResultException e)
		{
			return null;
		}
	}
	
	
	
	
}
