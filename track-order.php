<?php
session_start();
include_once 'includes/config.php';
$oid=intval($_GET['oid']);
 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Detalles de Seguimiento</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="anuj.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/style__custom.css">
</head>
<body>

<div style="margin-left:50px;">
 <form name="updateticket" id="updateticket" method="post"> 
 <table cellspacing="0" cellpadding="0" width="100%" style="padding-right:50px;"> 
    <tbody>
      <tr>
        <td class="es-m-p0r esd-container-frame" width="560" valign="top" align="center">
        <table width="100%" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <td align="center" class="esd-block-image" style="font-size: 0px;">
                <a target="_blank"><img class="adapt-img" src="https://jfroov.stripocdn.email/content/guids/CABINET_0a0a83029cc6732d483d09d7f179f650/images/pngtreeorder_delivery_tracking_using_mobile_4945632.png" alt style="display: block;" width="250"></a>
              </td>
            </tr>
            <tr>
              <td align="center" class="esd-block-text fontkink2">
                <p><br/>
                  <strong class="fontpink2" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 25px;">¡Detalles de Seguimiento!</strong>
                </p>
              </td>
            </tr>
            <tr>
              <td  class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 15px;"><b><br/>Id de orden: </b> <?php echo $oid;?></td>
              <?php 
                $ret = mysqli_query($con,"SELECT * FROM ordertrackhistory WHERE orderId='$oid'");
                $num=mysqli_num_rows($ret);
                if($num>0){
                  while($row=mysqli_fetch_array($ret)){
                    ?>
                      <tr>
                        <td class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 15px;"><b>Fecha: </b><?php echo $row['postingDate'];?></td>
                      </tr>
                      <tr>
                        <td  class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 15px;"><b>Estado: </b> <?php echo $row['status'];?></td>
                      </tr>
                      <tr>
                        <td  class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 15px;"><b>Observación: </b> <?php echo $row['remark'];?></td>
                      </tr>
                      <tr>
                        <td><hr /></td>
                      </tr>
                    <?php } }
                else{
                  ?>
                    <tr>
                      <td><hr /></td>
                    </tr>
                    <tr>
                      <td class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 18px;">Orden aún no procesada</td>
                    </tr>
                  <?php  }
                $st='Delivered';
                $rt = mysqli_query($con,"SELECT * FROM orders WHERE id='$oid'");
                while($num=mysqli_fetch_array($rt)){
                  $currrentSt=$num['orderStatus'];
                }

                if($st==$currrentSt){ 
                  ?>
                    <tr>
                      <td class="esd-block-text fontkink1" style="font-family: tahoma, verdana, segoe, sans-serif; font-size: 18px;"><b>Producto entragado con éxito </b></td>
                  <?php } 
                ?>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table> 
</form>
</div>

</body>
</html>

     