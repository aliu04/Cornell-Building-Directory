//
//  ViewController.swift
//  al844_p5
//
//  Created by Ashley Liu on 2022-10-29.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {
    
//    let northButton = UIButton()
//    let centralButton = UIButton()
//    let ctownButton = UIButton()
//    let westButton = UIButton()
//    let diningButton = UIButton()
//    let fitnessButton = UIButton()
//    let academicButton = UIButton()
//    let dormButton = UIButton()
    
    let northButton = UILabel()
    let centralButton = UILabel()
    let ctownButton = UILabel()
    let westButton = UILabel()
    let diningButton = UILabel()
    let fitnessButton = UILabel()
    let academicButton = UILabel()
    let dormButton = UILabel()
    
//    let northButton = Filter(name: "northButton", isSelected: false)
//    let centralButton = Filter(name: "centralButton", isSelected: false)
//    let ctownButton = Filter(name: "ctownButton", isSelected: false)
//    let westButton = Filter(name: "westButton", isSelected: false)
//    let diningButton = Filter(name: "diningButton", isSelected: false)
//    let fitnessButton = Filter(name: "fitnessButton", isSelected: false)
//    let academicButton = Filter(name: "academicButton", isSelected: false)
//    let dormButton = Filter(name: "dormButton", isSelected: false)
    
    let darkPurple = UIColor(red: 0.506, green: 0.353, blue: 0.753, alpha: 1.0)
    let anotherPurple = UIColor(red: 0.447, green: 0.318, blue: 0.8, alpha: 1.0)

    
    let filterReuseIdentifier: String = "filterReuseIdentifier"
    let buildingReuseIdentifier: String = "buildingReuseIdentifier"
    
    let collegeTownBagels = Building(imageName: "collegeTownBagels", buildingName: "College Town Bagels", location: "Collegetown", type: "Dining", isSelected: false)
    let duffieldHall = Building(imageName: "duffieldHall", buildingName: "Duffield Hall", location: "West", type: "Academic", isSelected: false)
    let goldwinSmithHall = Building(imageName: "goldwinSmithHall", buildingName: "Goldwin Smith Hall",location: "Central", type: "Academic", isSelected: false)
    let maryDonlonHall = Building(imageName: "maryDonlonHall", buildingName: "Mary Donlon Hall", location: "North", type: "Dorm", isSelected: false)
    let northStarDiningRoom = Building(imageName: "northStarDiningRoom", buildingName: "North Star Dining Hall", location: "North", type: "Dining", isSelected: false)
    let noyesCommunityRecreationCenter = Building(imageName: "noyesCommunityRecreationCenter", buildingName: "Noyes Community Recreation Center", location: "West", type: "Fitness", isSelected: false)
    let physicalSciencesBuilding = Building(imageName: "physicalSciencesBuilding", buildingName: "Physical Sciences Building", location: "Central", type: "Academic", isSelected: false)
    let barbaraMcclintockHall = Building(imageName: "barbaraMcclintockHall", buildingName: "Barbara Mcclintock Hall", location: "North", type: "Dorm", isSelected: false)
    
    var buildings: [Building] = []
    //var selectedbuildings: [Building] = []
    var allbuildings: [Building] = []
    
    //var filters: [UIButton] = []
    var filters: [UILabel] = []
    var filterSelected: [Bool] = [false, false, false, false, false, false, false, false]
    //var allFilters: [UIButton] = []
    var allFilters: [UILabel] = []

    
    
    var collectionView1: UICollectionView!
    var collectionView2: UICollectionView!
    let spacing: CGFloat = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Building Directory"
        view.backgroundColor = .white
        
        
        buildings = [collegeTownBagels, duffieldHall, goldwinSmithHall, maryDonlonHall, northStarDiningRoom, noyesCommunityRecreationCenter, physicalSciencesBuilding, barbaraMcclintockHall]
        allbuildings = buildings

        filters = [northButton, westButton, centralButton, ctownButton, diningButton, academicButton, fitnessButton, dormButton]
        
        allFilters = filters
        
