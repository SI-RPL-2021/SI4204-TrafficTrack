<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav-admin")
    
    
    <div class="container mt-4">
        <h2 class="mb-3">Kelola CCTV</h2>
        <a href="{{route("tambahcctvform")}}" class="btn btn-primary">Tambah CCTV</a>
        <table class="table">
            <thead>
                <th>Nama</th>
                <th>Akses</th>
                <th>Preview</th>
                <th>Aksi</th>
            </thead>
            <tbody>
                @foreach ($cctv as $d)
                <tr>
                    <td>{{$d->nama}}</td>
                    <td>{{($d->public == 1) ? "Publik":"Tidak Publik"}}</td>
                    <td><img src="{{$d->link}}" width="300px"> </td>
                    <td>
                        <a href="{{route("deletecctv",["id"=>$d->id])}}" class="btn btn-danger">Delete</a>
                        <button class="btn btn-primary">Buka Mic</button>
                        <a href="{{route("pribadicctv",["id"=>$d->id])}}" class="btn btn-warning">Set Privat</a>
                        <a href="{{route("publikcctv",["id"=>$d->id])}}" class="btn btn-warning">Set Publik</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>