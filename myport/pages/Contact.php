<?php 

    $msg = '';
    $msgClass = '';

    //check for submit
    if(filter_has_var(INPUT_POST, 'submit')){
        // get form data
        $name = htmlspecialchars($_POST['name']);
        $email = htmlspecialchars($_POST['email']);
        $subject = htmlspecialchars($_POST['subject']);
        $message = htmlspecialchars($_POST['message']);

        //check required filds
        if(!empty($name) && !empty($email) && !empty($subject) && !empty($message)){
            //passed
            //check email
            if(filter_var($email, FILTER_VALIDATE_EMAIL) === false){
                //failed
                $msg = 'plese use à valide email';
                $msgClass = 'alert-danger';
            } else {
                //passsed
                $toEmail = 'othmane.qorqach@gmail.com';
                $subject = 'Contact request From '.$name;
                $body = '<h2>Contact Request</h2>
                        <h4>Name</h4><p>'.$name.'</p>
                        <h4>Email</h4><p>'.$email.'</p>
                        <h4>Subject</h4><p>'.$subject.'</p>
                        <h4>Message</h4><p>'.$message.'</p>
                        ';

                        //Email Headers
                        $headers = "MIME-Version: 1.0" ."\r\n";
                        $headers .="Content-Type:text/html;charset=UTF-8" . " \r\n";

                        //additional header
                        $headers .= "from: " .$name. "<".$email.">". "\r\n";

                        if(mail($toEmail, $subject, $body, $headers)){
                           //email send
                            $msg = 'email send';
                            $msgClass = 'alert-success';
                        } else {
                            $msg = 'not send';
                            $msgClass = 'alert-danger';
                        }
                        
            }
            
        } else {
            //not passed
            $msg = 'plese fil all the field';
            $msgClass = 'alert-danger';

        }

    }

?>


<section class="contact" id="CONTACT">
  <div class="container">
  <?php if($msg != ''): ?>
        <div class="alert <?php echo $msgClass; ?>"> 
            <?php echo $msg; ?>
         </div>
        <?php endif; ?>
    <div class="row">
      <div class="col-md-12">
        <div class="text-center">
          <h1>Contact</h1>
        </div>
      </div>
      <div class="col-md-7 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
        <div class="contact-form">
          <form role="form">
            <div class="col-md-6">
              <input type="text" class="form-control" id="name" placeholder=" Name " value="<?php echo isset($_post['name']) ? $name : ''; ?>">
            </div>
            <div class="col-md-6  ">
              <input type="email"  class="form-control pull-right" id="email" placeholder="Email" value="<?php echo isset($_post['email']) ? $email : ''; ?>">
                </div> 
                <div class="col-xl-6">
                       <input  type="text" class="form-control"  name="subject" placeholder="Subject" value="<?php echo isset($_post['subject']) ? $subject : ''; ?>">
                    </div>

          
            <?php echo isset($_post['message']) ? $message : ''; ?>
            <div class="col-md-12">
              <textarea class="form-control" placeholder="Message" rows="6"></textarea>
            </div>
            <div class="col-md-12 text-center">
              <button type="submit" class="contact-button">Send Message</button>
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-5 col-xs-offset-1 col-xs-10">
        <div class="address">
          <h4>Address</h4>
          <p>Qu laghdir N° 491 <br>
            Youssoufia <br>
          <div class="email"><i class="fa fa-at"></i>othmane.qorqach@gmail.com<br>
            <i class="fa fa-mobile"></i>0614660408</div>
          </p>
        </div>
      </div>
    </div>
  </div>
</section>
