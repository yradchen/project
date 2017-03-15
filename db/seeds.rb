Instruction.delete_all
Project.delete_all
Comment.delete_all
User.delete_all

guest = User.create!({username: "Guest", password: "wizardhat1", email: "some@guestlogin.fake"})
guest2 = User.create!({username: "John Smith", password: 'wizardhat2', email: "something@gu22es23tlogin.fake2"})
dan = User.create({username: "Daniel", password: 'Ilovealerts', email: "nothing@none.net"})
colson = User.create({username: "Mr. Colson", password: 'Ilovealerts2', email: "w2hat@n3one.net"})

jquery = Project.create({title: "jQuery 101", description: "{\"ops\":[{\"attributes\":{\"italic\":true},\"insert\":\"Credit to http://www.codeconquest.com/tutorials/jquery/ for the source material.\"},{\"insert\":\"\\n\\njQuery is a JavaScript library, according to the official documentation.\\n\\nMany refer to it as a JavaScript framework, however, library is the correct term to use when describing it. As to why we’ll get to the difference between those two terms in a bit.\\n\\nFor now, all you need to know is that jQuery is designed to make working with JavaScript much easier, primarily when it comes to building websites.\\n\\nBecause of that, it’s important that you understand when you’re working with jQuery you are, in fact, writing in JavaScript. jQuery is not meant to replace JavaScript, nor does it act as a substitute. Instead, it’s only meant to enhance use of the language.\\n\\njQuery is structured so that you can call upon functions with a single line of code. If you were working with just JavaScript, you would have to write many lines of code to do the same thing. However, jQuery wraps all the general coding of a function into one package – which is why many refer to it as a framework – so that you can write programs and apps easily and more efficiently.\\n\\nThat said, you do not need to be an expert in JavaScript to work with jQuery. This is because it is designed to simplify working with the language, by shortening several complicated processes; like AJAX calls and DOM manipulation.\\n\\nIn terms of a framework, jQuery is not the only library of its kind. There are many other JavaScript frameworks that developers can use when building websites and apps.\\n\\nWhat makes jQuery so popular, is that it’s remarkably powerful, has a wide range of plugins and commands, and is easy to use and read. One could even go so far as to say that jQuery syntax is attractive.\\n\\n\"}]}", user_id: guest.id, cover_img: "https://s3.amazonaws.com/codeables-DEV/seeds/jquery-logo.png", publish: true})

Instruction.create!({step_title: "How is jQuery Used?", step_detail: "{\"ops\":[{\"insert\":\"jQuery is most commonly used as a client-side scripting language for web applications and web development. This means that it is added alongside HTML and CSS, located on the client side of a web page as opposed to the server side.\\n\\nWhen a visitor lands on a webpage that uses JavaScript, the script is sent to the browser and that is when it is executed. In essence, the browser is what does the work with the script.\\n\\nIn layman’s terms, jQuery is used to spruce up the interface or interactions on a website. This can happen through user input fields, larger forms, pop-up windows and notifications, and much more.\\n\"}]}", project_id: jquery.id})

how_to = Project.create!({title: "How to write a codeable", description: "{\"ops\":[{\"insert\":\"The following instructions will teach you how to write a Codeable. A Codeable is essentially anything that can be made using code. This can range from full games or websites, to features or even just projects, such as how to make something using a Raspberry Pi!\\n\"}]}", user_id: guest.id, cover_img: "https://s3.amazonaws.com/codeables-DEV/seeds/how_to_use_box.gif", publish: true})

