# Based on
# http://selenium-python.readthedocs.io/page-objects.html#test-case.

import unittest
from selenium import webdriver
import page

class BasicSearch(unittest.TestCase):
    """A test class to check whether search works in StreetCRM """

    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get("http://localhost")

    def test_homepage(self):
        homepage = page.HomePage(self.driver)
        assert homepage.title_matches(), True
        
    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()
