<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::get('/', 'SintegraController@create');

Route::get('api/crawler/{cnpj}', 'SintegraController@index');

Route::post('cnpj/find', 'SintegraController@find');

Route::get('listar', 'SintegraController@show');

Route::get('remover/{id}', 'SintegraController@destroy');

Route::get('api/todos', ['middleware'=>'simpleauth', 'uses' => 'TodosController@index']);
