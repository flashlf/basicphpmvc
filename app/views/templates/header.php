<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman <?= $data['judul'] ?></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="<?= BASE_URL; ?>/css/bootstrap.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                <a class="nav-link <?= ($data["judul"] == 'Home' ? 'active' : '') ?>" href="<?= BASE_URL; ?>/home">Home</a>
                <a class="nav-link <?= ($data["judul"] == 'Mahasiswa' ? 'active' : '') ?>" href="<?= BASE_URL; ?>/mahasiswa">Mahasiswa</a>
                <a class="nav-link <?= ($data["judul"] == 'About' ? 'active' : '') ?>" href="<?= BASE_URL; ?>/about">About</a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container">