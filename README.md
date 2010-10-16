= Mars 

=== What is it?


=== Technology


== Why


Simply type: 
 
   mars {your project name}


To run a mercury app:

    cd into your project folder and type:
    
    mars
    
Keeping it this simple allows users to start building right away!
 

== Install

    gem install mars


== Create a mercury project

    # Create a new folder for your project
    
    mars {project}
    
    # Create your haml files
    
    cd {project}
    
    cd wwwroot
    
    touch test.haml

===
    
    # then create a erb page
    
    touch test.erb
    
  
===Run Server
    
    # cd back to the root directory
    
    cd ..
    
    # run 
    
    mars
    
    # now navigate to localhost:9292
            
    
== Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

== Copyright

Copyright (c) 2010 Jack Russell Software Company. See LICENSE for details.
