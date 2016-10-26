package com.cricket.user;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity


public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8618865333134378272L;

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int UID;
	private String FIRSTNAME;
	private String LASTNAME;
	private String EMAILID;
	private String PASSWORD;
	@Transient
	
	private String REENTERPASSWORD;
	private String MOBILENO;
	
	private int Role=1;
	private boolean Active=true;
	
	
public int getUID() {
		return UID;
	}


	public void setUID(int uID) {
		UID = uID;
	}


	public String getFIRSTNAME() {
		return FIRSTNAME;
	}


	public void setFIRSTNAME(String fIRSTNAME) {
		FIRSTNAME = fIRSTNAME;
	}


	public String getLASTNAME() {
		return LASTNAME;
	}


	public void setLASTNAME(String lASTNAME) {
		LASTNAME = lASTNAME;
	}


	public String getEMAIL() {
		return EMAILID;
	}


	public void setEMAIL(String eMAIL) {
		EMAILID = eMAIL;
	}


	public String getPASSWORD() {
		return PASSWORD;
	}


	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}


	public String getREENTERPASSWORD() {
		return REENTERPASSWORD;
	}


	public void setREENTERPASSWORD(String rEENTERPASSWORD) {
		REENTERPASSWORD = rEENTERPASSWORD;
	}


	public String getMOBILENO() {
		return MOBILENO;
	}


	public void setMOBILENO(String mOBILENO) {
		MOBILENO = mOBILENO;
	}


	public int getRole() {
		return Role;
	}


	public void setRole(int role) {
		Role = role;
	}


	public boolean isActive() {
		return Active;
	}


	public void setActive(boolean active) {
		Active = active;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
public String toString()
	{
		return"{FIRSTNAME:\"" + FIRSTNAME + "\",LASTNAME:\"" + LASTNAME + "\",EMAIL:\"" + EMAILID + "\",ID:\"" + UID + "\",PASSWORD:\"" + PASSWORD + "\",REENTERPASSWORD:\"" + REENTERPASSWORD + "\",MOBILENO:\"" + MOBILENO + "\"}";
	}

	

	
	
}
