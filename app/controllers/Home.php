<?php


class Home extends Controller{
    public $data = array(
        'judul' => 'Home'
    );
    public function index()
    {
        $this->data['nama'] = $this->model('Dummy_model')->getDummy();
        $this->view('templates/header', $this->data);
        $this->view('home/index', $this->data);
        $this->view('templates/footer');
    }

    function login()
    {
        if (isset($_POST['username'])) {
            $this->loginAct($_POST);
            print_r($_POST);
        } 
        if (!isset($_SESSION['auth'])) {
            $Auth = new Auth();
            $this->data['token'] = $Auth->getToken();
            //var_dump($this->data);
            $this->view('templates/header',$this->data);
            $this->view('home/login',$this->data);
            $this->view('templates/footer');
            
        } else {
            echo "UDAH LOGIN BRO ELU ".$_SESSION['auth']['ADM1337'];
        }
    }

    function loginAct($request) {
        
        if(!isset($_SESSION['auth']))
            $_SESSION['auth'] = array();
        // Cek berdasarkan email atau code, pake ternary operatorw
        $data['userLogin'] = $this->model('User_model')->getUserForLogin($request['username'],$request['pass']) ? $this->model('User_model')->getUserForLogin($request['username'],$request['pass']) : null;
        if ($data['userLogin'] === null) {
            // Set flasher user tidak ditemukan
            Flasher::setFlash($request['username'],'Tidak terdaftar atau password salah','warning');
            unset($_POST);
            header('Location: '.BASE_URL.'/home/login');
        } else {
            if(Auth::sessionExists($data['userLogin']) == true) {
                // cek jika token sama
                if (Auth::sessionValid($data['userLogin']) == true) {
                    // langsung arahin ke dashboard
                    header('Location: '.BASE_URL.'/dashboard');
                } else {
                    // udah ada yg login
                }

            } else {
                // store ke session dulu broww
                    $Auth = new Auth();
                    $token = $Auth->getToken();
                    if($this->model("User_model")->updateToken($data['userLogin']['email'],$token)>0) {
                        Auth::addAuth([ $data['userLogin']['code'] =>  $token]);
                        Flasher::setFlash($request['username'],'Berhasil Login','success'); 
                        header('Location: '.BASE_URL.'/home/login');
                    } else {
                        // set flasher terjadi kegagalan
                        Flasher::setFlash("Error 500",'Update token gagal, silahkan hubungi tim support','danger'); 
                        header('Location: '.BASE_URL.'/home/login');
                    }
            }
        }
        
        /**
         * Flownya gini dul,
         * Login -> ambil data db -> cek di session udah ada belum 
         * kalau belum update token di db -> buat session baru
         * kalau udah ada di session -> notif sudah login di device lain
         * kasih menu force logout
         */
    }
    public function logoutAct() {
        Auth::endSession();
    }
}