Instruction.create!({step_title: "Step 1: Start the project", step_detail: "{\"ops\":[{\"insert\":\"After logging in click the little '\"},{\"attributes\":{\"bold\":true},\"insert\":\"You\"},{\"insert\":\" dropdown menu from the top right menu and select '\"},{\"attributes\":{\"bold\":true},\"insert\":\"New Codeable\"},{\"insert\":\"' or \"},{\"attributes\":{\"bold\":true},\"insert\":\"Draft Codeables\"},{\"insert\":\" to edit existing but not yet published Codebales.\\n\"}]}", project_id: how_to.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/step_one.png"})

Instruction.create!({step_title: "Step 2: Entering a title and the overview page.", step_detail: "{\"ops\":[{\"insert\":\"At this point a pop-up will appear and ask you to enter a title (don't worry you can edit this later). Enter a title!\\n\\nThe overview page will have the following buttons;\\n\\nPublish - Allows you to toggle the published state of your project. This will make the project visible to other users on Codeables.\\n\\nClick Here to Edit - Will take you to a form to edit a particular section or step in your project.\\n\\nAdd Step - Add a step to your project which will allow for a step title, description and image.\\n\\nX - Visible on the bottom right of a step when you hover over it (excluding the intro step). This allows you to delete a step from your project.\\n\"}]}", project_id: how_to.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/edit_overview.png"})

Instruction.create!({step_title: "Step 3: Intro edit page", step_detail: "{\"ops\":[{\"insert\":\"The next step is to work on the projects introduction. Click on the first 'Click Here to Edit'.\\n\\nOn this page you will have the following options;\\n\\nClick to Add File -This allows you to edit the cover image. This is the first image users will see on the homepage when looking through projects as well as the first image that is visible when viewing your project.\\n\\nTitle field - This will be the title of your project, which will be visible on the Codeables homepage. \\n\\nDescription Field - this is the larger textfield below the title field and will be in a smaller font than the title field. This field should be used to give an overview of your project. \\n\\nClick to Save File - This will allow you to save your work and redirect you back to the project overview page. \\n\"}]}", project_id: how_to.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/edit_form.png"})

Instruction.create!({step_title: "Step 4: Step edit page", step_detail: "{\"ops\":[{\"insert\":\"After adding and introduction, description and cover image, it's time to add some steps to your project.\\n\\nClick the Add Step button and then click on it's 'Click Here to Edit' button.\\n\\nThis will take you to a form that's identical to your introduction edit form. While these forms are the same they serve different purposes. The purpose of the step form is to inform users on what to do at this particular stage of their project. Ask yourself, what does my user have to do now? Guide the other users through the steps of completing your project. Pictures are NOT necessary for this part but they do help!\\n\"}]}", project_id: how_to.id})

Instruction.create!({step_title: "Step 5: Publishing your project or working on it later", step_detail: "{\"ops\":[{\"insert\":\"If you're finished with your Codeable you can click publish. Otherwise, can always come back to it by clicking on the 'You' and click 'Draft Codeables' to view unpublished Codeables and work on them at a later date.\\n\"}]}", project_id: how_to.id})

ruby = Project.create!({title: "Ruby 101", description: "{\"ops\":[{\"insert\":\"Credit to http://www.codeconquest.com/tutorials/ruby/programming-projects-for-beginners/ for the source material!\\n\\nFirst, we need to open a terminal or command prompt so that we can work with the code. After you have installed Ruby, open up the IRb shell.\\n\\nIf you’re using Mac OS X you can do this by opening up the Terminal typing “irb”, then pressing enter.\\nIf you’re using Linux, then open up a shell, type “irb”, and press enter.\\nIf you’re using Windows, you open Interactive Ruby from the Ruby section of your Start Menu OR you can open a command prompt, type “irb” and then press enter.\\n\\n\"}]}", user_id: guest.id, cover_img: "https://s3.amazonaws.com/codeables-DEV/seeds/ruby.png", publish: true})

Instruction.create!({step_title: "Hello World", step_detail: "{\"ops\":[{\"insert\":\"As you probably already know, one of the first things you will learn to do with any language is how to output the text, “hello world.” We’re going to do the same thing here, but be sure to take note of how easy that is to do with Ruby.\\n\\nAfter you’ve opened the IRb shell, just type the following into the prompt:\\n\\nputs \\\"Hello World\\\"\\nWhen you press enter, the terminal should return the following:\\n\\nHello World\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> nil\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nThe “Hello World” part is obviously the text that we asked the shell to output. The “nil” is the result of the expression, or the shell telling us that the final value is absolutely nothing.\\n\\nIf you’re wondering whether or not that means we can use the shell and Ruby code as a basic calculator, then the answer is yes.\\n\\nType any simple equation into the terminal, and press enter to see the result. For example:\\n\\nirb(main):003:0> 7+2\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> 9\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nCongratulations! You know how to work with the Ruby shell now!\\n\\n\"}]}", project_id: ruby.id})

Instruction.create!({step_title: "Defining Methods", step_detail: "{\"ops\":[{\"insert\":\"In Ruby, we can define methods to make things a little simpler. This is like a basic function, where we give the method a name – which will be used to call it – and then give it something to do.\\n\\nFor example, let’s start with this:\\n\\ndef method\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"    puts \\\"Yay! This is our method!\\\"\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\n\\nIn the code snippet above, we are defining a method called “method,” which will output the message “yay, this is our method,” after which it will end.\\n\\nWant to know how to activate the method? It’s simple.\\n\\nType the name of your defined method like so:\\n\\nmethod\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"Yay! This is our method!\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> null\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nThat was pretty easy, right?\\n\\nLet’s create a new method that asks the user for some personal information! In this way, we can make our final program (which is what the compiled code is) interactive.\\n\\nYou start by defining a method, and then asking it to prompt the user, like so:\\n\\ndef hello\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"    puts \\\"Hello \#{name}! Have a good day!\\\"\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nWhen you call your method using this snippet, it will pause and ask you to input a name. Go ahead and enter any name you want in place of Bob’s. It should look something like the following when you run the code.\\n\\nhello (\\\"Bob\\\")\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"Hello Bob! Have a good day!\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> nil\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nNotice how we also defined the name that would be used by our method in parenthesis? You will need to do this, as well.\\n\\nIf you see the same output as the one above – with your name instead of Bob’s – then you’ve done it right! Congratulations, again! You’re one step closer to becoming a Ruby pro.\\n\\n\"}]}", project_id: ruby.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/methods.jpg"})

Instruction.create!({step_title: "Working with Classes and Creating an Object", step_detail: "{\"ops\":[{\"insert\":\"Last, but not least, we’re going to learn how to work with classes and objects to store information. We’re going to do this by creating a simple AI program that will greet us by name and tell us farewell when it’s done.\\n\\nFirst, we’re going to create the class that will include the methods (instructions) for our AI. The code to do that is the following:\\n\\nclass Greeter\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"     def initialize(name = \\\"AI\\\")\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"     @name = name\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"     end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"          def hello\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"          puts \\\"Hey \#{@name}!\\\"\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"          end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"               def goodbye\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"               puts \\\"Bye \#{@name}, have a good day! Come back and talk soon.\\\"\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"               end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"end\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> nil\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\\nOur class is called “Greeter” and below that are our methods that will take place when we activate that class.\\n\\nTo make this work the way we want, however, we need to create an object called “Greeter” which is the same name as our class.\\n\\ngreeter = Greeter.new(\\\"Bob\\\")\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> #<Greeter:0x16cac @name=\\\"Bob\\\">\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nIn this object we are telling the AI our name is “Bob” so if you want to use a different name swap out Bob’s (obviously).\\n\\nNow our object will remember the name we entered.\\n\\nLet’s give our program a try!\\n\\ngreeter.hello\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"Hey Bob!\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> nil\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\n\\nWorks great! Now let’s make it say goodbye!\\n\\ngreeter.goodbye\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"Bye Bob, have a good day! Come back and talk soon.\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"=> nil\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nSweet! We’re getting good at this, huh?\\n\\n\"}]}", project_id: ruby.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/Nav-classes.jpg"})

sql = Project.create!({title: "SQL 101", description: "{\"ops\":[{\"attributes\":{\"italic\":true},\"insert\":\"Credit to http://www.codeconquest.com/tutorials/mysql/ for the source material\"},{\"insert\":\"\\n\\nBefore you can fully understand what MySQL is, we need to define what a computer database is. They are in direct relation to one another.\\n\\n\"}]}", user_id: guest.id, cover_img:"https://s3.amazonaws.com/codeables-DEV/seeds/sql.png", publish: true})

Instruction.create!({step_title: "What Is a Database?", step_detail: "{\"ops\":[{\"insert\":\"In simple terms, a database is nothing more than a collection of data. Specialized software – like MySQL – is designed to collect that data, and handle the storage and retrieval processes in an extremely efficient manner.\\n\\nDatabases exist to handle the organization and facilitation of great amounts of data. The data contained within them can be just about anything from a list of customers and their shipping addresses to personal info for students enrolled in a class, and more.\\n\"}]}", project_id: sql.id, media:"https://s3.amazonaws.com/codeables-DEV/seeds/database.jpeg"})

Instruction.create!({step_title: "What is SQL?", step_detail: "{\"ops\":[{\"insert\":\"SQL, often pronounced “sequel,” is a computer programming language that database software – like MySQL – uses. A variety of computer platforms – especially web-based apps like blogs, CMS systems, and photo galleries – must be able to store and retrieve data in order to operate fully.\\n\\nFor example, a CMS or content management platform like WordPress must store and retrieve a wide variety of data. When visitors navigate to your site, it must be able to retrieve stored posts (articles) that you’ve written along with any content associated with them, including images. It does this, through SQL, MySQL, and database software.\\n\"}]}", project_id: sql.id})

Instruction.create!({step_title: "So, What is MySQL?", step_detail: "{\"ops\":[{\"insert\":\"MySQL is the database software used to carry out the data storage and retrieval. To clarify, MySQL is the software, SQL is the language, and both of these elements work together to create and manage a computer database.\\n\\nIn technical terms, it is an open-source relational database management system or RDBMS.\\n\\nMySQL is not the only database software that developers can use. There are other options like PostgreSQL. Both of these database software tools are incredibly popular because they are free. This is why you see a great deal of hosting providers advertising support for MySQL and PostgreSQL.\\n\\nAs we already established above, a majority of web applications like WordPress require the use of computer databases and related software to store and retrieve data.\\n\"}]}", project_id: sql.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/MySQL.svg.png"})

Instruction.create!({step_title: "How is MySQL Used?", step_detail: "{\"ops\":[{\"insert\":\"MySQL is used for many web applications to organize important data. Most applications will use a database in the following ways:\\n\\nTo store content for display\\nTo save information entered into forms, such as customer info, emails and dates\\nTo log visitor data as well as when certain actions are performed within the application\\nSome applications and platforms that require use of database software include:\\n\\nCMS platforms like WordPress, Drupal, and Joomla\\niPhone and Android Applications\\nDesktop Software\\nSoftware repositories\\n\\n\"}]}", project_id: sql.id})

javaScript = Project.create({title: "JavaScript 101", description: "{\"ops\":[{\"attributes\":{\"italic\":true},\"insert\":\"Credit to http://www.codeconquest.com/tutorials/javascript/ for the source material.\"},{\"insert\":\"\\n\\nJavaScript is a language that adds functionality and interactivity to websites. While HTML can create a web page, and CSS can customize its appearance, the page will be static. It won’t do anything.\\n\\nHow do you fix that? JavaScript! JavaScript makes many things possible on web pages. It responds to user events like clicks, hovers or key presses. It changes HTML, changes CSS and makes web pages interactive.\\n\\nLike CSS, there are three ways that JavaScript is embedded on web pages – inline, internal and external.\\n\"}]}", user_id: guest.id, cover_img: "https://s3.amazonaws.com/codeables-DEV/seeds/javascript.png", publish: true})

Instruction.create!({step_title: "Inline JavaScript", step_detail: "{\"ops\":[{\"insert\":\"When embedding inline CSS in an HTML tag, websites use the style attribute. When embedding inline JavaScript however, there are a number of attributes that are used.\\n\\nOne of these attributes is onclick. Any JavaScript code inside an onclick attribute gets executed when the HTML element is clicked.\\n\\nThe inner text of the below <strong> tag is currently ‘Text’. JavaScript will change the inner text to ‘Bold Text’ when the element is clicked.\\n\\n\"}]}", project_id: javaScript.id})

Instruction.create!({step_title: "Internal JavaScript", step_detail: "{\"ops\":[{\"insert\":\"Like CSS, inline JavaScript is uncommon. Often, websites have scripts that involve multiple HTML elements, so they tend to collect them all up and place them together in one big script, using the HTML <script> tag.\\n\\n<script>\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"  var num = 142857;\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"  document.getElementById('bold').innerText = num;\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"</script>\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\nThe <script> tag is often placed as the last element inside a website’s <body>. This is so that all the HTML elements can fully load before they get transformed by the JavaScript.\\n\"}]}", project_id: javaScript.id})

Instruction.create!({step_title: "External JavaScript", step_detail: "{\"ops\":[{\"insert\":\"Often, a website will have its JavaScript in a separate file called script.js. This allows the site to use the same script on multiple web pages. Here’s how a website would link to an external JavaScript file, assuming the file name is script.js:\\n\\n<script src=\\\"script.js\\\"></script>\"},{\"attributes\":{\"code-block\":true},\"insert\":\"\\n\"},{\"insert\":\"\\n\\n\\nLike with internal JavaScript, this tag is often placed near the end of the <body> element on a web page.\\n\\n\"}]}", project_id: javaScript.id, media: "https://s3.amazonaws.com/codeables-DEV/seeds/external.jpg"})
