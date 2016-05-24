<?php
namespace Model\Client;
date_default_timezone_set("America/Sao_Paulo");
if(strcmp(basename($_SERVER['SCRIPT_NAME']), basename(__FILE__)) === 0){ exit("Acesso negado");}

use Model\Client;

/**
 * @Description Classe responsável pela interface de login
 * @author adelson
 *
 */
class Login extends Client{
	
	/**
	 * @param array $aRequest [params[usario,senha]]
	 */
	public function __construct($aRequest){
		parent::__construct($aRequest);
	}
	
	/**
	 * @Description Autentica um usuário e gera um token de acesso, para ser enviado nas requisições no campo auth, 
	 * se o usuário não for autêntico lança uma exception
	 * @return string token
	 */
	public function gerarToken(){
		
	}
	
	/**
	 * @Description Gera um token permanete, se o usuário ou senha não for válido lança uma exception
	 * @return string token
	 */
	public function gerarTokenPermanente(){
		
	}
	
	/**
	 * @Description Valida o token ou o token permanente, se não for válido lança uma exception
	 * @return boolean
	 */
	public function validarToken(){
		
	}
	
}