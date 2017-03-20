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
testing (that is, UI testing).  There is no official PHP Selenium
library, so we will write these tests in Python.  In Debian Linux
(testing distribution), this will install Python-flavored Selenium:

    $ apt-get install python-selenium python3-selenium
    
    # Running this pip command outside a virtualenv seemed more
    # effective.
    $ pip install selenium
    
    # Also, install a webdriver for Chrome, to get around the fact that
    # Selenium needs a driver (geckodriver) that depends on a recent
    # version of Firefox (48):
    
    $ apt-get install chromium-webdriver

Now, running tests in Selenium from the command line will work.  To run
the Checkbook test suite, run:

    $ python tests/selenium/checkbook-tests.py 

To add a new test, you'll need to:

1. Add a new function to checkbook-tests.py.  This function's name
should start with the word "test" so that `unittest` recognizes it.
2. In the final "assert" statement of the new function, write a
meaningful error message if the test fails.
3. Write a function in page.py that performs some action on the page and
checks the value of the result.

4. In locators.py, using Selenium methods or the `By` class, locate any
elements that your new page.py function needs.  See the [locating
elements](http://selenium-python.readthedocs.io/locating-elements.html)
section of the docs for a list of methods and attributes on the `By`
class.

See commit 6358714 for an example of adding a new test.

See also the excellent [Selenium with Python
docs](http://selenium-python.readthedocs.io/index.html) for more tips on
writing these tests.


### Non-Python Selenium

We recommend writing Selenium tests in Python.  The Selenium project
supports Python, and there is a wealth of documentation about how to use
it properly.  We don't recommend writing tests in PHP, but if you'd like
to do so, some PHP options include:

- Using [a Drupal module](https://www.drupal.org/project/selenium).
  This Drupal module hasn't been updated in a few years and is seriously
  underdocumented.

- Using [PHP Webdriver](https://github.com/facebook/php-webdriver)
  directly.

- Here's a blog post about [php and
  selenium](http://codeception.com/11-12-2013/working-with-phpunit-and-selenium-webdriver.html).
