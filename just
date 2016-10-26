	@Transactional
	public void insert(User U) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void update(User U) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	
	public void delete(User U) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public User getuser(User u) {
		List<User> list =sess.getCurrentSession().createQuery("from User U where Uid").setInteger("id",uid).list();
		if(!list.isEmpty())
		{
			return list.get(0);
		}else
		return null;
		
	}

	
	public List<User> getAlluser() {
		// TODO Auto-generated method stub
		List<User> list = sess.getCurrentSession().createQuery(from User uid).list;
		return null;
	}

	@Override
	public void delete(int uid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User getuser(int uid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}