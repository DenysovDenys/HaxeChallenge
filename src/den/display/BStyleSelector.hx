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

package den.display;

//import den.display.BStyleSelectorType;
import openfl.events.EventDispatcher;

/**
 * ...
 *
 * @author Denyska
 
 */
class BStyleSelector extends EventDispatcher
{
    public var type:BStyleSelectorType;
    public var name:String;

    /**
    * Handles precedence and nested elements
    */
    public function new(type:BStyleSelectorType, name:String)
    {
        super();

        this.type = type;
        this.name = name;
        // each time a new selector is created, an array to hold the elements with this selector name should be
        // created. to index them.
        // these arrays are private
        // eg. and array to hold all BButton elements.
    }

} // end class
