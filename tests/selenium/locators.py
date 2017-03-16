# This file comes from
# http://selenium-python.readthedocs.io/page-objects.html.
#

from selenium.webdriver.common.by import By

class HomePageLocators(object):
    """A class for home page locators. """

    REVENUE_TD = (By.CLASS_NAME, 'revenue')
    CHART_TITLE = (By.CLASS_NAME, 'chart-title')


class SearchResultsPageLocators(object):
    """A class for search results locators. All search results locators should come here"""
    pass

