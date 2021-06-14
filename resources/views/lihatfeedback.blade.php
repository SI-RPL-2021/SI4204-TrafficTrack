<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav-admin")
    
    <div class="container mt-4">
        <h2 class="mb-3">Lihat Feedback</h2>
        <table class="table">
            <thead>
                <th>Nama</th>
                <th>Feedback</th>
            </thead>
            <tbody>
                @foreach ($feedback as $d)
                @php
                    $pengguna = Pengguna::where("id",$d->id_pengguna)->first();

                @endphp
                <tr>
                    <td>{{$pengguna->nama}}</td>
                    <td>{{$d->feedback}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>