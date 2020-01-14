<?php
include_once 'lib/session.php';
include_once 'lib/database.php';
include_once 'lib/db_config.php';
$db = new database();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <title> Coupon Dashboard</title>
    <?php include_once 'inc/style.php'; ?>



  </head>
  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <?php include_once 'inc/side_menu.php'; ?>
      <!-- End of Sidebar -->
      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <?php include_once 'inc/header.php'; ?>
          <!-- End of Topbar -->
          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->

            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">  Create Base Form   </h1> <a href="survey-form-list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">List Of Base Form</a>
             
            </div>

          <div class="row">

            <div class="col-lg-6">

              <!-- Default Card Example -->
              <div class="card mb-4">
                <div class="card-header">
                 Click To Add Form Fields
                </div>
                <div class="card-body">
                <div class="select-button">
                          <button id="name" class="btn-block btn btn-primary"> <i class="fa fa-user"></i> Name  </button>
                          <button id="singleLine" class="btn-block btn btn-primary"> <i class="fa fa-text-width"></i> Single Line Text </button>
                          <button id="ParagraphText" class="btn-block btn btn-primary"> <i class="fa fa-paragraph"></i> Paragraph Text </button>
                          <button id="select-option" class="btn-block btn btn-primary"> <i class="fa fa-angle-double-down"></i> Dropdown </button>
                          <button id="check-box" class="btn-block btn btn-primary"> <i class="fa fa-check-square"></i>  Checkboxes </button>
                          <button id="multiple-choice" class="btn-block btn btn-primary"> <i class="fa fa-list-ul"></i>  Multiple Choice </button>
                          <button id="phoneno" class="btn-block btn btn-primary"> <i class="fa fa-hashtag"></i> Phone Numbers </button>
                          <button id="email" class="btn-block btn btn-primary"> <i class="fa  fa fa-envelope"></i>  Email Address </button>
                          
                          <button id="WhatsaApp" class="btn-block btn btn-primary"> <i class="fa fa-phone"></i> WhatsaApp </button>
                          <button id="Address" class="btn-block btn btn-primary"> <i class="fa fa-map-marker"></i> Address </button>
                          <button id="dateandtime" class="btn-block btn btn-primary"> <i class="fa fa-list-alt"></i> Date / Time </button>
                          <button id="website" class="btn-block btn btn-primary"> <i class="fa fa-link"></i>  Website / URL </button>
                        </div>
                </div>
              </div>

             

            </div>

            <div class="col-lg-6">
               <form id="chunavform" action="" method="post" name="chunav">
              <!-- Dropdown Card Example -->
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 id="form_title" contentEditable='true' class="m-0 font-weight-bold text-primary"> Survey Form Title Name </h6>
                  <span class="edit-title" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-arrow-circle-left"></i> Edit</span>
                </div>
                <!-- Card Body -->
              <div class="active-field">
                        <img style="width: 40%" src="img/inactivate.png">
                        <div class="text-center">

                        <h4><strong>You don't have any fields yet. Add some!</strong></h4>
                      </div>
                      </div>
                  
                        <div id="form_data" class="filed-add">
                        </div>
                         <div class="text-right">
                          <div class="form-group m-2">
                           <input  class="btn btn-primary btn-user btn-block"  value=" Create  Chunav Form" name="submit" type="submit" name="">
                          </div>
                        </div>
                    </div>
                    </form>
                  </div>
                </div>
                 
           
          </div>
        </div>
        <!-- End of Main Content -->





        <?php include_once 'inc/footer.php'; ?>
        <!-- Show/hide CSV upload form -->



