Testing
==================

This file discusses the various test suites used in Checkbook.



Selenium
---------------

[Selenium](http://www.seleniumhq.org/) is used for browser-based testing
(that is, UI testing).  There is no official PHP library, so we will
write these tests in Python.  In Debian Linux (testing distribution),
this will install Python-flavored Selenium:

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


### Non-Python Selenium

If you'd rather not write tests in Python, PHP options include:

- Using [a Drupal module](https://www.drupal.org/project/selenium).
  This Drupal module hasn't been updated in a few years and is seriously
  underdocumented, so we won't use it for this project.

- Using [PHP Webdriver](https://github.com/facebook/php-webdriver)
  directly.

- Here's a blog post about [php and
  selenium](http://codeception.com/11-12-2013/working-with-phpunit-and-selenium-webdriver.html).
