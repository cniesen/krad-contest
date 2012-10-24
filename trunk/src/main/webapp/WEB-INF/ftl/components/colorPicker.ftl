<#--
ColorPicker widget template which generates the colorpicker icon and calls the colorpicker js
-->
<#macro uif_colorPicker widget componentId>

    <#if widget.showColorPreviewIcon>
        <div id="${componentId}_colorPickerIcon" class="inlineBlock colorPickerIcon">
            <#--inner span to get white border effect-->
            <span></span>
        </div>
    </#if>

    <#--Note the use of ?string to pass boolean values in the js-->
    <@krad.script value="createColorPicker('${componentId}', '${widget.defaultColor}',
        ${widget.showColorPreviewIcon?string}, ${widget.showColorPickerOnFocus?string},
        ${widget.changeControlBackground?string}, ${widget.templateOptionsJSString});" />

</#macro>