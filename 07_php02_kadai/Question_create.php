<?php
// POSTデータ確認
if (
    !isset($_POST['name']) || $_POST['name'] === '' ||
    !isset($_POST['question']) || $_POST['quastion'] === '' ||
    !isset($_POST['deadline']) || $_POST['deadline'] === ''
  ) {
    exit('ParamError');
  }

  $name = $_POST["name"];
  $question = $_POST["question"];
  $deadline = $_POST["deadline"];


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
$sql = 'INSERT INTO kadai07 (id, name, question, deadline, created_at, updated_at) VALUES (NULL, :name, :question, :deadline, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':question', $question, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);

// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header('Location:Question_input.php');
exit();