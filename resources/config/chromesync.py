from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome   import ChromeDriverManager


def get_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    print(f'Driver path: {driver_path}')

    driver = webdriver.Chrome(service=ChromeService(driver_path))
    print(f'Driver name: {driver.name}')

    driver.quit()

    return driver_path