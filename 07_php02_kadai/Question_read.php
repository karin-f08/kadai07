<?php

// DB接続

$dbn ='mysql:dbname=gsf_d12_08;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}




// SQL作成&実行
$sql = 'SELECT * FROM kadai07';
$stmt = $pdo->prepare($sql);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$str = "";
foreach ($result as $record) {
  $str .= "
    <tr>
      <td>{$record["deadline"]}</td>
      <td>{$record["name"]}</td>
      <td>{$record["question"]}</td>
    </tr>
  ";
}


?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>質問リスト（一覧画面）</title>
</head>

<body>
  <fieldset>
    <legend>質問リスト（一覧画面）</legend>
    <a href="Question_input.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>deadline</th>
          <th>name</th>
          <th>question</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
      <?= $str ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>