</div>
</div>
</div>
<div class="footer_top" style="background-color: #0078D4; color: white">
    <div class="container" style="padding-top: 100px;display: flex; justify-content: space-between;border-bottom: 2px solid gray; padding-bottom: 100px">
        <div style="">
            <img src="<?php echo URLROOT.'/public/img/'.$data['info'][0]->logo; ?>" alt="" width="160px">
        </div>
        <div style="">
            <h4 style="margin-bottom: 30px">Learn More</h4>
            <div>
                <a href="" style="color: white">About</a>
                <br>
                <a href="" style="color: white">Environment</a>
                <br>
                <a href="" style="color: white">Jobs</a><br>
                <a href="" style="color: white">Privacy Policy</a><br>
                <a href="" style="color: white">Contact Us</a><br>
            </div>
        </div>
        <div style="">
            <h4 style="margin-bottom: 30px">Support</h4>
            <a href="" style="color: white">Tickets </a>
            <br>
            <a href="" style="color: white">Live Chat </a>
            <br>
        </div>
        <div style="">
            <h4 style="margin-bottom: 30px">Contact Us</h4>
            <a href="" style="color: white">Email: gg@gmail.com</a>
            <br>
            <a href="" style="color: white">Phone: +880140000000</a>
            <br>
        </div>
        <div style=" width: 18%">
            <h4 style="margin-bottom: 30px">Social</h4>
            <div style="display: flex; justify-content: space-between;">
                <i class="fab fa-facebook" style="font-size: 30px"></i>
                <i class="fab fa-instagram" style="font-size: 30px"></i>
                <i class="fab fa-twitter" style="font-size: 30px"></i>
                <i class="fab fa-youtube" style="font-size: 30px"></i>
                <i class="fab fa-wordpress" style="font-size: 30px"></i>
            </div>
        </div>

    </div>
</div>

<link href="<?php echo URLROOT; ?>/public/css/flexslider.css" rel='stylesheet' type='text/css' />
<script defer src="<?php echo URLROOT; ?>/public/js/jquery.flexslider.js"></script>
<script defer src="<?php echo URLROOT; ?>/public/js/main.js"></script>
<script type="text/javascript">
    $(function(){
        SyntaxHighlighter.all();
    });
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>
</body>
</html>