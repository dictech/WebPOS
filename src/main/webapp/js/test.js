function saveOrg(e) {
e.preventDefault();

let xhr = new XMLHttpRequest();
xhr.open('POST','http://localhost:8080/WEBPOS/OrgServlet', true);
xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');



xhr.onload = function(test){
	 document.getElementById('operationStatus').innerHTML = xhr.responseText;
	 $('#addOrgModal').modal('hide');
	 $('#statusModal').modal('show');
	 if(this.status == 200){
	    document.getElementById("addOrgForm").reset();
	 }
}



xhr.send('operation='+ document.getElementById('operation').value+'&'+
		 'orgName='+document.getElementById('orgName').value+'&'+
		 'orgEmail='+document.getElementById('orgEmail').value+'&'+
		 'orgPhoneNo='+document.getElementById('orgPhoneNo').value);
}


let saveOrgForm = document.getElementById('saveOrgButton');
saveOrgForm.addEventListener('click', saveOrg);


