Instruction.delete_all
Project.delete_all
Comment.delete_all
User.delete_all
#

guest = User.create!({username: "someone", password: "wizardhat1", email: "some@guestlogin.fake"})
guest2 = User.create!({username: "John Smith", password: 'wizardhat2', email: "something@gu22es23tlogin.fake2"})
dan = User.create({username: "Daniel", password: 'Ilovealerts', email: "nothing@none.net"})
colson = User.create({username: "Mr. Colson", password: 'Ilovealerts2', email: "w2hat@n3one.net"})

alert_project = Project.create!({title: "How to make an alert", description: "The following will guide you in making one of the most misunderstood, underrated, and useful HTML tools. Alerts!", user_id: guest2.id, cover_img_file_name: "Quality-alert-symbol.gif", cover_img_content_type: "image/gif", cover_img_file_size: 30047, cover_img_updated_at: "2017-02-24 04:20:10"})

sorting_project = Project.create({title: "Sorting", description: "Get ready to sort.\r\n\r\nUse the following to write quick sort, bubble sort, and merge sort!", user_id: guest.id, cover_img_file_name: "meta-box-sorting.jpg", cover_img_content_type: "image/jpeg", cover_img_file_size: 10544, cover_img_updated_at: "2017-02-24 05:10:55"})

loop_project = Project.create({title: "Loops in ruby!", description: "Learn all about while loops!", user_id: guest.id, cover_img_file_name: "LoopmasterLoops.png", cover_img_content_type: "image/png", cover_img_file_size: 53822, cover_img_updated_at: "2017-02-24 05:18:55"})

java_project = Project.create({title: "Javascript loops!", description: "We can use JavaScript loops to run a task repetitively. For example, if we have an array that holds a series of user input and if we are looking for a specific user input, then we can run in a loop and keep iterating until we find an input that matches the specific input.\r\n\r\nConceptually, a loop depends upon a specified condition to determine whether to continue further or to terminate/stop; the condition can be a simple variable or an expression. Typically, a loop would periodically check if the condition is still true and will run as long as it remains true.\r\n\r\nNeedless to say, for the above scheme to work, the loop variable or the loop expression that form the condition, must also change as the loop progresses. If they do not, then the loop would continue to run forever -- imagine running in a circle, forever! We can articulate the scheme of condition check into three stages: loop-initialization (where the loop variable or the expression is initialized), loop-increment (where the loop variable or the expression is changed), and loop-condition (where we check if the condition is still true).\r\n\r\nJavaScript provides four different looping constructs: (1) while loop (2) do-while loop, (3) for loop, and (4) for/in loop. A while loop runs as long as the specified condition (\"loop-condition\") is true. During each round, we would (typically) also update the loop-condition so that the loop can terminate after some time. The do-while variant also has a similar format, except that the while sits at the very end of the loop block; we should remember to put a semicolon at the end of the while!. The next variant is the \"for\" loop. This variant cleanly tucks all the three tasks of looping in the beginning expression itself: loop-initialization, loop-increment, and loop-condition. The last variant, the \"for/in\" method traverses enumerable properties of objects.\r\n\r\nSince this module focuses on jQuery, we should mention that in addition to these native JavaScript loops, jQuery provides two of its own looping constructs. First, it has a .each() method that we can use to iterate over each elements of the returned list. Second, it also provides a static method, $.each() that can iterate over any generic objects -- jQuery based or even native JavaScript based. We will revisit both of these jQuery-specific methods when we talk about jQuery lists.\r\n\r\nLet us return back to our JavaScript loop overview and write a simple example that uses these four looping constructs (while, do-while, for, and for/in) to go over each element of an array, arrNobel.\r\n\r\n", user_id: guest.id, cover_img_file_name: "precious-loops.jpg", cover_img_content_type: "image/jpeg", cover_img_file_size: 126550, cover_img_updated_at: "2017-02-24 14:58:02"})


