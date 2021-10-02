<?php
/**
 * Class Controller, class yg mengatur bagaimana interaksi antar elemen
 * pada sebuah framework, sebuah komponen yg menjembatani antara model dan view
 * 
 * @method view($page, $data = []) untuk memanggil sebuah view
 * @method model($model) untuk memanggil sebuah model
 */
class Controller {

    /**
     * View, Fungsi untuk memanggil tampilan webpage
     * @param mixed $page merupakan file views yg akan ditampilkan
     * @param array $data yg akan dikirim ke halaman yg dipanggil
     * 
     * @return require_once(PHP_FILE)
     */
    function view($page, $data = []) {
        require_once('../app/views/'.$page.'.php');
    }

    /**
     * Model, Fungsi untuk memanggil subrutin yg akan mengurus business
     * logic pada framework
     * @param string $model nama file model yg akan dipanggil
     * 
     * @return instance_of_model
     */
    function model($model) {
        require_once('../app/models/'.$model.'.php');
        return new $model;
    }
}