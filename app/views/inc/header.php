<!DOCTYPE HTML>
<html>
<head>
    <title><?php echo $data['info'][0]->title.' - '.$data['page_title']?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="<?php echo $data['info'][0]->details?>" />
    <meta name="description" content="<?php echo $data['description'].' '.$data['info'][0]->details?>">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="<?php echo URLROOT; ?>/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="<?php echo URLROOT; ?>/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="<?php echo URLROOT; ?>/js/jquery-1.11.1.min.js"></script>
    <!-- start menu -->
    <link href="<?php echo URLROOT; ?>/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<?php echo URLROOT; ?>/js/megamenu.js"></script>
    <link rel="stylesheet" href="<?php echo URLROOT; ?>/css/etalage.css">
    <script src="<?php echo URLROOT; ?>/js/jquery.etalage.min.js"></script>
    <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    <link href="<?php echo URLROOT; ?>/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <script>
        jQuery(document).ready(function($){

            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function(image_anchor, instance_id){
                    alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
                }
            });

        });
    </script>
</head>
<body>
<div class="wrap">
    <div class="header_top" style="padding-bottom: 10px">
        <div class="container">
        <div class="col-sm-9 h_menu4" style="margin-left: -30px">
            <ul class="megamenu skyblue" style="">
                <?php
                $helper = new HelperFunction();
                foreach ($data['primary_cat'] as $primary){
                    ?>
                    <li><a class="color1" href="#" style="color: white"><i class="fas fa-chevron-down" style="color: #3f3f3f"></i> <?php echo $primary->name?></a><div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <?php

                                            $i = 0;
                                            $count=[];
                                            foreach ($data['child'] as $child){

                                                if ( $child->parentsof == $primary->id){

                                                    $count[$i] = [
                                                        'name'=>$child->name,
                                                        'id'=>$child->id
                                                    ];
                                                    $i++;
                                                }

                                            }
                                            if($i>1){

                                                $mid = $helper->calculate_median($count);
                                                for($i=0;$i<$mid;$i++){
                                                    ?>
                                                    <li><a href="<?php echo URLROOT; ?>/browse/category/<?php echo $count[$i]['id']?>"><?php  echo $count[$i]['name'];?></a></li>
                                                    <?php
                                                }
                                            }
                                            elseif ($i == 0){

                                            }
                                            else{
                                                ?>
                                                <li><a href="<?php echo URLROOT; ?>/browse/category/<?php echo $count[0]['id']?>"><?php  echo $count[0]['name'];?></a></li>
                                                <?php
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <?php

                                            $icount = 0;
                                            $count=[];
                                            foreach ($data['child'] as $child){

                                                if ( $child->parentsof == $primary->id){

                                                    $count[$icount] = [
                                                        'name'=>$child->name,
                                                        'id'=>$child->id
                                                    ];
                                                    $icount++;
                                                }

                                            }
                                            $mid = $helper->calculate_median($count);
                                            if($i>1){
                                                for($i=3;$i<$icount;$i++){
                                                    ?>
                                                    <li><a href="<?php echo URLROOT; ?>/browse/category/<?php echo $count[$i]['id']?>"><?php  echo $count[$i]['name'];?></a></li>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Popular Brands</h4>
                                        <ul>
                                            <?php
                                            foreach ($data['brands'] as $brand){
                                                if ($brand->category_id == $primary->id){
                                                    ?>
                                                    <li><a href="<?php echo URLROOT; ?>/browse/brand/<?php echo $brand->id?>"><?php echo $brand->name?></a></li>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php
                }
                ?>
                <li><a class="color1" href="<?php echo URLROOT; ?>/pages/contact" style="color: white">Conact</a></li>
                <li class="ovi">
                    <input class="ovi-search" type="text" placeholder="search...">
                </li>
            </ul>
        </div>
        <div class="col-sm-2 header-top-right">

            <div class="register-info">
                <ul style="display: flex; align-items: center">

                    <li style="padding-right: 10px ">
                        <a href="<?php echo URLROOT; ?>/cart">
                            <i class="fas fa-shopping-cart" style="color: white; font-size: 35px"></i>
                        </a>
                        <p style="position: absolute; top: 3px; left: 50px; color: red"> <?php
                            if (isset($_SESSION['cart'])){
                                echo count($_SESSION['cart']);
                            }
                            else{
                                echo '0';
                            }
                            ?></p>

                    </li>

                    <?php
                    if (isset($_SESSION['user_id'])){
                        ?>
                        <li>
                           <div style="display: flex; align-items: center">
                               <a class="ovi-btn" href="<?php echo URLROOT; ?>/login/logout">Logout</a>
                               <a href="<?php echo URLROOT; ?>/profile">
                                   <div style="display: flex">
                                       <i class="far fa-user" style="color: white; background-color: grey; border-radius: 50%; padding: 5px"></i>
                                   </div>
                               </a>

                           </div>
                        </li>
                        <?php
                    }
                    else{
                        ?>
                        <div style="display: flex;">
                            <li><a class="ovi-btn" href="<?php echo URLROOT; ?>/login">Login</a></li>
                            <li><a class="ovi-btn" href="<?php echo URLROOT; ?>/signup">SignUp</a></li>
                        </div>
                        <?php
                    }
                    ?>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="header_bootm" style="">
        <div class="container " style="background-color: #EBEBEB">
        <div class="col-sm-4 span_1" style="background-color: #EBEBEB">
            <div class="logo" >
                <a  href="<?php echo URLROOT; ?>/index"><img class="gg" src="<?php echo URLROOT.'/public/img/'.$data['info'][0]->logo; ?>" alt="<?php echo $data['info'][0]->title?>" /></a>
            </div>
        </div>

        <div class="clearfix"></div>
        </div>
    </div>

    <div class="container" style="background-color: #EBEBEB">