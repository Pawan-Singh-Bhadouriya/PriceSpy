<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PriceSpy.com</title>
   
</head>

<body > 
<%@include file="Header.jsp" %>
    <!-- <div class="container"> -->
    <div class="container-fluid " id="icons">

        <div class="row mb-3" id="all-card-item">
            <div class="col">
                <div class="card w mt-3" id="card1">
                    <div class="card-body">
                        <i class="bi bi-phone ps-3 pe-3 " onclick="priceCompre()"></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Mobile</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card2">
                    <div class="card-body">
                        <i class="bi bi-laptop pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Laptop</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card3">
                    <div class="card-body">
                        <i class="bi bi-smartwatch pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">SmartWatch</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card4">
                    <div class="card-body">
                        <i class="bi bi-tablet-landscape pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Tablet</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card5">
                    <div class="card-body">
                        <i class="bi bi-camera2 pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Camera</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card6">
                    <div class="card-body">
                        <i class="bi bi-tv "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Television</a>
                    </div>
                </div>
            </div>


            <!-- <i class="fa-solid  fa-washing-machine pe-5 fa-10x"></i> -->
            <!-- mt-5 ps-5 pb-5 pt-5 -->
        </div>

    </div>
    <!-- </div> -->

    


    <div class="container-fluid" id="product">
        <div class="row" id="all-product">
            <h4 id="heading">Latest & Popular Products </h4>
            <div id="demo2">
                <nav class="navbar navbar-expand-lg  justify-content-center tab-titles">
                    <div class="nav navbar-nav " id="nav2">

                        <a href="#mobile" class="nav-item nav-link pr-20 tab-links active-link"
                            onclick=" opentab('mobile')">Mobile</a>

                        <a href="#laptop" class="nav-item nav-link pr-20 tab-links"
                            onclick=" opentab('laptop')">Laptop</a>

                        <a href="#washing-machine" class="nav-item nav-link pr-20 tab-links "
                            onclick=" opentab('washing-machine')">Washing Machine</a>

                        <a href="#tablet" class="nav-item nav-link pr-20 tab-links "
                            onclick=" opentab('tablet')">Tablet</a>

                        <a href="#camera" class="nav-item nav-link pr-20 tab-links "
                            onclick=" opentab('camera')">Camera</a>


                        <a href="#air-conditioner" class="nav-item nav-link pr-20 tab-links  "
                            onclick=" opentab('air-conditioner')">Air Conditioner</a>

                        <a href="#refrigerartor" class="nav-item nav-link pr-20 tab-links  "
                            onclick=" opentab('refrigerator')">Refrigerator</a>

                        <a href="#television" class="nav-item nav-link pr-20 tab-links  "
                            onclick=" opentab('television')">Teleivision</a>
                    </div>
            </div>
