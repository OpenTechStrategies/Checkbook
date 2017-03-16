# Selenium recommends separating the "page object model" (POM) from the
# tests.  This allows us to change just one class if the UI changes,
# instead of changing all the tests that touch that page
# (https://seleniumhq.github.io/docs/best.html).
#
# This means that classes and methods in the POM should not themselves
# be tests.  For example, read_search_results() should just retrieve the
# results from the page.  A different function will compare those
# results to the ones expected in the sample data.
#
# See also http://selenium-python.readthedocs.io/page-objects.html
#
# To run this script, you should have Selenium and a Chrome webdriver
# installed.

from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait # available since 2.4.0
from selenium.webdriver.support import expected_conditions as EC # available since 2.26.0
import time

from element import BasePageElement
from locators import HomePageLocators

class BasePage(object):
    """Base class to initialize the base page that will be called from all pages"""

    def __init__(self, driver):
        self.driver = driver


class HomePage(BasePage):
    """
    This is the landing page for the app.
    """

    def title_matches(self):
        """
        Checks whether or not title of the site has the expected value.
        Returns True if yes and False if not.
        """
        return "<title>Checkbook NYC</title>" in self.driver.page_source


