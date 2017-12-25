
1) Set upside in didfinishLunching 

//MARK:- For sidemenu
    var window: UIWindow?
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    fileprivate func createMenuView()
    {
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewScreen") as! MainViewScreen
        
        let view = storyboard.instantiateViewController(withIdentifier: "Splashscreen")as! Splashscreen
        
        let signin = storyboard.instantiateViewController(withIdentifier: "LoginScreen")as! LoginScreen
        
        
        let SideTableViewController = storyboard.instantiateViewController(withIdentifier: "SideTableViewController") as! SideTableViewController
        
        let nvc: UINavigationController = UINavigationController(rootViewController: view)
        SideTableViewController.mainViewController = nvc
        let slideMenuController = ExSlideMenuController(mainViewController:nvc, leftMenuViewController: SideTableViewController)
        
        slideMenuController.automaticallyAdjustsScrollViewInsets = true
        slideMenuController.delegate = mainViewController as? SlideMenuControllerDelegate
        self.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
        self.window?.rootViewController = slideMenuController
        self.window?.makeKeyAndVisible()
    }

2) createMenuView() : Set in didfinish lunching func
