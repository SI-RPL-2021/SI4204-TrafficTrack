<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav-admin")
    
    <div class="container mt-4">
        <h2 class="mb-3">Lihat Laporan</h2>
        <a href="{{route("laporankecelakaan")}}" class="btn btn-primary">Lihat Laporan Belum Diterima</a>

        <table class="table">
            <thead>
                <th>Nama</th>
                <th>Jenis</th>
                <th>Berat</th>
                <th>Komentar</th>
                <th>Foto</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                @foreach ($laporan as $d)
                @php
                    $pengguna = Pengguna::where("id",$d->id_pengguna)->first();

                @endphp
                <tr>
                    <td>{{$pengguna->nama}}</td>
                    <td>{{$d->jenis}}</td>
                    <td>{{$d->berat}}</td>
                    <td>{{$d->komentar}}</td>
                    <td><img src="{{url("/laporan_img/$d->foto")}}" width="100px"></td>
                    <td>
                        <a href="{{route("deletelaporan",["id"=>$d->id])}}" class="btn btn-danger">Batal</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>