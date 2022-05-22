<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:form readonly="true">
    <acme:input-textbox code="inventor.item.list.label.code" path="code"/>
    <acme:input-textbox code="inventor.item.list.label.type" path="type"/>
    <acme:input-textbox code="inventor.item.list.label.name" path="name"/>
    <acme:input-textarea code="inventor.item.list.label.description" path="description"/>
	<acme:input-textbox code="inventor.item.list.label.technology" path="technology"/>
	<acme:input-money code="inventor.item.list.label.retailPrice" path="retailPrice"/>
	<acme:input-url code="inventor.item.list.label.link" path="link"/>
	<acme:input-textbox code="inventor.item.list.label.published" path="published"/>

	<acme:input-textbox code="inventor.item.form.label.code" path="code"/>
	<acme:input-textbox code="inventor.item.form.label.type" path="type"/>
	<acme:input-textbox code="inventor.item.form.label.name" path="name"/>
	<acme:input-textarea code="inventor.item.form.label.description" path="description"/>
	<acme:input-textbox code="inventor.item.form.label.technology" path="technology"/>
	<acme:input-money code="inventor.item.form.label.retailPrice" path="retailPrice"/>
	<acme:input-url code="inventor.item.form.label.link" path="link"/>
	
	<acme:input-select code="inventor.item.form.label.itemType" path="itemType">
	    <acme:input-option code="inventor.item.form.label.component" value="COMPONENT" selected ="${itemType == 'COMPONENT'}"/>
        <acme:input-option code="inventor.item.form.label.tool" value="TOOL" selected ="${itemType == 'TOOL'}"/>
	</acme:input-select>
	
	<jstl:choose>
		<jstl:when test="${command == 'create-component' }">
			<acme:submit code="inventor.item.form.button.create-component" action="/inventor/item/create-component"/>
		</jstl:when>
    
		<jstl:when test="${acme:anyOf(command,'show, update, delete, publish') && published == false}"> 
            <acme:submit code="inventor.item.form.button.update-component" action="/inventor/item/update-component"/>
            <acme:submit code="inventor.item.form.button.delete-component" action="/inventor/item/delete-component"/>
            <acme:submit code="inventor.item.form.button.publish" action="/inventor/item/publish"/>
        </jstl:when>

		<jstl:when test="${command == 'create-tool' }">
			<acme:submit code="inventor.item.form.button.create" action="/inventor/item/create-tool"/>
		</jstl:when>
    
		<jstl:when test="${acme:anyOf(command,'show, update, delete')}"> 
            <acme:submit code="inventor.item.form.button.update" action="/inventor/item/update-tool"/>
            <acme:submit code="inventor.item.form.button.delete" action="/inventor/item/delete-tool"/>
        </jstl:when>
	</jstl:choose>
</acme:form>