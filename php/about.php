<?php
    require_once "footer.php";
    require_once "navbar.php";

    require_once "db_connect.php";
?>
<!DOCTYPE html>
<html lang ="en">
<head>
    <meta charset="UTF-8">
    <meta  name="viewport"  content="width=device-width, initial-scale=1.0" >
   <title>About us</title>
    <link href ="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"  rel= "stylesheet" integrity ="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"  crossorigin= "anonymous">
    <link rel="Stylesheet" href="../css/home2.css">

</head>
<body>
   <?= $nav ?>

    <div class="headerImage mb-5">
        <p id="hero">Get to Know<br>More</p>
    </div>

    <div class="text-center">
        <h2 class="text-center mt-5" id="welcome">About us</h2>
        <hr class="MLLine" style="width:20vw;">
    </div>

    <div class="container d-flex flex-row flex-wrap flex-sm-wrap flex-md-wrap flex-lg-nowrap flex-xl-nowrap flex-xxl-nowrap justify-content-evenly gap-5">
        <div>
            <div class="mt-5 card card-body faqCard p-5 shadow">
                <div class="mb-3">
                    <p class="card-title"> Welcome to Pawfect: <br> Dog is God spelled backwards</p>
                </div>
                <div class="mb-4 mt-4 text-center">
                    <p><b> Summary</b></p>
                </div>
                <div class="mb-3">
                    <p>A companion dog is a raised dog or four-legged best friend that is primarily maintained for the companionship or satisfaction of its owner. These dogs should be treated with decency, care, and respect. Companion dogs are also often referred to as a human's guardian. Wikipedia states that the most popular dogs are typically thought to have an attractive appearance, intelligence, and charming personality. However, some dogs may be adopted for generous reasons such as lost or abandoned dogs and publicly greeted by their owners regardless of these attributes (https://en.wikipedia.org/wiki/Dog).</p>
                </div>
                <div class="mb-3">
                    <p>Over the years, dogs have evolved from being total strangers to best friends, and they are now regarded as indispensable members of households all over the globe and popular pets. Dogs may provide their owners with a variety of clear-cut, tangible advantages, such as scaring away would-be robbers and reducing the number of wild animals, but there is also evidence that dogs can have positive psychological effects. For example, studies have shown that people with dogs are less likely than those without dogs to die from a heart attack within a year after the incident.</p>
                </div>
                <div class="mb-3">
                    <p>Thus, it can be said that having a pet, particularly a dog, has many physical and psychological benefits, as shown by a variety of scientific studies and researchers. However, news and articles regarding dog abuse, neglect, and cruelty in New Jersey are regularly published on the Internet, television, newspapers, and social media with Facebook being the most popular source even though there are a lot of dog lovers and rescuers in our community. In general, not every dog in New Jersey especially stray dogs is lucky enough to have a caring, responsible dog owner who can provide for them.</p>
                </div>
                <div class="mb-3">
                    <p>Even though these organizations and shelters exist to provide assistance and a helping hand to animals in need, the number of stray animals in New Jersey is rising every year, especially in 2023. The absence of a platform for dog adoption and rescue is the main flaw contributing to the rapidly increasing number of strays, as can be seen by reading the list of shelters and rescue groups in New Jersey. In the last 10 years, as the internet has become more widely available, people have begun to use websites or portal sites to assist dogs in various ways. However, the effectiveness of using the internet to achieve this goal has been very effective. The web application is operational and capable of offering users the features and functions.</p>
                </div>
                <div class="mb-3">
                    <p>To build a compassionate platform for dog adoption and rehoming and to address the requirements of both pet owners in need and dogs in shelters, a web-based adoption system named "Pawfect" was created. The primary goal of this application is to provide user experience (UX) solutions that facilitate system exploration and adoption request capabilities, both of which may simplify the adoption process for dogs.</p>
                </div>
                <div class="mb-3">
                    <p> The Pawfect Team </p>
                </div>
            </div>
        </div>
        <div class="mt-5">
            <div class="card card-body faqCard shadow">
                <img src="../images/njit1.jpg" class="rounded teamImg">
            </div>
        </div>
    </div>

    <?=$footer ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html> 