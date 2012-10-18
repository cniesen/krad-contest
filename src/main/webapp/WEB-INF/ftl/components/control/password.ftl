<#macro uif_password control field>

    <#local attributes='rows="${control.rows!}" cols="${control.cols!}"
            class="${control.styleClassesAsString!}" tabindex="${control.tabIndex!}" ${control.simpleDataAttributes!}'/>

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

    <!-- The actual control generation, calls spring formPasswordInput (as this is a standard html control -->
    <@spring.formPasswordInput id="${control.id}" path="KualiForm.${field.bindingInfo.bindingPath}"
        attributes="${attributes}"/>

    <!-- Setup the control's watermark support (for text entry controls -->
    <#if control.watermarkText?has_content>
        <@krad.script value="createWatermark('${control.id}', '${control.watermarkText?js_string}');"/>
    </#if>

    <!-- Setup the control's dynamic disable support -->
    <@krad.disable control=field.control type="password"/>

</#macro>