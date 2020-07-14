$(document).ready(function(){
	$('a[data-confirm]').click(function(ev){
		var href = $(this).attr('href');
		if(!$('#confirm-delete').length){
			$('body').append('<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"><div class="modal-dialog"><div class="modal-content"><div class="modal-header bg-danger text-white">EXCLUIR ITEM<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button></div><div class="modal-body">Tem certeza de que deseja excluir o item selecionado?</div><div class="modal-footer"><button type="button" class="btn btn-success" data-dismiss="modal">Cancelar</button><a class="btn btn-danger text-white" id="dataComfirmOK">Apagar</a></div></div></div></div>');
		}
		$('#dataComfirmOK').attr('href', href);
        $('#confirm-delete').modal({show: true});
		return false;
		
	});
});

function CampoVazio()
{
	var fm = document.forms["formUser"].elements
	for(var i = 0; i < fm.length-1; i++)
	{
		if(i == 8 || i == 12){
		}
		else if(fm[i].value == "" )
		{
			let aviso = document.querySelector('#aviso');
			console.log(aviso);
			console.log(aviso.textContent);                                    
			
			fm[i].style.borderColor="#c20b0b";
			aviso.textContent = `O Campo ${fm[i].name} esta Vazio`;
			return false;
		}
	}
};


function validarSenha()
{
	var senha1 = document.forms["formUser"].elements[14].value;
	var senha2 = document.forms["formUser"].elements[15].value;

	if(senha1 == senha2)
	{

	}
	else{
		let aviso = document.querySelector('#avisoSenha');
		console.log(aviso);
		console.log(aviso.textContent);
			aviso.textContent = `As senha não confere, digite novamente`;
			return false;
	}


};
                        