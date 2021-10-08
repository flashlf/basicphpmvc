<?php
/**
 * Class untuk Model user
 * @var $tabel untuk konfigurasi nama tabel
 * sesuaikan dengan nama tabel pada database
 * 
 * @see konfigurasi database pada file config/config.php
 */
class User_model {
    private $table = "user_act";
    private $dbModel;
    /*
    private $DATA_STRUCTURE = array(
        'id' => 'int AUTO_INCREMENT PRIMARY KEY',
        'code' => 'varchar(32)',
        'password' => 'varchar(32) SHA256',
        'role_id' => 'tiny_int',
        'email' => 'varchar(64)',
        'msisdn' => 'varchar(32)',
        'name' => 'varchar(64)',
        'token' => 'varchar(64) DEFAULT NULL' 
    );
    */

    public function __construct()
    {
        $this->dbModel = new Database;
    }

    public function createUser($data) {
        $query = "INSERT INTO ".$this->table." (id, code, password, role_id, email, msisdn, name)".
                 " VALUES('', :code, :password, :role_id, :email, :msisdn, :name)";
        $this->dbModel->query($query);
        $this->dbModel->bind('code', $data['code']);
        $this->dbModel->bind('password', $data['password']);
        $this->dbModel->bind('msisdn', $data['msisdn']);
        $this->dbModel->bind('email', $data['email']);
        $this->dbModel->bind('role_id', $data['role_id']);
        $this->dbModel->bind('name', $data['name']);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount();
    }

    public function getAllUser(){
        $this->dbModel->query("SELECT * FROM ". $this->tabel ." ORDER BY ID ASC");
        return $this->dbModel->resultSet();
    }

    public function getUserBy($criteria, $value) {
        $this->dbModel->query("SELECT * FROM ".$this->table." WHERE ".$criteria."=:id");
        $this->dbModel->bind('id', $value);
        return $this->dbModel->single();
    }
    
    public function getUserForLogin($value1, $value2) {
        $this->dbModel->query("SELECT * FROM ".$this->table." WHERE (code =:id OR email = :id) AND password =:id2 LIMIT 1");
        $this->dbModel->bind('id', $value1);
        $this->dbModel->bind('id2', hash("sha256",$value2));
        return $this->dbModel->single();
    }

    public function updateUser($data) {
        $query = "UPDATE ".$this->table.
                 " SET name = :name, email = :email, msisdn = :msisdn, role_id = :role_id".
                 " WHERE id = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('msisdn', $data['msisdn']);
        $this->dbModel->bind('email', $data['email']);
        $this->dbModel->bind('role_id', $data['role_id']);
        $this->dbModel->bind('name', $data['name']);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount();
    }

    /**
     * fungsi untuk update password / ganti password oleh user sendiri
     * query id user terlebih dahulu dengan mengambil code user pada server session
     * 
     * @param $data berisikan array associative dengan key password, id
     */
    public function updateUserPassword($data) {
        $query = "UPDATE ".$this->table.
                 " SET password = :password". 
                 " WHERE id = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('password', $data['password']);
        $this->dbModel->bind('id', $data['id']);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount(); 
    }
    
    public function deleteUser($id = 0)
    {
        $query = "DELETE FROM ".$this->table." WHERE id = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('id', $id);

        $this->dbModel->execute();

        return $this->dbModel->rowCount();
    }

    public function searchUser($value) {
        $query = "SELECT * FROM ".$this->table.
        " WHERE name LIKE :keyword".
        " OR email LIKE :keyword".
        " OR code LIKE :keyword".
        " OR msisdn LIKE :keyword";
        $this->dbModel->query($query);
        $this->dbModel->bind('keyword',"%$value%");        
        $this->dbModel->execute();

        return $this->dbModel->resultSet();
    }
    public function updateToken($key, $token) {
        $query = "UPDATE ".$this->table.
                 " SET token = :tokens". 
                 " WHERE email = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('tokens', $token);
        $this->dbModel->bind('id', $key);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount(); 
    }

}