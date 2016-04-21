@extends('main')

@section('content')
<div class="container">

<h1>Lista de Produtos</h1>

    <table class="table table-striped table-bordered table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Id Usuário</th>
                <th>CNPJ</th>
                <th>Resultado Json</th>
                <th>Ação</th>
            </tr>
        </thead>
        <tbody>

        <?php foreach($dados as $dado): ?>

            <tr>
                <td><?php echo $dado['id']; ?></td>
                <td><?php echo $dado['idusuario']; ?></td>
                <td><?php echo $dado['cnpj']; ?></td>
                <td><?php echo $dado['resultado_json']; ?></td>
                <td>
                    <a href="/remover/<?php echo $dado['id']; ?>" class="btn-sm btn-danger">Remover</a>
                </td>
            </tr>

        <?php endforeach ?>


        </tbody>
    </table>

</div>
@endsection