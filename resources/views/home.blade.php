<!doctype html>
<html lang="en">

<head>
    @include("layout.head")
</head>

<body>
    @include("layout.nav")
    
    <div class="container mt-4">
        <h4 class="mb-3">Perkiraan Cuaca : {{ucfirst($cuaca["weather"][0]["description"])}}, Temperatur (Celcius) : {{$cuaca["main"]["temp"]}}</h4>
        <iframe src="https://www.google.com/maps/d/u/0/embed?mid=15D0qpnX6r_ORSG01h8VkpSL7gAjmSW3F" class="w-100 shadow mb-3" style="height:500px;"></iframe>   
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    
</body>

</html>