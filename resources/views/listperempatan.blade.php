<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav")
    
    <div class="container mt-4">
        <h2 class="mb-3">List Perempatan</h2>
        <table class="table">
            <thead>
                <th>Nama Perempatan</th>
                <th>Tingkat Kemacetan</th>
                <th>Kecepatan Maksimum</th>
            </thead>
            <tbody>
                @foreach ($perempatan as $d)
                <tr>
                    <td>{{$d->nama}}</td>
                    <td>{{$d->tingkatmacet}}</td>
                    <td>{{$d->kecepatanmaks}} km/h</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="container mt-4">
        <h2>CCTV</h2>
        <div class="row">
            @foreach ($cctv as $d)
            
            <div class="col" style="min-width: 200px;">
                <img src="{{$d->link}}" style="max-width: 300px;">
            </div>
            @endforeach
            {{-- <div class="col">
                <img src="http://103.217.216.198:8000/mjpg/video.mjpg" width="100%">
            </div>
            <div class="col">
                <img src="http://119.2.50.116:8082/mjpg/video.mjpg" width="100%">
            </div>
            <div class="col">
                <img src="http://119.2.50.114:88/mjpg/video.mjpg" width="100%">
            </div> --}}
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>