</div>
            </nav>
            <div class="row2">
            <hr class="horiz2">
            <div class="row tab-contents active-tab " id="mobile">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/redmi-not-9.png" alt="" class="card-image">
                           
                        </div>
                        <h3 class="card-title title ms-3">Redmi note 9<br>Rs 11,499</h3>
                        <div class="card-footer">
                            
                            <a href="https://www.amazon.in/Redmi-Note-Aqua-Green-Storage/dp/B08695YMYC/ref=sr_1_2?dib=eyJ2IjoiMSJ9.YG3qVd_bIwdy7OeCVcS9iHl-qxcyKtyvOWeZxQViOrlSoe1krnhbJOFna_TXbl7IeK8gbyQ_eiCjlMkfJE_8qu4XjguIVAg6Bqm_I4akT1Sgc8ZgMb54zRUFjyyfpq_osL9RzehnFMkp9yYfh-VbvBeoCRA8aHxupAs3flNf96DpnI6mQLLdnQvXiXm1qCikJoFJqXKONyathDLbntOAk9d_Z-I3YgDOWhCMiJWWBVA.OqhhLpvC2awrI5MK6lbXEA6JAjSRPTYzimVX76QTp0A&dib_tag=se&keywords=Redmi%2Bnote%2B9&qid=1713175241&sr=8-2&th=1" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/redmi-9.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-3 ">Redmi 9<br>Rs 9,499</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/Mi-10t.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-3 ">Mi 10 T <br>Rs 36,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/Redmi-9-prime.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Redmi 9 Prime<br>Rs 9,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row tab-contents " id="laptop">

                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/hp-15q.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">HP 15q-ds3001tu<br>Rs 35,890</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/acer-aspire.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Acer Aspire 7<br>Rs 56,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/asus-vivobook.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Asus VivoBook 14<br>Rs 35,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/avita-pura.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Avita Pura NS14A6INV561<br>Rs 34,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row tab-contents " id="washing-machine">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/ifb diva washing machine.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">IFB Diva 6Kg Fully Automatic<br>Rs 23,390</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/whirpool superb washing machine.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Whirlpool 6 Kg Semi Automatic<br>Rs 8,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/LG washing machine.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">LG P7020NGAZ 7Kg Semi Automatic<br>Rs 11,490</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/haier washing machine.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Haier HWM60-1269DB 6Kg Fully Automatic<br>Rs 15,700</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row tab-contents " id="tablet">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/lenovo tab p11 pro.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Lenovo Tab P11 Pro<br>Rs 43,590</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/huawei mediapad m6.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Huawei MediaPad M6 10.8<br>Rs 23,290</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/samsung galaxy tab a4.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Samsung Galaxy Tab A 8.4 2020<br>Rs 21,090</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/lg g pad 5 lite.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">LG G Pad 5 LTE<br>Rs 26,890</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>
           <div class="row tab-contents  " id="camera">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/canon camera.png" alt="" class="card-image">
                           
                        </div>
                        <h3 class="card-title title ms-5">Canon EOS 3000D DSLR Camera<br>Rs 24,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/fujifilm instax camera.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Fujifilm Instax Mini 9 <br>Rs 3,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/nikon camera.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Nikon D3500 (AF-P DX 18-55mm )<br>Rs 40,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/canon eos camera.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Canon EOS 1500D<br>Rs 22,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>
           <div class="row tab-contents  " id="air-conditioner">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/marq ac.png" alt="" class="card-image">
                           
                        </div>
                        <h3 class="card-title title ms-5">MarQ 1.5 Ton Inverter Split AC<br>Rs 16,999 </h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/lg ac.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">LG 1.5 Ton Dual Inverter Split AC<br>Rs 51,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/panasonic ac.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Panasonic CS/CU-SU18XKYTA 1.5 Ton<br>Rs 35,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/blue star ac.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Blue Star IA418DNU 1.5 Ton<br>Rs 40,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>
           <div class="row tab-contents  " id="refrigerator">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/samsung rr20 refrigrator.png" alt="" class="card-image">
                           
                        </div>
                        <h3 class="card-title title ms-5">Samsung RR20C1723R8 183 Ltr<br>Rs 14,890 </h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/samsung rr24 refrigrator.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Samsung RR24C2Y23S8 223 Ltr<br>Rs 17,490</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/whirpool 205 refrigrator.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Whirlpool 205 WDE CLS 2S SAPPHIRE BLUE-Z <br>Rs 12,390</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/haier refrigrator.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Haier HED-204DS-P 190 Ltr<br>Rs 14,526</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>
           <div class="row tab-contents  " id="television">
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/iffalcon tv.png" alt="" class="card-image">
                           
                        </div>
                        <h3 class="card-title title ms-5">iFFalcon iFF55U62 55 inch<br>Rs 28,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/thomson tv.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Thomson OP MAX 55OPMAXGT9030 55 inch<br>Rs 29,499</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/kodak tv.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Kodak CA Pro 43CAPRO5022 43 inch<br>Rs 24,999</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="card w mt-3 card-size" id="tab-cards">
                        <div class="card-body">
                            <img src="./images/mi tv.png" alt="" class="card-image">
                            <!-- <h3 class="card-title">Mobile</h3> -->
                        </div>
                        <h3 class="card-title title ms-5 ">Xiaomi X Series L50M8-A2IN 50 inch<br>Rs 32,990</h3>
                        <div class="card-footer">
                            <a href="" class="btn btn-dark ps-10 my-btn">View more</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>
</div>

<div class="container-fluid top-mobiles">
    <div class="row">
    <h4 id="heading">Top Mobile Brands</h4>
    <div class="container-fluid " id="mobile-icons">

        <div class="row mb-3" id="all-card-item">
            <div class="col">
                <div class="card w mt-3" id="card1">
                    <div class="card-body">
                        <i class="bi bi-phone ps-3 pe-3 " onclick="priceCompre()"></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Mobile</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card2">
                    <div class="card-body">
                        <i class="bi bi-laptop pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Laptop</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card3">
                    <div class="card-body">
                        <i class="bi bi-smartwatch pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">SmartWatch</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card4">
                    <div class="card-body">
                        <i class="bi bi-tablet-landscape pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Tablet</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card5">
                    <div class="card-body">
                        <i class="bi bi-camera2 pe-3 "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Camera</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card w mt-3" id="card6">
                    <div class="card-body">
                        <i class="bi bi-tv "></i>
                        <!-- <h3 class="card-title">Mobile</h3> -->
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-dark ps-10">Television</a>
                    </div>
                </div>
            </div>


            <!-- <i class="fa-solid  fa-washing-machine pe-5 fa-10x"></i> -->
            <!-- mt-5 ps-5 pb-5 pt-5 -->
        </div>

    </div>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>

</html>
