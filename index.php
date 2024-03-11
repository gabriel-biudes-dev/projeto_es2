<html>
    <head>   
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página Principal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="assets/css/menu.css">
        <link rel="stylesheet" href="assets/css/index.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
              <ul class="navbar-nav">
                <li class="nav-item">
                    <h3 id="menu">Controle de Estoque</h3>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="index.php">Página Principal</a>
                </li>
              </ul>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="col-lg-2 text-center">
                    <a href="cadastroCliente.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Cadastrar Cliente</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="cadastroFornecedor.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Cadastrar Fornecedor</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="consultarClientes.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Consultar Clientes</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col-lg-2 text-center">
                    <a href="consultarCompras.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Consultar Compras</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="consultarVendas.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Consultar Vendas</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="consultarProdutos.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Consultar Produtos</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col-lg-2 text-center">
                    <a href="consultarFornecedor.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Consultar Fornecedores</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="registrarVenda.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Registrar Venda</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-2 text-center">
                    <a href="registrarCompra.php">
                        <div id="opt">
                            <img src="assets/images/do-utilizador.png" class="img-fluid">
                            <p>Registrar Compra</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>