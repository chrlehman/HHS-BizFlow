package gov.hhs.usas.dss.model;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:report.properties")
public class Application extends Report {
	
	@Value("${app.search.path}") private String searchPath;
	@Value("${app.intg.type}") private String intgType;
	@Value("${app.file.name}") private String fileName;
	@Value("${app.report.name}") private String reportName;
	@Value("${app.parm.num}") private int parmNum;
	@Value("${app.svp.name}") private String svpName;
	@Value("${app.svp.useval}") private String svpUseval;
	@Value("${app.svp.display}") private String svpDisplay;
	@Value("${app.rvp.name}") private String rvpName;
	@Value("${app.rpt.iteration}") private int rptIteration; 
	@Value("${app.date.interval}") private int dateInterval;
	@Value("${app.end.date}") private String endDate;
	@Value("${app.truncate}") private String spTruncate;
	@Value("${app.run.report}") private boolean runReport;

	public Application() {

	}
	
	@PostConstruct
	public void construct() {
		super.setSearchPath(searchPath);
		super.setIntgType(intgType);
		super.setFileName(fileName);
		super.setReportName(reportName);
		super.setParmNum(parmNum);
		super.setSvpName(svpName);
		super.setSvpUseval(svpUseval);
		super.setSvpDisplay(svpDisplay);
		super.setRvpName(rvpName);
		super.setRptIteration(rptIteration);
		super.setDateInterval(dateInterval);
		super.setEndDate(endDate);
		super.setSpTruncate(spTruncate);
		super.setRunReport(runReport);
	}	
	
}
