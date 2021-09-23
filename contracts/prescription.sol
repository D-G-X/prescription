pragma solidity >=0.7.0 <0.9.0;

contract Prescription{
    
    struct date{
        int day;
        int month;
        int year;
    }

    struct prescriptionPage{
        string licId;
        address reciever;
        string docName;
        date date;
        date validity; // self calculation
        mapping (string => string) Medicine; // enter key values
        date lastUsed; // access only to chemist
    }
    

    function writePrescription(string _licId,string _docName,date curDate,date validDate,Medicine _details,date lastUsage) public{
        
        prescriptionPage memory yourPrescription = prescriptionPage({
            licId:_licId,
            docName:_docName,
            date:curDate,
            validity:validDate,
            Medicine:_details,
            lastUsed:lastUsage
        });
        
        
    } 
    
    
    function sendPrescription(prescriptionPage myPrsecription,address patientAdd) public {
        
    }
    
    
    
    
    
    // Doctor=create
    // Patient=view,createQR
    // Chemist=ViewPrsecription,MedicineRecordEntry,UpdateLastUsed
    
    

    
    
}
