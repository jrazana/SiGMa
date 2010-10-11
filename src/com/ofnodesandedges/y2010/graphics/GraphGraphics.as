package com.ofnodesandedges.y2010.graphics{
	
	import com.ofnodesandedges.y2010.data.GraphData;
	import com.ofnodesandedges.y2010.data.NodeData;
	
	public class GraphGraphics{
		
		private var _nodes:Vector.<NodeGraphics>;
		
		private var _defaultEdgeType:String;
		
		public function GraphGraphics(graphData:GraphData){
			_nodes = new Vector.<NodeGraphics>();
			
			// Construct each node from the original data:
			for each(var nodeData:NodeData in graphData.nodes){
				var nodeGraphics:NodeGraphics = new NodeGraphics(nodeData);
				_nodes.push(nodeGraphics);
			}
			
			// Construct each node from the original data:
			for(var i:int = 0; i<graphData.nodes.length; i++){
				for(var targetID:String in graphData.nodes[i].inNeighbors){
					_nodes[i].addNeighbor(targetID,graphData.nodes[i].inNeighbors[targetID]);
				}
				
				for(var sourceID:String in graphData.nodes[i].outNeighbors){
					_nodes[i].addNeighbor(sourceID,graphData.nodes[i].outNeighbors[sourceID]);
				}
			}
			
			_defaultEdgeType = "undirected";
		}
		
		public function addNode(node:NodeGraphics):void{
			_nodes.push(node);
		}
		
		public function getNode(nodeID:String):NodeGraphics{
			var nodeResult:NodeGraphics = null;
			
			for each(var node:NodeGraphics in _nodes){
				if(node.id==nodeID){
					nodeResult = node;
				}
			}
			
			return nodeResult;
		}
		
		public function circularize(radius:Number,xCenter:Number,yCenter:Number):void{
			var angle:Number = 0;
			var nodesCount:int = _nodes.length;
			
			for each(var node:NodeGraphics in _nodes){
				node.x = radius*Math.cos(angle)+xCenter;
				node.y = radius*Math.sin(angle)+yCenter;
				angle += Math.PI*2/nodesCount;
			}
		}
		
		public function refreshEdges():void{
			// List the ids:
			var ids:Object = new Object();
			var node:NodeGraphics;
			
			for each(node in _nodes){
				ids[node.id] = 1;
			}
			
			// Check the neighbors, delete the unexisting ones:
			for each(node in _nodes){
				for(var id:String in node.neighbors){
					if(!ids.hasOwnProperty(id)){
						delete node.neighbors[id];
					}
				}
			}
		}
		
		public function get nodes():Vector.<NodeGraphics>{
			return _nodes;
		}
		
		public function set nodes(value:Vector.<NodeGraphics>):void{
			_nodes = value;
		}
		
		public function get defaultEdgeType():String{
			return _defaultEdgeType;
		}
		
		public function set defaultEdgeType(value:String):void{
			_defaultEdgeType = value;
		}
		
	}
}