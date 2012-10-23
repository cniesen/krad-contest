/**
 * Create the color picker for the control specified by id
 *
 * @param id
 * @param defaultColor
 * @param showColorPreviewIcon
 * @param showOnFocus
 * @param changeControlBg
 * @param templateOptions
 */
function createColorPicker(id, defaultColor, showColorPreviewIcon, showOnFocus, changeControlBg, templateOptions) {
    //select control and icon
    var control = jQuery("#" + id);
    var colorPickerIcon = jQuery("#" + id + "_colorPickerIcon");
    var hexRegex = /^[a-fA-F0-9]{6}$/;

    if (control.val() && hexRegex.test(control.val())) {
        colorPickerIcon.css("backgroundColor", "#" + control.val());
        defaultColor = "#" + control.val();
        if (changeControlBg) {
            control.css("backgroundColor", "#" + control.val());
        }
    }

    //if templateOptions is null, init blank group
    templateOptions = templateOptions || {};

    //default options merged with templateOptions
    var options = jQuery.extend({
        color:defaultColor,
        onChange:function (hsb, hex, rgb) {
            control.val(hex);

            if (showColorPreviewIcon) {
                colorPickerIcon.css("backgroundColor", "#" + hex);
            }

            if (changeControlBg) {
                control.css("backgroundColor", "#" + control.val());
            }
        },
        onBeforeShow:function () {
            if (this.value && hexRegex.test(this.value)) {
                jQuery(this).ColorPickerSetColor(this.value);
            }
        },
        onSubmit:function () {
            control.ColorPickerHide();
        }
    }, templateOptions);

    //Initialize color picker plugin
    control.ColorPicker(options);

    //when icon is clicked show the color picker - hide it if it is already showing
    control.data("pickerShowing", false);
    if (showColorPreviewIcon) {
        colorPickerIcon.on("click", function () {
            if (control.data("pickerShowing")) {
                control.ColorPickerHide();
                control.data("pickerShowing", false);
            }
            else {
                control.ColorPickerShow();
                control.data("pickerShowing", true);
            }

        });
    }

    //On keyup or blur make sure the value is set and shown if a valid color hex value is inputted,
    //otherwise clear the color display out
    control.on("keyup blur", function () {
        if (this.value && hexRegex.test(this.value)) {
            jQuery(this).ColorPickerSetColor(this.value);

            if (showColorPreviewIcon) {
                colorPickerIcon.css("backgroundColor", "#" + this.value);
            }

            if(changeControlBg){
                control.css("backgroundColor", "#" + this.value);
            }
        }
        else{
            if (showColorPreviewIcon) {
                colorPickerIcon.css("backgroundColor", "#FFFFFF");
            }

            if(changeControlBg){
                control.css("backgroundColor", "#FFFFFF");
            }
        }
    });

    //close the color picker if the user hits enter or escape while in the control
    control.on("keypress", function(event){
        var keycode = (event.keyCode ? event.keyCode : event.which);
        //13 is enter, 27 is escape
        if(keycode == '13' || keycode == 27){
            control.ColorPickerHide();
        }
    });

    if(showOnFocus){
        control.on("focus", function () {
            control.ColorPickerShow();
        });
    }
}