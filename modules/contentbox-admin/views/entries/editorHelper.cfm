﻿<cfoutput>
<!--- Render Commong editor functions --->
#renderView( view="_tags/editors", prePostExempt=true )#
<!--- Custom Javascript --->
<script type="text/javascript">
$( document ).ready( function(){
 	// Editor Pointers
	$entryForm = $( "##entryForm" );
    // setup clockpicker
    $( '.clockpicker' ).clockpicker();
	// setup editors via _tags/editors.cfm by passing the form container
	setupEditors( $entryForm, true, '#event.buildLink(prc.xehEntrySave)#' );
	// setup autosave
	autoSave( $content, $contentID, 'contentAutoSave' );
} );
</script>
</cfoutput>
