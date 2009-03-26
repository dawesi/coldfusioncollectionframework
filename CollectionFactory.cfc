<!---
	Author: Cristian Costantini - cristian@millemultimedia.it
	Purpose: Create collection. Required Coldfusion 8
	License: http://www.gnu.org/licenses/gpl-3.0.html
	Copyright: (c) 2003 - 2009 - Cristian Costantini
	Version: 1.0 alpha 2
	--->

<cfcomponent output="false">
    
    <cffunction name="init" access="public" returntype="CollectionFactory">
        <cfreturn this />
    </cffunction>
    
    <cffunction name="createCollection" access="package" returntype="Any">
        <cfargument name="type" type="string" required="true" />
        <cfset var collection = createObject( 'java', 'java.util.AbstractCollection') />
        
        <cfswitch expression="#arguments.type#">
            <cfcase value="MapCollection">
                <cfset collection = createObject( 'java', 'coldfusion.runtime.Struct').init() />
            </cfcase>
            <cfcase value="ListCollection">
                <cfset collection = createObject( 'java', 'coldfusion.runtime.Array').init() />
            </cfcase>
        </cfswitch>
        
        <cfreturn collection />
    </cffunction>

</cfcomponent>