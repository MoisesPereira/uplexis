<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request as IRequest;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Sintegra;

use App\Http\Requests\SintegraRequest;
use App\Lib\HttpClient;

class SintegraController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($cnpj, $back = false)
    {
        $client = new HttpClient('www.sintegra.es.gov.br');

        $client->setDebug(false);
        $client->persist_cookies = true;
        $client->get('/');

        $client->post('/resultado.php', array(
            'num_cnpj' => $cnpj,
            'num_ie' => '',
            'botao' => 'Consultar'
        ));

        if($client->status == '400'){
            die("CNPJ Inválido!"); 
        }

        preg_match_all("|<[^>]+>(.*)</[^>]+>|U", $client->getContent(), $saida, PREG_PATTERN_ORDER);

        $getData = new Sintegra();

        $dados = array( "idusuario" => "35", "cnpj" => $cnpj, "resultado_json" => $getData->createJson($saida) );
        
        Sintegra::create($dados);

        if($back){
            return $getData->createJson($saida);
        }
        else{
            header('Content-type: application/json');
            echo $getData->createJson($saida);
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('api.findCnpj');
    }

    /**
     *  Metodo que irá buscar o cnpj passado pelo form da view findCnpj
     *
     * @param   $cnpj  CNPJ a ser pesquisado
     */
    public function find(IRequest $request)
    {
        $getCnpj = $this->index($request->cnpj, $back = true);

        return view('api.retornoCnpj', [ 'getCnpj' => $getCnpj ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $info = Sintegra::all();

        return view('api.listar', [ 'dados' => $info ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Sintegra::find($id)->delete();
        return redirect('listar');
    }
}
