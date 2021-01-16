//
//  HomeController.swift
//  UberClone
//
//  Created by Mateusz Sochanowski on 16/01/2021.
//

import Foundation
import Firebase
import MapKit

class HomeController: UIViewController {
    
    
    // MARK: - Properites
    
    private let mapView = MKMapView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //signOut()
        checkIfUserIsLoggedIn()
    }
    
    //MARK: - API
    
    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
            print("DEBUG: User is not logged in...")
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        }
        else {
            //print("DEBUG: User is \(Auth.auth().currentUser?.uid)")
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("Error signing out...")
        }
    }
    
    //MARK: - Helper functions
    
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
    
}
