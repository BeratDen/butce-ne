//SQL SORGULARI


<?php


//select işlemi tüm tablo
$sql=$db->prepare("SELECT * FROM TABLO_ADI");
$sql->execute();


while($sqlCek=$sql->fetch(PDO::FETCH_ASSOC))
{
?>



<?php } ?>