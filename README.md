# separate-storyboards
Swift 4 project with separate storyboards along with distinct view controllers 

There are times when a single storyboard file can grow out of control and having to navigate or even change the massive storyboard is less to be desired.  Also, if you ever want to share your code and have 2 or more people edit the storyboard, this will result in merge conflicts.  While the solution might be to transition to your views completely written programmatically, this might not be necessary because the project is not big enough to require such commitment.  One solution, is to create a hybrid solution by creating separate storyboard files for each view controller.  This code shows 4 view controllers each with a storyboard file.  This way, the separation of work is very clear and if each storyboard is delegated to various people or changes made incrementally, there is less chance for merge conflicts.  

There are a few things to keep in mind when implementing separate storyboard files.

1) The storyboard file name should have the same name as the view controller file name.  This way, it makes it easier to instantiate the view controller programmatically without having to constantly type in the name of the storyboard id, which could easily result in typos and unnecessary hair pulling during debugging.

2) Make sure to only instantiate the initial view controller once in your code or else there will be crashes without much error logging from xcode.

3) You can either instantiate the following static function in each view controller:
 
 Sample Code:
 MainVC
     static func storyboardInstance() -> MainVC? {
        //NOTE: Name of Class must be the same as the storyboardID
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        return storyboard.instantiateInitialViewController() as? MainVC
    }
    
 or use a protocol called Storyboardable and simply create a new view controller by calling the 2 functions provided:
     a) initialStoryboardController()
     b) storyboardController()
     

Here are the steps to follow in creating an additional view controller (Example: FourthVC)
1) Create new storyboard file called FourthVC.storyboard
2) Create new cocoa class touch file called FourthVC.swift subclassed as UIViewController
3) Drag in ViewController into the storyboard
4) Under identity inspector, change the custom class from UIViewController to FourthVC
5) Under identity, change the storyboard ID to the name of the storyboard: FourthVC 
6) Depending on how you will instantiate the viewcontroller, you can create a static function within the FourthVC class or use the Storyboardable protocol from the other view controller.  
