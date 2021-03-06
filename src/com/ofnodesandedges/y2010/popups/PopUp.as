/**
 *
 * SiGMa, the Simple Graph Mapper
 * Copyright (C) 2010, Alexis Jacomy
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

package com.ofnodesandedges.y2010.popups{
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.DropShadowFilter;
	
	public class PopUp extends Sprite{
		
		public static const CLOSE:String = "Close";
		public static const OPEN:String = "Open";
		
		protected var _open:Boolean;
		
		protected var _contentWidth:Number;
		protected var _contentHeight:Number;
		
		public function PopUp(){
			_open = false;
		}
		
		public function open(x:Number,y:Number):void{
			if(_open == false){
				_open = true;
				
				this.x = x;
				this.y = y;
				
				var dropShadowFilter:DropShadowFilter = new DropShadowFilter(3, 45, 0x000000, .7, 2, 2, 1, 3);
				this.filters = [dropShadowFilter];
				
				this.graphics.beginFill(0x000000,1);
				this.graphics.drawRect(-26,-36-_contentHeight,_contentWidth+20,_contentHeight+20);
				this.graphics.endFill();
				
				this.graphics.beginFill(0x000000,1);
				this.graphics.moveTo(-6,-16);
				this.graphics.lineTo(0,0);
				this.graphics.lineTo(6,-16);
				this.graphics.moveTo(-6,-16);
				this.graphics.endFill();
				
				this.addChildren();
				
				dispatchEvent(new Event(OPEN));
			}
		}
		
		public function close():void{
			if(_open==true){
				_open = false;
				
				this.filters = null;
				this.graphics.clear();
				this.removeChildren();
				
				dispatchEvent(new Event(CLOSE));
			}
		}
		
		public function addChildren():void{}
		
		public function removeChildren():void{}
	}
}