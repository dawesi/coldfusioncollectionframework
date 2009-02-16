<cfscript>
map = createObject( 'component', 'MapCollection' ).init();

list = createObject( 'component', 'ListCollection' ).init();
</cfscript>

<html>

    <head>
        <link href="assets/style.css" rel="stylesheet" type="text/css" media="screen"></link>
    </head>

    <body>
        
    <h1>ColdFusion Collection Framework - 1.0 - alpha 1</h1>
        
	<table class="screen">
        
	    <tr>
	        <th>Type</th>
	        <th>Value</th>
	    </tr>
	    <tr valign="top">
	        <td>Map</td>
	        <td><cfdump var="#map#"></td>
	    </tr>
	    <tr valign="top">
	        <td>List</td>
	        <td><cfdump var="#list#"></td>
	    </tr>
                    
	</table>
    
    <h2>Examples MAP Collection</h2>
    
    <div>
    <!--- Set --->    
    <strong>Setting Map</strong><br>
    <br>
    map = createObject( 'component', 'MapCollection' ).init();<br>
    <br>
    map.set('a','Cristian');<br>
	map.set('b','Fabio');<br>
	map.set('c','Federico');<br>
	map.set('d','Massimo');<br>
    <br>
    
    <cfscript>
    map.set('a','Cristian');
	map.set('b','Fabio');
	map.set('c','Federico');
	map.set('d','Massimo');
    </cfscript>
    
    </div>

    <div>
    <!--- Get --->  
    <strong>Get Value Map</strong><br>
    <br>
	value = map.get('d');<br>
    <br>
    
    <cfoutput>#map.get('d')#</cfoutput>
    
    </div>
    <!--- Size --->
    <div>
        
    <strong>Get Size Map</strong><br>
    <br>
	value = map.size();<br>
    <br>
    
    <cfoutput>#map.size()#</cfoutput>
    
    </div>
    <!--- Clone --->
    <div>
        
    <strong>Clone Map</strong><br>
    <br>
	value = map.clone();<br>
    <br>
    
    <cfdump var="#map.clone()#" label="Clone Map">
    
    </div>
    <!--- ToString --->
    <div>
        
    <strong>Map to string</strong><br>
    <br>
	value = map._toString();<br>
    <br>
    
    <cfoutput>#map._toString()#</cfoutput>
    
    </div>
    <!--- Contains --->
    <div>
        
    <strong>Map contain value</strong><br>
    <br>
	value = map.contains('Cristian');<br>
    <br>
    
    <cfoutput>#map.contains('Cristian')#</cfoutput>
    
    </div>
    <!--- Iterator --->
    <div>
        
    <strong>Map iterator</strong><br>
    <br>
    iterator = map.iterator();<br>
    while( iterator.hasNext() ){<br>
        writeOutput( iterator.next() ); <br>  
    }<br>
    <br>
    
    <cfscript>
    iterator = map.iterator();
    while( iterator.hasNext() ){
        writeOutput( iterator.next() & '<br>' );  
    }
    </cfscript>
    
    </div>
    
    <h2>Examples List Collection</h2>
    
    <div>
    <!--- add --->    
    <strong>Add List</strong><br>
    <br>
    list = createObject( 'component', 'ListCollection' ).init();<br>
    <br>
    list.add('Cristian');<br>
    list.add('Cristian');<br>
    <br>
    
    <cfscript>
    list.add('Cristian');
    list.add('Cristian');
    </cfscript>
    
    </div>
    
    <!--- Add Collection --->
    <div>
        
    <strong>Collection add</strong><br>
    <br>
	list = createObject( 'component', 'ListCollection' ).init( map );<br>
    or<br>
    list.addAll( map );<br>
    <br>
    
    <cfscript>
    list2 = createObject( 'component', 'ListCollection' ).init( map );
    </cfscript>
    
    <cfdump var="#list2.clone()#">
    
    </div>
    
    <div>
    <!--- set --->    
    <strong>Set List</strong><br>
    <br>
    list.set(1,'Massimo');<br>
    <br>
    
    <cfscript>
    list.set(1,'Massimo');
    </cfscript>
    
    </div>

    <div>
    <!--- Get --->  
    <strong>Get Value List</strong><br>
    <br>
	value = list.get(1);<br>
    value = list.get(2);<br>
    <br>
    
    <cfoutput>
    #list.get(1)#<br>
    #list.get(2)#
    </cfoutput>
    
    </div>
    <!--- Size --->
    <div>
        
    <strong>Get Size List</strong><br>
    <br>
	value = list.size();<br>
    <br>
    
    <cfoutput>#list.size()#</cfoutput>
    
    </div>
    
    <!--- Remove --->
    <div>
        
    <strong>Remove</strong><br>
    <br>
	value = list.remove('Cristian');<br>
    <br>
    <cfset listc = list.clone() />
    <cfdump var="#listc#">
    <br>
    <cfset listc.remove('Cristian')>
    <cfdump var="#listc#" label="After">
    
    </div>
    
    <!--- Clear All--->
    <div>
        
    <strong>Clear</strong><br>
    <br>
	value = list.clear();<br>
    <br>
    <cfset list2 = duplicate( list )>
    <cfset list2.clear()>
    <cfdump var="#list2.clone()#" label="After">
    
    </div>
    
    <!--- Clone --->
    <div>
        
    <strong>Clone List</strong><br>
    <br>
	value = list.clone();<br>
    <br>
    
    <cfdump var="#list.clone()#" label="Clone List">
    
    </div>
    <!--- ToString --->
    <div>
        
    <strong>List to string</strong><br>
    <br>
	value = list._toString();<br>
    <br>
    
    <cfoutput>#list._toString()#</cfoutput>
    
    </div>
    <!--- Contains --->
    <div>
        
    <strong>List contain value</strong><br>
    <br>
	value = list.contains('Cristian');<br>
    <br>
    
    <cfoutput>#list.contains('Cristian')#</cfoutput>
    
    </div>
    <!--- Iterator --->
    <div>
        
    <strong>List iterator</strong><br>
    <br>
    iterator = list.iterator();<br>
    while( iterator.hasNext() ){<br>
        writeOutput( iterator.next() ); <br>  
    }<br>
    
    <br>
    iterator = list.iterator();<br>
    while( iterator.hasPrevious() ){<br>
        writeOutput( iterator.previous() ); <br>  
    }<br>
    <br>
    
    <cfscript>
    iterator = list.iterator();
    while( iterator.hasNext() ){
        writeOutput( iterator.next() & '<br>' );  
    }
    </cfscript>
    <hr/>
    <cfscript>
    while( iterator.hasPrevious() ){
        writeOutput( iterator.previous() & '<br>' );  
    }
    </cfscript>
    <br>
    </div>
    
    
    </body>

</html>