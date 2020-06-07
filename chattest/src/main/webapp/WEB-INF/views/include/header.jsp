<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>ASSEMBLE</title>

    <!-- Bootstrap core CSS -->
    <link href="chat/resources/assets/css/bootstrap.css" rel="stylesheet">
    <!--external <css-->
    <link href="/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="/resources/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/lineicons/style.css">    
    <link rel="stylesheet" type="text/css" href="/resources/assets/lineicons/style.css?ver=1">    
    
    <!-- Custom styles for this template -->
    <link href="/resources/assets/css/style.css" rel="stylesheet">
    <link href="/resources/assets/css/style-responsive.css" rel="stylesheet">

    <script src="/resources/assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header <start--></start-->
      <header class="header black-bg">
		<!--logo start-->
            <a href="/assemble.io/avengers/home" class="logo">
            	 <img src="/resources/assets/img/assemble1.png" id="logo">  
            	 <b class="teamname"> : </b>
            	 <b class="teamname"> AVENGERS </b>      	 
           	</a>
            <!--logo end-->
            
            <input type="text" name="search" id="search" placeholder="검색어를 입력하세요"/>
            <img src="https://image.flaticon.com/icons/svg/751/751463.svg" alt=""  id="dod"/>
            
            
            
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown" id="noti1">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Update</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Product Development</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Payments Sent</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            
            
            	<a href="#" ><input type="button" value="logout" id="logout"/></a>
            	
            <!-- <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">Logout</a></li>
            	</ul>
            </div> -->
        </header>
      <!--header end-->
      
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              	  <div id="div1">
              	  	<p class="centered"><a href="profile.html"><img src="https://t1.daumcdn.net/agit_resources/images/empty_profile.png" class="img-circle" width="60"></a></p>
              	  </div>

              	  <div id="div2">
	              	  <h4 id="id1"> rw0684</h5>
	              	  <h4 id="name1"> 이로운</h5>
              	  </div>
    
		              	  <input type="button" value="내글" class="b1"/>
		              	  <input type="button" value="맨션" class="b1"/>
		              	  <input type="button" value="요청" class="b1"/>
		              	  <input type="button" value="북마크" class="b2"/>
  
		              	  <input type="button" value="아지트 멤버 초대하기" id="b3"/>
		              	  
		              	  <input type="button" value="멤버" class="b4"/>	
		              	  <input type="button" value="참여가능한 그룹" class="b4"/>
        	  	
	              	  	  <input type="button" value="+ 카테고리 추가하기" class="b6"/>
	              	  	  
	              	  	  <input type="button" value="+ 새로운 그룹 만들기" class="b6"/>


       <!---------------------------------------------------------------------------->
                 <!--  <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>내글, 맨션, 요청, 북마크</span> 
                      </a>
                  </li> -->

                  <li class="sub-menu">
         				<input type="button" value="" id="side"/>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Category1</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="calendar.html">Group1</a></li>
                          <li><a  href="gallery.html">Group2</a></li>
                          <li><a  href="todo_list.html">Group3</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Category2</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Group4</a></li>
                          <li><a  href="login.html">Group5</a></li>
                          <li><a  href="lock_screen.html">Group6</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Category3</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">Group7</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Category4</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="basic_table.html">Group8</a></li>
                          <li><a  href="responsive_table.html">Group9</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Category5</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">Group10</a></li>
                          <li><a  href="chartjs.html">Group11</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
<!--   <div id="main">
      	<h2>여기는 메인</h2>
      </div> -->
      
      <div id="chatting">
      	<h2>여기는 채팅칸</h2>
      </div>
      
      

   </section>
   
   <script src="/resources/assets/js/jquery.js"></script>
    <script src="/resources/assets/js/jquery-1.8.3.min.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="/resources/assets/js/jquery.scrollTo.min.js"></script>
    <script src="/resources/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="/resources/assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="/resources/assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="/resources/assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="/resources/assets/js/gritter-conf.js"></script>

    <!--script for this page-->
<!--     <script src="/resources/assets/js/sparkline-chart.js"></script>    
	<script src="/resources/assets/js/zabuto_calendar.js"></script>	    -->
      

</body>
</html>