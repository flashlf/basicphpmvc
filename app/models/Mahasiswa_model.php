<?php
class Mahasiswa_model {
    private $table = "mahasiswa";
    private $dbModel;
    // Data Dummy, gak digunain lagi
    private $mhs  = [
        [
            "nama"=> "Adam Johnson",
            "nim"=> "202041500001",
            "email"=> "adamJ@unindra.ac.id",
            "jurusan"=> "Teknik Industri" 
        ],
        [
            "nama"=> "Ryouzaki Mishima",
            "nim"=> "201743500461",
            "email"=> "ryozzz@unindra.ac.id",
            "jurusan"=> "Informatika" 
        ],
        [
            "nama"=> "Cindy Keffner",
            "nim"=> "20194231076",
            "email"=> "Cindy91@unindra.ac.id",
            "jurusan"=> "Desain Komunikasi Visual" 
        ],
        [
            "nama"=> "Malik Abdullah",
            "nim"=> "201642201821",
            "email"=> "Malik88@unindra.ac.id",
            "jurusan"=> "Sastra Inggris" 
        ]
    ];

    public function __construct() {
        $this->dbModel = new Database;
    }

    public function getAllMahasiswa(){
        $this->dbModel->query("SELECT * FROM " . $this->table);
        return $this->dbModel->resultSet();
    }

    public function getMahasiswaById($value){
        $this->dbModel->query("SELECT * FROM ".$this->table." WHERE id=:id");
        $this->dbModel->bind('id', $value);
        return $this->dbModel->single();
    }
    
    public function tambahDataMahasiswa($data)
    {
        $query = "INSERT INTO ".$this->table.
                 " VALUES('', :nama, :nim, :email, :jurusan)";
        $this->dbModel->query($query);
        $this->dbModel->bind('nama', $data['nama']);
        $this->dbModel->bind('nim', $data['nim']);
        $this->dbModel->bind('email', $data['email']);
        $this->dbModel->bind('jurusan', $data['jurusan']);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount();
    }

    public function ubahDataMahasiswa($data)
    {
        $query = "UPDATE ".$this->table." SET 
                nama = :nama, nim = :nim, jurusan = :jurusan,
                email = :email WHERE id = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('nama', $data['nama']);
        $this->dbModel->bind('nim', $data['nim']);
        $this->dbModel->bind('email', $data['email']);
        $this->dbModel->bind('jurusan', $data['jurusan']);
        $this->dbModel->bind('id', $data['id']);
        $this->dbModel->execute();
        
        return $this->dbModel->rowCount();
    }

    public function hapusDataMahasiswa($id = 0)
    {
        $query = "DELETE FROM mahasiswa WHERE id = :id";
        $this->dbModel->query($query);
        $this->dbModel->bind('id', $id);

        $this->dbModel->execute();

        return $this->dbModel->rowCount();
    }

    function cariDataMahasiswa($value)
    {
        $keyword = $value;
        $query = "SELECT * FROM ".$this->table." WHERE nama LIKE :keyword";
        $this->dbModel->query($query);
        $this->dbModel->bind('keyword',"%$keyword%");        
        $this->dbModel->execute();

        return $this->dbModel->resultSet();
    }
}