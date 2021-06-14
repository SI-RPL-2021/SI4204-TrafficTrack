<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav-admin")
    
    <div class="container mt-4">
        <h2 class="mb-3">Verifikasi User</h2>
        <table class="table">
            <thead>
                <th>Nama</th>
                <th>KTP</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                @foreach ($pengguna as $d)
                <tr>
                    <td>{{$d->nama}}</td>
                    <td><img src="{{url("/storage/ktp/$d->ktp")}}" width="100px"></td>
                    <td>
                        <a href="{{route("do-verifikasiuser",["id"=>$d->id])}}" class="btn btn-primary">Verifikasi User</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>