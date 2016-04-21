<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sintegra extends Model
{
	protected $fillable = [ 'idusuario', 'cnpj', 'resultado_json'];

	/**
     *  Função para criar o retorno do Json. Não foi a melhor solução, mas estava com problemas com parsear os dados
     *  Cada linha pertence a uma chave e valor do array que será convertido para Json_encode
     */
    public function createJson($saida)
    {
    	$patt[0] = '/&nbsp;/';
    	$patt[1] = '/:/';
    	$repl[0] = '';

        $cnpj = preg_replace($patt, $repl, utf8_encode($saida[1][8]) ); 
        $n_cnpj = preg_replace($patt, $repl, utf8_encode($saida[1][9]) );

        $ie = preg_replace( $patt, $repl, utf8_encode($saida[1][10]) ); 
        $n_ie = preg_replace( $patt, $repl, utf8_encode($saida[1][11]) );

        $razao = preg_replace( $patt, $repl, utf8_encode($saida[1][12]) ); 
        $n_razao = preg_replace( $patt, $repl, utf8_encode($saida[1][13]) ); 

        $logradouro = preg_replace( $patt, $repl, utf8_encode($saida[1][14]) ); 
        $n_logradouro = preg_replace( $patt, $repl, utf8_encode($saida[1][15]) ); 

        $numero = preg_replace( $patt, $repl, utf8_encode($saida[1][16]) ); 
        $n_numero = preg_replace( $patt, $repl, utf8_encode($saida[1][17]) ); 

        $complemento = preg_replace( $patt, $repl, utf8_encode($saida[1][18]) ); 
        $n_complemento = preg_replace( $patt, $repl, utf8_encode($saida[1][19]) ); 

        $bairro = preg_replace( $patt, $repl, utf8_encode($saida[1][20]) ); 
        $n_bairro = preg_replace( $patt, $repl, utf8_encode($saida[1][21]) );

        $municipio = preg_replace( $patt, $repl, utf8_encode($saida[1][22]) ); 
        $n_municipio = preg_replace( $patt, $repl, utf8_encode($saida[1][23]) );

        $uf = preg_replace( $patt, $repl, utf8_encode($saida[1][24]) ); 
        $n_uf = preg_replace( $patt, $repl, utf8_encode($saida[1][25]) );

        $cep = preg_replace( $patt, $repl, utf8_encode($saida[1][26]) ); 
        $n_cep = preg_replace( $patt, $repl, utf8_encode($saida[1][27]) );

        $telefone = preg_replace( $patt, $repl, utf8_encode($saida[1][28]) ); 
        $n_telefone = preg_replace( $patt, $repl, utf8_encode($saida[1][29]) );    

        $atividade = preg_replace( $patt, $repl, utf8_encode($saida[1][31]) ); 
        $n_atividade = preg_replace( $patt, $repl, utf8_encode($saida[1][32]) );

        $dt_inicio_atividade = preg_replace( $patt, $repl, utf8_encode($saida[1][33]) ); 
        $n_dt_inicio_atividade = preg_replace( $patt, $repl, utf8_encode($saida[1][34]) ); 

        $situacao = preg_replace( $patt, $repl, utf8_encode($saida[1][35]) ); 
        $n_situacao = preg_replace( $patt, $repl, utf8_encode($saida[1][36]) );

        $dt_situacao = preg_replace( $patt, $repl, utf8_encode($saida[1][37]) ); 
        $n_dt_situacao = preg_replace( $patt, $repl, utf8_encode($saida[1][38]) );

        $regime = preg_replace( $patt, $repl, utf8_encode($saida[1][39]) ); 
        $n_regime = preg_replace( $patt, $repl, utf8_encode($saida[1][40]) );

        $obrigatoriedade = preg_replace( $patt, $repl, utf8_encode($saida[1][41]) ); 
        $n_obrigatoriedade = preg_replace( $patt, $repl, utf8_encode($saida[1][42]) );

        $inicio_obrigatoriedade = preg_replace( $patt, $repl, utf8_encode($saida[1][43]) ); 
        $n_inicio_obrigatoriedade = preg_replace( $patt, $repl, utf8_encode($saida[1][44]) );

        $inicio_voluntariedade = preg_replace( $patt, $repl, utf8_encode($saida[1][46]) ); 
        $n_inicio_voluntariedade = preg_replace( $patt, $repl, utf8_encode($saida[1][47]) );


        $getJson = array();

        $getJson = [ $cnpj => $n_cnpj, $ie => $n_ie, $razao => $n_razao, $logradouro => $n_logradouro, $numero => $n_numero,
            $complemento => $n_complemento, $bairro => $n_bairro, $municipio => $n_municipio, $uf => $n_uf, $cep => $n_cep,
            $telefone => $n_telefone, $atividade => $n_atividade, $dt_inicio_atividade => $n_dt_inicio_atividade,
            $situacao => $n_situacao, $dt_situacao => $n_dt_situacao, $regime => $n_regime, $obrigatoriedade => $n_obrigatoriedade,
            $inicio_obrigatoriedade => $n_inicio_obrigatoriedade, $inicio_voluntariedade => $n_inicio_voluntariedade
        ];

        return json_encode($getJson);
    }

}
