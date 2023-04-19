<?php
 require_once "conexao.php";

 if(isset($_POST['cadastrar'])){

$id = mysqli_escape_string($conexao, $_POST['id']);
$nome = mysqli_escape_string($conexao, $_POST['nome']);
$sobrenome = trim(mysqli_escape_string($conexao, $_POST['sobrenome']));
$cpf = mysqli_escape_string($conexao, $_POST['cpf']);
$email = trim(mysqli_escape_string($conexao, $_POST['email']));
$rua = trim(mysqli_escape_string($conexao, $_POST['rua']));
$numero = mysqli_escape_string($conexao, $_POST['numero']);
$bairro = trim(mysqli_escape_string($conexao, $_POST['bairro']));
$cidade = mysqli_escape_string($conexao, $_POST['cidade']);
$telefone = mysqli_escape_string($conexao, $_POST['telefone']);

if((isset($array)) && ($id == $array['id'])){
    echo "Esse usuario ja existe! ";

}else{
    if(isset($id) && $id != "" ){
       //edicao update
    }else{
        $sql = "INSERT INTO usuario(nome,sobrenome,cpf,email,rua,numero,bairro,cidade,telefone) values (?,?,?,?,?,?,?,?,?)";

        $tipos = "sssssssss";
        
        $parametros = array($nome,$sobrenome,$cpf,$email,$rua,$numero,$bairro,$cidade,$telefone);
        
       
				$stmt = mysqli_prepare($conexao, $sql);  

				if(!$stmt){
					echo "Erro no cadastro de usuario: ".mysqli_error($conexao);
				}

				mysqli_stmt_bind_param($stmt, $tipos, ...$parametros); 
				mysqli_stmt_execute($stmt);
				
				if(mysqli_stmt_error($stmt)){

					echo"Aconteceu algum erro! ";
				}else{
					echo "Realizado com sucesso! ";
				}
			}
		}
		mysqli_Stmt_close($stmt);
	}


  ?>