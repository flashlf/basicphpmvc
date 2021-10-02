$(function() {
    $('.modalTambah').on('click', function() {
        $('#judulModal').html('Tambah Data Mahasiswa');
        $('.modal-dialog form').attr('action', 'http://localhost/mvc/public/mahasiswa/tambah');
        //$('.modal-footer button[type=submit]').html('Ubah Data');
        $('#nama').val('');
        $('#jurusan').val('');
        $('#email').val('');
        $('#nim').val('');
    });

    $('.modalUbah').on('click', function() {
        console.log('You Clicked Me');
        $('#judulModal').html('Ubah Data Mahasiswa');
        $('.modal-dialog form').attr('action', 'http://localhost/mvc/public/mahasiswa/ubah');
        const idMHS = $(this).data('id');
        console.log("ID Mahasiswa yang dipilih : "+idMHS);

        $.ajax({
            url: 'http://localhost/mvc/public/mahasiswa/getubah',
            data: {
                id : idMHS
            },
            method: 'post',
            dataType: 'json',
            success: function(data) {
                console.log(data);
                $('#nama').val(data.nama);
                $('#jurusan').val(data.jurusan);
                $('#email').val(data.email);
                $('#nim').val(data.nim);
                $('#id').val(data.ID);
            }
        });
    });
});