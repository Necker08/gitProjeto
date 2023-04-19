<i class="fa fa-html5" aria-hidden="true"></i>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="FORM.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulario</title>
</head>
<body id="formulario">
    <h1>Formulario</h1>
    <form method="POST" action="cadastro.php">
        <legend>Dados Pessoais</legend>
        <table cellspacing="10px">
         <tr>
          <td>
           <label for="nome">Nome: </label>
          </td>
          <td >
           <input type="text" name="nome">
          </td>
          <td>
           <label for="sobrenome">Sobrenome: </label>
          </td>
          <td >
           <input type="text" name="sobrenome">
          </td>
         </tr>
         <tr>
          <td>
           <label>CPF:</label>
          </td>
          <td >
           <input type="text" name="cpf" size="20" maxlength="18">
          </td>
          <td>
            <label for="email">Email: </label>
           </td>
           <td>
           <input type="text" name="email">
        </td>
         </tr>
         
        </table>
    
       
       <br />
       
       
        <p>Dados de Endereco</p>
        <table cellspacing="10">
       
         <tr>
          <td>
           <label for="rua">Rua:</label>
          </td>
          <td >
           <input type="text" name="rua">
          </td>
          <td>
           <label for="numero">Numero:</label>
          </td>
          <td >
           <input type="text" name="numero" size="10">
          </td>
         </tr>
         <tr>
          <td>
           <label for="bairro">Bairro: </label>
          </td>
          <td >
           <input type="text" name="bairro">
          </td>
         </tr>
         <tr>
         </tr>
         <tr>
          <td>
           <label for="cidade">Cidade: </label>
          </td>
          <td >
           <input type="text" name="cidade">
          </td>
         </tr>
         <tr>
          <td>
           <label for="cep">Telefone: </label>
          </td>
          <td >
           <input type="text" name="telefone" size="25" maxlength="25">
          </td>
         </tr>
        </table>
      
       <br />
       
       <input type="submit" name="cadastrar">
       </form>
       
        </body>
       </html>


    