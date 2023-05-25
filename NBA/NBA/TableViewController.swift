
import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var shapeTableView: UITableView!
    
    var shapeList = [Shape]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        initList()
    }

    func initList()
    {
        let fastTwitch = Shape(id: "0", name: "Fast Twitch", imageName: "FastTwitch")
        shapeList.append(fastTwitch)
        
        let giantSlayer = Shape(id: "1", name: "Giant Slayer", imageName: "GiantSlayer")
        shapeList.append(giantSlayer)
        
        let acrobat = Shape(id: "2", name: "Acrobat", imageName: "Acrobat")
        shapeList.append(acrobat)
        
        let limitlessRange = Shape(id: "3", name: "Limitless Range", imageName: "LimitlessRange")
        shapeList.append(limitlessRange)
        
        let guardUp = Shape(id: "4", name: "Guard Up", imageName: "GuardUp")
        shapeList.append(guardUp)
        
        let cornerSpecialist = Shape(id: "5", name: "Corner Specialist", imageName: "CornerSpecialist")
        shapeList.append(cornerSpecialist)
        
        let quickFirstStep = Shape(id: "6", name: "Quick First Step", imageName: "QuickFirstStep")
        shapeList.append(quickFirstStep)
        
        let ankleBreaker = Shape(id: "7", name: "Ankle Breaker", imageName: "AnkleBreaker")
        shapeList.append(ankleBreaker)
        
        let hyperDrive = Shape(id: "8", name: "Hyper Drive", imageName: "HyperDrive")
        shapeList.append(hyperDrive)
        
        let interceptor = Shape(id: "9", name: "Interceptor", imageName: "Interceptor")
        shapeList.append(interceptor)
        
        let brickWall = Shape(id: "10", name: "Brick Wall", imageName: "BrickWall")
        shapeList.append(brickWall)
        
        let pogoStick = Shape(id: "11", name: "Pogo Stick", imageName: "PogoStick")
        shapeList.append(pogoStick)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return shapeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! TableViewCell
        
        let thisShape = shapeList[indexPath.row]
        
        tableViewCell.shapeName.text = thisShape.id + " " + thisShape.name
        tableViewCell.shapeImage.image = UIImage(named: thisShape.imageName)
        
        return tableViewCell
    }

}
