<%-- 
    Document   : product-add
    Created on : Oct 28, 2022, 11:41:45 PM
    Author     : DELL
--%>

<%@page import="com.models.Order"%>
<%@page import="com.dao.OrderDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Order Edit</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css1/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="css1/owl.carousel.css">
        <link rel="stylesheet" href="css1/owl.theme.css">
        <link rel="stylesheet" href="css1/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css1/metisMenu/metisMenu-vertical.css">

        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js1/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <jsp:include page="headeradmin.jsp"></jsp:include>
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <a href="home"><i class="icon nalika-home"></i></a>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Edit Order</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab start-->
            <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-tab-pro-inner">
                                    <ul id="myTab3" class="tab-review-design">
                                        <li class="active"><a href=""><i class="icon nalika-edit" aria-hidden="true"></i> Edit Order </a></li>
                                    </ul>
                                    <form method="post" action="editorder">
                                        <div id="myTabContent" class="tab-content custom-product-edit">
                                            <div class="product-tab-list tab-pane fade active in" id="description">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="review-content-section">
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-edit"></i>  Order ID :  </span>
                                                                        <input type="text" class="form-control" id="o_id" name="o_id" value="${o.getOrderID()}"  readonly  style="color: black">
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-edit"></i>  Order Date :  </span>
                                                                    <input type="date" class="form-control" id="o_date" name="o_date" value="${o.getOrderDate()}"  readonly  style="color: black">
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-favorites"></i>  Delivery Date :  </span>
                                                                    <input type="date" style="background-color: #337ab7;" class="form-control" id="delivery_date" value="${o.getDeliveryDate()}" name="delivery_date">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                            <div class="review-content-section">
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-new-file"></i>  Status :  </span>
                                                                    <input type="text" style="background-color: #337ab7;" class="form-control" placeholder="status" id="status" value="${o.getStatus()}" name="status">
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-new-file" aria-hidden="true"></i>  Note :  </span>
                                                                    <input type="text" style="background-color: #337ab7;" class="form-control" placeholder="note" name="note" id="note" value="${o.getNote()}">
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-favorites-button"></i>  Account Name :  </span>
                                                                    <input type="text" class="form-control" placeholder="account_id" name="account_id" id="account_id" value="${acc.getName()}" readonly  style="color: black">
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="icon nalika-favorites-button" ></i>  Address :  </span>
                                                                    <input type="text" style="background-color: #337ab7;" class="form-control" placeholder="account_id" name="address" id="address" value="${o.getAddress()}">

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="text-right custom-pro-edt-ds">
                                                                <button type="submit" name="btnUpdate" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Save</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright-area">

                </div>

                <!-- jquery
                            ============================================ -->
                <script src="js1/vendor/jquery-1.12.4.min.js"></script>
                <!-- bootstrap JS
                            ============================================ -->
                <script src="js1/bootstrap.min.js"></script>
                <!-- wow JS
                            ============================================ -->
                <script src="js1/wow.min.js"></script>
                <!-- price-slider JS
                            ============================================ -->
                <script src="js1/jquery-price-slider.js"></script>
                <!-- meanmenu JS
                            ============================================ -->
                <script src="js1/jquery.meanmenu.js"></script>
                <!-- owl.carousel JS
                            ============================================ -->
                <script src="js1/owl.carousel.min.js"></script>
                <!-- sticky JS
                            ============================================ -->
                <script src="js1/jquery.sticky.js"></script>
                <!-- scrollUp JS
                            ============================================ -->
                <script src="js1/jquery.scrollUp.min.js"></script>
                <!-- mCustomScrollbar JS
                            ============================================ -->
                <script src="js1/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
                <script src="js1/scrollbar/mCustomScrollbar-active.js"></script>
                <!-- metisMenu JS
                            ============================================ -->
                <script src="js1/metisMenu/metisMenu.min.js"></script>
                <script src="js1/metisMenu/metisMenu-active.js"></script>
                <!-- morrisjs JS
                            ============================================ -->
                <script src="js1/sparkline/jquery.sparkline.min.js"></script>
                <script src="js1/sparkline/jquery.charts-sparkline.js"></script>

                <!-- tab JS
                            ============================================ -->
                <script src="js/tab.js"></script>
                <!-- plugins JS
                            ============================================ -->
                <script src="js1/plugins.js"></script>
                <!-- main JS
                            ============================================ -->
                <script src="js1/main.js"></script>

                </body>

                </html>
