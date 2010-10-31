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

package com.ofnodesandedges.y2010.data{
	
	public class GraphData{
		
		private var _nodes:Vector.<NodeData>;
		private var _nodeAttributes:Object;
		private var _edgeAttributes:Object;
		private var _metaData:Object;
		
		private var _defaultEdgeType:String;
		
		public function GraphData(){
			_nodes = new Vector.<NodeData>();
			_nodeAttributes = new Object();
			_edgeAttributes = new Object();
			_metaData = new Object();
			
			_defaultEdgeType = "undirected";
		}
		
		public function addNode(node:NodeData):void{
			_nodes.push(node);
		}
		
		public function getNode(nodeID:String):NodeData{
			var nodeResult:NodeData = null;
			var i:int,l:int = _nodes.length;
			
			for(i=0;i<l;i++){
				if(_nodes[i].id==nodeID){
					nodeResult = _nodes[i];
				}
			}
			
			return nodeResult;
		}
		
		public function addNodeAttribute(id:String,title:String,type:String):void{
			_nodeAttributes[id] = new Object();
			_nodeAttributes[id]["title"] = title;
			_nodeAttributes[id]["type"] = type;
		}
		
		public function addEdgeAttribute(id:String,title:String,type:String):void{
			_edgeAttributes[id] = new Object();
			_edgeAttributes[id]["title"] = title;
			_edgeAttributes[id]["type"] = type;
		}
		
		public function addMetaData(key:String,value:String):void{
			_metaData[key] = value;
		}

		public function get nodes():Vector.<NodeData>{
			return _nodes;
		}

		public function set nodes(value:Vector.<NodeData>):void{
			_nodes = value;
		}

		public function get nodeAttributes():Object{
			return _nodeAttributes;
		}

		public function set nodeAttributes(value:Object):void{
			_nodeAttributes = value;
		}
		
		public function get edgeAttributes():Object{
			return _edgeAttributes;
		}
		
		public function set edgeAttributes(value:Object):void{
			_edgeAttributes = value;
		}

		public function get metaData():Object{
			return _metaData;
		}

		public function set metaData(value:Object):void{
			_metaData = value;
		}

		public function get defaultEdgeType():String{
			return _defaultEdgeType;
		}

		public function set defaultEdgeType(value:String):void{
			_defaultEdgeType = value;
		}

	}
}