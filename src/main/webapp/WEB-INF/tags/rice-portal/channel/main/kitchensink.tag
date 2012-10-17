<%@ include file="/rice-portal/jsp/sys/riceTldHeader.jsp" %>

<channel:portalChannelTop channelTitle="Kitchen Sink and Feature Examples"/>
<div class="body">

  <ul class="chan">
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=UifCompView&methodToCall=start&readOnlyFields=field91" />Uif Components (Kitchen Sink)</a></li>
      <li><portal:portalLink displayTitle="true" title="Standard Layout Demo" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-StandardLayout&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Validation Framework Demo" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-ValidationLayout&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="ServerSide Constraint Validation Demo" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-ValidationServerSide&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Uif Layout Test" url="${ConfigProperties.application.url}/kr-krad/uilayouttest?viewId=UifLayoutView&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Row Details Demo" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-RowDetails&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Test View 1 (old)" url="${ConfigProperties.application.url}/kr-krad/uitest?viewId=Travel-testView1&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Test View 2 (old)" url="${ConfigProperties.application.url}/kr-krad/uitest?viewId=Travel-testView2&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="Incident Report" url="${ConfigProperties.application.url}/kr-krad/uitest?viewId=Travel-testView2&methodToCall=foo" /></li>
      <li><portal:portalLink displayTitle="true" title="Configuration Test View" url="${ConfigProperties.application.url}/kr-krad/configuration-test-view-uif-controller?viewId=ConfigurationTestView&methodToCall=start" /></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/dialog-configuration-test?viewId=DialogTestView&methodToCall=start" />Dialog Test View</a></li>
      <li><portal:portalLink displayTitle="true" title="Generated Fields Test" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=UifGeneratedFields&methodToCall=start" /></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=ConfigurationTestView-Collections&methodToCall=start"/>Collections Configuration Test View</a></li>
      <li><portal:portalLink displayTitle="true" title="State-based Validation (Server test)" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-StateBasedValidation-Server&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="State-based Validation (Client test)" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-StateBasedValidation-Client&methodToCall=start" /></li>
      <li><portal:portalLink displayTitle="true" title="State-based Validation (Client customized test)" url="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-StateBasedValidation-ClientCustom&methodToCall=start" /></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=RichMessagesView&methodToCall=start"/>Rich Messages</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=ClientDisableView&methodToCall=start"/>Client-side disable</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-CollectionTotaling&methodToCall=start"/>Collection Totaling</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/uicomponents?viewId=Demo-CollectionGrouping&methodToCall=start"/>Collection Grouping and Totaling</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView&methodToCall=start"/>Training - Student College Application</a></li>
  </ul>

</div>
<channel:portalChannelBottom/>