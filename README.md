# Vaccine Web Tests With Robot Framework

Test suites for service site https://vaccine-haven.herokuapp.com/

By: Nutta Sittipongpanich 6210545475

## Instructions to run the tests

### Requirements

- Python3.6 or higher
- Window operation system

For other operation systems please follow these procedure first
1. Download chromedriver for your computer's operation system from [this link](https://sites.google.com/chromium.org/driver/home)

2. Locate your chrome driver file path

3. Go to [resource.robot](code/resource.robot) and update `${DRIVER_PATH}` to your own path to the chrome driver file

### After installing chrome driver

Install the required packages (first time only)

```bash
pip install -r requirements.txt
```

Then proceed to run the test suite
 
```bash
robot code/vaccine-haven-test.robot
```
Note: [create-citizen-test.robot](code/create-citizen-test.robot) is a test file for register a test citizen and this user is already registered to the database, hence the test will fail.

---

## Robot Framework or Cucumber with Selenium/HTTP library and JUnit?

In my opinion, Robot framework is better because, compare to Cucumber, test case log are more simplify which makes it easier to read and test section divisions in one file provide better method to run many test consecutively.

---

## Tutorial, Online resources for Robot Frameworks

- [TH site - Chrome driver installation instructions](https://tanjai.me/note-%E0%B8%A7%E0%B8%B4%E0%B8%98%E0%B8%B5%E0%B8%95%E0%B8%B4%E0%B8%94%E0%B8%95%E0%B8%B1%E0%B9%89%E0%B8%87-chrome-driver-%E0%B9%80%E0%B8%9E%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%81%E0%B8%B1%E0%B8%9A-robot-framework-a1303eca0ee3)
- [Decent Robot framework tutorial](https://www.edureka.co/blog/robot-framework-tutorial/)
- [Robot framework official site](https://robotframework.org/)
- [Selenium library usage](https://robotframework.org/SeleniumLibrary/#usage)
