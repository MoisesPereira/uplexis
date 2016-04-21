# Como utilizar o Sistema:

**Acessar o Crawler Via API, passar o CNPJ como parâmetro:**
Url:  http://testeuplexis.com.br/api/crawler/31.804.115-0002-43

**Para consultar o CNPJ pela aplicação, acesse a home e digite o cnpj.**
Url: http://testeuplexis.com.br/

**Para visualizar todas as requisições:**
Url: http://testeuplexis.com.br/listar



## Acessar a API

# GET /api/crawler/cnpj

+ Request JSON Message

    + Headers
    
		Accept: application/json


+ Response 200 (application/json)
	
	+ Body

		{
			CNPJ: "31.804.115/0002-43",
			Inscrição Estadual: "082.254.28-1",
			Razão Social : "CEREAIS DO NICO LTDA",
			Logradouro: "RUA IPE",
			Número: "10",
			Complemento: "",
			Bairro: "MOVELAR",
			Município: "LINHARES",
			UF: "ES",
			CEP: "29906-120",
			Telefone: " ",
			Atividade Econômica: "COMERCIO ATACADISTA DE CEREAIS E LEGUMINOSAS BENEFICIADAS",
			Data de Inicio de Atividade: "26/03/2004",
			Situação Cadastral Vigente: "HABILITADO",
			Data desta Situação Cadastral: "26/03/2004",
			Regime de Apuração: "ORDINARIO",
			Obrigatoriedade de EFD: " ",
			Início de obrigatoriedade de EFD: " ",
			Emitente de NFe desde: "31/08/2009"
		}





# Configurações:

+ hosts

	127.0.0.1	testeuplexis.com.br


+ Vhost:

	<VirtualHost *:80>
	        ServerName testeuplexis.com.br
	        DocumentRoot /var/www/html/UpLexis/UpLexis/public
	        SetEnv APPLICATION_ENV "development"
	        <Directory /var/www/html/UpLexis/UpLexis/public>
	                AllowOverride All
	                Order allow,deny
	                Allow from all
	        </Directory>
	</VirtualHost>		