<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
  <form action="Question_create.php" mathod="POST">
    <fieldset>
      <legend>DB連携型質問リスト（入力画面）</legend>
      <a href="Question_read.php">一覧画面</a>
      <div>
        name: <input type="text" name="name">
      </div>
      <div>
        question: <input type="text" name="question">
      </div>
      <div>
        deadline: <input type="date" name="deadline">
      </div>
      <div>
        <button>完了！</button>
      </div>
    </fieldset>
  </form>

</body>

</html>