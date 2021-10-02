<div class="row mt-5">
    <div class="col-lg-6">
        <?php Flasher::flash(); ?>
    </div>
</div>        

<div class="row">
    <div class="col-lg-6">
        <form action="<?= BASE_URL; ?>/mahasiswa/cari" method="post">
        <div class="input-group mb-3">
            <input type="text" autocomplete="off" name="keyword" id="keyword" class="form-control" placeholder="Cari Data Mahasiswa....">
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit" id="btnCari">Cari</button>
            </div>
        </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-6">
        <h3>Daftar Mahasiswa
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary modalTambah" data-toggle="modal" data-target="#formModal">
        Tambah Mahasiswa
        </button>
        </h3>
        <ul class="list-group">
        <?php foreach ($data['mhs'] as $mhs) : ?>            
            <li class="list-group-item"><?= $mhs['nama']; ?>
                &nbsp;<a href="<?= BASE_URL; ?>/mahasiswa/hapus/<?= $mhs['ID'];?>" class="badge badge-danger float-right ml-1"
                onclick="return confirm('yakin?');">Hapus</a>
                &nbsp;<a href="<?= BASE_URL; ?>/mahasiswa/ubah/<?= $mhs['ID'];?>" class="badge badge-success float-right ml-1 modalUbah" data-toggle="modal" data-target="#formModal" data-id="<?= $mhs['ID']; ?>">Ubah</a>
                &nbsp;<a href="<?= BASE_URL; ?>/mahasiswa/detail/<?= $mhs['ID'];?>" class="badge badge-primary float-right">Detail</a>
            </li>
        <?php endforeach; ?>
        </ul>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="formModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="judulModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <form action="<?= BASE_URL ?>/mahasiswa/tambah" method="post">
    <input type="hidden" name="id" id="id">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="judulModal">Form Mahasiswa Baru</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="nama">Nama Mahasiswa</label>
                <input type="text" name="nama" class="form-control" id="nama" placeholder="Nama Lengkap">
            </div>
            <div class="form-group">
                <label for="nim">NIM</label>
                <input type="number" name="nim" class="form-control" id="nim" placeholder="Nomer Induk Mahasiswa">
            </div>
            <div class="form-group">
                <label for="email">E-Mail</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="email@domain.com">
            </div>
            <div class="form-group">
                <label for="jurusan">Jurusan</label>
                <select class="form-control" id="jurusan" name="jurusan">
                    <option value="Informatika">Informatika</option><option value="Desain Komunikasi Visual">Desain Komunikasi Visual</option><option value="Sastra Inggris">Sastra Inggris</option>
                    <option value="Matematika">Matematika</option><option value="Teknik Industri">Teknik Industri</option><option value="Teknik Elektro">Teknik Elektro</option>
                </select>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        </div>
    </form>
    </div>
</div>