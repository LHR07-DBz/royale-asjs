////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.mdl
{
    import org.apache.flex.mdl.supportClasses.ChipBase;

    COMPILE::JS
    {
        import org.apache.flex.core.WrappedHTMLElement;
        import org.apache.flex.html.addElementToWrapper;
    }

    /**
     *  Chip class represents a MDL basic Chip
     *  Chips are complex entities in small blocks.
     *  
     *  The Material Design Lite (MDL) chip component is a small, interactive element.
     *  Chips are commonly used for contacts, text, rules, icons, and photos.
     *
     *  @langversion 3.0
     *  @playerversion Flash 10.2
     *  @playerversion AIR 2.6
     *  @productversion FlexJS 0.8
     */
    public class Chip extends ChipBase
    {
        COMPILE::JS
        private var chip:HTMLSpanElement;
        
        /**
         * @flexjsignorecoercion org.apache.flex.core.WrappedHTMLElement
         * @flexjsignorecoercion HTMLSpanElement
         * @flexjsignorecoercion Text
         */
        COMPILE::JS
        override protected function createElement():WrappedHTMLElement
        {
            typeNames = "mdl-chip";

            chipTextSpan = document.createElement("span") as HTMLSpanElement;
            chipTextSpan.classList.add("mdl-chip__text");

            textNode = document.createTextNode('') as Text;
            chipTextSpan.appendChild(textNode);

            chip = addElementToWrapper(this,'span') as HTMLSpanElement;
            chip.appendChild(chipTextSpan);

            return element;
        }
    }
}
