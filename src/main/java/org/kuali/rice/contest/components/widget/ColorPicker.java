package org.kuali.rice.contest.components.widget;

import org.kuali.rice.krad.uif.widget.WidgetBase;

/**
 * Color picker widget options which allows for selection of web color hex values
 */
public class ColorPicker extends WidgetBase{
    private String defaultColor;
    private boolean showColorPreviewIcon;
    private boolean showColorPickerOnFocus;
    private boolean changeControlBackground;

    /**
     * Get the default color selection to start with when the color picker is opened and there is no value
     * for the control
     *
     * @return the default colorpicker color
     */
    public String getDefaultColor() {
        return defaultColor;
    }

    /**
     * Set the default color selection to start with when the color picker is opened and there is no value
     * for the contro
     * l
     * @param defaultColor
     */
    public void setDefaultColor(String defaultColor) {
        this.defaultColor = defaultColor;
    }

    /**
     * True to show an icon that can be clicked to open the colorpicker and also shows the current selected color.
     * If false, the color picker will only appear when the field is clicked (not tabbed to)
     *
     * @return true to show the colorpicker icon widget
     */
    public boolean isShowColorPreviewIcon() {
        return showColorPreviewIcon;
    }

    /**
     * Set the showColorPreviewIcon flag.
     *
     * @param showColorPreviewIcon
     */
    public void setShowColorPreviewIcon(boolean showColorPreviewIcon) {
        this.showColorPreviewIcon = showColorPreviewIcon;
    }

    /**
     * If true, show the colorpicker on focus with the field - the user will have to click out or press enter (or escape)
     * to close.  If false, the colorpicker will only show for click events.
     *
     * @return
     */
    public boolean isShowColorPickerOnFocus() {
        return showColorPickerOnFocus;
    }

    /**
     * Set the showColorPickerOnFocus flag.
     *
     * @param showColorPickerOnFocus
     */
    public void setShowColorPickerOnFocus(boolean showColorPickerOnFocus) {
        this.showColorPickerOnFocus = showColorPickerOnFocus;
    }

    /**
     * If true, change the color of the background of the control this colorpicker widget is configured on to the
     * selected color.
     *
     * @return true if background color of the control should be changed, false otherwise.
     */
    public boolean isChangeControlBackground() {
        return changeControlBackground;
    }

    /**
     * Set the changeControlBackground flag.
     *
     * @param changeControlBackground
     */
    public void setChangeControlBackground(boolean changeControlBackground) {
        this.changeControlBackground = changeControlBackground;
    }
}
