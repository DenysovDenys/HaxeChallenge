/*
 * MIT License
 *
 * Copyright (c) 2016 Denyska
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package den.controls;


/**
 * The BTooltipMode class defines constants for the values of the tooltipMOde property of a BTooltip component.
 * 
 * @author Denyska
 
 */
@:enum 
abstract BTooltipMode(String)
{
    /**
     * 
     */
    var LABEL_ONLY = "labelOnly";
    
	/**
	 * 
	 */
	var TIP_ONLY = "tipOnly";
    
	/**
	 * 
	 */
	var PREVIEW_ONLY = "previewOnly";
    
	/**
	 * 
	 */
	var LABEL_AND_TIP = "labelAndTip";
    
	/**
	 * 
	 */
	var LABEL_AND_PREVIEW = "labelAndPreview";
    
	/**
	 * 
	 */
	var TIP_AND_PREVIEW = "tipAndPreview";
    
	/**
	 * 
	 */
	var ALL = "all";

}

