
$('#numero').change(function(){
  $('#numModal').html($(this).val());
})
$('#nom').change(function(){
  $('#nomModal').html($(this).val());
})
$('#date').change(function(){
  $('#dateModal').html($(this).val());
})
$('#prenom').change(function(){
  $('#prenomModal').html($(this).val());
})
$('#adresse').change(function(){
  $('#adresseModal').html($(this).val());
})

var url = location.search;
if (url == '?errors') {
var lesErrors = document.querySelectorAll('input');
lesErrors.forEach(param => {param.classList.add('is-invalid')});
}

function confirmer(){
	
	document.querySelector("#buttoncreer").addEventListener('click', function(){
	  $('#myModal').modal();
	});

}

