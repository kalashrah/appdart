<?php

$links = array(
    array(
        'https://www.spl.sa/ar/news/4181',
        "https://www.spl.sa/sites/default/files/2022-08/IMG_20220719_162629_094.jpg",
        " لجنة المسابقات في رابطة الدوري السعودي للمحترفين تعلن جدول مباريات دوري كأس الأمير محمد بن سلمان للمحترفين لموسم 2022 - 2023 ."
    ),
    array(
        'https://www.spl.sa/ar/news/4165',
        "https://www.spl.sa/sites/default/files/2022-07/FB_IMG_1657219325647.jpg",
        "الدوري السعودي.. قفزات في كل الاتجاهات"
    ),
    array(
        "https://www.spl.sa/ar/news/4164",
        "https://www.spl.sa/sites/default/files/2022-06/962BA5C1-66E8-452C-BA1C-EAAAF46AE61D.jpeg",
        "دياز المدرب الأفضل.. وسليتي والمعيوف والعقيدي يحصدون جوائز مايو ويونيو"
    ),
    array(
        "https://www.spl.sa/ar/news/4162",
        "https://www.spl.sa/sites/default/files/2022-06/IMG-20220619-WA0022_0.jpg",
        "رئيس الرابطة يهنئ بطل الدوري "
    ),
    array(
        "https://www.spl.sa/ar/news/4144",
        "https://www.spl.sa/sites/default/files/2022-06/IMG-20220619-WA0022.jpg",
        "رئيس رابطة الدوري السعودي للمحترفين يهنئ المنتخب السعودي الأولمبي"
    ),

);
print_r($links);
// echo '_!_';
//echo __DIR__;


// echo shell_exec('ls');

// $url = 'http://www.spl.sa/ar/news-list/#';

// $response = file_get_contents($url);

// $dictApi = json_decode($response);
// // echo gettype($dictApi);
// echo $response;


/*
    $curl = curl_init();php

    curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://www.spl.sa/ar/news-list/#',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
    ));

    $response = curl_exec($curl);

    curl_close($curl);
    echo $response;


