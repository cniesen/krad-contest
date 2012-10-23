<#--
    This is a copy of the text.ftl file in rice with the color picker part added

 -->

<#macro uif_textWithColorPicker control field>

    <#local attributes='size="${control.size!}" class="${control.styleClassesAsString!}"
         tabindex="${control.tabIndex!}"  ${control.simpleDataAttributes!}'/>

    <#if control.disabled>
        <#local attributes='${attributes} disabled="disabled"'/>
    </#if>

    <#if control.readOnly>
        <#local attributes='${attributes} readonly="true"'/>
    </#if>

    <#if control.style?has_content>
        <#local attributes='${attributes} style="${control.style}"'/>
    </#if>

    <#if control.maxLength??>
        <#local attributes='${attributes} maxlength="${control.maxLength}"'/>
    </#if>

    <#if control.minLength??>
        <#local attributes='${attributes} minLength="${control.minLength}"'/>
    </#if>

    <@spring.formInput id="${control.id}" path="KualiForm.${field.bindingInfo.bindingPath}" attributes="${attributes}"/>

    <#if control.watermarkText?has_content>
        <@krad.script value="createWatermark('${control.id}', '${control.watermarkText?js_string}');"/>
    </#if>

    <#-- render date picker widget -->
    <@krad.template component=control.datePicker componentId="${control.id}"/>

    <#-- render color picker widget -->
    <@krad.template component=control.colorPicker componentId="${control.id}"/>

    <@krad.disable control=field.control type="text"/>

</#macro>