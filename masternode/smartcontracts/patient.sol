pragma solidity  ^0.4.11;
contract patient{
    address owner;
    uint accessCode;
    string dob;

    bytes32[10] hash;
    bytes32[10] time;

    uint public n;



    function patient(string _dob){
     owner = msg.sender;
     dob = _dob;
     accessCode = 2255;
     n=0;
    }

    modifier isOwner{
    require (msg.sender==owner);
    _;
    }

    function changeAccessCode(uint _accessCode) isOwner{
      accessCode = _accessCode;
    }

    function AddRecord(bytes32 _time,bytes32 _hash,uint _accessCode) public {
       require(accessCode==accessCode);
       time[n]=_time;
       hash[n]=_hash;
       n++;
    }

    function FetchRecord(uint _n,uint _accessCode) public constant returns(bytes32,bytes32){
        require(accessCode==accessCode);
        return (time[_n],hash[_n]);
    }

    function FetchDob(uint _accessCode) public constant returns(string){
        require(accessCode==accessCode);
        return dob;
    }
}
