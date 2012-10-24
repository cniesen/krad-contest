package org.kuali.rice.contest.components;

import org.apache.commons.lang.StringUtils;
import org.kuali.rice.krad.uif.component.Component;
import org.kuali.rice.krad.uif.control.ControlBase;
import org.kuali.rice.krad.uif.control.SizedControl;
import org.kuali.rice.krad.uif.field.InputField;
import org.kuali.rice.krad.uif.view.View;

/**
 * Used to enter passwords without them being visible
 */
public class Password extends ControlBase implements SizedControl {
	private static final long serialVersionUID = 1L;

	private int size;
	private Integer maxLength;
	private Integer minLength;
	private String watermarkText = StringUtils.EMPTY;

	/**
	 * The following actions are performed:
	 * 
	 * <ul>
	 * <li>Defaults maxLength, minLength (if not set) to maxLength of parent
	 * field</li>
	 * </ul>
	 * 
	 * @see org.kuali.rice.krad.uif.component.ComponentBase#performFinalize(org.kuali.rice.krad.uif.view.View,
	 *      java.lang.Object, org.kuali.rice.krad.uif.component.Component)
	 */
	@Override
	public void performFinalize(View view, Object model, Component parent) {
		super.performFinalize(view, model, parent);

		if (parent instanceof InputField) {
			InputField field = (InputField) parent;
			if (getMaxLength() == null) {
				setMaxLength(field.getMaxLength());
			}

			if (getMinLength() == null) {
				setMinLength(field.getMinLength());
			}
		}
	}

	/**
	 * Gets the watermark text for this TextControl
	 * 
	 * <p>
	 * A watermark typically appears as light gray text within the text input
	 * element whenever the element is empty and does not have focus. This
	 * provides a hint to the user as to what the input is used for, or the type
	 * of input that is required.
	 * </p>
	 * 
	 * @return the watermarkText
	 */
	public String getWatermarkText() {
		return this.watermarkText;
	}

	/**
	 * Sets the watermark text for this TextControl
	 * 
	 * @param watermarkText the watermarkText to set
	 */
	public void setWatermarkText(String watermarkText) {
		// to avoid users from putting in the same value as the watermark adding
		// some spaces here see watermark troubleshooting for more info
		if (StringUtils.isNotEmpty(watermarkText)) {
			watermarkText = watermarkText + "   ";
		}
		this.watermarkText = watermarkText;
	}

	/**
	 * Maximum number of characters that can be inputted
	 * 
	 * <p>
	 * If not set on control, max length of field will be used
	 * </p>
	 * 
	 * @return int max number of characters
	 */
	public Integer getMaxLength() {
		return maxLength;
	}

	/**
	 * Setter for the max number of input characters
	 * 
	 * @param maxLength
	 */
	public void setMaxLength(Integer maxLength) {
		this.maxLength = maxLength;
	}

	/**
	 * Minimum number of characters that can be inputted
	 * 
	 * <p>
	 * If not set on control, min length of field will be used
	 * </p>
	 * 
	 * @return int max number of characters
	 */
	public Integer getMinLength() {
		return minLength;
	}

	/**
	 * Setter for the min number of input characters
	 * 
	 * @param minLength
	 */
	public void setMinLength(Integer minLength) {
		this.minLength = minLength;
	}

	/**
	 * @see org.kuali.rice.krad.uif.control.SizedControl#getSize()
	 */
	public int getSize() {
		return this.size;
	}

	/**
	 * @see org.kuali.rice.krad.uif.control.SizedControl#setSize(int)
	 */
	public void setSize(int size) {
		this.size = size;
	}
}
