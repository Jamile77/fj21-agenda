<%@ attribute name="id" required="true" %>

<input type="text" id="${id}" name="${id}" />
<script>
	$("#${id}").datepicker({dateFormat:'dd/mm/yy'});
	$("#${id}").datepicker({changeMonth:true});
	$("#${id}").datepicker("option", "changeMonth", true);
	$("#${id}").datepicker({changeYear:true});
	$("#${id}").datepicker("option", "changeYear", true);
</script> 