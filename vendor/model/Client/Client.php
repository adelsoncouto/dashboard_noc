<?php
namespace Model\Client;
date_default_timezone_set("America/Sao_Paulo");
if(strcmp(basename($_SERVER['SCRIPT_NAME']), basename(__FILE__)) === 0){ exit("Acesso negado");}

/**
 * @Description Class mãe de todos o client
 * @author adelson
 *
 */
class Client{
	
	protected $_request;
	
	public function __construct($aRequest){
		$this->_request = $aRequest;
	}
	
	public function __destruct(){
		
	}
}