//
//  DriverViewController.swift
//  AutoLayoutAdvanced
//
//  Created by Emiliano Alfredo Martinez Vazquez D3 on 3/29/19.
//  Copyright © 2019 Emiliano Alfredo Martinez Vazquez. All rights reserved.
//

import UIKit

class DriverViewController: UIViewController, UIPageViewControllerDataSource {
    
    let imagesNames = ["emoji1","emoji2", "emoji3", "emoji4"]

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let pageController = self.storyboard?.instantiateViewController(withIdentifier: "pageVC") as? UIPageViewController,  let startingViewController = viewControllerAtIndex(index: 0) else { return }
        pageController.dataSource = self
        
        let viewControllers = [startingViewController]
        
        pageController.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
        pageController.view.frame = view.bounds
        self.addChild(pageController)
        view.addSubview(pageController.view)
        
    }
    
    //MARK: PageController Data Source
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ViewController else { return nil }
        var index = viewController.pageIndex
        index += 1
        
        if index == imagesNames.count{
            return nil
        }
        return viewControllerAtIndex(index: index)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ViewController else{ return nil}
        var index = viewController.pageIndex
        if index == 0{
            return nil
        }
        index -= 1
        return viewControllerAtIndex(index: index)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return imagesNames.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    //MARK: Functions
    private func viewControllerAtIndex(index: Int) -> UIViewController? {
        
        if index >= imagesNames.count{
            return nil
        }
        
        guard let pageController = storyboard?.instantiateViewController(withIdentifier: "mainVC") as? ViewController else { return nil }
        
        pageController.imageName = imagesNames[index]
        pageController.pageIndex = index
        
        return pageController
    }
}

