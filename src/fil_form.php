<?php
$page_title ="Ajout filiere";
include "header_ent.php";
?>
<div class="container">
 <div class="row">
   <div class="col-sm-3"></div>
    <section class="col-md-12">
         <div class="jumbotron" style="background-color: #ffffff;">
	    	<center><h3>Ajouter une filiére <h3></center>          
         </div> 
   
	
	<form class="form-horizontal" action="aj_fil.php" method="post">
	  <div class="form-group">
	  <div class="col-sm-2"></div>
	     <label for="nom" class="col-sm-2 control-label">Nom de la filiére*</label>
               <div class="col-sm-4">
                <input type="text" class="form-control" name="nom"  placeholder ="filiére..." required  id="filiere">
	          </div>
	     </div>
	 
	  
	   <div class="form-group">
	          <div class="col-sm-2"></div>
              <label class="col-sm-2 control-label "></label>
              
              <div class="col-sm-4">
                <input type="submit" class="btn btn-primary btn-block" value="Ajouter">
              </div>
          </div>
      </form>
    </section>
   </div>
    <nav>
      <ul class="pager">
       <li><a href="resp.php">Retour</a></li>
      
  </nav>
 </div>
<?php
include"footer.php";
?>


<?php
