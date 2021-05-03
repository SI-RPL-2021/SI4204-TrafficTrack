<!doctype html>
<html lang="en">
//
<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav-admin")
    <div class="container mt-4">
        @if (session("success"))
        <div class="alert alert-success" role="alert">
           {{session("success")}}
          </div>
        @endif
        <form method="post" action="{{route("tambahperempatan")}}">
            @csrf
            <div class="mb-3">
                <label for="a" class="form-label">Nama</label>
                <input name="nama" type="text" class="form-control" id="a">
            </div>
            <div class="mb-3">
                <label for="a" class="form-label">Tingkat Macet</label>
                <select required name="tingkatmacet" class="form-select" aria-label="Default select example">
                    <option value="rendah"selected>Rendah</option>
                    <option value="sedang">Sedang</option>
                    <option value="tinggi">Tinggi</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="a" class="form-label">Maks Kecepatan (km/h)</label>
                <input name="kecepatanmaks" type="number" class="form-control" id="a">
            </div>
            <button type="submit" class="btn btn-primary">Tambah</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>
