@extends('main')

@section('content')
    <div class="container">
    <h1>Consulta CNPJ</h1>
            
        <form action="/cnpj/find" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="form-group">
                <label for="cnpj">CNPJ</label>
                <input type="text" id="cnpj" name="cnpj" class="form-control" placeholder="CNPJ">
           </div>
           <button type="submit" class="btn btn-default">Buscar</button>
        </form>

    </div>
@endsection