<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="form-group"> <label class="font-weight-bold text-black-50"> Enter Form Name  </label>  <input type="text" name="form-title" class="form-control" id="firstinput" placeholder="Example Feedback Form Data"></div>
      </div>
      <div class="modal-footer">
        <button type="button" data-dismiss="modal" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>



      <script>
      $(document).ready(function(){


      $("#name").click(function(){
       $(".active-field").hide();
      $(".filed-add").append("<div  class='form-group'> <label contentEditable='true' class='label-name' for='exampleName'> Name  </label> <span class='edit-section-delete' id='Namelabeledit'>Delete</span> <input type='text' name='Name' class='form-control'  placeholder='Full Name'></div> ");
      });

      $("#singleLine").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'> <label contentEditable='true' class='label-name' id='label-single-line' for='exampleName'>Single_line</label>  <span class='edit-section-delete' id='Namelabeledit'>Delete</span><input type='email' class='form-control' name='Single_line'  placeholder='Enter Message'></div> ");
      });

      $("#WhatsaApp").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'> <label contentEditable='true' class='label-name' for='exampleName'>WhatsaApp</label>  <span class='edit-section-delete' id='Namelabeledit'>Delete</span><input type='number' name='WhatsaApp' class='form-control' id='exampleName'  placeholder='Enter Your WhatsaApp No'></div> ");
      });
      $("#phoneno").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'> <label contentEditable='true' class='label-name' for='exampleName'>Phone</label>  <span class='edit-section-delete' id='Namelabeledit'>Delete</span><input type='number' class='form-control' name='Phone' id='exampleName'  placeholder='Enter Your Phone No'></div> ");
      });
      $("#ParagraphText").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'><label contentEditable='true' class='label-name' for='exampleTextarea'>Paragraph </label><span class='edit-section-delete' id='Namelabeledit'>Delete</span><textarea class='form-control' name='Paragraph' placeholder='Enter Paragraph' rows='3'></textarea></div>");
      });
      $("#Address").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'><label contentEditable='true' class='label-name' for='Address'> Address </label> <span class='edit-section-delete' id='Namelabeledit'>Delete</span> <textarea class='form-control'  id='Address' name='Address' placeholder='Enter Address' rows='3'></textarea></div>");
      });
      
      $("#email").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("  <div class='form-group'><label contentEditable='true' class='label-name' for='exampleInputEmail1'>Email</label> <span class='edit-section-delete' id='Namelabeledit'>Delete</span><input type='email' class='form-control' name='Email'  placeholder='Enter email'></div>");
      });
      $("#website").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("  <div class='form-group'><label contentEditable='true' class='label-name' for='exampleInputEmail1'>Wesite</label> <span class='edit-section-delete' id='Namelabeledit'>Delete</span><input type='url' class='form-control' name='Wesite'  placeholder='htts://www.example.com'></div>");
      });
      $("#dateandtime").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'><label contentEditable='true' class='label-name' for='example-datetime-local-input'>Date_and_time</label><span class='edit-section-delete' id='Namelabeledit'>Delete</span><input class='form-control' type='datetime-local' name='Date_and_time' value='2011-08-19T13:45:00' id='example-datetime-local-input'></div>");
      });
      $("#select-option").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'><label contentEditable='true' class='label-name' for='exampleSelect1'>Dropdown</label><span class='edit-section-delete' id='Namelabeledit'>Delete</span><select id='selectoption' name='Dropdown' class='form-control add_select_option'><option class='option-class' name='name[0]' id='Option[0]' value='Option0'>---Select---</option></select><div class='sub-option'><input class='form-control select_option' id='Option[0]' disabled name='name[0]' value='Click On + Button To add Option' type='text'><button class='add_field_button'>+</button></div><div class='input_fields_wrap'></div></div>");
      });
      $("#check-box").click(function(){
          $(".active-field").hide();
      $(".filed-add").append("<div class='form-group'><span class='edit-section-delete' id='Namelabeledit'>Delete</span><div class='multio-box'><label contentEditable='true' class='label-name' for='exampleSelect1'>Multiple Choice</label><div  class='multibox'> <input type='checkbox' name='optionsRadios' id='optionsRadios1' value='option1'> <span class='checkbox_name_edit' contentEditable='true'> Check Box 1 </span> </label> <button class='add_field_check'>+</button></div><div class='input_check_wrap'</div></div>");
      });
      
      $("#multiple-choice").click(function(){
          $(".active-field").hide();
      $(".filed-add").append(" <div class='form-group'><span class='edit-section-delete' id='Namelabeledit'>Delete</span><div class='multio-box'><label contentEditable='true' class='label-name' for='exampleSelect1'>Multiple Choice</label><div  class='multibox'> <input type='radio' name='optionsRadios' id='optionsRadios1' value='option1'> <span class='radio_name_edit' contentEditable='true'> radio 1 </span></label> <button class='add_field_mult'>+</button></div><div class='input_multi_wrap'</div></div>");
      });
      
      
      
      });
      </script>

      <script type="text/javascript">
          // $(window).on('click',function(){
          //     $('#exampleModalCenter').modal('show');
          // });

        var div = document.querySelector('#form_title');
        var topMenuChoice = document.getElementById("firstinput");
        topMenuChoice.addEventListener('keyup',function(e){
        div.innerHTML = e.target.value;
        })

      </script>

     <script> 

         $(document).on('keyup','.label-name', function(){
          var labelname = $(this).closest('.label-name').text();

           var labelStr = $.trim(labelname);

           var dlabelnae=labelStr.replace(/\s/g,'');

         $(this).closest('div').find(':input').attr('name', dlabelnae);
        
        
        });

      </script>

     

      <script>
        $(document).ready(function() {
          var max_fields = 20; //maximum input boxes allowed
          //var wrapper       = $(".input_fields_wrap"); //Fields wrapper
          var x = 1; //initlal text box count
          var i = 0;
          //$(add_button).click(function(e){ //on add input button click
            $(document).on('click','.add_field_button', function(e){
              
            e.preventDefault();
            if(x < max_fields){ //max input box allowed
              x++; //text box increment
              i++;
              console.log(i);
              $('.input_fields_wrap').append('<div class="sub-option"><input placeholder="Option1'+i+'" type="text" class="form-control select_option" name="Option['+i+']" value="Option['+i+']" id="Option['+i+']"/><button class="remove_field">-</button></div>'); 

               $('.add_select_option').append('<option class="option-class" id="Option['+i+']" value="Option['+i+']">Option '+i+'</option></select>'); 

              //add input box
            }
          });

          
          //$(".input_fields_wrap").on("click",".remove_field", function(e){ 
            $(document).on('click','.remove_field', function(e){
            //user click on remove text
            //$("#selectoption option[value='mytext["+i+"]']").remove();
      
            e.preventDefault();  $(this).parent('div').remove(); x--;


              var deleteoption = $(this).closest('.sub-option').find(':input').val();

                // alert(bla);

              // $('#selectoption option[value="bla"]').remove();
               $("#selectoption option[value='" + deleteoption + "']").remove();

             // var bla = $('#mytext['+i+']').val();

            
          })



               $(document).on('keyup','.select_option', function(){
           
              var setoption_value = $(this).closest('.sub-option').find(':input').val();
               var nameofinput = $(this).closest('.sub-option').find(':input').attr("name");
              ///  alert(nameofinput);

               document.getElementById(""+ nameofinput +"").value = setoption_value;

               document.getElementById(""+ nameofinput +"").innerHTML=setoption_value;

           });

        });
      </script>

      <script>
        $(document).ready(function() {
          var max_fields  = 10; //maximum input boxes allowed
          //var wrapper       = $(".input_fields_wrap"); //Fields wrapper
          var x = 1; //initlal text box count
          //$(add_button).click(function(e){ //on add input button click
            $(document).on('click','.add_field_mult', function(e){
              
            e.preventDefault();
            if(x < max_fields){ //max input box allowed
              x++; //text box increment
              $('.input_multi_wrap').append('<div class="multibox"><input type="radio" name="" id="optionsRadios1" value="option1"> <span class="radio_name_edit" contentEditable="true"> radio 1 </span></label> <button class="remove_field_mult">-</button> </div>'); //add input box
            }
          });
          //$(".input_fields_wrap").on("click",".remove_field", function(e){ 
            $(document).on('click','.remove_field_mult', function(e){
          //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); x--;
          })



              $(document).on('keyup','.radio_name_edit', function(){

                var radio_label = $(this).closest('.radio_name_edit').text();


                 var radio_label = $.trim(radio_label);

           var radio_label_name=radio_label.replace(/\s/g,'');

          $(this).closest('.multibox').find(':radio').attr('value', radio_label_name);

           });











        });
      </script>



      <script>
        $(document).ready(function() {
          var max_fields      = 10; //maximum input boxes allowed
          //var wrapper       = $(".input_fields_wrap"); //Fields wrapper
          var x = 1; //initlal text box count
          //$(add_button).click(function(e){ //on add input button click
            $(document).on('click','.add_field_check', function(e){
              
            e.preventDefault();
            if(x < max_fields){ //max input box allowed
              x++; //text box increment
              $('.input_check_wrap').append('<div class="multibox"><input type="checkbox" name="checkbox" id="optionsRadios1" value="option1"><span class="checkbox_name_edit" contentEditable="true"> Check Box  1 </span> </label> <button class="remove_field_check">-</button> </div>'); //add input box
            }
          });
          //$(".input_fields_wrap").on("click",".remove_field", function(e){ 
            $(document).on('click','.remove_field_check', function(e){
          //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); x--;
          })

              $(document).on('keyup','.checkbox_name_edit', function(){

                var checkbox_label = $(this).closest('.checkbox_name_edit').text();


                 var checkbox_label = $.trim(checkbox_label);

           var checkbox_label_name=checkbox_label.replace(/\s/g,'');

          $(this).closest('.multibox').find(':checkbox').attr('value', checkbox_label_name);

           });



        });
      </script>


      <!-- Delete Funaction  -->

       <script>
        $(document).ready(function() {

           $(document).on('click','#Namelabeledit', function(e){
             
              e.preventDefault(); $(this).parent('div').remove();
             });

           });
      </script>






<!-- send data to database funcation  -->

<script type="text/javascript">
    $(document).ready(function(){
      $("#chunavform").submit(function(){

      

      //var formname = $('#form_title').html();
     // var formname = $('#form_data').html();


      var labelname = new Array();                  
        $(".label-name").each(function () {
            labelname.push($(this).text().replace(/\s/g,''));
            //labelname
        });
   

        $.post("ajax/formcreate.php",{ 
          form_name:$('#form_title').html(),
          form_data:$('#form_data').html(),
          form_fileds: labelname

          } ,
          function(data){
          console.log('data=',data);
          if(data==1) //if correct login detail
          {
           alert('Form Created Successfully.')
            document.location='form-list.php';
          }

          else{
              alert("Someitng is worng ");
             // $("#msgbox").removeClass().text('').fadeIn(1000);
      }
                
        });
        return false; //not to post the  form physically
    });


       });
 
 

</script>



    
      </body>
    </html>