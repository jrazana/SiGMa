#**SiGMa** - *the Simple Graph Mapper*

- **author**: Alexis Jacomy, *alexis* dot *jacomy* at *gmail* dot *com*
- **website**: [Of Nodes And Edges](http://www.ofnodesandedges.com)

##I. Introduction

**SiGMa** is a Web graph mapper for Flash, usable, modifiable and propagatable under the conditions of the [GPL 3.0 License](http://www.gnu.org/licenses/gpl.html "GPL 3.0 license"). This project has been initiated for two reasons:

* First of all, the current state of Web graph mapping is not that accessible. There are a lot of solutions, from other Flash widgets to SeaDragon or SVG exports, but they all require the editor to use first a Graph Visualization Software to prepare the graph before. SiGMa will allow webmasters to display a graph with different views, from graph file, as simple as possible (no need for coordinates or display nodes attributes). And for people who still want to process some first treatment of the graph, SiGMa is also conceived to use some metrics or attributes from the graph file.

* Also, it is often pretty hard to publish an interactive map with exactly the needed features, that's why SiGMa aims to be accessible for developers - more precisely, adding a feature specific to your data, like a geocoded layout, or a layout where x and y depend from specific attributes is easy to do.

Finally, SiGMa's interface will be oriented along different tools, from the simple zoom to the filters, through other visualizations, etc. The user can manage the tools with a control panel, and each tool can have a specific settings panel. This aims to make it easy to add new features, and to help users to observe the graph as you want trough developer's view.

##II. Functionalities
###1. Current state
The most basic features have all been implemented, and SiGMa is now usable:

* *GEXF* and *GDF* loaders
* *HITS* to set nodes colors/sizes - when not set in the original file
* Force-directed layout to set nodes coordinates - when not set in the original file
* Mouse interaction (zoom in/out, drag and drop the stage, *FishEye* zoom)
* Display parameters (display/ hide edges or labels, set nodes/labels/edges size)

##II. How to use it
* Download the last stable version at [GitHub](http://www.github.com/jacomyal/SiGMa/downloads), and put 'SiGMa demo/SiGMa.swf' somewhere on your server.
* Put also on your server your *GEXF* or *GDF* encoded graph file.
* Copy the code below in an HTML page, after having replaced the `{}` strings by the corresponding values:
<code>
      <object width="{width of SiGMa}" height="{height of SiGMa}" id="SiGMa">
      <param name="movie" value="{path of SiGMa.swf}?filePath={path of the graph}" />
      <param name="allowScriptAccess" value="always" />
      <embed src="{path of SiGMa.swf}?filePath={path of the graph}" allowScriptAccess="always" width="{width of SiGMa}" height="{height of SiGMa}">
      </embed>
      </object>
</code>

* A sample is also available in 'SiGMa demo/simple_example.html' in the last stable version folder you downloaded.
* That's all, you can now watch your graph.

* * * *

For any question (bugs, ideas of new features, etc...), send me an e-mail, but **check first if there isn't already an answer on the related [wiki](http://wiki.github.com/jacomyal/SiGMa/ "SiGMa GitHub wiki")**