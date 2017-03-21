Testing
==================

This file discusses the various test suites used in Checkbook.  We
distinguish between server-side and client-side (browser-based) testing.


Server-side
------------

TBD


Client-side
---------------

Checkbook uses [Selenium](http://www.seleniumhq.org/) for browser-based
testing (that is, UI testing).  For the most part these tests are
written in Java.  See `source/tests/functional/NYCAutomationTest` for
these Java-based Selenium tests.

### Maven

To use these tests:

    $ cd source/tests/functional/NYCAutomationTest
    $ cp src/test/resources/conf.properties.tmpl src/test/resources/conf.properties

    # Using whatever editor you prefer, edit the conf file:
    $ emacs src/test/resources/conf.properties
    
      # Edit the file to use your URL and database connection
      # information (and the current fiscal year, for now).  This should
      # match the information in settings.php for the PostgreSQL
      # `checkbook` database.  Set your operating system to Windows,
      # Linux, or Mac.
      
    $ mvn test
      # If the webdriver is set up, this will open a browser window and
      # perform some tests.