//        northButton.setTitle("North", for: .normal)
//        northButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        westButton.setTitle("West", for: .normal)
//        westButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        centralButton.setTitle("Central", for: .normal)
//        centralButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        ctownButton.setTitle("Collegetown", for: .normal)
//        ctownButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        diningButton.setTitle("Dining", for: .normal)
//        diningButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        academicButton.setTitle("Academic", for: .normal)
//        academicButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        fitnessButton.setTitle("Fitness", for: .normal)
//        fitnessButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
//        dormButton.setTitle("Dorm", for: .normal)
//        dormButton.addTarget(self, action: #selector(filterBuildings), for: .touchUpInside)
        
        northButton.text = "North"
        westButton.text = "West"
        centralButton.text = "Central"
        ctownButton.text = "College Town"
        diningButton.text = "Dining"
        academicButton.text = "Academic"
        fitnessButton.text = "Fitness"
        dormButton.text = "Dorm"
        northButton.textColor = anotherPurple
        westButton.textColor = anotherPurple
        centralButton.textColor = anotherPurple
        ctownButton.textColor = anotherPurple
        diningButton.textColor = anotherPurple
        academicButton.textColor = anotherPurple
        fitnessButton.textColor = anotherPurple
        dormButton.textColor = anotherPurple
        northButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        westButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        centralButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        ctownButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        diningButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        academicButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        fitnessButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
        dormButton.backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)

        
        var shapelayout1 = UICollectionViewFlowLayout()
        shapelayout1.minimumLineSpacing = spacing
        shapelayout1.minimumInteritemSpacing = spacing
        shapelayout1.scrollDirection = .horizontal
        
        collectionView1 = UICollectionView(frame: .zero, collectionViewLayout: shapelayout1)
        collectionView1.register(FilterCollectionViewCell.self, forCellWithReuseIdentifier: filterReuseIdentifier)
        collectionView1.delegate = self
        collectionView1.dataSource = self
        collectionView1.backgroundColor = .white
        collectionView1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView1)
        
        
        var shapelayout2 = UICollectionViewFlowLayout()
        shapelayout2.minimumLineSpacing = spacing
        shapelayout2.minimumInteritemSpacing = spacing
        shapelayout2.scrollDirection = .vertical
        
        collectionView2 = UICollectionView(frame: .zero, collectionViewLayout: shapelayout2)
        collectionView2.register(BuildingCollectionViewCell.self, forCellWithReuseIdentifier: buildingReuseIdentifier)
        collectionView2.delegate = self
        collectionView2.dataSource = self
        //collectionView2.backgroundColor = .purple
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView2)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        let collectionViewPadding: CGFloat = 12
        NSLayoutConstraint.activate([
            collectionView1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: collectionViewPadding),
            collectionView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: collectionViewPadding),
            collectionView1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            collectionView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -collectionViewPadding)
        ])
        let collectionViewPadding2: CGFloat = 12
        NSLayoutConstraint.activate([
            collectionView2.topAnchor.constraint(equalTo: collectionView1.bottomAnchor, constant: collectionViewPadding2),
            collectionView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: collectionViewPadding2),
            collectionView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -collectionViewPadding2),
            collectionView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -collectionViewPadding2)
        ])
        
        
    }

    
    func filterMembers(filterArray: [Bool], allbuildings: [Building]) -> [Building] {
        var counter = 0
        var selectedbuildings: [Building] = []
        selectedbuildings = []
        var newBuildings: [Building] = []
        
        if (filterArray[0]) == true {
            counter = counter + 1
            newBuildings = allbuildings.filter({ building in
                building.location == "North"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings
        }
        if (filterArray[1]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.location == "West"
//            })
            newBuildings = allbuildings.filter({ building in
                building.location == "West"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings

        }
        
        if (filterArray[2]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.location == "Central"
//            })
            newBuildings = allbuildings.filter({ building in
                building.location == "Central"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings

        }
        
        if (filterArray[3]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.location == "Collegetown"
//            })
            newBuildings = allbuildings.filter({ building in
                building.location == "Collegetown"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings

        }
        
        if (filterArray[4]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.type == "Dining"
//            })
            newBuildings = allbuildings.filter({ building in
                building.type == "Dining"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings

        }
        
        if (filterArray[5]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.type == "Academic"
//            })
            newBuildings = allbuildings.filter({ building in
                building.type == "Academic"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings
        }
        
        if (filterArray[6]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.type == "Fitness"
//            })
            newBuildings = allbuildings.filter({ building in
                building.type == "Fitness"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings

        }
        
        if (filterArray[7]) == true {
            counter = counter + 1
//            selectedbuildings = selectedbuildings + allbuildings.filter({ building in
//                building.type == "Dorm"
//            })
            
            newBuildings = allbuildings.filter({ building in
                building.type == "Dorm"
            })
            for buildsdf in selectedbuildings {
                for newbuildingasdf in newBuildings {
                    if buildsdf.buildingName == newbuildingasdf.buildingName {
                        if let newIndex = newBuildings.lastIndex(where: {$0.buildingName == buildsdf.buildingName}) {
                            newBuildings.remove(at: newIndex)
                        }
                    }
                }
            }
            selectedbuildings = selectedbuildings + newBuildings
            
        }
        if counter == 8 || counter == 0 {
            selectedbuildings = allbuildings
        }
        return selectedbuildings
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionView1 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: filterReuseIdentifier, for: indexPath) as? FilterCollectionViewCell {
                cell.configure(filter: filters[indexPath.row])
                return cell
            }
            else {
                return UICollectionViewCell()
            }
        }
        else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: buildingReuseIdentifier, for: indexPath) as? BuildingCollectionViewCell {
                cell.configure(building: buildings[indexPath.row])
                return cell
            }
            else {
                return UICollectionViewCell()
            }
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView1 {
            return filters.count
        }
        else {
            return buildings.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionView1 {
            filterSelected[indexPath.row].toggle()
            if filterSelected[indexPath.row] {
                allFilters[indexPath.row].backgroundColor = darkPurple
                //allFilters[indexPath.row].setTitleColor(.white, for: .normal)
                allFilters[indexPath.row].textColor = .white
                buildings = filterMembers(filterArray: filterSelected, allbuildings: allbuildings)
                
            }
            else {
                allFilters[indexPath.row].backgroundColor = UIColor(red: 0.949, green: 0.922, blue: 0.984, alpha: 1.0)
                //allFilters[indexPath.row].setTitleColor(UIColor(red: 0.447, green: 0.318, blue: 0.8, alpha: 1.0), for: .normal)
                allFilters[indexPath.row].textColor = UIColor(red: 0.447, green: 0.318, blue: 0.8, alpha: 1.0)
                buildings = filterMembers(filterArray: filterSelected, allbuildings: allbuildings)
            }
        }
        collectionView1.reloadData()
        collectionView2.reloadData()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == collectionView1 {
            let size = (collectionView.frame.width)/3
            return CGSize(width: size, height: size/1.5)
        }
        
        else {
            let size = (collectionView.frame.width-20)/2
            return CGSize(width: size, height: size)
        }
    }
}


//@objc func filterBuildings(sender: UIButton) {
//    print("clicked")
//        buildings = []
//        filterSelected[sender.tag].toggle()
//        sender.isSelected.toggle()
//
//        if (sender.isSelected) {
//            sender.backgroundColor = darkPurple
//        }
//        else {
//            sender.backgroundColor = darkPurple
//        }
//
//        var count = 0
//        for number in stride(from: 0, to: 8, by: 1) {
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.location == "North"
//                })
//            }
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.location == "West"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.location == "Central"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.location == "College Town"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.type == "Dining"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.imageName == "Academic"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.imageName == "Fitness"
//                })
//            }
//
//            if (filterSelected[number]) {
//                buildings = buildings + allbuildings.filter({ building in
//                    building.imageName == "Dorm"
//                })
//            }
//            if (filterSelected[number]) {
//                count = count + 1
//            }
//
//        }
//        if count == 8 {
//            buildings = allbuildings
//        }
//        collectionView2.reloadData()
//}
