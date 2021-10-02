<?php
class Mahasiswa extends Controller{
    function index() {
        $data['judul'] = "Daftar Mahasiswa";
        $data['mhs'] = $this->model('Mahasiswa_model')->getAllMahasiswa();
        $this->view('templates/header', $data);
        $this->view('mahasiswa/index', $data);
        $this->view('templates/footer');
    }

    function detail($id) {
        $data['judul'] = "Detail Mahasiswa";
        $data['mhs'] = $this->model('Mahasiswa_model')->getMahasiswaById($id);
        $this->view('templates/header', $data);
        $this->view('mahasiswa/detail', $data);
        $this->view('templates/footer');
    }

    function tambah()
    {
        if($this->model("Mahasiswa_model")->tambahDataMahasiswa($_POST) > 0){
            Flasher::setFlash($_POST['nama'],'berhasil ditambahkan','success');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash($_POST['nama'],'gagal ditambahkan','danger');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        }
    }
    function hapus($id)
    {
        if($this->model("Mahasiswa_model")->hapusDataMahasiswa($id) > 0){
            Flasher::setFlash('ID: '.$id,'berhasil dihapus','warning');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash('ID: '.$id,'gagal dihapus','danger');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        }
    }
    function getubah()
    {
        //echo $_POST['id'];
        echo json_encode($this->model('Mahasiswa_model')->getMahasiswaById($_POST['id']));
    }
    function ubah()
    {
        if($this->model("Mahasiswa_model")->ubahDataMahasiswa($_POST) > 0){
            Flasher::setFlash($_POST['nama'],'berhasil diubah','primary');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash($_POST['nama'],'gagal diubah','danger');
            header('Location: '.BASE_URL.'/mahasiswa');
            exit;
        }
    }
    function cari() {
        $data['judul'] = "Daftar Mahasiswa";
        $data['mhs'] = $this->model('Mahasiswa_model')->cariDataMahasiswa($_POST['keyword']);
        $this->view('templates/header', $data);
        $this->view('mahasiswa/index', $data);
        $this->view('templates/footer');
    }
}