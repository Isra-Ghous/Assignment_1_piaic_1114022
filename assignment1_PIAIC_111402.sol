pragma solidity ^ 0.8.0;

contract ParentVehicle {
    //class
   
   
    function start() public pure returns(string memory) {
        // behaviour
        string memory a = "The vehicle has just Started";
        //property
        return a;
        
    }
    
    
    function accelerate() public pure returns(string memory) {
        string memory b = "The vehicle has just Accelerated";
        return b ;
    }
    
   
    function stop() public pure returns(string memory) {
        string memory c = "The Vehicle has just Stopped";
        return c ;
    }
    
   
    function service() public virtual view returns(string memory) {
        string memory d = "The Vehicle is being Serviced";
        return d ;
    }
}


contract Cars is ParentVehicle {
    function service() public view virtual override returns(string memory) {
        string memory e = "Car is being serviced";
        return e;
    }
}
contract Trucks is ParentVehicle {
    function service() public view virtual
    override returns(string memory) {
        string memory f = "Truck is being serviced";
        return f;
    }
}
contract Motorcycles is ParentVehicle {
    function service() public view virtual override returns(string memory) {
        string memory h = "Motorcycles is being serviced";
        return h;
    }
}

contract AltonMehraan is Cars{
    function service() public view virtual override returns(string memory) {
        string memory i = " AltonMehraan is being serviced";
        return i;
    }
    
}
    
contract Hino is Trucks{
    function service() public view virtual override returns(string memory) {
        string memory j = "Hino is being serviced";
        return j;
    }
}

contract Yamaha is Motorcycles {
    function service() public view virtual override returns(string memory) {
        string memory k = "Yamaha is being serviced";
        return k;
    } 

}
contract Carworkshop is AltonMehraan {
     function vehicleservice (address _vehicleadd) public view returns(string memory){
     Cars g = Cars(_vehicleadd);
     return g.service();
   }
}
contract Motorcycleworkshop is Yamaha {
     function vehicleservice (address _vehicleadd) public view returns(string memory){
     Motorcycles j = Motorcycles(_vehicleadd);
     return j.service();
   }
}

contract Truckworkshop is Hino {
     function vehicleservice (address _vehicleadd) public view returns(string memory){
     Trucks k = Trucks(_vehicleadd);
     return k.service();
   }
}