<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Ini adalah halaman Blog!</h1>

    <h2>Bio data diri</h2>
    <h5>Nama : <?= $name; ?></h5>
    <h5>Email : <?= $email; ?></h5>
    <h5>Foto  : </h5><img src="<?= $img; ?>" alt="<?= $name; ?>"; width="200px">
    
    
</body>
</html>