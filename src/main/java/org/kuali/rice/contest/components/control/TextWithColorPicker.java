package org.kuali.rice.contest.components.control;

import org.kuali.rice.contest.components.widget.ColorPicker;
import org.kuali.rice.krad.uif.control.TextControl;

/**
 * An extension of the text control to add a color picker widget that will automatically put color code in the text
 * control input
 */
public class TextWithColorPicker extends TextControl {
    private ColorPicker colorPicker;

    /**
     * Get the ColorPicker widget used to configure a colorpicker for this control
     *
     * @return the ColorPicker widget
     */
    public ColorPicker getColorPicker() {
        return colorPicker;
    }

    /**
     * Set the ColorPicker widget configuration
     *
     * @param colorPicker
     */
    public void setColorPicker(ColorPicker colorPicker) {
        this.colorPicker = colorPicker;
    }
}
