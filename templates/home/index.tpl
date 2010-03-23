[<*
Copyright 2009-2010 The Schedule Miner Authors
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE file.
*>]

[<*
Main homepage
*>]

[<if !isset($SM_USER)>]
   <div class="login_box">
      <p class="center">Type your username and password to get started</p>
      <form id="login_form" action="[<$SM_ROOT>]/users/login/" method="post">
         <table>
            <tr>
               <td>Username:</td>
               <td><input type="text" name="username" value="" id="username" /></td>
            </tr>
            <tr>
               <td>Password:</td>
               <td><input type="password" name="password" value="" id="password" /></td>
            </tr>
            <tr>
               <td colspan="2" class="login_submit"><input type="submit" value="Login" /></td>
            </tr>
         </table>
      </form>
      <p class="center"><a href="[<$SM_ROOT>]/users/create">Create an account</a></p>
   </div>
[</if>]

<h1>Plan you classes</h1>
<h2>Mine the course catalog. Make your schedule golden.</h2>
<p>CSM has hundreds of classes to choose from and almost one-thousand
sections. Get an edge in the schedule-making process and build the
perfect schedule, without having to navigate Trailhead.</p>

<h1>Here's how it works:</h1>
<ol>
   <li>Search for course sections by name, course number, department, instructor, credit hours, or time</li>
   <li>Select the sections you like best</li>
   <li>Keep customizing until you have the perfect schedule</li>
</ol>

[<*
<h2>Guided Schedule Builder</h2>
<ol>
   <li>Select your preferred courses</li>
   <li>Specify preferences for class times and teachers</li>
   <li>Let the scheduler show you all the options</li>
</ol>*>]


[<if isset($SM_USER)>]
   <h1>Need Help? Have a suggestion?</h1>
   <p>Take a look at the <a href="[<$SM_ROOT>]/faq">FAQ</a>. If your question is
   not answered, or you have a suggestion, please visit the <a href="[<$SM_ROOT>]/suggestions">suggestions page</a>.</p>

   [<if count($SM_USER->schedules) eq 0>]
      <h1 class="center"><a href="[<$SM_ROOT>]/schedules/create">Create a Schedule</a></h1>
   [<else>]
      <h1 class="center"><a href="[<$SM_ROOT>]/courses">Browse Courses</a> or <a href="[<$SM_ROOT>]/schedules">View Schedules</a>.</h1>
   [</if>]
[</if>]

<script type="text/javascript">
   document.getElementById('login_form').username.focus();
</script>
