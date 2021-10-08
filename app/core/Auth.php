<?php
/**
 * Class untuk mengatur data Session login maupun autentikasi user
 */
class Auth {
    protected $token;
    protected $data = [];

    /**
     * Construct, Generate otomatis token yg disimpan dalam attribut $token
     * 
     * @return string random 32 karakter
     */
    public function __construct()
    {
        # Generate random token for access then save it to class attribute
        $this->token = bin2hex(openssl_random_pseudo_bytes(16));

    }
    public static function getAuth($key) {
        return $_SESSION['auth'][$key];
    }

    public static function setAuth($key, $data) {
        $_SESSION['auth'][$key] = $data;
    }

    public static function addAuth($data) {
        $_SESSION['auth'] += $data;
    }

    public function getToken() : string {
        if ($this->token == null)
            $this->token = bin2hex(openssl_random_pseudo_bytes(16));
        return $this->token;
    }

    public static function endSession() {
        unset($_SESSION['auth']);
    }
    public static function sessionValid($data) {
        return $_SESSION['auth'][$data['code']] == $data['token']  ? true : false;
    }
    public static function sessionExists($data) {
        $exists = false;
        if(isset($_SESSION['auth'][($data['code'])]))
            $exists = true;
        return $exists;
    }
}