Hello!
Inside the RZAZoo.sln file, when opened, there will be a tab on the right box called "Web.config", likely at the bottom of the list though this may vary

Please change the connection string lines where it says "data source" to the path of where you have the databases downloaded
![image](https://github.com/pomzie/RZAZoo/assets/68748771/8249f064-4b6a-4ff1-8dbf-b8a05ca6cbfc)

![image](https://github.com/pomzie/RZAZoo/assets/68748771/4ff19a98-002f-49d7-b399-0b513e470a08)
--
If you get an error about roslyn csc, 

![image](https://github.com/pomzie/RZAZoo/assets/68748771/f9fc996a-b65d-4062-ad87-9399e5b3b181)

click the tools tab, go to the NuGet package manager, open the package manager console and type in this:

Update-Package Microsoft.CodeDom.Providers.DotNetCompilerPlatform -r
---
![image](https://github.com/pomzie/RZAZoo/assets/68748771/24a226c6-59f6-46c2-8460-5fa846b4853d)

If you get an error about a validlogin session when you click booking or membership tabs, close the current run, right click login.aspx and click set as start page, then rerun
----

Thank you! <3
the form for feedback is here:

https://forms.gle/WFNwZq9aJyYgPVXLA [Technical form for users with technical experience (i.e hired testers)]

https://forms.gle/p1Y9Fsgpdkw4Cwi2A [Non-technical form for users acting as non-technical users (i.e customers)]
