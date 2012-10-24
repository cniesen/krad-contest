<#macro uif_textWithColorPicker control field>

    <#-- render standard text control -->
    <#include '/krad/WEB-INF/ftl/components/control/text.ftl' parse=true/>
    <@uif_text control=control field=field/>

    <#-- render color picker widget -->
    <@krad.template component=control.colorPicker componentId="${control.id}"/>

</#macro>