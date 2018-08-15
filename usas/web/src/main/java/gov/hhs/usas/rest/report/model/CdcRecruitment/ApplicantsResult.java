package gov.hhs.usas.rest.report.model.CdcRecruitment;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="ApplicantsResult", propOrder={})
public class ApplicantsResult {

	@XmlElement(name="Applicant_Name")
	private String applicantName;
	@XmlElement(name="Audit_Code")
	private String auditCode;
	@XmlElement(name="Selectee_Request_Number")
	private String selecteeRequestNumber;
	
	public ApplicantsResult() {
		this.applicantName = "";
		this.auditCode = "";
		this.selecteeRequestNumber = "";
	}

	public ApplicantsResult(String applicantName, String auditCode, String selecteeRequestNumber) {
		this.applicantName = applicantName;
		this.auditCode = auditCode;
		this.selecteeRequestNumber = selecteeRequestNumber;
	}

	public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	public String getAuditCode() {
		return auditCode;
	}

	public void setAuditCode(String auditCode) {
		this.auditCode = auditCode;
	}

	public String getSelecteeRequestNumber() {
		return selecteeRequestNumber;
	}

	public void setSelecteeRequestNumber(String selecteeRequestNumber) {
		this.selecteeRequestNumber = selecteeRequestNumber;
	}

	@Override
	public String toString() {
		return "ApplicantsResult [applicantName=" + applicantName + ", auditCode=" + auditCode
				+ ", selecteeRequestNumber=" + selecteeRequestNumber + "]";
	}
	
}
