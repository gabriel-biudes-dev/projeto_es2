<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurante - Resultado da Consulta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <h3 id="menu">Controle de Estoque</h3>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../index.php">Página Principal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="consultar_time_form.php">Consultar Time</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <h1 style="border-bottom:1px solid black; padding-bottom:5px; text-align:center">Resultado da Consulta</h1>
                <?php
                if ($_SERVER["REQUEST_METHOD"] == "GET") {
                    // Obtém o ID do time enviado pelo formulário
                    $id_time = $_GET['id_time'];

                    //Conexão com o banco de dados
                    $config = parse_ini_file('db.ini');
                    $link = new mysqli('localhost', $config['username'], $config['password'], $config['db']);

                    // Verifica a conexão
                    if ($link->connect_error) {
                        die("Erro de conexão: " . $link->connect_error);
                    }

                    // Query para buscar os profissionais pertencentes ao time
                    $sql = "SELECT * FROM profissionais WHERE idTime = ?";
                    
                    // Prepara a declaração
                    $stmt = $link->prepare($sql);
                    if ($stmt === false) {
                        die("Erro na preparação da declaração: " . $link->error);
                    }

                    // Liga os parâmetros à declaração
                    $stmt->bind_param("i", $id_time);

                    // Executa a declaração
                    $stmt->execute();

                    // Obtém os resultados
                    $result = $stmt->get_result();

                    // Verifica se há resultados
                    if ($result->num_rows > 0) {
                        // Exibe os profissionais pertencentes ao time
                        echo "<div class='mt-4'>";
                        echo "<h5>Profissionais pertencentes ao Time ID $id_time:</h5>";
                        echo "<ul>";
                        while ($row = $result->fetch_assoc()) {
                            echo "<li>" . $row["nome"] . "</li>";
                        }
                        echo "</ul>";
                        echo "</div>";
                    } else {
                        echo "<p class='text-danger mt-4'>Nenhum profissional pertencente ao Time ID $id_time encontrado.</p>";
                    }

                    // Fecha a declaração e a conexão
                    $stmt->close();
                    $link->close();
                }
                ?>
            </div>
        </div>
    </div>
</body>
</html>