Instruction.create!([
  {step_title: "Step 1: Write a function in your HTML file", step_detail: "Write a function that will call 'alert' with the message that you want. Wrap it up in <script></script> to let the html file know you'll be using javascript.\r\n\r\n\r\n\r\n<script>\r\n AlertFunction = () => {\r\n    alert(\"Please use alerts everywhere!\");\r\n}\r\n</script>\r\n", project_id: alert_project.id, media_file_name: "1588-alert-box-usage.jpg", media_content_type: "image/jpeg", media_file_size: 69299, media_updated_at: "2017-02-24 04:31:08"},
  {step_title: "Step 2: Buttons!", step_detail: "Now, within your html you will need to create a button that will call on your alert when clicked.\r\n\r\n\r\nSomething as simple as this will work!\r\n\r\n<button onclick=\"myFunction()\">Try it</button>\r\n", project_id: alert_project.id, media_file_name: "Listing-Alerts.png", media_content_type: "image/png", media_file_size: 88504, media_updated_at: "2017-02-24 04:42:02"},
  {step_title: "Step 3: Celebrate!", step_detail: "That's it! You've created an html alert.\r\n\r\nRemember use these everywhere! It's nice to let users know that their actions are being recognized.\r\n\r\n", project_id: alert_project.id, media_file_name: "28ae5ec.jpg", media_content_type: "image/jpeg", media_file_size: 243413, media_updated_at: "2017-02-24 04:44:44"},
  {step_title: "Bubble sort!", step_detail: "def bubble_sort(list)\r\n  return list if list.size <= 1 # already sorted\r\n  swapped = true\r\n  while swapped do\r\n    swapped = false\r\n    0.upto(list.size-2) do |i|\r\n      if list[i] > list[i+1]\r\n        list[i], list[i+1] = list[i+1], list[i] # swap values\r\n        swapped = true\r\n      end\r\n    end    \r\n  end\r\n\r\n  list\r\nend", project_id: sorting_project.id, media_file_name: "hqdefault.jpg", media_content_type: "image/jpeg", media_file_size: 20675, media_updated_at: "2017-02-24 05:10:34"},
  {step_title: "Merge Sort", step_detail: "def mergesort(list)\r\n  return list if list.size <= 1\r\n  mid   = list.size / 2\r\n  left  = list[0, mid]\r\n  right = list[mid, list.size]\r\n  merge(mergesort(left), mergesort(right))\r\nend\r\n\r\ndef merge(left, right)\r\n  sorted = []\r\n  until left.empty? || right.empty?\r\n    if left.first <= right.first\r\n      sorted << left.shift\r\n    else\r\n      sorted << right.shift\r\n    end\r\n  end\r\n  sorted.concat(left).concat(right)\r\nend", project_id: sorting_project.id, media_file_name: "mergeSort.gif", media_content_type: "image/gif", media_file_size: 41624, media_updated_at: "2017-02-24 05:12:36"},
  {step_title: "Quick sort", step_detail: "def quicksort (array)\r\n  return array if array.length <= 1\r\n\r\n  pivot_index = (array.length / 2).to_i\r\n  pivot_value = array[pivot_index]\r\n  array.delete_at(pivot_index)\r\n\r\n  lesser = Array.new\r\n  greater = Array.new\r\n\r\n  array.each do |x|\r\n    if x <= pivot_value\r\n      lesser << x\r\n    else\r\n      greater << x\r\n    end\r\n  end\r\n\r\n  return quicksort(lesser) + [pivot_value] + quicksort(greater)\r\nend", project_id: sorting_project.id, media_file_name: "quick-sort.png", media_content_type: "image/png", media_file_size: 60240, media_updated_at: "2017-02-24 05:14:01"},
  {step_title: "While Loops", step_detail: "Now to totally blow your mind with a new loop, the while-loop. A while-loop will keep executing the code block under it as long as a boolean expression is true.\r\n\r\nWait, you have been keeping up with the terminology, right? You should know that Ruby has three kinds of code blocks you need to read. You have the kind that if-statements use, where code is started after the if, and the block of code is ended with end. You then have two kinds for .each style blocks. Either you use do ... end or { ... } when making a block of code. When I use the characters ... in that last description I do not mean type ... I mean them in the normal English way of \"and then some stuff here\". If you don't quite understand this go back and redo the last few exercises until you get it.\r\n\r\nLater on we'll have some exercises that will train your brain to read these structures, similar to how we burned boolean expressions into your brain.\r\n\r\nBack to while-loops. What they do is simply do a test like an if-statement, but instead of running the code block once, they jump back to the \"top\" where the while is, and repeat. A while-loop runs until the expression is false.\r\n\r\nHere's the problem with while-loops: Sometimes they do not stop. This is great if your intention is to just keep looping until the end of the universe. Otherwise you almost always want your loops to end eventually.\r\n\r\nTo avoid these problems, there are some rules to follow:\r\n\r\nMake sure that you use while-loops sparingly. Usually a for-loop is better.\r\nReview your while statements and make sure that the boolean test will become false at some point.\r\nWhen in doubt, print out your test variable at the top and bottom of the while-loop to see what it's doing.\r\nIn this exercise, you will learn the while-loop while doing these three checks:\r\n\r\n 1\r\n 2\r\n 3\r\n 4\r\n 5\r\n 6\r\n 7\r\n 8\r\n 9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\ni = 0\r\nnumbers = []\r\n\r\nwhile i < 6\r\n  puts \"At the top i is \#{i}\"\r\n  numbers.push(i)\r\n\r\n  i += 1\r\n  puts \"Numbers now: \", numbers\r\n  puts \"At the bottom i is \#{i}\"\r\nend\r\n\r\nputs \"The numbers: \"\r\n\r\n# remember you can write this 2 other ways?\r\nnumbers.each {|num| puts num }", project_id: loop_project.id, media_file_name: nil, media_content_type: nil, media_file_size: nil, media_updated_at: nil},
  {step_title: "What You Should See", step_detail: "$ ruby ex33.rb\r\nAt the top i is 0\r\nNumbers now:\r\n0\r\nAt the bottom i is 1\r\nAt the top i is 1\r\nNumbers now:\r\n0\r\n1\r\nAt the bottom i is 2\r\nAt the top i is 2\r\nNumbers now:\r\n0\r\n1\r\n2\r\nAt the bottom i is 3\r\nAt the top i is 3\r\nNumbers now:\r\n0\r\n1\r\n2\r\n3\r\nAt the bottom i is 4\r\nAt the top i is 4\r\nNumbers now:\r\n0\r\n1\r\n2\r\n3\r\n4\r\nAt the bottom i is 5\r\nAt the top i is 5\r\nNumbers now:\r\n0\r\n1\r\n2\r\n3\r\n4\r\n5\r\nAt the bottom i is 6\r\nThe numbers:\r\n0\r\n1\r\n2\r\n3\r\n4\r\n5", project_id: loop_project.id, media_file_name: nil, media_content_type: nil, media_file_size: nil, media_updated_at: nil},
  {step_title: "Step 1:", step_detail: "When we run this program, the output is identical for all of the four methods:\r\n\r\n Printing array using a while loop: \r\n [index: 0] value: Paul Samuelson\r\n [index: 1] value: John Forbes Nash\r\n [index: 2] value: Amartya Sen\r\n\r\n Printing array using a do-while loop: \r\n [index: 0] value: Paul Samuelson\r\n [index: 1] value: John Forbes Nash\r\n [index: 2] value: Amartya Sen\r\n\r\n Printing array using a for loop: \r\n [index: 0] value: Paul Samuelson\r\n [index: 1] value: John Forbes Nash\r\n [index: 2] value: Amartya Sen\r\n\r\n Printing array using a for-in loop: \r\n [index: 0] value: Paul Samuelson\r\n [index: 1] value: John Forbes Nash\r\n [index: 2] value: Amartya Sen", project_id: java_project.id, media_file_name: "Screen_Shot_2017-02-24_at_9.58.45_AM.png", media_content_type: "image/png", media_file_size: 120873, media_updated_at: "2017-02-24 14:59:34"}
])




Comment.create!([
  {user_id: dan.id, project_id: alert_project.id, body: "Wow, this is a great guide! I wish more people used alerts!"},
  {user_id: colson.id, project_id: alert_project.id, body: "↑ this guy gets it."}
])
