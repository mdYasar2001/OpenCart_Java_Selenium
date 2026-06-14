warning: in the working copy of 'target/maven-status/maven-compiler-plugin/testCompile/default-testCompile/createdFiles.lst', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'target/surefire-reports/TEST-testCases.TC001_AccountRegistrationTest.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'target/surefire-reports/TEST-testCases.TC002_LoginTest.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Linux-Chrome.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Linux-Chrome.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Linux-firefox.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Linux-firefox.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Test.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/Suite/Test.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/index.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/junitreports/TEST-testCases.TC001_AccountRegistrationTest.xml', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'test-output/junitreports/TEST-testCases.TC002_LoginTest.xml', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/grid-docker.xml b/grid-docker.xml[m
[1mindex 79c01ac..c64adf1 100644[m
[1m--- a/grid-docker.xml[m
[1m+++ b/grid-docker.xml[m
[36m@@ -5,20 +5,20 @@[m
 	<listener class-name="utilities.ExtentReportUtility"></listener>[m
 </listeners>[m
 [m
[31m-  <test name="Linux-Chrome">[m
[31m-	  <parameter name="os" value="Linux"/>[m
[32m+[m[32m  <test name="windows-Chrome">[m
[32m+[m	[32m  <parameter name="os" value="windows"/>[m
 	  <parameter name="browser" value="chrome"/>[m
     <classes>[m
     	<class name="testCases.TC001_AccountRegistrationTest"/>[m
       	<class name="testCases.TC002_LoginTest"/>[m
     </classes>[m
   </test>[m
[31m-  <test name="Linux-firefox">[m
[32m+[m[32m  <!-- <test name="Linux-firefox">[m
 	  <parameter name="os" value="Linux"/>[m
 	  <parameter name="browser" value="firefox"/>[m
     <classes>[m
     	<class name="testCases.TC001_AccountRegistrationTest"/>[m
       	<class name="testCases.TC002_LoginTest"/>[m
     </classes>[m
[31m-  </test>    <!-- Test -->[m
[32m+[m[32m  </test> -->[m
 </suite> <!-- Suite -->[m
[1mdiff --git a/logs/automation.log b/logs/automation.log[m
[1mindex 7df870e..337f7b1 100644[m
[1m--- a/logs/automation.log[m
[1m+++ b/logs/automation.log[m
[36m@@ -1,4 +1,10 @@[m
[31m-18:07:55.318 [main] INFO  testCases.TC002_LoginTest - ****Clicking Login Btn****[m
[31m-18:07:55.936 [main] INFO  testCases.TC002_LoginTest - ****Entering Valid Login Details****[m
[31m-18:07:56.126 [main] INFO  testCases.TC002_LoginTest - ****Validating My Account message****[m
[31m-18:07:58.017 [main] INFO  testCases.TC002_LoginTest - ****Completed TC002 Login Test Case****[m
[32m+[m[32m12:18:40.042 [main] INFO  testCases.TC002_LoginTest - ****Starting TC0002 login Test Case****[m
[32m+[m[32m12:18:40.071 [main] INFO  testCases.TC002_LoginTest - ****Clicking Login Btn****[m
[32m+[m[32m12:18:40.802 [main] INFO  testCases.TC002_LoginTest - ****Entering Valid Login Details****[m
[32m+[m[32m12:18:43.053 [main] INFO  testCases.TC002_LoginTest - ****Validating My Account message****[m
[32m+[m[32m12:18:43.177 [main] INFO  testCases.TC002_LoginTest - ****Completed TC002 Login Test Case****[m
[32m+[m[32m12:18:45.988 [main] INFO  testCases.TC001_AccountRegistrationTest - ****Starting TC0001 AccountRegistrartion Test Case****[m
[32m+[m[32m12:18:46.102 [main] INFO  testCases.TC001_AccountRegistrationTest - ****Clicked on My Account Btn****[m
[32m+[m[32m12:18:46.782 [main] INFO  testCases.TC001_AccountRegistrationTest - ****Clicked on Register Btn****[m
[32m+[m[32m12:18:49.324 [main] INFO  testCases.TC001_AccountRegistrationTest - ****Validating Expected Message****[m
[32m+[m[32m12:18:49.411 [main] INFO  testCases.TC001_AccountRegistrationTest - ****Completed TC0001 AccountRegistrartion Test Case****[m
[1mdiff --git a/pom.xml b/pom.xml[m
[1mindex 60f3950..0035615 100644[m
[1m--- a/pom.xml[m
[1m+++ b/pom.xml[m
[36m@@ -22,25 +22,23 @@[m
     </properties>[m
 [m
 	<build>[m
[31m-	    <pluginManagement>[m
[31m-	     	<plugins>[m
[31m-	        	<plugin>[m
[31m-	          		<groupId>org.apache.maven.plugins</groupId>[m
[31m-	          		<artifactId>maven-compiler-plugin</artifactId>[m
[31m-	          		<version>3.15.0</version>[m
[31m-	        	</plugin>[m
[31m-      			<plugin>[m
[31m-        			<groupId>org.apache.maven.plugins</groupId>[m
[31m-          			<artifactId>maven-surefire-plugin</artifactId>[m
[31m-          			<version>3.6.0-M1</version>[m
[31m-          			<configuration>[m
[31m-          				<suiteXmlFiles>[m
[31m-          					<suiteXmlFile>master.xml</suiteXmlFile>[m
[31m-          				</suiteXmlFiles>[m
[31m-          			</configuration>[m
[31m-      			</plugin>[m
[31m-	    	</plugins>[m
[31m-	    </pluginManagement>[m
[32m+[m[41m     [m	[32m<plugins>[m
[32m+[m[41m        [m	[32m<plugin>[m
[32m+[m[41m          [m		[32m<groupId>org.apache.maven.plugins</groupId>[m
[32m+[m[41m          [m		[32m<artifactId>maven-compiler-plugin</artifactId>[m
[32m+[m[41m          [m		[32m<version>3.15.0</version>[m
[32m+[m[41m        [m	[32m</plugin>[m
[32m+[m[41m  [m			[32m<plugin>[m
[32m+[m[41m    [m			[32m<groupId>org.apache.maven.plugins</groupId>[m
[32m+[m[41m      [m			[32m<artifactId>maven-surefire-plugin</artifactId>[m
[32m+[m[41m      [m			[32m<version>3.6.0-M1</version>[m
[32m+[m[41m      [m			[32m<configuration>[m
[32m+[m[41m      [m				[32m<suiteXmlFiles>[m
[32m+[m[41m      [m					[32m<suiteXmlFile>master.xml</suiteXmlFile>[m
[32m+[m[41m      [m				[32m</suiteXmlFiles>[m
[32m+[m[41m      [m			[32m</configuration>[m
[32m+[m[41m  [m			[32m</plugin>[m
[32m+[m[41m    [m	[32m</plugins>[m
   </build>[m
 	[m
     <dependencies>[m
[1mdiff --git a/reports/TestReport - 2026.06.11.18.04.22.html b/reports/TestReport - 2026.06.11.18.04.22.html[m
[1mdeleted file mode 100644[m
[1mindex a3d4e6f..0000000[m
[1m--- a/reports/TestReport - 2026.06.11.18.04.22.html[m	
[1m+++ /dev/null[m
[36m@@ -1,495 +0,0 @@[m
[31m-[m
[31m-[m
[31m-<!DOCTYPE html>[m
[31m-<html>[m
[31m-<head>[m
[31m-<meta charset="UTF-8">[m
[31m-<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[31m-<title>Automation Report</title>[m
[31m-<link rel="apple-touch-icon" href="https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@b00a2d0486596e73dd7326beacf352c639623a0e/commons/img/logo.png">[m
[31m-<link rel="shortcut icon" href="https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@b00a2d0486596e73dd7326beacf352c639623a0e/commons/img/logo.png">[m
[31m-<link href="https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@ce8b10435bcbae260c334c0d0c6b61d2c19b6168/spark/css/spark-style.css" rel="stylesheet" />[m
[31m-<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">[m
[31m-<script src="https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@7cc78ce/spark/js/jsontree.js"></script>[m
[31m-<style type="text/css"></style></head><body class="spa -report dark">[m
[31m-  <div class="app">[m
[31m-    <div class="layout">[m
[31m-<div class="header navbar">[m
[31m-<div class="vheader">[m
[31m-<div class="nav-logo">[m
[31m-<a href="#">[m
[31m-<div class="logo" style="background-image: url('https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@b00a2d0486596e73dd7326beacf352c639623a0e/commons/img/logo.png')"></div>[m
[31m-</a>[m
[31m-</div>[m
[31m-<ul class="nav-left">[m
[31m-<li class="search-box">[m
[31m-<a class="search-toggle" href="#">[m
[31m-<i class="search-icon fa fa-search"></i>[m
[31m-<i class="search-icon-close fa fa-close"></i>[m
[31m-</a>[m
[31m-</li>[m
[31m-<li class="search-input"><input id="search-tests" class="form-control" type="text" placeholder="Search..."></li>[m
[31m-</ul>[m
[31m-<ul class="nav-right">[m
[31m-<li class="m-r-10">[m
[31m-<a href="#"><span class="badge badge-primary">Functional Testing</span></a>[m
[31m-</li>[m
[31m-<li class="m-r-10">[m
[31m-<a href="#"><span class="badge badge-primary">Jun 11, 2026 06:04:22 pm</span></a>[m
[31m-</li>[m
[31m-</ul>[m
[31m-</div>[m
[31m-</div><div class="side-nav">[m
[31m-<div class="side-nav-inner">[m
[31m-<ul class="side-nav-menu">[m
[31m-<li class="nav-item dropdown" onclick="toggleView('test-view')">[m
[31m-<a id="nav-test" class="dropdown-toggle" href="#">[m
[31m-<span class="ico"><i class="fa fa-list"></i></span>[m
[31m-</a>[m
[31m-</li>[m
[31m-<li class="nav-item dropdown" onclick="toggleView('category-view')">[m
[31m-<a id="nav-category" class="dropdown-toggle" href="#">[m
[31m-<span class="ico"><i class="fa fa-tag"></i></span>[m
[31m-</a>[m
[31m-</li>[m
[31m-<li class="nav-item dropdown" onclick="toggleView('dashboard-view')">[m
[31m-<a id="nav-dashboard" class="dropdown-toggle" href="#">[m
[31m-<span class="ico"><i class="fa fa-bar-chart"></i></span>[m
[31m-</a>[m
[31m-</li>[m
[31m-</ul>[m
[31m-</div>[m
[31m-</div>      <div class="vcontainer">[m
[31m-        <div class="main-content">[m
[31m-<div class="test-wrapper row view test-view">[m
[31m-  <div class="test-list">[m
[31m-    <div class="test-list-tools">[m
[31m-<ul class="tools pull-left">[m
[31m-<li><a href="#"><span class="font-size-14">Tests</span></a></li>[m
[31m-</ul>[m
[31m-<ul class="tools text-right">[m
[31m-<li class="dropdown">[m
[31m-<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-exclamation-circle"></i></a>[m
[31m-<ul id="status-toggle" class="dropdown-menu dropdown-md p-v-0">[m
[31m-<a class="dropdown-item" status="pass" href="#"><span>Pass</span><span class="status success"></span></a>[m
[31m-<div class="dropdown-divider"></div>[m
[31m-<a status="clear" class="dropdown-item" href="#"><span>Clear</span><span class="pull-right"><i class="fa fa-close"></i></span></a>[m
[31m-</ul>[m
[31m-</li>[m
[31m-<li class="dropdown">[m
[31m-<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tag"></i></a>[m
[31m-<ul id="tag-toggle" class="dropdown-menu dropdown-md p-v-0">[m
[31m-<a class="dropdown-item" href="#">Regression</a><a class="dropdown-item" href="#">Sanity</a><a class="dropdown-item" href="#">Master</a>[m
[31m-</ul>[m
[31m-</li>[m
[31m-</ul>[m
[31m-</div>    <div class="test-list-wrapper scrollable">[m
[31m-      <ul class="test-list-item">[m
[31m-        <li class="test-item"  status="pass" test-id="1"[m
[31m-          author=""[m
[31m-          tag="Regression Master"[m
[31m-          device="">[m
[31m-          <div class="test-detail">[m
[31m-            <p class="name">testCases.TC001_AccountRegistrationTest</p>[m
[31m-            <p class="text-sm">[m
[31m-              <span>6:04:28 pm</span> / <span>00:00:00:000</span>[m
[31m-              <span class="badge pass-bg log float-right">Pass</span>[m
[31m-            </p>[m
[31m-          </div>[m
[31m-          <div class="test-contents d-none">[m
[31m-<div class="detail-head">[m
[31m-<div class="p-v-10">[m
[31m-<div class="info">[m
[31m-<h5 class="test-status text-pass">testCases.TC001_AccountRegistrationTest</h5>[m
[31m-<span class='badge badge-success'>06.11.2026 6:04:28 pm</span>[m
[31m-<span class='badge badge-danger'>06.11.2026 6:04:28 pm</span>[m
[31m-<span class='badge badge-default'>00:00:00:000</span>[m
[31m-&middot; <span class='uri-anchor badge badge-default'>#test-id=1</span>[m
[31m-<span title='Skip to the next failed step' class='badge badge-danger pointer float-right ne ml-1'><i class="fa fa-fast-forward"></i></span>[m
[31m-<span title='Collapse all nodes' class='badge badge-default pointer float-right ct ml-1'><i class="fa fa-compress"></i></span>[m
[31m-<span title='Expand all nodes' class='badge badge-default pointer float-right et'><i class="fa fa-expand"></i></span>[m
[31m-</div>[m
[31m-<div class="m-t-15"><span class="badge badge-pill badge-default">Regression</span>[m
[31m-<span class="badge badge-pill badge-default">Master</span></div>[m
[31m-</div>[m
[31m-</div><div class="detail-body mt-4">[m
[31m-<table class="table table-sm">[m
[31m-  <thead><tr><th class="status-col">Status</th><th class="timestamp-col">Timestamp</th><th class="details-col">Details</th></tr></thead>[m
[31m-  <tbody>[m
[31m-      <tr class="event-row">[m
[31m-        <td><span class="badge log pass-bg">Pass</span></td>[m
[31m-        <td>6:04:28 pm</td>[m
[31m-        <td>[m
[31m-          verifyAccountRegistration got sucessfully executed[m
[31m-        </td>[m
[31m-      </tr>[m
[31m-  </tbody>[m
[31m-</table>[m
[31m-</div>[m
[31m-          </div>[m
[31m-        </li>[m
[31m-        <li class="test-item"  status="pass" test-id="2"[m
[31m-          author=""[m
[31m-          tag="Sanity Master"[m
[31m-          device="">[m
[31m-          <div class="test-detail">[m
[31m-            <p class="name">testCases.TC002_LoginTest</p>[m
[31m-            <p class="text-sm">[m
[31m-              <span>6:04:34 pm</span> / <span>00:00:00:004</span>[m
[31m-              <span class="badge pass-bg log float-right">Pass</span>[m
[31m-            </p>[m
[31m-          </div>[m
[31m-          <div class="test-contents d-none">[m
[31m-<div class="detail-head">[m
[31m-<div class="p-v-10">[m
[31m-<div class="info">[m
[31m-<h5 class="test-status text-pass">testCases.TC002_LoginTest</h5>[m
[31m-<span class='badge badge-success'>06.11.2026 6:04:34 pm</span>[m
[31m-<span class='badge badge-danger'>06.11.2026 6:04:34 pm</span>[m
[31m-<span class='badge badge-default'>00:00:00:004</span>[m
[31m-&middot; <span class='uri-anchor badge badge-default'>#test-id=2</span>[m
[31m-<span title='Skip to the next failed step' class='badge badge-danger pointer float-right ne ml-1'><i class="fa fa-fast-forward"></i></span>[m
[31m-<span title='Collapse all nodes' class='badge badge-default pointer float-right ct ml-1'><i class="fa fa-compress"></i></span>[m
[31m-<span title='Expand all nodes' class='badge badge-default pointer float-right et'><i class="fa fa-expand"></i></span>[m
[31m-</div>[m
[31m-<div class="m-t-15"><span class="badge badge-pill badge-default">Sanity</span>[m
[31m-<span class="badge badge-pill badge-default">Master</span></div>[m
[31m-</div>[m
[31m-</div><div class="detail-body mt-4">[m
[31m-<table class="table table-sm">[m
[31m-  <thead><tr><th class="status-col">Status</th><th class="timestamp-col">Timestamp</th><th class="details-col">Details</th></tr></thead>[m
[31m-  <tbody>[m
[31m-      <tr class="event-row">[m
[31m-        <td><span class="badge log pass-bg">Pass</span></td>[m
[31m-        <td>6:04:34 pm</td>[m
[31m-        <td>[m
[31m-          verifyLoginTest got sucessfully executed[m
[31m-        </td>[m
[31m-      </tr>[m
[31m-  </tbody>[m
[31m-</table>[m
[31m-</div>[m
[31m-          </div>[m
[31m-        </li>[m
[31m-      </ul>[m
[31m-    </div>[m
[31m-  </div>[m
[31m-<div class="test-content scrollable">[m
[31m-<div class="test-content-tools">[m
[31m-<ul><li><a class="back-to-test" href="#"><i class="fa fa-arrow-left"></i></a></li></ul>[m
[31m-</div>[m
[31m-<div class="test-content-detail"><div class="detail-body"></div></div>[m
[31m-</div></div>[m
[31m-<div class="test-wrapper row view category-view attributes-view">[m
[31m-<div class="test-list">[m
[31m-<div class="test-list-tools">[m
[31m-<ul class="tools pull-left"><li><a href=""><span class="font-size-14">Category</span></a></li></ul>[m
[31m-<ul class="tools text-right"><li><a href="#"><span class="badge badge-primary">3</span></a></li></ul>[m
[31m-</div>[m
[31m-<div class="test-list-wrapper scrollable">[m
[31m-<ul class="test-list-item">[m
[31m-<li class="test-item">[m
[31m-<div class="test-detail">[m
[31m-<span class="meta">[m
[31m-<span class='badge log pass-bg'>1</span>[m
[31m-</span>[m
[31m-<p class="name">Regression</p>[m
[31m-<p class="duration text-sm">1 tests</p>[m
[31m-</div>[m
[31m-<div class="test-contents d-none">[m
[31m-<div class="info">[m
[31m-<h4>Regression</h4>[m
[31m-<span status="pass" class='badge log pass-bg'>1 passed</span>[m
[31m-</div>[m
[31m-<table class='table table-sm mt-4'>[m
[31m-<thead>[m
[31m-<tr>[m
[31m-<th class="status-col">Status</th>[m
[31m-<th class="timestamp-col">Timestamp</th>[m
[31m-<th>TestName</th>[m
[31m-</tr>[m
[31m-</thead>[m
[31m-<tbody>[m
[31m-<tr class="tag-test-status" status="pass">[m
[31m-<td><span class="badge log pass-bg">Pass</span></td>[m
[31m-<td>18:04:28 pm</td>[m
[31m-<td>[m
[31m-<a href="#" class="linked" test-id='1' id='1'>testCases.TC001_AccountRegistrationTest</a>[m
[31m-</td>[m
[31m-</tr>[m
[31m-</tbody>[m
[31m-</table>[m
[31m-</div>[m
[31m-</li>[m
[31m-<li class="test-item">[m
[31m-<div class="test-detail">[m
[31m-<span class="meta">[m
[31m-<span class='badge log pass-bg'>1</span>[m
[31m-</span>[m
[31m-<p class="name">Sanity</p>[m
[31m-<p class="duration text-sm">1 tests</p>[m
[31m-</div>[m
[31m-<div class="test-contents d-none">[m
[31m-<div class="info">[m
[31m-<h4>Sanity</h4>[m
[31m-<span status="pass" class='badge log pass-bg'>1 passed</span>[m
[31m-</div>[m
[31m-<table class='table table-sm mt-4'>[m
[31m-<thead>[m
[31m-<tr>[m
[31m-<th class="status-col">Status</th>[m
[31m-<th class="timestamp-col">Timestamp</th>[m
[31m-<th>TestName</th>[m
[31m-</tr>[m
[31m-</thead>[m
[31m-<tbody>[m
[31m-<tr class="tag-test-status" status="pass">[m
[31m-<td><span class="badge log pass-bg">Pass</span></td>[m
[31m-<td>18:04:34 pm</td>[m
[31m-<td>[m
[31m-<a href="#" class="linked" test-id='2' id='2'>testCases.TC002_LoginTest</a>[m
[31m-</td>[m
[31m-</tr>[m
[31m-</tbody>[m
[31m-</table>[m
[31m-</div>[m
[31m-</li>[m
[31m-<li class="test-item">[m
[31m-<div class="test-detail">[m
[31m-<span class="meta">[m
[31m-<span class='badge log pass-bg'>2</span>[m
[31m-</span>[m
[31m-<p class="name">Master</p>[m
[31m-<p class="duration text-sm">2 tests</p>[m
[31m-</div>[m
[31m-<div class="test-contents d-none">[m
[31m-<div class="info">[m
[31m-<h4>Master</h4>[m
[31m-<span status="pass" class='badge log pass-bg'>2 passed</span>[m
[31m-</div>[m
[31m-<table class='table table-sm mt-4'>[m
[31m-<thead>[m
[31m-<tr>[m
[31m-<th class="status-col">Status</th>[m
[31m-<th class="timestamp-col">Timestamp</th>[m
[31m-<th>TestName</th>[m
[31m-</tr>[m
[31m-</thead>[m
[31m-<tbody>[m
[31m-<tr class="tag-test-status" status="pass">[m
[31m-<td><span class="badge log pass-bg">Pass</span></td>[m
[31m-<td>18:04:28 pm</td>[m
[31m-<td>[m
[31m-<a href="#" class="linked" test-id='1' id='1'>testCases.TC001_AccountRegistrationTest</a>[m
[31m-</td>[m
[31m-</tr>[m
[31m-<tr class="tag-test-status" status="pass">[m
[31m-<td><span class="badge log pass-bg">Pass</span></td>[m
[31m-<td>18:04:34 pm</td>[m
[31m-<td>[m
[31m-<a href="#" class="linked" test-id='2' id='2'>testCases.TC002_LoginTest</a>[m
[31m-</td>[m
[31m-</tr>[m
[31m-</tbody>[m
[31m-</table>[m
[31m-</div>[m
[31m-</li>[m
[31m-</ul>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="test-content scrollable">[m
[31m-<div class="test-content-detail">[m
[31m-<div class="detail-body"></div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div><div class="container-fluid p-4 view dashboard-view">[m
[31m-<div class="row">[m
[31m-<div class="col-md-3">[m
[31m-<div class="card"><div class="card-body">[m
[31m-<p class="m-b-0">Started</p>[m
[31m-<h3>Jun 11, 2026 06:04:22 pm</h3>[m
[31m-</div></div>[m
[31m-</div>[m
[31m-<div class="col-md-3">[m
[31m-<div class="card"><div class="card-body">[m
[31m-<p class="m-b-0">Ended</p>[m
[31m-<h3>Jun 11, 2026 06:04:34 pm</h3>[m
[31m-</div></div>[m
[31m-</div>[m
[31m-<div class="col-md-3">[m
[31m-<div class="card"><div class="card-body">[m
[31m-<p class="m-b-0 text-pass">Tests Passed</p>[m
[31m-<h3>2</h3>[m
[31m-</div></div>[m
[31m-</div>[m
[31m-<div class="col-md-3">[m
[31m-<div class="card"><div class="card-body">[m
[31m-<p class="m-b-0 text-fail">Tests Failed</p>[m
[31m-<h3>0</h3>[m
[31m-</div></div>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="row">[m
[31m-<div class="col-md-6">[m
[31m-<div class="card">[m
[31m-<div class="card-header">[m
[31m-<h6 class="card-title">Tests</h6>[m
[31m-</div>[m
[31m-<div class="card-body">[m
[31m-<div class="">[m
[31m-<canvas id='parent-analysis' width='115' height='90'></canvas>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="card-footer">[m
[31m-<div><small data-tooltip='100%'>[m
[31m-<b>2</b> tests passed[m
[31m-</small>[m
[31m-</div>[m
[31m-<div>[m
[31m-<small data-tooltip='0%'><b>0</b> tests failed,[m
[31m-<b>0</b> skipped, <b data-tooltip='0%'>0</b> others[m
[31m-</small>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="col-md-6">[m
[31m-<div class="card">[m
[31m-<div class="card-header">[m
[31m-<h6 class="card-title">Log events</h6>[m
[31m-</div>[m
[31m-<div class="card-body">[m
[31m-<div class="">[m
[31m-<canvas id='events-analysis' width='115' height='90'></canvas>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="card-footer">[m
[31m-<div><small data-tooltip='100%'><b>2</b> events passed</small></div>[m
[31m-<div>[m
[31m-<small data-tooltip='0%'><b>0</b> events failed,[m
[31m-<b data-tooltip='%'>0</b> others[m
[31m-</small>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="row"><div class="col-md-12">[m
[31m-<div class="card"><div class="card-header"><p>Timeline</p></div>[m
[31m-<div class="card-body pt-0"><div>[m
[31m-<canvas id="timeline" height="120"></canvas>[m
[31m-</div></div>[m
[31m-</div>[m
[31m-</div></div>[m
[31m-<script>[m
[31m-var timeline = {[m
[31m-"testCases.TC001_AccountRegistrationTest":0,"testCases.TC002_LoginTest":0.004[m
[31m-};[m
[31m-</script>[m
[31m-<div class="row">[m
[31m-<div class="col-lg-6 col-md-12 category-container">[m
[31m-<div class="card">[m
[31m-<div class="card-header"><p>Tags</p></div>[m
[31m-<div class="card-body pb-0 pt-0"><table class="table table-sm table-bordered">[m
[31m-<thead><tr class="bg-gray"><th>Name</th><th>Passed</th><th>Failed</th><th>Skipped</th><th>Others</th><th>Passed %</th></tr></thead><tbody>[m
[31m-<tr>[m
[31m-<td>Regression</td>[m
[31m-<td>1</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>100%</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Sanity</td>[m
[31m-<td>1</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>100%</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Master</td>[m
[31m-<td>2</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>0</td>[m
[31m-<td>100%</td>[m
[31m-</tr>[m
[31m-</tbody>[m
[31m-</table></div>[m
[31m-</div>[m
[31m-</div>[m
[31m-<div class="col-lg-6 col-md-12 sysenv-container">[m
[31m-<div class="card">[m
[31m-<div class="card-header"><p>System/Environment</p></div>[m
[31m-<div class="card-body pb-0 pt-0"><table class="table table-sm table-bordered">[m
[31m-<thead><tr class="bg-gray"><th>Name</th><th>Value</th></tr></thead>[m
[31m-<tbody>[m
[31m-<tr>[m
[31m-<td>Application</td>[m
[31m-<td>openCart</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Module</td>[m
[31m-<td>Admin</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Sub Module</td>[m
[31m-<td>Customers</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>user Name</td>[m
[31m-<td>muham</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Environment</td>[m
[31m-<td>QA</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Operating System</td>[m
[31m-<td>Windows</td>[m
[31m-</tr>[m
[31m-<tr>[m
[31m-<td>Browser</td>[m
[31m-<td>chrome</td>[m
[31m-</tr>[m
[31m-</tbody>[m
[31m-</table></div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-</div>[m
[31m-<script>[m
[31m-var statusGroup = {[m
[31m-parentCount: 5,[m
[31m-passParent: 2,[m
[31m-failParent: 0,[m
[31m-warningParent: 0,[m
[31m-skipParent: 0,[m
[31m-childCount: 5,[m
[31m-passChild: 0,[m
[31m-failChild: 0,[m
[31m-warningChild: 0,[m
[31m-skipChild: 0,[m
[31m-infoChild: 0,[m
[31m-grandChildCount: 5,[m
[31m-passGrandChild: 0,[m
[31m-failGrandChild: 0,[m
[31m-warningGrandChild: 0,[m
[31m-skipGrandChild: 0,[m
[31m-infoGrandChild: 0,[m
[31m-eventsCount: 5,[m
[31m-passEvents: 2,[m
[31m-failEvents: 0,[m
[31m-warningEvents: 0,[m
[31m-skipEvents: 0,[m
[31m-infoEvents: 0[m
[31m-};[m
[31m-</script>        </div>[m
[31m-      </div>[m
[31m-    </div>[m
[31m-  </div>[m
[31m-<script src="https://cdn.jsdelivr.net/gh/extent-framework/extent-github-cdn@c05cd28cde1617b9d0c05a831daff6cb97fd9fd5/spark/js/spark-script.js"></script>[m
[31m-<script type="text/javascript"></script></body>[m
[31m-</html>[m
\ No newline at end of file[m
[1mdiff --git a/src/test/java/testBase/BaseClass.java b/src/test/java/testBase/BaseClass.java[m
[1mindex 9642e63..20ff1c5 100644[m
[1m--- a/src/test/java/testBase/BaseClass.java[m
[1m+++ b/src/test/java/testBase/BaseClass.java[m
[36m@@ -24,7 +24,10 @@[m [mimport org.testng.annotations.*;[m
 [m
 import org.apache.logging.log4j.LogManager;[m
 import org.apache.logging.log4j.Logger;[m
[32m+[m[32mimport org.testng.annotations.Listeners;[m
[32m+[m[32mimport utilities.ExtentReportUtility;[m
 [m
[32m+[m[32m@Listeners(ExtentReportUtility.class)[m
 public class BaseClass {[m
 	[m
 	public static WebDriver driver;[m
[36m@@ -57,13 +60,17 @@[m [mpublic class BaseClass {[m
 		if(p.getProperty("exe_Env").equalsIgnoreCase("remote"))[m
 		{[m
 			DesiredCapabilities cap = new DesiredCapabilities();[m
[31m-			if(os.equalsIgnoreCase("windows")) {[m
[32m+[m			[32mif(os.equalsIgnoreCase("windows"))[m[41m [m
[32m+[m			[32m{[m
 				cap.setPlatform(Platform.WIN11);[m
[31m-			} else if(os.equalsIgnoreCase("linux")) {[m
[32m+[m			[32m} else if(os.equalsIgnoreCase("linux"))[m[41m [m
[32m+[m			[32m{[m
 				cap.setPlatform(Platform.LINUX);[m
[31m-			} else if(os.equalsIgnoreCase("mac")) {[m
[32m+[m			[32m} else if(os.equalsIgnoreCase("mac"))[m[41m [m
[32m+[m			[32m{[m
 				cap.setPlatform(Platform.MAC);[m
[31m-			} else {[m
[32m+[m			[32m} else[m[41m [m
[32m+[m			[32m{[m
 				System.out.println("No OS is matched");[m
 				return;[m
 			}[m
[1mdiff --git a/src/test/java/utilities/ExtentReportUtility.java b/src/test/java/utilities/ExtentReportUtility.java[m
[1mindex f43a7f4..23cbb6b 100644[m
[1m--- a/src/test/java/utilities/ExtentReportUtility.java[m
[1m+++ b/src/test/java/utilities/ExtentReportUtility.java[m
[36m@@ -30,6 +30,7 @@[m [mpublic class ExtentReportUtility implements ITestListener[m
 	[m
 	String reportName;[m
 	[m
[32m+[m	[32m@Override[m
 	public void onStart(ITestContext testContext) {[m
 		[m
 		/* SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");[m
[36m@@ -68,6 +69,8 @@[m [mpublic class ExtentReportUtility implements ITestListener[m
 	}[m
 	[m
 	public void onTestSuccess(ITestResult result) {[m
[32m+[m		[32mSystem.out.println("********* on Test Sucess *********");[m
[32m+[m[41m		[m
 		test = extent.createTest(result.getTestClass().getName()); //create a new entry in the report[m
 		test.assignCategory(result.getMethod().getGroups()); // to display groups in reports[m
 		test.log(Status.PASS, result.getName()+" got sucessfully executed"); //update statuses[m
[36m@@ -95,11 +98,17 @@[m [mpublic class ExtentReportUtility implements ITestListener[m
 	}[m
 	[m
 	public void onFinish(ITestContext context) {[m
[32m+[m		[32mSystem.out.println("********* INSIDE onFinish() *********");[m
 		extent.flush();[m
 		[m
 		String pathOfExtentReport = System.getProperty("user.dir")+".\\reports\\"+reportName;[m
 		File extentReport = new File(pathOfExtentReport);[m
 		[m
[32m+[m		[32mSystem.out.println("Report Path: "+ extentReport.getAbsolutePath());[m
[32m+[m
[32m+[m	[32m    System.out.println("Report Exists: "+ extentReport.exists());[m
[32m+[m	[32m    System.out.println("Inside onFinish()");[m
[32m+[m[41m		[m
 		try {[m
 			Desktop.getDesktop().browse(extentReport.toURI());[m
 		} catch (Exception e) {[m
[1mdiff --git a/src/test/java/utilities/JsonDataProvider.java b/src/test/java/utilities/JsonDataProvider.java[m
[1mindex f9d748d..63b5510 100644[m
[1m--- a/src/test/java/utilities/JsonDataProvider.java[m
[1m+++ b/src/test/java/utilities/JsonDataProvider.java[m
[36m@@ -4,24 +4,22 @@[m [mimport org.testng.annotations.DataProvider;[m
 import org.json.JSONArray;[m
 import org.json.JSONObject;[m
 [m
[31m-public class JsonDataProvider extends BaseUtility [m
[31m-{[m
[31m-    @DataProvider(name = "loginJsonData")[m
[31m-    public Object[][] getLoginJsonData() throws Exception [m
[31m-    {[m
[31m-        String jsonContent = readJsonFile("loginData.json");[m
[31m-        JSONObject obj = new JSONObject(jsonContent);[m
[31m-        JSONArray arr = obj.getJSONArray("loginData");[m
[31m-        Object[][] data = new Object[arr.length()][3];[m
[32m+[m[32mpublic class JsonDataProvider extends BaseUtility {[m
[32m+[m	[32m@DataProvider(name = "loginJsonData")[m
[32m+[m	[32mpublic Object[][] getLoginJsonData() throws Exception {[m
[32m+[m		[32mString jsonContent = readJsonFile("loginData.json");[m
[32m+[m		[32mJSONObject obj = new JSONObject(jsonContent);[m
[32m+[m		[32mJSONArray arr = obj.getJSONArray("loginData");[m
[32m+[m		[32mObject[][] data = new Object[arr.length()][3];[m
 [m
[31m-        for(int i = 0; i < arr.length(); i++) {[m
[32m+[m		[32mfor (int i = 0; i < arr.length(); i++) {[m
 [m
[31m-            JSONObject user = arr.getJSONObject(i);[m
[31m-            data[i][0] = user.getString("loginId");[m
[31m-            data[i][1] = user.getString("password");[m
[31m-            data[i][2] = user.getString("res");[m
[32m+[m			[32mJSONObject user = arr.getJSONObject(i);[m
[32m+[m			[32mdata[i][0] = user.getString("loginId");[m
[32m+[m			[32mdata[i][1] = user.getString("password");[m
[32m+[m			[32mdata[i][2] = user.getString("res");[m
 //            System.out.println(user);[m
[31m-        }[m
[31m-        return data;[m
[31m-    }[m
[32m+[m		[32m}[m
[32m+[m		[32mreturn data;[m
[32m+[m	[32m}[m
 }[m
\ No newline at end of file[m
[1mdiff --git a/src/test/resources/config.properties b/src/test/resources/config.properties[m
[1mindex b07e067..55c198f 100644[m
[1m--- a/src/test/resources/config.properties[m
[1m+++ b/src/test/resources/config.properties[m
[36m@@ -6,8 +6,8 @@[m [mpassword = Virat@123[m
 [m
 # selenium Grid properties[m
 [m
[31m-exe_Env = local[m
[31m-#exe_Env = remote[m
[32m+[m[32m#exe_Env = local[m
[32m+[m[32mexe_Env = remote[m
 [m
 [m
 standaloneUrl = http://192.168.29.147:4444[m
[1mdiff --git a/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.properties b/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.properties[m
[1mindex ab8cd9d..84886c7 100644[m
[1m--- a/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.properties[m
[1m+++ b/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.properties[m
[36m@@ -1,5 +1,5 @@[m
 #Generated by Maven Integration for Eclipse[m
[31m-#Thu Jun 11 18:46:21 IST 2026[m
[32m+[m[32m#Sun Jun 14 10:23:41 IST 2026[m
 artifactId=OpencartV121[m
 groupId=OpencartV121[m
 m2e.projectLocation=D\:\\Yasar\\YASAR\\Projects\\eclipse-workspace\\OpencartV121[m
[1mdiff --git a/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.xml b/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.xml[m
[1mindex 60f3950..0035615 100644[m
[1m--- a/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.xml[m
[1m+++ b/target/classes/META-INF/maven/OpencartV121/OpencartV121/pom.xml[m
[36m@@ -22,25 +22,23 @@[m
     </properties>[m
 [m
 	<build>[m
[31m-	    <pluginManagement>[m
[31m-	     	<plugins>[m
[31m-	        	<plugin>[m
[31m-	          		<groupId>org.apache.maven.plugins</groupId>[m
[31m-	          		<artifactId>maven-compiler-plugin</artifactId>[m
[31m-	          		<version>3.15.0</version>[m
[31m-	        	</plugin>[m
[31m-      			<plugin>[m
[31m-        			<groupId>org.apache.maven.plugins</groupId>[m
[31m-          			<artifactId>maven-surefire-plugin</artifactId>[m
[31m-          			<version>3.6.0-M1</version>[m
[31m-          			<configuration>[m
[31m-          				<suiteXmlFiles>[m
[31m-          					<suiteXmlFile>master.xml</suiteXmlFile>[m
[31m-          				</suiteXmlFiles>[m
[31m-          			</configuration>[m
[31m-      			</plugin>[m
[31m-	    	</plugins>[m
[31m-	    </pluginManagement>[m
[32m+[m[41m     [m	[32m<plugins>[m
[32m+[m[41m        [m	[32m<plugin>[m
[32m+[m[41m          [m		[32m<groupId>org.apache.maven.plugins</groupId>[m
[32m+[m[41m          [m		[32m<artifactId>maven-compiler-plugin</artifactId>[m
[32m+[m[41m          [m		[32m<version>3.15.0</version>[m
[32m+[m[41m        [m	[32m</plugin>[m
[32m+[m[41m  [m			[32m<plugin>[m
[32m+[m[41m    [m			[32m<groupId>org.apache.maven.plugins</groupId>[m
[32m+[m[41m      [m			[32m<artifactId>maven-surefire-plugin</artifactId>[m
[32m+[m[41m      [m			[32m<version>3.6.0-M1</version>[m
[32m+[m[41m      [m			[32m<configuration>[m
[32m+[m[41m      [m				[32m<suiteXmlFiles>[m
[32m+[m[41m      [m					[32m<suiteXmlFile>master.xml</suiteXmlFile>[m
[32m+[m[41m      [m				[32m</suiteXmlFiles>[m
[32m+[m[41m      [m			[32m</configuration>[m
[32m+[m[41m  [m			[32m</plugin>[m
[32m+[m[41m    [m	[32m</plugins>[m
   </build>[m
 	[m
     <dependencies>[m
[1mdiff --git a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/native-image.properties b/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/native-image.properties[m
[1mdeleted file mode 100644[m
[1mindex 0e42cc5..0000000[m
[1m--- a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/native-image.properties[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-Args=--allow-incomplete-classpath \[m
[31m-    --report-unsupported-elements-at-runtime \[m
[31m-    --no-fallback \[m
[31m-    -Dfile.encoding=UTF-8[m
\ No newline at end of file[m
[1mdiff --git a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/reflect-config.json b/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/reflect-config.json[m
[1mdeleted file mode 100644[m
[1mindex 32960f8..0000000[m
[1m--- a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/reflect-config.json[m
[1m+++ /dev/null[m
[36m@@ -1,2 +0,0 @@[m
[31m-[[m
[31m-][m
\ No newline at end of file[m
[1mdiff --git a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/resource-config.json b/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/resource-config.json[m
[1mdeleted file mode 100644[m
[1mindex 6ce2641..0000000[m
[1m--- a/target/classes/META-INF/native-image/OpencartV121.OpencartV121/OpencartV121/resource-config.json[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-{[m
[31m-  "resources": [[m
[31m-  ][m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/target/classes/OpencartV121/OpencartV121/App.class b/target/classes/OpencartV121/OpencartV121/App.class[m
[1mdeleted file mode 100644[m
[1mindex 35dda40..0000000[m
Binary files a/target/classes/OpencartV121/OpencartV121/App.class and /dev/null differ
[1mdiff --git a/target/maven-status/maven-compiler-plugin/testCompile/default-testCompile/createdFiles.lst b/target/maven-status/maven-compiler-plugin/testCompile/default-testCompile/createdFiles.lst[m
[1mindex e69de29..7d2a896 100644[m
[1m--- a/target/maven-status/maven-compiler-plugin/testCompile/default-testCompile/createdFiles.lst[m
[1m+++ b/target/maven-status/maven-compiler-plugin/testCompile/default-testCompile/createdFiles.lst[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mutilities\BaseUtility.class[m
[32m+[m[32mpageObjects\HomePage.class[m
[32m+[m[32mutilities\ExtentReportUtility.class[m
[32m+[m[32mutilities\ExcelUtility.class[m
[32m+[m[32mtestBase\BaseClass.class[m
[32m+[m[32mpageObjects\AccountRegistrationPage.class[m
[32m+[m[32mpageObjects\Dashboard.class[m
[32m+[m[32mtestCases\TC002_LoginTest.class[m
[32m+[m[32mtestCases\TC000_LoginDDTJson.class[m
[32m+[m[32mtestCases\TC001_AccountRegistrationTest.class[m
[32m+[m[32mutilities\JsonDataProvider.class[m
[32m+[m[32mpageObjects\LoginPage.class[m
[32m+[m[32mpageObjects\BasePage.class[m
[32m+[m[32mtestCases\TC003_LoginDDT.class[m
[32m+[m[32mutilities\ExcelDataProviders.class[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-36-42_540.dumpstream b/target/surefire-reports/2026-06-11T16-36-42_540.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex c559948..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-36-42_540.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:36:45.111[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-37-26_091.dumpstream b/target/surefire-reports/2026-06-11T16-37-26_091.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex de78e54..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-37-26_091.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:37:26.307[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-41-56_070.dumpstream b/target/surefire-reports/2026-06-11T16-41-56_070.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex e7d7eb2..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-41-56_070.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:41:56.303[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-46-09_496.dumpstream b/target/surefire-reports/2026-06-11T16-46-09_496.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex 917698a..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-46-09_496.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:46:09.723[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-48-19_986.dumpstream b/target/surefire-reports/2026-06-11T16-48-19_986.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex bb8dca9..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-48-19_986.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:48:20.210[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T16-50-16_968.dumpstream b/target/surefire-reports/2026-06-11T16-50-16_968.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex e2e40d4..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T16-50-16_968.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T16:50:17.243[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T17-55-27_547.dumpstream b/target/surefire-reports/2026-06-11T17-55-27_547.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex 71b1227..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T17-55-27_547.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T17:55:27.808[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T18-02-12_662.dumpstream b/target/surefire-reports/2026-06-11T18-02-12_662.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex 71c5b6f..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T18-02-12_662.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T18:02:12.910[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T18-03-19_747.dumpstream b/target/surefire-reports/2026-06-11T18-03-19_747.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex 76335d3..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T18-03-19_747.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T18:03:19.970[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/2026-06-11T18-07-43_886.dumpstream b/target/surefire-reports/2026-06-11T18-07-43_886.dumpstream[m
[1mdeleted file mode 100644[m
[1mindex 9fcbf65..0000000[m
[1m--- a/target/surefire-reports/2026-06-11T18-07-43_886.dumpstream[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-# Created at 2026-06-11T18:07:44.130[m
[31m-Boot Manifest-JAR contains absolute paths in classpath 'D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes'[m
[31m-Hint: <argLine>-Djdk.net.URLClassPath.disableClassPathURLCheck=true</argLine>[m
[31m-'other' has different root[m
[31m-[m
[1mdiff --git a/target/surefire-reports/TEST-testCases.TC001_AccountRegistrationTest.xml b/target/surefire-reports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[1mindex ab6ed2e..7b76566 100644[m
[1m--- a/target/surefire-reports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[1m+++ b/target/surefire-reports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[36m@@ -1,21 +1,22 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
[31m-<testsuite xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://maven.apache.org/surefire/maven-surefire-plugin/xsd/surefire-test-report.xsd" version="3.0.2" name="testCases.TC001_AccountRegistrationTest" time="7.315" tests="1" errors="0" skipped="0" failures="0" flakes="0">[m
[32m+[m[32m<testsuite xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://maven.apache.org/surefire/maven-surefire-plugin/xsd/surefire-test-report.xsd" version="3.0.2" name="testCases.TC001_AccountRegistrationTest" time="5.997" tests="1" errors="0" skipped="0" failures="0" flakes="0">[m
   <properties>[m
     <property name="java.specification.version" value="25"/>[m
     <property name="sun.cpu.isalist" value="amd64"/>[m
     <property name="sun.jnu.encoding" value="Cp1252"/>[m
[32m+[m[32m    <property name="sun.awt.enableExtraMouseButtons" value="true"/>[m
     <property name="java.class.path" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes;D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\classes;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-java\4.34.0\selenium-java-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-api\4.34.0\selenium-api-4.34.0.jar;C:\Users\muham\.m2\repository\org\jspecify\jspecify\1.0.0\jspecify-1.0.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chrome-driver\4.34.0\selenium-chrome-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\auto\service\auto-service-annotations\1.1.1\auto-service-annotations-1.1.1.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chromium-driver\4.34.0\selenium-chromium-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-json\4.34.0\selenium-json-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-manager\4.34.0\selenium-manager-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v136\4.34.0\selenium-devtools-v136-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v137\4.34.0\selenium-devtools-v137-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v138\4.34.0\selenium-devtools-v138-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-edge-driver\4.34.0\selenium-edge-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-firefox-driver\4.34.0\selenium-firefox-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-http\4.34.0\selenium-http-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-ie-driver\4.34.0\selenium-ie-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-remote-driver\4.34.0\selenium-remote-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\guava\guava\33.4.8-jre\guava-33.4.8-jre.jar;C:\Users\muham\.m2\repository\com\google\guava\failureaccess\1.0.3\failureaccess-1.0.3.jar;C:\Users\muham\.m2\repository\com\google\guava\listenablefuture\9999.0-empty-to-avoid-conflict-with-guava\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;C:\Users\muham\.m2\repository\com\google\errorprone\error_prone_annotations\2.36.0\error_prone_annotations-2.36.0.jar;C:\Users\muham\.m2\repository\com\google\j2objc\j2objc-annotations\3.0.0\j2objc-annotations-3.0.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-api\1.51.0\opentelemetry-api-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-context\1.51.0\opentelemetry-context-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-exporter-logging\1.51.0\opentelemetry-exporter-logging-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-common\1.51.0\opentelemetry-sdk-common-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure-spi\1.51.0\opentelemetry-sdk-extension-autoconfigure-spi-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure\1.51.0\opentelemetry-sdk-extension-autoconfigure-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-trace\1.51.0\opentelemetry-sdk-trace-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk\1.51.0\opentelemetry-sdk-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-metrics\1.51.0\opentelemetry-sdk-metrics-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-logs\1.51.0\opentelemetry-sdk-logs-1.51.0.jar;C:\Users\muham\.m2\repository\net\bytebuddy\byte-buddy\1.17.6\byte-buddy-1.17.6.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-os\4.34.0\selenium-os-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-exec\1.5.0\commons-exec-1.5.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-safari-driver\4.34.0\selenium-safari-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-support\4.34.0\selenium-support-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi\5.4.1\poi-5.4.1.jar;C:\Users\muham\.m2\repository\commons-codec\commons-codec\1.18.0\commons-codec-1.18.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-collections4\4.4\commons-collections4-4.4.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-math3\3.6.1\commons-math3-3.6.1.jar;C:\Users\muham\.m2\repository\commons-io\commons-io\2.18.0\commons-io-2.18.0.jar;C:\Users\muham\.m2\repository\com\zaxxer\SparseBitSet\1.3\SparseBitSet-1.3.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml\5.4.1\poi-ooxml-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml-lite\5.4.1\poi-ooxml-lite-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\xmlbeans\xmlbeans\5.3.0\xmlbeans-5.3.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-compress\1.27.1\commons-compress-1.27.1.jar;C:\Users\muham\.m2\repository\com\github\virtuald\curvesapi\1.08\curvesapi-1.08.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-email\1.6.0\commons-email-1.6.0.jar;C:\Users\muham\.m2\repository\com\sun\mail\jakarta.mail\1.6.7\jakarta.mail-1.6.7.jar;C:\Users\muham\.m2\repository\com\sun\activation\jakarta.activation\1.2.1\jakarta.activation-1.2.1.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-core\2.26.0\log4j-core-2.26.0.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-api\2.25.4\log4j-api-2.25.4.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-slf4j-impl\2.23.1\log4j-slf4j-impl-2.23.1.jar;C:\Users\muham\.m2\repository\org\slf4j\slf4j-api\1.7.36\slf4j-api-1.7.36.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-lang3\3.20.0\commons-lang3-3.20.0.jar;C:\Users\muham\.m2\repository\org\testng\testng\7.12.0\testng-7.12.0.jar;C:\Users\muham\.m2\repository\org\jcommander\jcommander\1.83\jcommander-1.83.jar;C:\Users\muham\.m2\repository\org\webjars\jquery\3.7.1\jquery-3.7.1.jar;C:\Users\muham\.m2\repository\com\aventstack\extentreports\5.1.2\extentreports-5.1.2.jar;C:\Users\muham\.m2\repository\io\reactivex\rxjava3\rxjava\3.1.6\rxjava-3.1.6.jar;C:\Users\muham\.m2\repository\org\reactivestreams\reactive-streams\1.0.4\reactive-streams-1.0.4.jar;C:\Users\muham\.m2\repository\org\freemarker\freemarker\2.3.32\freemarker-2.3.32.jar;C:\Users\muham\.m2\repository\org\projectlombok\lombok\1.18.26\lombok-1.18.26.jar;C:\Users\muham\.m2\repository\com\google\code\gson\gson\2.10.1\gson-2.10.1.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-databind\2.20.0\jackson-databind-2.20.0.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-annotations\2.20\jackson-annotations-2.20.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-core\2.20.0\jackson-core-2.20.0.jar;C:\Users\muham\.m2\repository\org\json\json\20250517\json-20250517.jar"/>[m
[31m-    <property name="java.vm.vendor" value="Oracle Corporation"/>[m
[32m+[m[32m    <property name="java.vm.vendor" value="Eclipse Adoptium"/>[m
     <property name="sun.arch.data.model" value="64"/>[m
     <property name="user.variant" value=""/>[m
[31m-    <property name="java.vendor.url" value="https://java.oracle.com/"/>[m
[32m+[m[32m    <property name="java.vendor.url" value="https://adoptium.net/"/>[m
     <property name="user.timezone" value="Asia/Calcutta"/>[m
     <property name="os.name" value="Windows 11"/>[m
     <property name="java.vm.specification.version" value="25"/>[m
     <property name="sun.java.launcher" value="SUN_STANDARD"/>[m
     <property name="user.country" value="IN"/>[m
[31m-    <property name="sun.boot.library.path" value="C:\Program Files\Java\jdk-25.0.2\bin"/>[m
[31m-    <property name="sun.java.command" value="C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121\surefirebooter-20260611180744073_3.jar C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121 2026-06-11T18-07-43_886-jvmRun1 surefire-20260611180744073_1tmp surefire_0-20260611180744073_2tmp"/>[m
[32m+[m[32m    <property name="sun.boot.library.path" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre\bin"/>[m
[32m+[m[32m    <property name="sun.java.command" value="C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464\surefirebooter-20260613121832783_3.jar C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464 2026-06-13T12-18-32_596-jvmRun1 surefire-20260613121832783_1tmp surefire_0-20260613121832783_2tmp"/>[m
     <property name="jdk.debug" value="release"/>[m
     <property name="surefire.test.class.path" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes;D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\classes;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-java\4.34.0\selenium-java-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-api\4.34.0\selenium-api-4.34.0.jar;C:\Users\muham\.m2\repository\org\jspecify\jspecify\1.0.0\jspecify-1.0.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chrome-driver\4.34.0\selenium-chrome-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\auto\service\auto-service-annotations\1.1.1\auto-service-annotations-1.1.1.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chromium-driver\4.34.0\selenium-chromium-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-json\4.34.0\selenium-json-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-manager\4.34.0\selenium-manager-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v136\4.34.0\selenium-devtools-v136-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v137\4.34.0\selenium-devtools-v137-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v138\4.34.0\selenium-devtools-v138-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-edge-driver\4.34.0\selenium-edge-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-firefox-driver\4.34.0\selenium-firefox-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-http\4.34.0\selenium-http-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-ie-driver\4.34.0\selenium-ie-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-remote-driver\4.34.0\selenium-remote-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\guava\guava\33.4.8-jre\guava-33.4.8-jre.jar;C:\Users\muham\.m2\repository\com\google\guava\failureaccess\1.0.3\failureaccess-1.0.3.jar;C:\Users\muham\.m2\repository\com\google\guava\listenablefuture\9999.0-empty-to-avoid-conflict-with-guava\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;C:\Users\muham\.m2\repository\com\google\errorprone\error_prone_annotations\2.36.0\error_prone_annotations-2.36.0.jar;C:\Users\muham\.m2\repository\com\google\j2objc\j2objc-annotations\3.0.0\j2objc-annotations-3.0.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-api\1.51.0\opentelemetry-api-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-context\1.51.0\opentelemetry-context-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-exporter-logging\1.51.0\opentelemetry-exporter-logging-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-common\1.51.0\opentelemetry-sdk-common-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure-spi\1.51.0\opentelemetry-sdk-extension-autoconfigure-spi-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure\1.51.0\opentelemetry-sdk-extension-autoconfigure-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-trace\1.51.0\opentelemetry-sdk-trace-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk\1.51.0\opentelemetry-sdk-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-metrics\1.51.0\opentelemetry-sdk-metrics-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-logs\1.51.0\opentelemetry-sdk-logs-1.51.0.jar;C:\Users\muham\.m2\repository\net\bytebuddy\byte-buddy\1.17.6\byte-buddy-1.17.6.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-os\4.34.0\selenium-os-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-exec\1.5.0\commons-exec-1.5.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-safari-driver\4.34.0\selenium-safari-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-support\4.34.0\selenium-support-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi\5.4.1\poi-5.4.1.jar;C:\Users\muham\.m2\repository\commons-codec\commons-codec\1.18.0\commons-codec-1.18.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-collections4\4.4\commons-collections4-4.4.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-math3\3.6.1\commons-math3-3.6.1.jar;C:\Users\muham\.m2\repository\commons-io\commons-io\2.18.0\commons-io-2.18.0.jar;C:\Users\muham\.m2\repository\com\zaxxer\SparseBitSet\1.3\SparseBitSet-1.3.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml\5.4.1\poi-ooxml-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml-lite\5.4.1\poi-ooxml-lite-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\xmlbeans\xmlbeans\5.3.0\xmlbeans-5.3.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-compress\1.27.1\commons-compress-1.27.1.jar;C:\Users\muham\.m2\repository\com\github\virtuald\curvesapi\1.08\curvesapi-1.08.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-email\1.6.0\commons-email-1.6.0.jar;C:\Users\muham\.m2\repository\com\sun\mail\jakarta.mail\1.6.7\jakarta.mail-1.6.7.jar;C:\Users\muham\.m2\repository\com\sun\activation\jakarta.activation\1.2.1\jakarta.activation-1.2.1.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-core\2.26.0\log4j-core-2.26.0.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-api\2.25.4\log4j-api-2.25.4.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-slf4j-impl\2.23.1\log4j-slf4j-impl-2.23.1.jar;C:\Users\muham\.m2\repository\org\slf4j\slf4j-api\1.7.36\slf4j-api-1.7.36.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-lang3\3.20.0\commons-lang3-3.20.0.jar;C:\Users\muham\.m2\repository\org\testng\testng\7.12.0\testng-7.12.0.jar;C:\Users\muham\.m2\repository\org\jcommander\jcommander\1.83\jcommander-1.83.jar;C:\Users\muham\.m2\repository\org\webjars\jquery\3.7.1\jquery-3.7.1.jar;C:\Users\muham\.m2\repository\com\aventstack\extentreports\5.1.2\extentreports-5.1.2.jar;C:\Users\muham\.m2\repository\io\reactivex\rxjava3\rxjava\3.1.6\rxjava-3.1.6.jar;C:\Users\muham\.m2\repository\org\reactivestreams\reactive-streams\1.0.4\reactive-streams-1.0.4.jar;C:\Users\muham\.m2\repository\org\freemarker\freemarker\2.3.32\freemarker-2.3.32.jar;C:\Users\muham\.m2\repository\org\projectlombok\lombok\1.18.26\lombok-1.18.26.jar;C:\Users\muham\.m2\repository\com\google\code\gson\gson\2.10.1\gson-2.10.1.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-databind\2.20.0\jackson-databind-2.20.0.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-annotations\2.20\jackson-annotations-2.20.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-core\2.20.0\jackson-core-2.20.0.jar;C:\Users\muham\.m2\repository\org\json\json\20250517\json-20250517.jar"/>[m
     <property name="sun.cpu.endian" value="little"/>[m
[36m@@ -23,26 +24,31 @@[m
     <property name="user.language" value="en"/>[m
     <property name="java.specification.vendor" value="Oracle Corporation"/>[m
     <property name="java.version.date" value="2026-01-20"/>[m
[31m-    <property name="java.home" value="C:\Program Files\Java\jdk-25.0.2"/>[m
[32m+[m[32m    <property name="java.home" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre"/>[m
     <property name="file.separator" value="\"/>[m
     <property name="basedir" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121"/>[m
[32m+[m[32m    <property name="style.color" value="always"/>[m
     <property name="java.vm.compressedOopsMode" value="32-bit"/>[m
     <property name="line.separator" value="&#10;"/>[m
     <property name="java.vm.specification.vendor" value="Oracle Corporation"/>[m
     <property name="java.specification.name" value="Java Platform API Specification"/>[m
[31m-    <property name="surefire.real.class.path" value="C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121\surefirebooter-20260611180744073_3.jar"/>[m
[32m+[m[32m    <property name="surefire.real.class.path" value="C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464\surefirebooter-20260613121832783_3.jar"/>[m
     <property name="user.script" value=""/>[m
     <property name="sun.management.compiler" value="HotSpot 64-Bit Tiered Compilers"/>[m
[31m-    <property name="java.runtime.version" value="25.0.2+10-LTS-69"/>[m
[32m+[m[32m    <property name="java.runtime.version" value="25.0.2+10-LTS"/>[m
     <property name="user.name" value="muham"/>[m
     <property name="stdout.encoding" value="Cp1252"/>[m
     <property name="path.separator" value=";"/>[m
[32m+[m[32m    <property name="otel.metrics.exporter" value="none"/>[m
     <property name="os.version" value="10.0"/>[m
[31m-    <property name="java.runtime.name" value="Java(TM) SE Runtime Environment"/>[m
[32m+[m[32m    <property name="java.runtime.name" value="OpenJDK Runtime Environment"/>[m
[32m+[m[32m    <property name="otel.traces.exporter" value="none"/>[m
     <property name="file.encoding" value="UTF-8"/>[m
[31m-    <property name="java.vm.name" value="Java HotSpot(TM) 64-Bit Server VM"/>[m
[32m+[m[32m    <property name="java.vm.name" value="OpenJDK 64-Bit Server VM"/>[m
[32m+[m[32m    <property name="java.vendor.version" value="Temurin-25.0.2+10"/>[m
     <property name="localRepository" value="C:\Users\muham\.m2\repository"/>[m
[31m-    <property name="java.vendor.url.bug" value="https://bugreport.java.com/bugreport/"/>[m
[32m+[m[32m    <property name="java.vendor.url.bug" value="https://github.com/adoptium/adoptium-support/issues"/>[m
[32m+[m[32m    <property name="otel.logs.exporter" value="none"/>[m
     <property name="java.io.tmpdir" value="C:\Users\muham\AppData\Local\Temp\"/>[m
     <property name="java.version" value="25.0.2"/>[m
     <property name="user.dir" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121"/>[m
[36m@@ -50,20 +56,14 @@[m
     <property name="java.vm.specification.name" value="Java Virtual Machine Specification"/>[m
     <property name="sun.os.patch.level" value=""/>[m
     <property name="native.encoding" value="Cp1252"/>[m
[31m-    <property name="java.library.path" value="C:\Program Files\Java\jdk-25.0.2\bin;C:\WINDOWS\Sun\Java\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\Python314\Scripts\;C:\Python314\;C:\Program Files\Common Files\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Java\jdk-25.0.2\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Program Files\nodejs\;C:\ProgramData\chocolatey\bin;C:\Program Files\nodejs\node_modules\npm\bin;C:\Program Files\Git\cmd;C:\Program Files\Git\bin;C:\Program Files\Docker\Docker\resources\bin;C:\apache-maven-3.9.16\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\muham\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\muham\AppData\Local\Programs\Python\Python313\;C:\Users\muham\AppData\Local\Microsoft\WindowsApps;C:\Users\muham\AppData\Local\Programs\Antigravity\bin;C:\Users\muham\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\muham\AppData\Local\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe;C:\Users\muham\AppData\Roaming\npm;C:\Users\muham\AppData\Local\Programs\Antigravity IDE\bin;."/>[m
[32m+[m[32m    <property name="java.library.path" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre\bin;C:\WINDOWS\Sun\Java\bin;C:\WINDOWS\system32;C:\WINDOWS;C:/Users/muham/.p2/pool/plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_21.0.10.v20260205-0638/jre/bin/server;C:/Users/muham/.p2/pool/plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_21.0.10.v20260205-0638/jre/bin;C:\Python314\Scripts\;C:\Python314\;C:\Program Files\Common Files\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Java\jdk-25.0.2\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Program Files\nodejs\;C:\ProgramData\chocolatey\bin;C:\Program Files\nodejs\node_modules\npm\bin;C:\Program Files\Git\cmd;C:\Program Files\Git\bin;C:\Program Files\Docker\Docker\resources\bin;C:\apache-maven-3.9.16\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\muham\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\muham\AppData\Local\Programs\Python\Python313\;C:\Users\muham\AppData\Local\Microsoft\WindowsApps;C:\Users\muham\AppData\Local\Programs\Antigravity\bin;C:\Users\muham\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\muham\AppData\Local\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe;C:\Users\muham\AppData\Roaming\npm;C:\Users\muham\AppData\Local\Programs\Antigravity IDE\bin;C:\Users\muham\AppData\Local\GitHubDesktop\bin;C:\Users\muham\eclipse\java-2026-03\eclipse;;."/>[m
     <property name="java.vm.info" value="mixed mode, sharing"/>[m
     <property name="stderr.encoding" value="Cp1252"/>[m
[31m-    <property name="java.vendor" value="Oracle Corporation"/>[m
[31m-    <property name="java.vm.version" value="25.0.2+10-LTS-69"/>[m
[32m+[m[32m    <property name="java.vendor" value="Eclipse Adoptium"/>[m
[32m+[m[32m    <property name="java.vm.version" value="25.0.2+10-LTS"/>[m
     <property name="stdin.encoding" value="Cp1252"/>[m
     <property name="sun.io.unicode.encoding" value="UnicodeLittle"/>[m
     <property name="java.class.version" value="69.0"/>[m
   </properties>[m
[31m-  <testcase name="verifyAccountRegistration" classname="testCases.TC001_AccountRegistrationTest" time="3.701">[m
[31m-    <system-err><![CDATA[Jun 11, 2026 6:07:47 PM org.openqa.selenium.devtools.CdpVersionFinder findNearestMatch[m
[31m-WARNING: Unable to find CDP implementation matching 149[m
[31m-Jun 11, 2026 6:07:47 PM org.openqa.selenium.chromium.ChromiumDriver lambda$new$4[m
[31m-WARNING: Unable to find version of CDP to use for 149.0.7827.55. You may need to include a dependency on a specific version of the CDP using something similar to `org.seleniumhq.selenium:selenium-devtools-v86:4.34.0` where the version ("v86") matches the version of the chromium-based browser you're using and the version number of the artifact is the same as Selenium's.[m
[31m-]]></system-err>[m
[31m-  </testcase>[m
[32m+[m[32m  <testcase name="verifyAccountRegistration" classname="testCases.TC001_AccountRegistrationTest" time="3.424"/>[m
 </testsuite>[m
\ No newline at end of file[m
[1mdiff --git a/target/surefire-reports/TEST-testCases.TC002_LoginTest.xml b/target/surefire-reports/TEST-testCases.TC002_LoginTest.xml[m
[1mindex 9b6465c..25608ca 100644[m
[1m--- a/target/surefire-reports/TEST-testCases.TC002_LoginTest.xml[m
[1m+++ b/target/surefire-reports/TEST-testCases.TC002_LoginTest.xml[m
[36m@@ -1,21 +1,22 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
[31m-<testsuite xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://maven.apache.org/surefire/maven-surefire-plugin/xsd/surefire-test-report.xsd" version="3.0.2" name="testCases.TC002_LoginTest" time="5.02" tests="1" errors="0" skipped="0" failures="0" flakes="0">[m
[32m+[m[32m<testsuite xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="https://maven.apache.org/surefire/maven-surefire-plugin/xsd/surefire-test-report.xsd" version="3.0.2" name="testCases.TC002_LoginTest" time="7.726" tests="1" errors="0" skipped="0" failures="0" flakes="0">[m
   <properties>[m
     <property name="java.specification.version" value="25"/>[m
     <property name="sun.cpu.isalist" value="amd64"/>[m
     <property name="sun.jnu.encoding" value="Cp1252"/>[m
[32m+[m[32m    <property name="sun.awt.enableExtraMouseButtons" value="true"/>[m
     <property name="java.class.path" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes;D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\classes;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-java\4.34.0\selenium-java-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-api\4.34.0\selenium-api-4.34.0.jar;C:\Users\muham\.m2\repository\org\jspecify\jspecify\1.0.0\jspecify-1.0.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chrome-driver\4.34.0\selenium-chrome-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\auto\service\auto-service-annotations\1.1.1\auto-service-annotations-1.1.1.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chromium-driver\4.34.0\selenium-chromium-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-json\4.34.0\selenium-json-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-manager\4.34.0\selenium-manager-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v136\4.34.0\selenium-devtools-v136-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v137\4.34.0\selenium-devtools-v137-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v138\4.34.0\selenium-devtools-v138-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-edge-driver\4.34.0\selenium-edge-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-firefox-driver\4.34.0\selenium-firefox-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-http\4.34.0\selenium-http-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-ie-driver\4.34.0\selenium-ie-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-remote-driver\4.34.0\selenium-remote-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\guava\guava\33.4.8-jre\guava-33.4.8-jre.jar;C:\Users\muham\.m2\repository\com\google\guava\failureaccess\1.0.3\failureaccess-1.0.3.jar;C:\Users\muham\.m2\repository\com\google\guava\listenablefuture\9999.0-empty-to-avoid-conflict-with-guava\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;C:\Users\muham\.m2\repository\com\google\errorprone\error_prone_annotations\2.36.0\error_prone_annotations-2.36.0.jar;C:\Users\muham\.m2\repository\com\google\j2objc\j2objc-annotations\3.0.0\j2objc-annotations-3.0.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-api\1.51.0\opentelemetry-api-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-context\1.51.0\opentelemetry-context-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-exporter-logging\1.51.0\opentelemetry-exporter-logging-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-common\1.51.0\opentelemetry-sdk-common-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure-spi\1.51.0\opentelemetry-sdk-extension-autoconfigure-spi-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure\1.51.0\opentelemetry-sdk-extension-autoconfigure-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-trace\1.51.0\opentelemetry-sdk-trace-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk\1.51.0\opentelemetry-sdk-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-metrics\1.51.0\opentelemetry-sdk-metrics-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-logs\1.51.0\opentelemetry-sdk-logs-1.51.0.jar;C:\Users\muham\.m2\repository\net\bytebuddy\byte-buddy\1.17.6\byte-buddy-1.17.6.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-os\4.34.0\selenium-os-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-exec\1.5.0\commons-exec-1.5.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-safari-driver\4.34.0\selenium-safari-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-support\4.34.0\selenium-support-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi\5.4.1\poi-5.4.1.jar;C:\Users\muham\.m2\repository\commons-codec\commons-codec\1.18.0\commons-codec-1.18.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-collections4\4.4\commons-collections4-4.4.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-math3\3.6.1\commons-math3-3.6.1.jar;C:\Users\muham\.m2\repository\commons-io\commons-io\2.18.0\commons-io-2.18.0.jar;C:\Users\muham\.m2\repository\com\zaxxer\SparseBitSet\1.3\SparseBitSet-1.3.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml\5.4.1\poi-ooxml-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml-lite\5.4.1\poi-ooxml-lite-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\xmlbeans\xmlbeans\5.3.0\xmlbeans-5.3.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-compress\1.27.1\commons-compress-1.27.1.jar;C:\Users\muham\.m2\repository\com\github\virtuald\curvesapi\1.08\curvesapi-1.08.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-email\1.6.0\commons-email-1.6.0.jar;C:\Users\muham\.m2\repository\com\sun\mail\jakarta.mail\1.6.7\jakarta.mail-1.6.7.jar;C:\Users\muham\.m2\repository\com\sun\activation\jakarta.activation\1.2.1\jakarta.activation-1.2.1.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-core\2.26.0\log4j-core-2.26.0.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-api\2.25.4\log4j-api-2.25.4.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-slf4j-impl\2.23.1\log4j-slf4j-impl-2.23.1.jar;C:\Users\muham\.m2\repository\org\slf4j\slf4j-api\1.7.36\slf4j-api-1.7.36.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-lang3\3.20.0\commons-lang3-3.20.0.jar;C:\Users\muham\.m2\repository\org\testng\testng\7.12.0\testng-7.12.0.jar;C:\Users\muham\.m2\repository\org\jcommander\jcommander\1.83\jcommander-1.83.jar;C:\Users\muham\.m2\repository\org\webjars\jquery\3.7.1\jquery-3.7.1.jar;C:\Users\muham\.m2\repository\com\aventstack\extentreports\5.1.2\extentreports-5.1.2.jar;C:\Users\muham\.m2\repository\io\reactivex\rxjava3\rxjava\3.1.6\rxjava-3.1.6.jar;C:\Users\muham\.m2\repository\org\reactivestreams\reactive-streams\1.0.4\reactive-streams-1.0.4.jar;C:\Users\muham\.m2\repository\org\freemarker\freemarker\2.3.32\freemarker-2.3.32.jar;C:\Users\muham\.m2\repository\org\projectlombok\lombok\1.18.26\lombok-1.18.26.jar;C:\Users\muham\.m2\repository\com\google\code\gson\gson\2.10.1\gson-2.10.1.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-databind\2.20.0\jackson-databind-2.20.0.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-annotations\2.20\jackson-annotations-2.20.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-core\2.20.0\jackson-core-2.20.0.jar;C:\Users\muham\.m2\repository\org\json\json\20250517\json-20250517.jar"/>[m
[31m-    <property name="java.vm.vendor" value="Oracle Corporation"/>[m
[32m+[m[32m    <property name="java.vm.vendor" value="Eclipse Adoptium"/>[m
     <property name="sun.arch.data.model" value="64"/>[m
     <property name="user.variant" value=""/>[m
[31m-    <property name="java.vendor.url" value="https://java.oracle.com/"/>[m
[32m+[m[32m    <property name="java.vendor.url" value="https://adoptium.net/"/>[m
     <property name="user.timezone" value="Asia/Calcutta"/>[m
     <property name="os.name" value="Windows 11"/>[m
     <property name="java.vm.specification.version" value="25"/>[m
     <property name="sun.java.launcher" value="SUN_STANDARD"/>[m
     <property name="user.country" value="IN"/>[m
[31m-    <property name="sun.boot.library.path" value="C:\Program Files\Java\jdk-25.0.2\bin"/>[m
[31m-    <property name="sun.java.command" value="C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121\surefirebooter-20260611180744073_3.jar C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121 2026-06-11T18-07-43_886-jvmRun1 surefire-20260611180744073_1tmp surefire_0-20260611180744073_2tmp"/>[m
[32m+[m[32m    <property name="sun.boot.library.path" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre\bin"/>[m
[32m+[m[32m    <property name="sun.java.command" value="C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464\surefirebooter-20260613121832783_3.jar C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464 2026-06-13T12-18-32_596-jvmRun1 surefire-20260613121832783_1tmp surefire_0-20260613121832783_2tmp"/>[m
     <property name="jdk.debug" value="release"/>[m
     <property name="surefire.test.class.path" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\test-classes;D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\target\classes;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-java\4.34.0\selenium-java-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-api\4.34.0\selenium-api-4.34.0.jar;C:\Users\muham\.m2\repository\org\jspecify\jspecify\1.0.0\jspecify-1.0.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chrome-driver\4.34.0\selenium-chrome-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\auto\service\auto-service-annotations\1.1.1\auto-service-annotations-1.1.1.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-chromium-driver\4.34.0\selenium-chromium-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-json\4.34.0\selenium-json-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-manager\4.34.0\selenium-manager-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v136\4.34.0\selenium-devtools-v136-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v137\4.34.0\selenium-devtools-v137-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-devtools-v138\4.34.0\selenium-devtools-v138-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-edge-driver\4.34.0\selenium-edge-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-firefox-driver\4.34.0\selenium-firefox-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-http\4.34.0\selenium-http-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-ie-driver\4.34.0\selenium-ie-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-remote-driver\4.34.0\selenium-remote-driver-4.34.0.jar;C:\Users\muham\.m2\repository\com\google\guava\guava\33.4.8-jre\guava-33.4.8-jre.jar;C:\Users\muham\.m2\repository\com\google\guava\failureaccess\1.0.3\failureaccess-1.0.3.jar;C:\Users\muham\.m2\repository\com\google\guava\listenablefuture\9999.0-empty-to-avoid-conflict-with-guava\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;C:\Users\muham\.m2\repository\com\google\errorprone\error_prone_annotations\2.36.0\error_prone_annotations-2.36.0.jar;C:\Users\muham\.m2\repository\com\google\j2objc\j2objc-annotations\3.0.0\j2objc-annotations-3.0.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-api\1.51.0\opentelemetry-api-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-context\1.51.0\opentelemetry-context-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-exporter-logging\1.51.0\opentelemetry-exporter-logging-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-common\1.51.0\opentelemetry-sdk-common-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure-spi\1.51.0\opentelemetry-sdk-extension-autoconfigure-spi-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-extension-autoconfigure\1.51.0\opentelemetry-sdk-extension-autoconfigure-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-trace\1.51.0\opentelemetry-sdk-trace-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk\1.51.0\opentelemetry-sdk-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-metrics\1.51.0\opentelemetry-sdk-metrics-1.51.0.jar;C:\Users\muham\.m2\repository\io\opentelemetry\opentelemetry-sdk-logs\1.51.0\opentelemetry-sdk-logs-1.51.0.jar;C:\Users\muham\.m2\repository\net\bytebuddy\byte-buddy\1.17.6\byte-buddy-1.17.6.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-os\4.34.0\selenium-os-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-exec\1.5.0\commons-exec-1.5.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-safari-driver\4.34.0\selenium-safari-driver-4.34.0.jar;C:\Users\muham\.m2\repository\org\seleniumhq\selenium\selenium-support\4.34.0\selenium-support-4.34.0.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi\5.4.1\poi-5.4.1.jar;C:\Users\muham\.m2\repository\commons-codec\commons-codec\1.18.0\commons-codec-1.18.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-collections4\4.4\commons-collections4-4.4.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-math3\3.6.1\commons-math3-3.6.1.jar;C:\Users\muham\.m2\repository\commons-io\commons-io\2.18.0\commons-io-2.18.0.jar;C:\Users\muham\.m2\repository\com\zaxxer\SparseBitSet\1.3\SparseBitSet-1.3.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml\5.4.1\poi-ooxml-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\poi\poi-ooxml-lite\5.4.1\poi-ooxml-lite-5.4.1.jar;C:\Users\muham\.m2\repository\org\apache\xmlbeans\xmlbeans\5.3.0\xmlbeans-5.3.0.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-compress\1.27.1\commons-compress-1.27.1.jar;C:\Users\muham\.m2\repository\com\github\virtuald\curvesapi\1.08\curvesapi-1.08.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-email\1.6.0\commons-email-1.6.0.jar;C:\Users\muham\.m2\repository\com\sun\mail\jakarta.mail\1.6.7\jakarta.mail-1.6.7.jar;C:\Users\muham\.m2\repository\com\sun\activation\jakarta.activation\1.2.1\jakarta.activation-1.2.1.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-core\2.26.0\log4j-core-2.26.0.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-api\2.25.4\log4j-api-2.25.4.jar;C:\Users\muham\.m2\repository\org\apache\logging\log4j\log4j-slf4j-impl\2.23.1\log4j-slf4j-impl-2.23.1.jar;C:\Users\muham\.m2\repository\org\slf4j\slf4j-api\1.7.36\slf4j-api-1.7.36.jar;C:\Users\muham\.m2\repository\org\apache\commons\commons-lang3\3.20.0\commons-lang3-3.20.0.jar;C:\Users\muham\.m2\repository\org\testng\testng\7.12.0\testng-7.12.0.jar;C:\Users\muham\.m2\repository\org\jcommander\jcommander\1.83\jcommander-1.83.jar;C:\Users\muham\.m2\repository\org\webjars\jquery\3.7.1\jquery-3.7.1.jar;C:\Users\muham\.m2\repository\com\aventstack\extentreports\5.1.2\extentreports-5.1.2.jar;C:\Users\muham\.m2\repository\io\reactivex\rxjava3\rxjava\3.1.6\rxjava-3.1.6.jar;C:\Users\muham\.m2\repository\org\reactivestreams\reactive-streams\1.0.4\reactive-streams-1.0.4.jar;C:\Users\muham\.m2\repository\org\freemarker\freemarker\2.3.32\freemarker-2.3.32.jar;C:\Users\muham\.m2\repository\org\projectlombok\lombok\1.18.26\lombok-1.18.26.jar;C:\Users\muham\.m2\repository\com\google\code\gson\gson\2.10.1\gson-2.10.1.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-databind\2.20.0\jackson-databind-2.20.0.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-annotations\2.20\jackson-annotations-2.20.jar;C:\Users\muham\.m2\repository\com\fasterxml\jackson\core\jackson-core\2.20.0\jackson-core-2.20.0.jar;C:\Users\muham\.m2\repository\org\json\json\20250517\json-20250517.jar"/>[m
     <property name="sun.cpu.endian" value="little"/>[m
[36m@@ -23,26 +24,31 @@[m
     <property name="user.language" value="en"/>[m
     <property name="java.specification.vendor" value="Oracle Corporation"/>[m
     <property name="java.version.date" value="2026-01-20"/>[m
[31m-    <property name="java.home" value="C:\Program Files\Java\jdk-25.0.2"/>[m
[32m+[m[32m    <property name="java.home" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre"/>[m
     <property name="file.separator" value="\"/>[m
     <property name="basedir" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121"/>[m
[32m+[m[32m    <property name="style.color" value="always"/>[m
     <property name="java.vm.compressedOopsMode" value="32-bit"/>[m
     <property name="line.separator" value="&#10;"/>[m
     <property name="java.vm.specification.vendor" value="Oracle Corporation"/>[m
     <property name="java.specification.name" value="Java Platform API Specification"/>[m
[31m-    <property name="surefire.real.class.path" value="C:\Users\muham\AppData\Local\Temp\surefire18398768816626243121\surefirebooter-20260611180744073_3.jar"/>[m
[32m+[m[32m    <property name="surefire.real.class.path" value="C:\Users\muham\AppData\Local\Temp\surefire9272548986845279464\surefirebooter-20260613121832783_3.jar"/>[m
     <property name="user.script" value=""/>[m
     <property name="sun.management.compiler" value="HotSpot 64-Bit Tiered Compilers"/>[m
[31m-    <property name="java.runtime.version" value="25.0.2+10-LTS-69"/>[m
[32m+[m[32m    <property name="java.runtime.version" value="25.0.2+10-LTS"/>[m
     <property name="user.name" value="muham"/>[m
     <property name="stdout.encoding" value="Cp1252"/>[m
     <property name="path.separator" value=";"/>[m
[32m+[m[32m    <property name="otel.metrics.exporter" value="none"/>[m
     <property name="os.version" value="10.0"/>[m
[31m-    <property name="java.runtime.name" value="Java(TM) SE Runtime Environment"/>[m
[32m+[m[32m    <property name="java.runtime.name" value="OpenJDK Runtime Environment"/>[m
[32m+[m[32m    <property name="otel.traces.exporter" value="none"/>[m
     <property name="file.encoding" value="UTF-8"/>[m
[31m-    <property name="java.vm.name" value="Java HotSpot(TM) 64-Bit Server VM"/>[m
[32m+[m[32m    <property name="java.vm.name" value="OpenJDK 64-Bit Server VM"/>[m
[32m+[m[32m    <property name="java.vendor.version" value="Temurin-25.0.2+10"/>[m
     <property name="localRepository" value="C:\Users\muham\.m2\repository"/>[m
[31m-    <property name="java.vendor.url.bug" value="https://bugreport.java.com/bugreport/"/>[m
[32m+[m[32m    <property name="java.vendor.url.bug" value="https://github.com/adoptium/adoptium-support/issues"/>[m
[32m+[m[32m    <property name="otel.logs.exporter" value="none"/>[m
     <property name="java.io.tmpdir" value="C:\Users\muham\AppData\Local\Temp\"/>[m
     <property name="java.version" value="25.0.2"/>[m
     <property name="user.dir" value="D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121"/>[m
[36m@@ -50,20 +56,35 @@[m
     <property name="java.vm.specification.name" value="Java Virtual Machine Specification"/>[m
     <property name="sun.os.patch.level" value=""/>[m
     <property name="native.encoding" value="Cp1252"/>[m
[31m-    <property name="java.library.path" value="C:\Program Files\Java\jdk-25.0.2\bin;C:\WINDOWS\Sun\Java\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\Python314\Scripts\;C:\Python314\;C:\Program Files\Common Files\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Java\jdk-25.0.2\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Program Files\nodejs\;C:\ProgramData\chocolatey\bin;C:\Program Files\nodejs\node_modules\npm\bin;C:\Program Files\Git\cmd;C:\Program Files\Git\bin;C:\Program Files\Docker\Docker\resources\bin;C:\apache-maven-3.9.16\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\muham\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\muham\AppData\Local\Programs\Python\Python313\;C:\Users\muham\AppData\Local\Microsoft\WindowsApps;C:\Users\muham\AppData\Local\Programs\Antigravity\bin;C:\Users\muham\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\muham\AppData\Local\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe;C:\Users\muham\AppData\Roaming\npm;C:\Users\muham\AppData\Local\Programs\Antigravity IDE\bin;."/>[m
[32m+[m[32m    <property name="java.library.path" value="C:\Users\muham\.p2\pool\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_25.0.2.v20260203-1141\jre\bin;C:\WINDOWS\Sun\Java\bin;C:\WINDOWS\system32;C:\WINDOWS;C:/Users/muham/.p2/pool/plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_21.0.10.v20260205-0638/jre/bin/server;C:/Users/muham/.p2/pool/plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_21.0.10.v20260205-0638/jre/bin;C:\Python314\Scripts\;C:\Python314\;C:\Program Files\Common Files\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Java\jdk-25.0.2\bin;C:\Program Files\MySQL\MySQL Server 8.0\bin;C:\Program Files\nodejs\;C:\ProgramData\chocolatey\bin;C:\Program Files\nodejs\node_modules\npm\bin;C:\Program Files\Git\cmd;C:\Program Files\Git\bin;C:\Program Files\Docker\Docker\resources\bin;C:\apache-maven-3.9.16\bin;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\muham\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\muham\AppData\Local\Programs\Python\Python313\;C:\Users\muham\AppData\Local\Microsoft\WindowsApps;C:\Users\muham\AppData\Local\Programs\Antigravity\bin;C:\Users\muham\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\muham\AppData\Local\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe;C:\Users\muham\AppData\Roaming\npm;C:\Users\muham\AppData\Local\Programs\Antigravity IDE\bin;C:\Users\muham\AppData\Local\GitHubDesktop\bin;C:\Users\muham\eclipse\java-2026-03\eclipse;;."/>[m
     <property name="java.vm.info" value="mixed mode, sharing"/>[m
     <property name="stderr.encoding" value="Cp1252"/>[m
[31m-    <property name="java.vendor" value="Oracle Corporation"/>[m
[31m-    <property name="java.vm.version" value="25.0.2+10-LTS-69"/>[m
[32m+[m[32m    <property name="java.vendor" value="Eclipse Adoptium"/>[m
[32m+[m[32m    <property name="java.vm.version" value="25.0.2+10-LTS"/>[m
     <property name="stdin.encoding" value="Cp1252"/>[m
     <property name="sun.io.unicode.encoding" value="UnicodeLittle"/>[m
     <property name="java.class.version" value="69.0"/>[m
   </properties>[m
[31m-  <testcase name="verifyLoginTest" classname="testCases.TC002_LoginTest" time="2.704">[m
[31m-    <system-err><![CDATA[Jun 11, 2026 6:07:53 PM org.openqa.selenium.devtools.CdpVersionFinder findNearestMatch[m
[31m-WARNING: Unable to find CDP implementation matching 149[m
[31m-Jun 11, 2026 6:07:53 PM org.openqa.selenium.chromium.ChromiumDriver lambda$new$4[m
[31m-WARNING: Unable to find version of CDP to use for 149.0.7827.55. You may need to include a dependency on a specific version of the CDP using something similar to `org.seleniumhq.selenium:selenium-devtools-v86:4.34.0` where the version ("v86") matches the version of the chromium-based browser you're using and the version number of the artifact is the same as Selenium's.[m
[32m+[m[32m  <testcase name="verifyLoginTest" classname="testCases.TC002_LoginTest" time="3.15">[m
[32m+[m[32m    <system-out><![CDATA[********* on Test Sucess *********[m
[32m+[m[32m********* INSIDE onFinish() *********[m
[32m+[m[32mReport Path: D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121.\reports\TestReport - 2026.06.13.12.18.34.html[m
[32m+[m[32mReport Exists: true[m
[32m+[m[32mInside onFinish()[m
[32m+[m[32m********* on Test Sucess *********[m
[32m+[m[32m********* INSIDE onFinish() *********[m
[32m+[m[32mReport Path: D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121.\reports\TestReport - 2026.06.13.12.18.35.html[m
[32m+[m[32mReport Exists: true[m
[32m+[m[32mInside onFinish()[m
[32m+[m[32m********* on Test Sucess *********[m
[32m+[m[32m********* on Test Sucess *********[m
[32m+[m[32m********* INSIDE onFinish() *********[m
[32m+[m[32mReport Path: D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121.\reports\TestReport - 2026.06.13.12.18.35.html[m
[32m+[m[32mReport Exists: true[m
[32m+[m[32mInside onFinish()[m
[32m+[m[32m]]></system-out>[m
[32m+[m[32m    <system-err><![CDATA[Jun 13, 2026 12:18:35 PM org.openqa.selenium.remote.tracing.opentelemetry.OpenTelemetryTracer createTracer[m
[32m+[m[32mINFO: Using OpenTelemetry for tracing[m
 ]]></system-err>[m
   </testcase>[m
 </testsuite>[m
\ No newline at end of file[m
[1mdiff --git a/target/surefire-reports/testCases.TC001_AccountRegistrationTest.txt b/target/surefire-reports/testCases.TC001_AccountRegistrationTest.txt[m
[1mindex 76f17cb..b7b2c8d 100644[m
[1m--- a/target/surefire-reports/testCases.TC001_AccountRegistrationTest.txt[m
[1m+++ b/target/surefire-reports/testCases.TC001_AccountRegistrationTest.txt[m
[36m@@ -1,4 +1,4 @@[m
 -------------------------------------------------------------------------------[m
 Test set: testCases.TC001_AccountRegistrationTest[m
 -------------------------------------------------------------------------------[m
[31m-Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.315 s -- in testCases.TC001_AccountRegistrationTest[m
[32m+[m[32mTests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 5.997 s -- in testCases.TC001_AccountRegistrationTest[m
[1mdiff --git a/target/surefire-reports/testCases.TC002_LoginTest.txt b/target/surefire-reports/testCases.TC002_LoginTest.txt[m
[1mindex a79ffc1..d107c7f 100644[m
[1m--- a/target/surefire-reports/testCases.TC002_LoginTest.txt[m
[1m+++ b/target/surefire-reports/testCases.TC002_LoginTest.txt[m
[36m@@ -1,4 +1,4 @@[m
 -------------------------------------------------------------------------------[m
 Test set: testCases.TC002_LoginTest[m
 -------------------------------------------------------------------------------[m
[31m-Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 5.020 s -- in testCases.TC002_LoginTest[m
[32m+[m[32mTests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.726 s -- in testCases.TC002_LoginTest[m
[1mdiff --git a/target/test-classes/config.properties b/target/test-classes/config.properties[m
[1mindex b07e067..55c198f 100644[m
[1m--- a/target/test-classes/config.properties[m
[1m+++ b/target/test-classes/config.properties[m
[36m@@ -6,8 +6,8 @@[m [mpassword = Virat@123[m
 [m
 # selenium Grid properties[m
 [m
[31m-exe_Env = local[m
[31m-#exe_Env = remote[m
[32m+[m[32m#exe_Env = local[m
[32m+[m[32mexe_Env = remote[m
 [m
 [m
 standaloneUrl = http://192.168.29.147:4444[m
[1mdiff --git a/target/test-classes/pageObjects/AccountRegistrationPage.class b/target/test-classes/pageObjects/AccountRegistrationPage.class[m
[1mindex 2191af1..43a685c 100644[m
Binary files a/target/test-classes/pageObjects/AccountRegistrationPage.class and b/target/test-classes/pageObjects/AccountRegistrationPage.class differ
[1mdiff --git a/target/test-classes/pageObjects/BasePage.class b/target/test-classes/pageObjects/BasePage.class[m
[1mindex 61963b4..5181a33 100644[m
Binary files a/target/test-classes/pageObjects/BasePage.class and b/target/test-classes/pageObjects/BasePage.class differ
[1mdiff --git a/target/test-classes/pageObjects/Dashboard.class b/target/test-classes/pageObjects/Dashboard.class[m
[1mindex 5e0dfa5..2f9ba43 100644[m
Binary files a/target/test-classes/pageObjects/Dashboard.class and b/target/test-classes/pageObjects/Dashboard.class differ
[1mdiff --git a/target/test-classes/pageObjects/HomePage.class b/target/test-classes/pageObjects/HomePage.class[m
[1mindex d722acb..ea910c5 100644[m
Binary files a/target/test-classes/pageObjects/HomePage.class and b/target/test-classes/pageObjects/HomePage.class differ
[1mdiff --git a/target/test-classes/pageObjects/LoginPage.class b/target/test-classes/pageObjects/LoginPage.class[m
[1mindex 33a6fad..990af8c 100644[m
Binary files a/target/test-classes/pageObjects/LoginPage.class and b/target/test-classes/pageObjects/LoginPage.class differ
[1mdiff --git a/target/test-classes/testBase/BaseClass.class b/target/test-classes/testBase/BaseClass.class[m
[1mindex 5c991ef..f3e6cee 100644[m
Binary files a/target/test-classes/testBase/BaseClass.class and b/target/test-classes/testBase/BaseClass.class differ
[1mdiff --git a/target/test-classes/utilities/BaseUtility.class b/target/test-classes/utilities/BaseUtility.class[m
[1mindex 2464257..c9ebe8a 100644[m
Binary files a/target/test-classes/utilities/BaseUtility.class and b/target/test-classes/utilities/BaseUtility.class differ
[1mdiff --git a/target/test-classes/utilities/ExcelDataProviders.class b/target/test-classes/utilities/ExcelDataProviders.class[m
[1mindex e10c221..fbb63be 100644[m
Binary files a/target/test-classes/utilities/ExcelDataProviders.class and b/target/test-classes/utilities/ExcelDataProviders.class differ
[1mdiff --git a/target/test-classes/utilities/ExcelUtility.class b/target/test-classes/utilities/ExcelUtility.class[m
[1mindex 9fbe4cf..e2f2664 100644[m
Binary files a/target/test-classes/utilities/ExcelUtility.class and b/target/test-classes/utilities/ExcelUtility.class differ
[1mdiff --git a/target/test-classes/utilities/ExtentReportUtility.class b/target/test-classes/utilities/ExtentReportUtility.class[m
[1mindex 1c941d2..eb9853c 100644[m
Binary files a/target/test-classes/utilities/ExtentReportUtility.class and b/target/test-classes/utilities/ExtentReportUtility.class differ
[1mdiff --git a/target/test-classes/utilities/JsonDataProvider.class b/target/test-classes/utilities/JsonDataProvider.class[m
[1mindex d20e9a9..0c6dc40 100644[m
Binary files a/target/test-classes/utilities/JsonDataProvider.class and b/target/test-classes/utilities/JsonDataProvider.class differ
[1mdiff --git a/test-output/Suite/Linux-Chrome.html b/test-output/Suite/Linux-Chrome.html[m
[1mindex da05936..f13dfbf 100644[m
[1m--- a/test-output/Suite/Linux-Chrome.html[m
[1m+++ b/test-output/Suite/Linux-Chrome.html[m
[36m@@ -55,11 +55,11 @@[m [mfunction toggleAllBoxes() {[m
 <body>[m
 <h2 align='center'>Linux-Chrome</h2><table border='1' align="center">[m
 <tr>[m
[31m-<td>Tests passed/Failed/Skipped:</td><td>2/0/0</td>[m
[32m+[m[32m<td>Tests passed/Failed/Skipped:</td><td>1/1/0</td>[m
 </tr><tr>[m
[31m-<td>Started on:</td><td>Thu Jun 11 16:08:05 IST 2026</td>[m
[32m+[m[32m<td>Started on:</td><td>Sat Jun 13 11:53:18 IST 2026</td>[m
 </tr>[m
[31m-<tr><td>Total time:</td><td>18 seconds (18643 ms)</td>[m
[32m+[m[32m<tr><td>Total time:</td><td>226 seconds (226772 ms)</td>[m
 </tr><tr>[m
 <td>Included groups:</td><td></td>[m
 </tr><tr>[m
[36m@@ -67,8 +67,86 @@[m [mfunction toggleAllBoxes() {[m
 </tr>[m
 </table><p/>[m
 <small><i>(Hover the method name to see the test class name)</i></small><p/>[m
[31m-<table width='100%' border='1' class='invocation-passed'>[m
[31m-<tr><td colspan='4' align='center'><b>PASSED TESTS</b></td></tr>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-failed'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>FAILED CONFIGURATIONS</b></td></tr>[m
[32m+[m[32m<tr><td><b>Test method</b></td>[m
[32m+[m[32m<td><b>Attribute(s)</b></td>[m
[32m+[m[32m<td width="30%"><b>Exception</b></td>[m
[32m+[m[32m<td width="10%"><b>Time (seconds)</b></td>[m
[32m+[m[32m<td><b>Instance</b></td>[m
[32m+[m[32m</tr>[m
[32m+[m[32m<tr>[m
[32m+[m[32m<td title='testCases.TC002_LoginTest.tearDown()'><b>tearDown</b><br>Test class: testCases.TC002_LoginTest</td>[m
[32m+[m[32m<td><div><pre>org.openqa.selenium.WebDriverException: Unable to execute request for an existing session: Connection error (DELETE http://172.18.0.3:5555/session/d83662cff85e79cb6bc84afd689e402d)[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [d83662cff85e79cb6bc84afd689e402d, quit {}][m
[32m+[m[32mCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 148.0.7778.178, chrome: {chromedriverVersion: 148.0.7778.178 (d096af1c9e9..., userDataDir: /tmp/org.chromium.Chromium....}, fedcm:accounts: true, goog:chromeOptions: {debuggerAddress: localhost:46151}, goog:processID: 437, networkConnectionEnabled: false, pageLoadStrategy: normal, platformName: linux, proxy: Proxy(), se:bidiEnabled: false, se:cdp: ws://172.18.0.3:4444/sessio..., se:cdpVersion: 148.0.7778.178, se:containerName: dc267f89396b, se:deleteSessionOnUi: true, se:downloadsEnabled: true, se:noVncPort: 7900, se:vnc: ws://172.18.0.3:4444/sessio..., se:vncEnabled: true, se:vncLocalAddress: ws://172.18.0.3:7900, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify, webauthn:extension:credBlob: true, webauthn:extension:largeBlob: true, webauthn:extension:minPinLength: true, webauthn:extension:prf: true, webauthn:virtualAuthenticators: true}[m
[32m+[m[32mSession ID: d83662cff85e79cb6bc84afd689e402d[m
[32m+[m	[32mat org.openqa.selenium.remote.ErrorCodec.decode(ErrorCodec.java:167)[m
[32m+[m	[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:138)[m
[32m+[m	[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:50)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:215)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:617)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:621)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.quit(RemoteWebDriver.java:445)[m
[32m+[m	[32mat testBase.BaseClass.tearDown(BaseClass.java:107)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32m... Removed 27 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace475816303", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace475816303'><pre>org.openqa.selenium.WebDriverException: Unable to execute request for an existing session: Connection error (DELETE http://172.18.0.3:5555/session/d83662cff85e79cb6bc84afd689e402d)[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [d83662cff85e79cb6bc84afd689e402d, quit {}][m
[32m+[m[32mCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 148.0.7778.178, chrome: {chromedriverVersion: 148.0.7778.178 (d096af1c9e9..., userDataDir: /tmp/org.chromium.Chromium....}, fedcm:accounts: true, goog:chromeOptions: {debuggerAddress: localhost:46151}, goog:processID: 437, networkConnectionEnabled: false, pageLoadStrategy: normal, platformName: linux, proxy: Proxy(), se:bidiEnabled: false, se:cdp: ws://172.18.0.3:4444/sessio..., se:cdpVersion: 148.0.7778.178, se:containerName: dc267f89396b, se:deleteSessionOnUi: true, se:downloadsEnabled: true, se:noVncPort: 7900, se:vnc: ws://172.18.0.3:4444/sessio..., se:vncEnabled: true, se:vncLocalAddress: ws://172.18.0.3:7900, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify, webauthn:extension:credBlob: true, webauthn:extension:largeBlob: true, webauthn:extension:minPinLength: true, webauthn:extension:prf: true, webauthn:virtualAuthenticators: true}[m
[32m+[m[32mSession ID: d83662cff85e79cb6bc84afd689e402d[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectConstructorHandleAccessor.newInstance(DirectConstructorHandleAccessor.java:62)[m
[32m+[m	[32mat java.base/java.lang.reflect.Constructor.newInstanceWithCaller(Constructor.java:499)[m
[32m+[m	[32mat java.base/java.lang.reflect.Constructor.newInstance(Constructor.java:483)[m
[32m+[m	[32mat org.openqa.selenium.remote.ErrorCodec.decode(ErrorCodec.java:167)[m
[32m+[m	[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:138)[m
[32m+[m	[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:50)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:215)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:617)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:621)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.quit(RemoteWebDriver.java:445)[m
[32m+[m	[32mat testBase.BaseClass.tearDown(BaseClass.java:107)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethodConsideringTimeout(MethodInvocationHelper.java:71)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurationMethod(ConfigInvoker.java:400)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurations(ConfigInvoker.java:333)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeAfterClassConfigurations(TestMethodWorker.java:238)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeAfterClassMethods(TestMethodWorker.java:223)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:137)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>0</td>[m
[32m+[m[32m<td>testCases.TC002_LoginTest@2e6a5539</td></tr>[m
[32m+[m[32m</table><p>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-failed'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>FAILED TESTS</b></td></tr>[m
 <tr><td><b>Test method</b></td>[m
 <td><b>Attribute(s)</b></td>[m
 <td width="30%"><b>Exception</b></td>[m
[36m@@ -77,14 +155,57 @@[m [mfunction toggleAllBoxes() {[m
 </tr>[m
 <tr>[m
 <td title='testCases.TC002_LoginTest.verifyLoginTest()'><b>verifyLoginTest</b><br>Test class: testCases.TC002_LoginTest</td>[m
[31m-<td></td>[m
[31m-<td>2</td>[m
[31m-<td>testCases.TC002_LoginTest@21fd5faa</td></tr>[m
[32m+[m[32m<td><div><pre>java.lang.AssertionError: null[m
[32m+[m	[32mat testCases.TC002_LoginTest.verifyLoginTest(TC002_LoginTest.java:38)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32m... Removed 27 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace1145882513", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace1145882513'><pre>java.lang.AssertionError: null[m
[32m+[m	[32mat org.testng.Assert.fail(Assert.java:111)[m
[32m+[m	[32mat org.testng.Assert.fail(Assert.java:116)[m
[32m+[m	[32mat testCases.TC002_LoginTest.verifyLoginTest(TC002_LoginTest.java:38)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.TestInvoker.invokeMethod(TestInvoker.java:697)[m
[32m+[m	[32mat org.testng.internal.invokers.TestInvoker.invokeTestMethod(TestInvoker.java:230)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodRunner.runInSequence(MethodRunner.java:63)[m
[32m+[m	[32mat org.testng.internal.invokers.TestInvoker$MethodInvocationAgent.invoke(TestInvoker.java:1005)[m
[32m+[m	[32mat org.testng.internal.invokers.TestInvoker.invokeTestMethods(TestInvoker.java:203)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeTestMethods(TestMethodWorker.java:154)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:134)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>180</td>[m
[32m+[m[32m<td>testCases.TC002_LoginTest@2e6a5539</td></tr>[m
[32m+[m[32m</table><p>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-passed'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>PASSED TESTS</b></td></tr>[m
[32m+[m[32m<tr><td><b>Test method</b></td>[m
[32m+[m[32m<td><b>Attribute(s)</b></td>[m
[32m+[m[32m<td width="30%"><b>Exception</b></td>[m
[32m+[m[32m<td width="10%"><b>Time (seconds)</b></td>[m
[32m+[m[32m<td><b>Instance</b></td>[m
[32m+[m[32m</tr>[m
 <tr>[m
 <td title='testCases.TC001_AccountRegistrationTest.verifyAccountRegistration()'><b>verifyAccountRegistration</b><br>Test class: testCases.TC001_AccountRegistrationTest</td>[m
 <td></td>[m
[31m-<td>4</td>[m
[31m-<td>testCases.TC001_AccountRegistrationTest@19e4fcac</td></tr>[m
[32m+[m[32m<td>2</td>[m
[32m+[m[32m<td>testCases.TC001_AccountRegistrationTest@6dab9b6d</td></tr>[m
 </table><p>[m
 </body>[m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/test-output/Suite/Linux-Chrome.xml b/test-output/Suite/Linux-Chrome.xml[m
[1mindex c81b71a..f00ffcf 100644[m
[1m--- a/test-output/Suite/Linux-Chrome.xml[m
[1m+++ b/test-output/Suite/Linux-Chrome.xml[m
[36m@@ -1,6 +1,42 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <!-- Generated by org.testng.reporters.JUnitXMLReporter -->[m
[31m-<testsuite ignored="0" hostname="MuhammadYasar" failures="0" tests="2" name="Linux-Chrome" time="18.643" errors="0" timestamp="2026-06-11T16:08:24 IST">[m
[31m-  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="4.41"/>[m
[31m-  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="2.211"/>[m
[32m+[m[32m<testsuite ignored="0" hostname="MuhammadYasar" failures="1" tests="2" name="Linux-Chrome" time="226.772" errors="0" timestamp="2026-06-13T11:57:05 IST">[m
[32m+[m[32m  <testcase classname="testBase.BaseClass" name="@AfterClass tearDown" time="0.037">[m
[32m+[m[32m    <failure type="org.openqa.selenium.WebDriverException" message="Unable to execute request for an existing session: Connection error (DELETE http://172.18.0.3:5555/session/d83662cff85e79cb6bc84afd689e402d)[m
[32m+[m[32mBuild info: version: &amp;apos;4.34.0&amp;apos;, revision: &amp;apos;707dcb4246*&amp;apos;[m
[32m+[m[32mSystem info: os.name: &amp;apos;Windows 11&amp;apos;, os.arch: &amp;apos;amd64&amp;apos;, os.version: &amp;apos;10.0&amp;apos;, java.version: &amp;apos;25.0.2&amp;apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [d83662cff85e79cb6bc84afd689e402d, quit {}][m
[32m+[m[32mCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 148.0.7778.178, chrome: {chromedriverVersion: 148.0.7778.178 (d096af1c9e9..., userDataDir: /tmp/org.chromium.Chromium....}, fedcm:accounts: true, goog:chromeOptions: {debuggerAddress: localhost:46151}, goog:processID: 437, networkConnectionEnabled: false, pageLoadStrategy: normal, platformName: linux, proxy: Proxy(), se:bidiEnabled: false, se:cdp: ws://172.18.0.3:4444/sessio..., se:cdpVersion: 148.0.7778.178, se:containerName: dc267f89396b, se:deleteSessionOnUi: true, se:downloadsEnabled: true, se:noVncPort: 7900, se:vnc: ws://172.18.0.3:4444/sessio..., se:vncEnabled: true, se:vncLocalAddress: ws://172.18.0.3:7900, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify, webauthn:extension:credBlob: true, webauthn:extension:largeBlob: true, webauthn:extension:minPinLength: true, webauthn:extension:prf: true, webauthn:virtualAuthenticators: true}[m
[32m+[m[32mSession ID: d83662cff85e79cb6bc84afd689e402d">[m
[32m+[m[32m      <![CDATA[org.openqa.selenium.WebDriverException: Unable to execute request for an existing session: Connection error (DELETE http://172.18.0.3:5555/session/d83662cff85e79cb6bc84afd689e402d)[m
[32m+[m[32mBuild info: version: '4.34.0', revision: '707dcb4246*'[m
[32m+[m[32mSystem info: os.name: 'Windows 11', os.arch: 'amd64', os.version: '10.0', java.version: '25.0.2'[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [d83662cff85e79cb6bc84afd689e402d, quit {}][m
[32m+[m[32mCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 148.0.7778.178, chrome: {chromedriverVersion: 148.0.7778.178 (d096af1c9e9..., userDataDir: /tmp/org.chromium.Chromium....}, fedcm:accounts: true, goog:chromeOptions: {debuggerAddress: localhost:46151}, goog:processID: 437, networkConnectionEnabled: false, pageLoadStrategy: normal, platformName: linux, proxy: Proxy(), se:bidiEnabled: false, se:cdp: ws://172.18.0.3:4444/sessio..., se:cdpVersion: 148.0.7778.178, se:containerName: dc267f89396b, se:deleteSessionOnUi: true, se:downloadsEnabled: true, se:noVncPort: 7900, se:vnc: ws://172.18.0.3:4444/sessio..., se:vncEnabled: true, se:vncLocalAddress: ws://172.18.0.3:7900, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify, webauthn:extension:credBlob: true, webauthn:extension:largeBlob: true, webauthn:extension:minPinLength: true, webauthn:extension:prf: true, webauthn:virtualAuthenticators: true}[m
[32m+[m[32mSession ID: d83662cff85e79cb6bc84afd689e402d[m
[32m+[m[32mat org.openqa.selenium.remote.ErrorCodec.decode(ErrorCodec.java:167)[m
[32m+[m[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:138)[m
[32m+[m[32mat org.openqa.selenium.remote.codec.w3c.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:50)[m
[32m+[m[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:215)[m
[32m+[m[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:617)[m
[32m+[m[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:621)[m
[32m+[m[32mat org.openqa.selenium.remote.RemoteWebDriver.quit(RemoteWebDriver.java:445)[m
[32m+[m[32mat testBase.BaseClass.tearDown(BaseClass.java:107)[m
[32m+[m[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32m... Removed 27 stack frames]]>[m
[32m+[m[32m    </failure>[m
[32m+[m[32m  </testcase> <!-- @AfterClass tearDown -->[m
[32m+[m[32m  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="2.707"/>[m
[32m+[m[32m  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="180.414">[m
[32m+[m[32m    <failure type="java.lang.AssertionError" message="null">[m
[32m+[m[32m      <![CDATA[java.lang.AssertionError: null[m
[32m+[m[32mat testCases.TC002_LoginTest.verifyLoginTest(TC002_LoginTest.java:38)[m
[32m+[m[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32m... Removed 27 stack frames]]>[m
[32m+[m[32m    </failure>[m
[32m+[m[32m  </testcase> <!-- verifyLoginTest -->[m
 </testsuite> <!-- Linux-Chrome -->[m
[1mdiff --git a/test-output/Suite/Linux-firefox.html b/test-output/Suite/Linux-firefox.html[m
[1mindex f03443c..0a0f826 100644[m
[1m--- a/test-output/Suite/Linux-firefox.html[m
[1m+++ b/test-output/Suite/Linux-firefox.html[m
[36m@@ -55,11 +55,11 @@[m [mfunction toggleAllBoxes() {[m
 <body>[m
 <h2 align='center'>Linux-firefox</h2><table border='1' align="center">[m
 <tr>[m
[31m-<td>Tests passed/Failed/Skipped:</td><td>2/0/0</td>[m
[32m+[m[32m<td>Tests passed/Failed/Skipped:</td><td>0/0/2</td>[m
 </tr><tr>[m
[31m-<td>Started on:</td><td>Thu Jun 11 16:08:24 IST 2026</td>[m
[32m+[m[32m<td>Started on:</td><td>Sat Jun 13 10:40:21 IST 2026</td>[m
 </tr>[m
[31m-<tr><td>Total time:</td><td>22 seconds (22467 ms)</td>[m
[32m+[m[32m<tr><td>Total time:</td><td>276 seconds (276603 ms)</td>[m
 </tr><tr>[m
 <td>Included groups:</td><td></td>[m
 </tr><tr>[m
[36m@@ -67,8 +67,8 @@[m [mfunction toggleAllBoxes() {[m
 </tr>[m
 </table><p/>[m
 <small><i>(Hover the method name to see the test class name)</i></small><p/>[m
[31m-<table width='100%' border='1' class='invocation-passed'>[m
[31m-<tr><td colspan='4' align='center'><b>PASSED TESTS</b></td></tr>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-failed'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>FAILED CONFIGURATIONS</b></td></tr>[m
 <tr><td><b>Test method</b></td>[m
 <td><b>Attribute(s)</b></td>[m
 <td width="30%"><b>Exception</b></td>[m
[36m@@ -76,15 +76,477 @@[m [mfunction toggleAllBoxes() {[m
 <td><b>Instance</b></td>[m
 </tr>[m
 <tr>[m
[31m-<td title='testCases.TC001_AccountRegistrationTest.verifyAccountRegistration()'><b>verifyAccountRegistration</b><br>Test class: testCases.TC001_AccountRegistrationTest</td>[m
[32m+[m[32m<td title='testCases.TC002_LoginTest.setup()'><b>setup</b><br>Test class: testCases.TC002_LoginTest<br>Parameters: Linux, firefox</td>[m
[32m+[m[32m<td><div><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [null, newSession {capabilities=[Capabilities {browserName: firefox, platformName: linux}]}][m
[32m+[m[32mCapabilities {browserName: firefox, platformName: linux}[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32mCaused by: java.io.UncheckedIOException: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:500)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.AddSeleniumUserAgent.lambda$apply$0(AddSeleniumUserAgent.java:42)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.Filter.lambda$andFinally$1(Filter.java:55)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.lambda$executeAsync$2(JdkHttpClient.java:387)[m
[32m+[m	[32mat java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:545)[m
[32m+[m	[32mat java.base/java.util.concurrent.FutureTask.run(FutureTask.java:328)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1090)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:614)[m
[32m+[m	[32mat java.base/java.lang.Thread.run(Thread.java:1474)[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl.send(HttpClientImpl.java:938)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientFacade.send(HttpClientFacade.java:133)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:459)[m
[32m+[m	[32m... 8 more[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.Utils.wrapWithExtraDetail(Utils.java:456)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1Response$HeadersReader.onReadError(Http1Response.java:591)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.checkForErrors(Http1AsyncReceiver.java:304)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.flush(Http1AsyncReceiver.java:270)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$LockingRestartableTask.run(SequentialScheduler.java:182)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$CompleteRestartableTask.run(SequentialScheduler.java:149)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32m... 3 more[m
[32m+[m[32mCaused by: java.net.SocketException: Connection reset[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.throwConnectionReset(SocketChannelImpl.java:399)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.implRead(SocketChannelImpl.java:431)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.read(SocketChannelImpl.java:489)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube.readAvailable(SocketTube.java:1215)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.read(SocketTube.java:871)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowTask.run(SocketTube.java:181)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:280)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:233)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.signalReadable(SocketTube.java:812)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$ReadEvent.signalEvent(SocketTube.java:1002)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowEvent.handle(SocketTube.java:253)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.handleEvent(HttpClientImpl.java:1439)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.lambda$run$3(HttpClientImpl.java:1384)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.run(HttpClientImpl.java:1384)[m
[32m+[m[32m... Removed 23 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace412410893", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace412410893'><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [null, newSession {capabilities=[Capabilities {browserName: firefox, platformName: linux}]}][m
[32m+[m[32mCapabilities {browserName: firefox, platformName: linux}[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethodConsideringTimeout(MethodInvocationHelper.java:71)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurationMethod(ConfigInvoker.java:400)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurations(ConfigInvoker.java:333)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeBeforeClassMethods(TestMethodWorker.java:188)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:128)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32mCaused by: java.io.UncheckedIOException: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:500)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.AddSeleniumUserAgent.lambda$apply$0(AddSeleniumUserAgent.java:42)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.Filter.lambda$andFinally$1(Filter.java:55)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.lambda$executeAsync$2(JdkHttpClient.java:387)[m
[32m+[m	[32mat java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:545)[m
[32m+[m	[32mat java.base/java.util.concurrent.FutureTask.run(FutureTask.java:328)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1090)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:614)[m
[32m+[m	[32mat java.base/java.lang.Thread.run(Thread.java:1474)[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl.send(HttpClientImpl.java:938)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientFacade.send(HttpClientFacade.java:133)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:459)[m
[32m+[m	[32m... 8 more[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.Utils.wrapWithExtraDetail(Utils.java:456)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1Response$HeadersReader.onReadError(Http1Response.java:591)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.checkForErrors(Http1AsyncReceiver.java:304)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.flush(Http1AsyncReceiver.java:270)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$LockingRestartableTask.run(SequentialScheduler.java:182)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$CompleteRestartableTask.run(SequentialScheduler.java:149)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32m... 3 more[m
[32m+[m[32mCaused by: java.net.SocketException: Connection reset[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.throwConnectionReset(SocketChannelImpl.java:399)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.implRead(SocketChannelImpl.java:431)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.read(SocketChannelImpl.java:489)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube.readAvailable(SocketTube.java:1215)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.read(SocketTube.java:871)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowTask.run(SocketTube.java:181)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:280)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:233)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.signalReadable(SocketTube.java:812)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$ReadEvent.signalEvent(SocketTube.java:1002)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowEvent.handle(SocketTube.java:253)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.handleEvent(HttpClientImpl.java:1439)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.lambda$run$3(HttpClientImpl.java:1384)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.run(HttpClientImpl.java:1384)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>96</td>[m
[32m+[m[32m<td>testCases.TC002_LoginTest@7803bfd</td></tr>[m
[32m+[m[32m<tr>[m
[32m+[m[32m<td title='testCases.TC001_AccountRegistrationTest.setup()'><b>setup</b><br>Test class: testCases.TC001_AccountRegistrationTest<br>Parameters: Linux, firefox</td>[m
[32m+[m[32m<td><div><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32mCaused by: org.openqa.selenium.TimeoutException: java.util.concurrent.TimeoutException[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: driver.version: RemoteWebDriver[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute(JdkHttpClient.java:427)[m
[32m+[m	[32mat org.openqa.selenium.remote.tracing.TracedHttpClient.execute(TracedHttpClient.java:54)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:89)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:75)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:61)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:187)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32m... 28 more[m
[32m+[m[32mCaused by: java.util.concurrent.TimeoutException[m
[32m+[m	[32mat java.base/java.util.concurrent.CompletableFuture$Timeout.run(CompletableFuture.java:2828)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler$ScheduledForkJoinTask.compute(DelayScheduler.java:510)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1659)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:511)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.loop(DelayScheduler.java:325)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.run(DelayScheduler.java:221)[m
[32m+[m[32m... Removed 23 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace1708490318", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace1708490318'><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethodConsideringTimeout(MethodInvocationHelper.java:71)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurationMethod(ConfigInvoker.java:400)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurations(ConfigInvoker.java:333)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeBeforeClassMethods(TestMethodWorker.java:188)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:128)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32mCaused by: org.openqa.selenium.TimeoutException: java.util.concurrent.TimeoutException[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: driver.version: RemoteWebDriver[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute(JdkHttpClient.java:427)[m
[32m+[m	[32mat org.openqa.selenium.remote.tracing.TracedHttpClient.execute(TracedHttpClient.java:54)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:89)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:75)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:61)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:187)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32m... 28 more[m
[32m+[m[32mCaused by: java.util.concurrent.TimeoutException[m
[32m+[m	[32mat java.base/java.util.concurrent.CompletableFuture$Timeout.run(CompletableFuture.java:2828)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler$ScheduledForkJoinTask.compute(DelayScheduler.java:510)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1659)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:511)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.loop(DelayScheduler.java:325)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.run(DelayScheduler.java:221)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>180</td>[m
[32m+[m[32m<td>testCases.TC001_AccountRegistrationTest@21a21c64</td></tr>[m
[32m+[m[32m</table><p>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-skipped'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>SKIPPED CONFIGURATIONS</b></td></tr>[m
[32m+[m[32m<tr><td><b>Test method</b></td>[m
[32m+[m[32m<td><b>Attribute(s)</b></td>[m
[32m+[m[32m<td width="30%"><b>Exception</b></td>[m
[32m+[m[32m<td width="10%"><b>Time (seconds)</b></td>[m
[32m+[m[32m<td><b>Instance</b></td>[m
[32m+[m[32m</tr>[m
[32m+[m[32m<tr>[m
[32m+[m[32m<td title='testCases.TC001_AccountRegistrationTest.tearDown()'><b>tearDown</b><br>Test class: testCases.TC001_AccountRegistrationTest</td>[m
 <td></td>[m
[31m-<td>6</td>[m
[31m-<td>testCases.TC001_AccountRegistrationTest@7b94089b</td></tr>[m
[32m+[m[32m<td>0</td>[m
[32m+[m[32m<td>testCases.TC001_AccountRegistrationTest@21a21c64</td></tr>[m
 <tr>[m
[31m-<td title='testCases.TC002_LoginTest.verifyLoginTest()'><b>verifyLoginTest</b><br>Test class: testCases.TC002_LoginTest</td>[m
[32m+[m[32m<td title='testCases.TC002_LoginTest.tearDown()'><b>tearDown</b><br>Test class: testCases.TC002_LoginTest</td>[m
 <td></td>[m
[31m-<td>2</td>[m
[31m-<td>testCases.TC002_LoginTest@7ca20101</td></tr>[m
[32m+[m[32m<td>0</td>[m
[32m+[m[32m<td>testCases.TC002_LoginTest@7803bfd</td></tr>[m
[32m+[m[32m</table><p>[m
[32m+[m[32m<table width='100%' border='1' class='invocation-skipped'>[m
[32m+[m[32m<tr><td colspan='4' align='center'><b>SKIPPED TESTS</b></td></tr>[m
[32m+[m[32m<tr><td><b>Test method</b></td>[m
[32m+[m[32m<td><b>Attribute(s)</b></td>[m
[32m+[m[32m<td width="30%"><b>Exception</b></td>[m
[32m+[m[32m<td width="10%"><b>Time (seconds)</b></td>[m
[32m+[m[32m<td><b>Instance</b></td>[m
[32m+[m[32m</tr>[m
[32m+[m[32m<tr>[m
[32m+[m[32m<td title='testCases.TC002_LoginTest.verifyLoginTest()'><b>verifyLoginTest</b><br>Test class: testCases.TC002_LoginTest</td>[m
[32m+[m[32m<td><div><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [null, newSession {capabilities=[Capabilities {browserName: firefox, platformName: linux}]}][m
[32m+[m[32mCapabilities {browserName: firefox, platformName: linux}[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32mCaused by: java.io.UncheckedIOException: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:500)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.AddSeleniumUserAgent.lambda$apply$0(AddSeleniumUserAgent.java:42)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.Filter.lambda$andFinally$1(Filter.java:55)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.lambda$executeAsync$2(JdkHttpClient.java:387)[m
[32m+[m	[32mat java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:545)[m
[32m+[m	[32mat java.base/java.util.concurrent.FutureTask.run(FutureTask.java:328)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1090)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:614)[m
[32m+[m	[32mat java.base/java.lang.Thread.run(Thread.java:1474)[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl.send(HttpClientImpl.java:938)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientFacade.send(HttpClientFacade.java:133)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:459)[m
[32m+[m	[32m... 8 more[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.Utils.wrapWithExtraDetail(Utils.java:456)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1Response$HeadersReader.onReadError(Http1Response.java:591)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.checkForErrors(Http1AsyncReceiver.java:304)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.flush(Http1AsyncReceiver.java:270)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$LockingRestartableTask.run(SequentialScheduler.java:182)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$CompleteRestartableTask.run(SequentialScheduler.java:149)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32m... 3 more[m
[32m+[m[32mCaused by: java.net.SocketException: Connection reset[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.throwConnectionReset(SocketChannelImpl.java:399)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.implRead(SocketChannelImpl.java:431)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.read(SocketChannelImpl.java:489)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube.readAvailable(SocketTube.java:1215)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.read(SocketTube.java:871)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowTask.run(SocketTube.java:181)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:280)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:233)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.signalReadable(SocketTube.java:812)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$ReadEvent.signalEvent(SocketTube.java:1002)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowEvent.handle(SocketTube.java:253)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.handleEvent(HttpClientImpl.java:1439)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.lambda$run$3(HttpClientImpl.java:1384)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.run(HttpClientImpl.java:1384)[m
[32m+[m[32m... Removed 23 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace2083969860", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace2083969860'><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: org.openqa.selenium.remote.RemoteWebDriver[m
[32m+[m[32mCommand: [null, newSession {capabilities=[Capabilities {browserName: firefox, platformName: linux}]}][m
[32m+[m[32mCapabilities {browserName: firefox, platformName: linux}[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethodConsideringTimeout(MethodInvocationHelper.java:71)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurationMethod(ConfigInvoker.java:400)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurations(ConfigInvoker.java:333)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeBeforeClassMethods(TestMethodWorker.java:188)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:128)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32mCaused by: java.io.UncheckedIOException: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:500)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.AddSeleniumUserAgent.lambda$apply$0(AddSeleniumUserAgent.java:42)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.Filter.lambda$andFinally$1(Filter.java:55)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.lambda$executeAsync$2(JdkHttpClient.java:387)[m
[32m+[m	[32mat java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:545)[m
[32m+[m	[32mat java.base/java.util.concurrent.FutureTask.run(FutureTask.java:328)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1090)[m
[32m+[m	[32mat java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:614)[m
[32m+[m	[32mat java.base/java.lang.Thread.run(Thread.java:1474)[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl.send(HttpClientImpl.java:938)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientFacade.send(HttpClientFacade.java:133)[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute0(JdkHttpClient.java:459)[m
[32m+[m	[32m... 8 more[m
[32m+[m[32mCaused by: java.io.IOException: HTTP/1.1 header parser received no bytes[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.Utils.wrapWithExtraDetail(Utils.java:456)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1Response$HeadersReader.onReadError(Http1Response.java:591)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.checkForErrors(Http1AsyncReceiver.java:304)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.Http1AsyncReceiver.flush(Http1AsyncReceiver.java:270)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$LockingRestartableTask.run(SequentialScheduler.java:182)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$CompleteRestartableTask.run(SequentialScheduler.java:149)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32m... 3 more[m
[32m+[m[32mCaused by: java.net.SocketException: Connection reset[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.throwConnectionReset(SocketChannelImpl.java:399)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.implRead(SocketChannelImpl.java:431)[m
[32m+[m	[32mat java.base/sun.nio.ch.SocketChannelImpl.read(SocketChannelImpl.java:489)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube.readAvailable(SocketTube.java:1215)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.read(SocketTube.java:871)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowTask.run(SocketTube.java:181)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler$SchedulableTask.run(SequentialScheduler.java:207)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:280)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.common.SequentialScheduler.runOrSchedule(SequentialScheduler.java:233)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$InternalReadSubscription.signalReadable(SocketTube.java:812)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$InternalReadPublisher$ReadEvent.signalEvent(SocketTube.java:1002)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.SocketTube$SocketFlowEvent.handle(SocketTube.java:253)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.handleEvent(HttpClientImpl.java:1439)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.lambda$run$3(HttpClientImpl.java:1384)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat java.net.http/jdk.internal.net.http.HttpClientImpl$SelectorManager.run(HttpClientImpl.java:1384)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>0</td>[m
[32m+[m[32m<td>testCases.TC002_LoginTest@7803bfd</td></tr>[m
[32m+[m[32m<tr>[m
[32m+[m[32m<td title='testCases.TC001_AccountRegistrationTest.verifyAccountRegistration()'><b>verifyAccountRegistration</b><br>Test class: testCases.TC001_AccountRegistrationTest</td>[m
[32m+[m[32m<td><div><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m[32mCaused by: org.openqa.selenium.TimeoutException: java.util.concurrent.TimeoutException[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: driver.version: RemoteWebDriver[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute(JdkHttpClient.java:427)[m
[32m+[m	[32mat org.openqa.selenium.remote.tracing.TracedHttpClient.execute(TracedHttpClient.java:54)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:89)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:75)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:61)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:187)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32m... 28 more[m
[32m+[m[32mCaused by: java.util.concurrent.TimeoutException[m
[32m+[m	[32mat java.base/java.util.concurrent.CompletableFuture$Timeout.run(CompletableFuture.java:2828)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler$ScheduledForkJoinTask.compute(DelayScheduler.java:510)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1659)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:511)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.loop(DelayScheduler.java:325)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.run(DelayScheduler.java:221)[m
[32m+[m[32m... Removed 23 stack frames</pre></div><a href='#' onClick='toggleBox("stack-trace1913386579", this, "Click to show all stack frames", "Click to hide stack frames")'>Click to show all stack frames</a>[m
[32m+[m[32m<div class='stack-trace' id='stack-trace1913386579'><pre>org.openqa.selenium.SessionNotCreatedException: Could not start a new session. Possible causes are invalid address of the remote server or browser start-up failure.[m[41m [m
[32m+[m[32mHost info: host: &apos;MUHAMMADYASAR&apos;, ip: &apos;192.168.29.147&apos;[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:562)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.startSession(RemoteWebDriver.java:244)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:173)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.&lt;init&gt;(RemoteWebDriver.java:151)[m
[32m+[m	[32mat testBase.BaseClass.setup(BaseClass.java:82)[m
[32m+[m	[32mat java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)[m
[32m+[m	[32mat java.base/java.lang.reflect.Method.invoke(Method.java:565)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:141)[m
[32m+[m	[32mat org.testng.internal.invokers.MethodInvocationHelper.invokeMethodConsideringTimeout(MethodInvocationHelper.java:71)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurationMethod(ConfigInvoker.java:400)[m
[32m+[m	[32mat org.testng.internal.invokers.ConfigInvoker.invokeConfigurations(ConfigInvoker.java:333)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.invokeBeforeClassMethods(TestMethodWorker.java:188)[m
[32m+[m	[32mat org.testng.internal.invokers.TestMethodWorker.run(TestMethodWorker.java:128)[m
[32m+[m	[32mat java.base/java.util.ArrayList.forEach(ArrayList.java:1604)[m
[32m+[m	[32mat org.testng.TestRunner.privateRun(TestRunner.java:744)[m
[32m+[m	[32mat org.testng.TestRunner.run(TestRunner.java:616)[m
[32m+[m	[32mat org.testng.SuiteRunner.runTest(SuiteRunner.java:421)[m
[32m+[m	[32mat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:413)[m
[32m+[m	[32mat org.testng.SuiteRunner.privateRun(SuiteRunner.java:373)[m
[32m+[m	[32mat org.testng.SuiteRunner.run(SuiteRunner.java:312)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)[m
[32m+[m	[32mat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:95)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesSequentially(TestNG.java:1274)[m
[32m+[m	[32mat org.testng.TestNG.runSuitesLocally(TestNG.java:1208)[m
[32m+[m	[32mat org.testng.TestNG.runSuites(TestNG.java:1112)[m
[32m+[m	[32mat org.testng.TestNG.run(TestNG.java:1079)[m
[32m+[m	[32mat org.testng.remote.AbstractRemoteTestNG.run(AbstractRemoteTestNG.java:115)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.initAndRun(RemoteTestNG.java:293)[m
[32m+[m	[32mat org.testng.remote.RemoteTestNG.main(RemoteTestNG.java:91)[m
[32m+[m[32mCaused by: org.openqa.selenium.TimeoutException: java.util.concurrent.TimeoutException[m
[32m+[m[32mBuild info: version: &apos;4.34.0&apos;, revision: &apos;707dcb4246*&apos;[m
[32m+[m[32mSystem info: os.name: &apos;Windows 11&apos;, os.arch: &apos;amd64&apos;, os.version: &apos;10.0&apos;, java.version: &apos;25.0.2&apos;[m
[32m+[m[32mDriver info: driver.version: RemoteWebDriver[m
[32m+[m	[32mat org.openqa.selenium.remote.http.jdk.JdkHttpClient.execute(JdkHttpClient.java:427)[m
[32m+[m	[32mat org.openqa.selenium.remote.tracing.TracedHttpClient.execute(TracedHttpClient.java:54)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:89)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:75)[m
[32m+[m	[32mat org.openqa.selenium.remote.ProtocolHandshake.createSession(ProtocolHandshake.java:61)[m
[32m+[m	[32mat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:187)[m
[32m+[m	[32mat org.openqa.selenium.remote.TracedCommandExecutor.execute(TracedCommandExecutor.java:53)[m
[32m+[m	[32mat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:544)[m
[32m+[m	[32m... 28 more[m
[32m+[m[32mCaused by: java.util.concurrent.TimeoutException[m
[32m+[m	[32mat java.base/java.util.concurrent.CompletableFuture$Timeout.run(CompletableFuture.java:2828)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler$ScheduledForkJoinTask.compute(DelayScheduler.java:510)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1659)[m
[32m+[m	[32mat java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:511)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.loop(DelayScheduler.java:325)[m
[32m+[m	[32mat java.base/java.util.concurrent.DelayScheduler.run(DelayScheduler.java:221)[m
[32m+[m[32m</pre></div></td>[m
[32m+[m[32m<td>0</td>[m
[32m+[m[32m<td>testCases.TC001_AccountRegistrationTest@21a21c64</td></tr>[m
 </table><p>[m
 </body>[m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/test-output/Suite/Linux-firefox.xml b/test-output/Suite/Linux-firefox.xml[m
[1mindex 947e165..a1bd734 100644[m
[1m--- a/test-output/Suite/Linux-firefox.xml[m
[1m+++ b/test-output/Suite/Linux-firefox.xml[m
[36m@@ -1,6 +1,10 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <!-- Generated by org.testng.reporters.JUnitXMLReporter -->[m
[31m-<testsuite ignored="0" hostname="MuhammadYasar" failures="0" tests="2" name="Linux-firefox" time="22.467" errors="0" timestamp="2026-06-11T16:08:47 IST">[m
[31m-  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="6.358"/>[m
[31m-  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="2.552"/>[m
[32m+[m[32m<testsuite ignored="0" hostname="MuhammadYasar" failures="0" tests="2" name="Linux-firefox" time="276.603" errors="0" timestamp="2026-06-13T10:44:58 IST">[m
[32m+[m[32m  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="0.0">[m
[32m+[m[32m    <skipped/>[m
[32m+[m[32m  </testcase> <!-- verifyAccountRegistration -->[m
[32m+[m[32m  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="0.0">[m
[32m+[m[32m    <skipped/>[m
[32m+[m[32m  </testcase> <!-- verifyLoginTest -->[m
 </testsuite> <!-- Linux-firefox -->[m
[1mdiff --git a/test-output/Suite/Test.html b/test-output/Suite/Test.html[m
[1mindex e20b050..974e154 100644[m
[1m--- a/test-output/Suite/Test.html[m
[1m+++ b/test-output/Suite/Test.html[m
[36m@@ -57,9 +57,9 @@[m [mfunction toggleAllBoxes() {[m
 <tr>[m
 <td>Tests passed/Failed/Skipped:</td><td>2/0/0</td>[m
 </tr><tr>[m
[31m-<td>Started on:</td><td>Thu Jun 11 18:04:22 IST 2026</td>[m
[32m+[m[32m<td>Started on:</td><td>Thu Jun 11 20:59:10 IST 2026</td>[m
 </tr>[m
[31m-<tr><td>Total time:</td><td>11 seconds (11695 ms)</td>[m
[32m+[m[32m<tr><td>Total time:</td><td>14 seconds (14641 ms)</td>[m
 </tr><tr>[m
 <td>Included groups:</td><td></td>[m
 </tr><tr>[m
[36m@@ -83,7 +83,7 @@[m [mfunction toggleAllBoxes() {[m
 <tr>[m
 <td title='testCases.TC001_AccountRegistrationTest.verifyAccountRegistration()'><b>verifyAccountRegistration</b><br>Test class: testCases.TC001_AccountRegistrationTest</td>[m
 <td></td>[m
[31m-<td>2</td>[m
[32m+[m[32m<td>3</td>[m
 <td>testCases.TC001_AccountRegistrationTest@19e4fcac</td></tr>[m
 </table><p>[m
 </body>[m
[1mdiff --git a/test-output/Suite/Test.xml b/test-output/Suite/Test.xml[m
[1mindex 32d9450..5c94cde 100644[m
[1m--- a/test-output/Suite/Test.xml[m
[1m+++ b/test-output/Suite/Test.xml[m
[36m@@ -1,6 +1,6 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <!-- Generated by org.testng.reporters.JUnitXMLReporter -->[m
[31m-<testsuite ignored="0" hostname="MuhammadYasar" failures="0" tests="2" name="Test" time="11.695" errors="0" timestamp="2026-06-11T18:04:34 IST">[m
[31m-  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="2.792"/>[m
[31m-  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="3.515"/>[m
[32m+[m[32m<testsuite ignored="0" hostname="MuhammadYasar" failures="0" tests="2" name="Test" time="14.641" errors="0" timestamp="2026-06-11T20:59:25 IST">[m
[32m+[m[32m  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="3.899"/>[m
[32m+[m[32m  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="3.082"/>[m
 </testsuite> <!-- Test -->[m
[1mdiff --git a/test-output/Suite/testng-failed.xml b/test-output/Suite/testng-failed.xml[m
[1mindex 92ee47a..a8a0966 100644[m
[1m--- a/test-output/Suite/testng-failed.xml[m
[1m+++ b/test-output/Suite/testng-failed.xml[m
[36m@@ -15,33 +15,6 @@[m
           <include name="verifyLoginTest"/>[m
         </methods>[m
       </class> <!-- testCases.TC002_LoginTest -->[m
[31m-      <class name="testCases.TC001_AccountRegistrationTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="verifyAccountRegistration"/>[m
[31m-          <include name="setup"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC001_AccountRegistrationTest -->[m
     </classes>[m
   </test> <!-- Linux-Chrome(failed) -->[m
[31m-  <test thread-count="5" name="Linux-firefox(failed)">[m
[31m-    <parameter name="os" value="Linux"/>[m
[31m-    <parameter name="browser" value="firefox"/>[m
[31m-    <classes>[m
[31m-      <class name="testCases.TC002_LoginTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="setup"/>[m
[31m-          <include name="verifyLoginTest"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC002_LoginTest -->[m
[31m-      <class name="testCases.TC001_AccountRegistrationTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="verifyAccountRegistration"/>[m
[31m-          <include name="setup"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC001_AccountRegistrationTest -->[m
[31m-    </classes>[m
[31m-  </test> <!-- Linux-firefox(failed) -->[m
 </suite> <!-- Failed suite [Suite] -->[m
[1mdiff --git a/test-output/emailable-report.html b/test-output/emailable-report.html[m
[1mindex bbb6505..46bb0a1 100644[m
[1m--- a/test-output/emailable-report.html[m
[1m+++ b/test-output/emailable-report.html[m
[36m@@ -9,11 +9,11 @@[m
 <table>[m
 <tr><th>Test</th><th># Passed</th><th># Skipped</th><th># Retried</th><th># Failed</th><th>Time (ms)</th><th>Included Groups</th><th>Excluded Groups</th></tr>[m
 <tr><th colspan="8">Suite</th></tr>[m
[31m-<tr><td><a href="#t0">Test</a></td><td class="num">2</td><td class="num">0</td><td class="num">0</td><td class="num">0</td><td class="num">11,695</td><td></td><td></td></tr>[m
[32m+[m[32m<tr><td><a href="#t0">windows-Chrome</a></td><td class="num">2</td><td class="num">0</td><td class="num">0</td><td class="num">0</td><td class="num">16,968</td><td></td><td></td></tr>[m
 </table>[m
[31m-<table id='summary'><thead><tr><th>Class</th><th>Method</th><th>Start</th><th>Time (ms)</th></tr></thead><tbody><tr><th colspan="4">Suite</th></tr></tbody><tbody id="t0"><tr><th colspan="4">Test &#8212; passed</th></tr><tr class="passedeven"><td rowspan="1">testCases.TC001_AccountRegistrationTest</td><td><a href="#m0">verifyAccountRegistration</a></td><td rowspan="1">1781181265408</td><td rowspan="1">2792</td></tr><tr class="passedodd"><td rowspan="1">testCases.TC002_LoginTest</td><td><a href="#m1">verifyLoginTest</a></td><td rowspan="1">1781181270559</td><td rowspan="1">3515</td></tr></tbody>[m
[32m+[m[32m<table id='summary'><thead><tr><th>Class</th><th>Method</th><th>Start</th><th>Time (ms)</th></tr></thead><tbody><tr><th colspan="4">Suite</th></tr></tbody><tbody id="t0"><tr><th colspan="4">windows-Chrome &#8212; passed</th></tr><tr class="passedeven"><td rowspan="1">testCases.TC001_AccountRegistrationTest</td><td><a href="#m0">verifyAccountRegistration</a></td><td rowspan="1">1781332726743</td><td rowspan="1">4343</td></tr><tr class="passedodd"><td rowspan="1">testCases.TC002_LoginTest</td><td><a href="#m1">verifyLoginTest</a></td><td rowspan="1">1781332734015</td><td rowspan="1">2831</td></tr></tbody>[m
 </table>[m
[31m-<h2>Test</h2><h3 id="m0">testCases.TC001_AccountRegistrationTest#verifyAccountRegistration</h3><table class="result"><tr><th class="invisible"/></tr></table><p class="totop"><a href="#summary">back to summary</a></p>[m
[32m+[m[32m<h2>windows-Chrome</h2><h3 id="m0">testCases.TC001_AccountRegistrationTest#verifyAccountRegistration</h3><table class="result"><tr><th class="invisible"/></tr></table><p class="totop"><a href="#summary">back to summary</a></p>[m
 <h3 id="m1">testCases.TC002_LoginTest#verifyLoginTest</h3><table class="result"><tr><th class="invisible"/></tr></table><p class="totop"><a href="#summary">back to summary</a></p>[m
 </body>[m
 </html>[m
[1mdiff --git a/test-output/index.html b/test-output/index.html[m
[1mindex 86c80d4..fc7e1c4 100644[m
[1m--- a/test-output/index.html[m
[1m+++ b/test-output/index.html[m
[36m@@ -50,7 +50,7 @@[m
               <ul>[m
                 <li>[m
                   <a href="#" panel-name="test-xml-Suite" class="navigator-link ">[m
[31m-                    <span>D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\master.xml</span>[m
[32m+[m[32m                    <span>D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\grid-docker.xml</span>[m
                   </a> <!-- navigator-link  -->[m
                 </li>[m
                 <li>[m
[36m@@ -156,7 +156,7 @@[m
         </div> <!-- panel Suite -->[m
         <div panel-name="test-xml-Suite" class="panel">[m
           <div class="main-panel-header rounded-window-top">[m
[31m-            <span class="header-content">D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\master.xml</span>[m
[32m+[m[32m            <span class="header-content">D:\Yasar\YASAR\Projects\eclipse-workspace\OpencartV121\grid-docker.xml</span>[m
           </div> <!-- main-panel-header rounded-window-top -->[m
           <div class="main-panel-content rounded-window-bottom">[m
             <pre>[m
[36m@@ -166,14 +166,14 @@[m
   &lt;listeners&gt;[m
     &lt;listener class-name=&quot;utilities.ExtentReportUtility&quot;/&gt;[m
   &lt;/listeners&gt;[m
[31m-  &lt;test thread-count=&quot;5&quot; name=&quot;Test&quot;&gt;[m
[31m-    &lt;parameter name=&quot;os&quot; value=&quot;Windows&quot;/&gt;[m
[32m+[m[32m  &lt;test thread-count=&quot;5&quot; name=&quot;windows-Chrome&quot;&gt;[m
[32m+[m[32m    &lt;parameter name=&quot;os&quot; value=&quot;windows&quot;/&gt;[m
     &lt;parameter name=&quot;browser&quot; value=&quot;chrome&quot;/&gt;[m
     &lt;classes&gt;[m
       &lt;class name=&quot;testCases.TC001_AccountRegistrationTest&quot;/&gt;[m
       &lt;class name=&quot;testCases.TC002_LoginTest&quot;/&gt;[m
     &lt;/classes&gt;[m
[31m-  &lt;/test&gt; &lt;!-- Test --&gt;[m
[32m+[m[32m  &lt;/test&gt; &lt;!-- windows-Chrome --&gt;[m
 &lt;/suite&gt; &lt;!-- Suite --&gt;[m
             </pre>[m
           </div> <!-- main-panel-content rounded-window-bottom -->[m
[36m@@ -185,7 +185,7 @@[m
           <div class="main-panel-content rounded-window-bottom">[m
             <ul>[m
               <li>[m
[31m-                <span class="test-name">Test (2 classes)</span>[m
[32m+[m[32m                <span class="test-name">windows-Chrome (2 classes)</span>[m
               </li>[m
             </ul>[m
           </div> <!-- main-panel-content rounded-window-bottom -->[m
[36m@@ -241,18 +241,18 @@[m [mdata.addColumn('string', 'Class');[m
 data.addColumn('number', 'Time (ms)');[m
 data.addRows(2);[m
 data.setCell(0, 0, 0)[m
[31m-data.setCell(0, 1, 'verifyLoginTest')[m
[31m-data.setCell(0, 2, 'testCases.TC002_LoginTest')[m
[31m-data.setCell(0, 3, 3515);[m
[32m+[m[32mdata.setCell(0, 1, 'verifyAccountRegistration')[m
[32m+[m[32mdata.setCell(0, 2, 'testCases.TC001_AccountRegistrationTest')[m
[32m+[m[32mdata.setCell(0, 3, 4343);[m
 data.setCell(1, 0, 1)[m
[31m-data.setCell(1, 1, 'verifyAccountRegistration')[m
[31m-data.setCell(1, 2, 'testCases.TC001_AccountRegistrationTest')[m
[31m-data.setCell(1, 3, 2792);[m
[32m+[m[32mdata.setCell(1, 1, 'verifyLoginTest')[m
[32m+[m[32mdata.setCell(1, 2, 'testCases.TC002_LoginTest')[m
[32m+[m[32mdata.setCell(1, 3, 2831);[m
 window.suiteTableData['Suite']= { tableData: data, tableDiv: 'times-div-Suite'}[m
 return data;[m
 }[m
               </script>[m
[31m-              <span class="suite-total-time">Total running time: 6 seconds</span>[m
[32m+[m[32m              <span class="suite-total-time">Total running time: 7 seconds</span>[m
               <div id="times-div-Suite">[m
               </div> <!-- times-div-Suite -->[m
             </div> <!-- times-div -->[m
[36m@@ -280,31 +280,31 @@[m [mreturn data;[m
             <div class="chronological-class">[m
               <div class="chronological-class-name">testCases.TC001_AccountRegistrationTest</div> <!-- chronological-class-name -->[m
               <div class="configuration-class before">[m
[31m-                <span class="method-name">setup(Windows, chrome)</span>[m
[32m+[m[32m                <span class="method-name">setup(windows, chrome)</span>[m
                 <span class="method-start">0 ms</span>[m
               </div> <!-- configuration-class before -->[m
               <div class="test-method">[m
                 <span class="method-name">verifyAccountRegistration</span>[m
[31m-                <span class="method-start">2634 ms</span>[m
[32m+[m[32m                <span class="method-start">6456 ms</span>[m
               </div> <!-- test-method -->[m
               <div class="configuration-class after">[m
                 <span class="method-name">tearDown</span>[m
[31m-                <span class="method-start">5428 ms</span>[m
[32m+[m[32m                <span class="method-start">10818 ms</span>[m
               </div> <!-- configuration-class after -->[m
             </div> <!-- chronological-class -->[m
             <div class="chronological-class">[m
               <div class="chronological-class-name">testCases.TC002_LoginTest</div> <!-- chronological-class-name -->[m
               <div class="configuration-class before">[m
[31m-                <span class="method-name">setup(Windows, chrome)</span>[m
[31m-                <span class="method-start">5684 ms</span>[m
[32m+[m[32m                <span class="method-name">setup(windows, chrome)</span>[m
[32m+[m[32m                <span class="method-start">11085 ms</span>[m
               </div> <!-- configuration-class before -->[m
               <div class="test-method">[m
                 <span class="method-name">verifyLoginTest</span>[m
[31m-                <span class="method-start">7785 ms</span>[m
[32m+[m[32m                <span class="method-start">13728 ms</span>[m
               </div> <!-- test-method -->[m
               <div class="configuration-class after">[m
                 <span class="method-name">tearDown</span>[m
[31m-                <span class="method-start">11304 ms</span>[m
[32m+[m[32m                <span class="method-start">16563 ms</span>[m
               </div> <!-- configuration-class after -->[m
           </div> <!-- main-panel-content rounded-window-bottom -->[m
         </div> <!-- panel -->[m
[1mdiff --git a/test-output/junitreports/TEST-testCases.TC001_AccountRegistrationTest.xml b/test-output/junitreports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[1mindex 4b6da13..fb3118a 100644[m
[1m--- a/test-output/junitreports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[1m+++ b/test-output/junitreports/TEST-testCases.TC001_AccountRegistrationTest.xml[m
[36m@@ -1,5 +1,5 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <!-- Generated by org.testng.reporters.JUnitReportReporter -->[m
[31m-<testsuite hostname="MuhammadYasar" failures="0" tests="1" name="testCases.TC001_AccountRegistrationTest" time="2.792" errors="0" timestamp="2026-06-11T18:04:34 IST" skipped="0">[m
[31m-  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="2.792"/>[m
[32m+[m[32m<testsuite hostname="MuhammadYasar" failures="0" tests="1" name="testCases.TC001_AccountRegistrationTest" time="4.343" errors="0" timestamp="2026-06-13T12:08:57 IST" skipped="0">[m
[32m+[m[32m  <testcase classname="testCases.TC001_AccountRegistrationTest" name="verifyAccountRegistration" time="4.343"/>[m
 </testsuite> <!-- testCases.TC001_AccountRegistrationTest -->[m
[1mdiff --git a/test-output/junitreports/TEST-testCases.TC002_LoginTest.xml b/test-output/junitreports/TEST-testCases.TC002_LoginTest.xml[m
[1mindex 9c31880..d197721 100644[m
[1m--- a/test-output/junitreports/TEST-testCases.TC002_LoginTest.xml[m
[1m+++ b/test-output/junitreports/TEST-testCases.TC002_LoginTest.xml[m
[36m@@ -1,5 +1,5 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <!-- Generated by org.testng.reporters.JUnitReportReporter -->[m
[31m-<testsuite hostname="MuhammadYasar" failures="0" tests="1" name="testCases.TC002_LoginTest" time="3.515" errors="0" timestamp="2026-06-11T18:04:34 IST" skipped="0">[m
[31m-  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="3.515"/>[m
[32m+[m[32m<testsuite hostname="MuhammadYasar" failures="0" tests="1" name="testCases.TC002_LoginTest" time="2.831" errors="0" timestamp="2026-06-13T12:08:57 IST" skipped="0">[m
[32m+[m[32m  <testcase classname="testCases.TC002_LoginTest" name="verifyLoginTest" time="2.831"/>[m
 </testsuite> <!-- testCases.TC002_LoginTest -->[m
[1mdiff --git a/test-output/testng-failed.xml b/test-output/testng-failed.xml[m
[1mindex 92ee47a..a8a0966 100644[m
[1m--- a/test-output/testng-failed.xml[m
[1m+++ b/test-output/testng-failed.xml[m
[36m@@ -15,33 +15,6 @@[m
           <include name="verifyLoginTest"/>[m
         </methods>[m
       </class> <!-- testCases.TC002_LoginTest -->[m
[31m-      <class name="testCases.TC001_AccountRegistrationTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="verifyAccountRegistration"/>[m
[31m-          <include name="setup"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC001_AccountRegistrationTest -->[m
     </classes>[m
   </test> <!-- Linux-Chrome(failed) -->[m
[31m-  <test thread-count="5" name="Linux-firefox(failed)">[m
[31m-    <parameter name="os" value="Linux"/>[m
[31m-    <parameter name="browser" value="firefox"/>[m
[31m-    <classes>[m
[31m-      <class name="testCases.TC002_LoginTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="setup"/>[m
[31m-          <include name="verifyLoginTest"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC002_LoginTest -->[m
[31m-      <class name="testCases.TC001_AccountRegistrationTest">[m
[31m-        <methods>[m
[31m-          <include name="tearDown"/>[m
[31m-          <include name="verifyAccountRegistration"/>[m
[31m-          <include name="setup"/>[m
[31m-        </methods>[m
[31m-      </class> <!-- testCases.TC001_AccountRegistrationTest -->[m
[31m-    </classes>[m
[31m-  </test> <!-- Linux-firefox(failed) -->[m
 </suite> <!-- Failed suite [Suite] -->[m
[1mdiff --git a/test-output/testng-results.xml b/test-output/testng-results.xml[m
[1mindex 14ce991..23e229d 100644[m
[1m--- a/test-output/testng-results.xml[m
[1m+++ b/test-output/testng-results.xml[m
[36m@@ -2,26 +2,26 @@[m
 <testng-results ignored="0" total="2" passed="2" failed="0" skipped="0">[m
   <reporter-output>[m
   </reporter-output>[m
[31m-  <suite started-at="2026-06-11T18:04:22 IST" name="Suite" finished-at="2026-06-11T18:04:34 IST" duration-ms="11695">[m
[32m+[m[32m  <suite started-at="2026-06-13T12:08:40 IST" name="Suite" finished-at="2026-06-13T12:08:57 IST" duration-ms="16968">[m
     <groups>[m
       <group name="Master">[m
[31m-        <method signature="TC001_AccountRegistrationTest.verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@19e4fcac]" name="verifyAccountRegistration" class="testCases.TC001_AccountRegistrationTest"/>[m
[31m-        <method signature="TC002_LoginTest.verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@21fd5faa]" name="verifyLoginTest" class="testCases.TC002_LoginTest"/>[m
[32m+[m[32m        <method signature="TC001_AccountRegistrationTest.verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@6dab9b6d]" name="verifyAccountRegistration" class="testCases.TC001_AccountRegistrationTest"/>[m
[32m+[m[32m        <method signature="TC002_LoginTest.verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@2e6a5539]" name="verifyLoginTest" class="testCases.TC002_LoginTest"/>[m
       </group> <!-- Master -->[m
       <group name="Sanity">[m
[31m-        <method signature="TC002_LoginTest.verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@21fd5faa]" name="verifyLoginTest" class="testCases.TC002_LoginTest"/>[m
[32m+[m[32m        <method signature="TC002_LoginTest.verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@2e6a5539]" name="verifyLoginTest" class="testCases.TC002_LoginTest"/>[m
       </group> <!-- Sanity -->[m
       <group name="Regression">[m
[31m-        <method signature="TC001_AccountRegistrationTest.verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@19e4fcac]" name="verifyAccountRegistration" class="testCases.TC001_AccountRegistrationTest"/>[m
[32m+[m[32m        <method signature="TC001_AccountRegistrationTest.verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@6dab9b6d]" name="verifyAccountRegistration" class="testCases.TC001_AccountRegistrationTest"/>[m
       </group> <!-- Regression -->[m
     </groups>[m
[31m-    <test started-at="2026-06-11T18:04:22 IST" name="Test" finished-at="2026-06-11T18:04:34 IST" duration-ms="11695">[m
[32m+[m[32m    <test started-at="2026-06-13T12:08:40 IST" name="windows-Chrome" finished-at="2026-06-13T12:08:57 IST" duration-ms="16968">[m
       <class name="testCases.TC002_LoginTest">[m
[31m-        <test-method is-config="true" signature="setup(java.lang.String,java.lang.String)[pri:0, instance:testCases.TC002_LoginTest@21fd5faa]" started-at="2026-06-11T18:04:28 IST" name="setup" finished-at="2026-06-11T18:04:30 IST" duration-ms="2101" status="PASS">[m
[32m+[m[32m        <test-method is-config="true" signature="setup(java.lang.String,java.lang.String)[pri:0, instance:testCases.TC002_LoginTest@2e6a5539]" started-at="2026-06-13T12:08:51 IST" name="setup" finished-at="2026-06-13T12:08:54 IST" duration-ms="2640" status="PASS">[m
           <params>[m
             <param index="0">[m
               <value>[m
[31m-                <![CDATA[Windows]]>[m
[32m+[m[32m                <![CDATA[windows]]>[m
               </value>[m
             </param>[m
             <param index="1">[m
[36m@@ -33,21 +33,21 @@[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- setup -->[m
[31m-        <test-method signature="verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@21fd5faa]" started-at="2026-06-11T18:04:30 IST" name="verifyLoginTest" finished-at="2026-06-11T18:04:34 IST" duration-ms="3515" status="PASS">[m
[32m+[m[32m        <test-method signature="verifyLoginTest()[pri:0, instance:testCases.TC002_LoginTest@2e6a5539]" started-at="2026-06-13T12:08:54 IST" name="verifyLoginTest" finished-at="2026-06-13T12:08:56 IST" duration-ms="2831" status="PASS">[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- verifyLoginTest -->[m
[31m-        <test-method is-config="true" signature="tearDown()[pri:0, instance:testCases.TC002_LoginTest@21fd5faa]" started-at="2026-06-11T18:04:34 IST" name="tearDown" finished-at="2026-06-11T18:04:34 IST" duration-ms="204" status="PASS">[m
[32m+[m[32m        <test-method is-config="true" signature="tearDown()[pri:0, instance:testCases.TC002_LoginTest@2e6a5539]" started-at="2026-06-13T12:08:56 IST" name="tearDown" finished-at="2026-06-13T12:08:57 IST" duration-ms="194" status="PASS">[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- tearDown -->[m
       </class> <!-- testCases.TC002_LoginTest -->[m
       <class name="testCases.TC001_AccountRegistrationTest">[m
[31m-        <test-method is-config="true" signature="setup(java.lang.String,java.lang.String)[pri:0, instance:testCases.TC001_AccountRegistrationTest@19e4fcac]" started-at="2026-06-11T18:04:22 IST" name="setup" finished-at="2026-06-11T18:04:25 IST" duration-ms="2620" status="PASS">[m
[32m+[m[32m        <test-method is-config="true" signature="setup(java.lang.String,java.lang.String)[pri:0, instance:testCases.TC001_AccountRegistrationTest@6dab9b6d]" started-at="2026-06-13T12:08:40 IST" name="setup" finished-at="2026-06-13T12:08:46 IST" duration-ms="6446" status="PASS">[m
           <params>[m
             <param index="0">[m
               <value>[m
[31m-                <![CDATA[Windows]]>[m
[32m+[m[32m                <![CDATA[windows]]>[m
               </value>[m
             </param>[m
             <param index="1">[m
[36m@@ -59,15 +59,15 @@[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- setup -->[m
[31m-        <test-method signature="verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@19e4fcac]" started-at="2026-06-11T18:04:25 IST" name="verifyAccountRegistration" finished-at="2026-06-11T18:04:28 IST" duration-ms="2792" status="PASS">[m
[32m+[m[32m        <test-method signature="verifyAccountRegistration()[pri:0, instance:testCases.TC001_AccountRegistrationTest@6dab9b6d]" started-at="2026-06-13T12:08:46 IST" name="verifyAccountRegistration" finished-at="2026-06-13T12:08:51 IST" duration-ms="4343" status="PASS">[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- verifyAccountRegistration -->[m
[31m-        <test-method is-config="true" signature="tearDown()[pri:0, instance:testCases.TC001_AccountRegistrationTest@19e4fcac]" started-at="2026-06-11T18:04:28 IST" name="tearDown" finished-at="2026-06-11T18:04:28 IST" duration-ms="254" status="PASS">[m
[32m+[m[32m        <test-method is-config="true" signature="tearDown()[pri:0, instance:testCases.TC001_AccountRegistrationTest@6dab9b6d]" started-at="2026-06-13T12:08:51 IST" name="tearDown" finished-at="2026-06-13T12:08:51 IST" duration-ms="265" status="PASS">[m
           <reporter-output>[m
           </reporter-output>[m
         </test-method> <!-- tearDown -->[m
       </class> <!-- testCases.TC001_AccountRegistrationTest -->[m
[31m-    </test> <!-- Test -->[m
[32m+[m[32m    </test> <!-- windows-Chrome -->[m
   </suite> <!-- Suite -->[m
 </testng-results>[m
