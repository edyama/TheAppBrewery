
protocol AdvancedLifeSupport {
    func peformCPR()
}

class EmergencyCallHandler {
    
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what's happened?")
    }
    
    func medicalEmergency() {
        delegate?.peformCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func peformCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func peformCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    
    func usesStethoscope() {
        print("Listening for hearth sounds.")
    }
}

class Surgeon: Doctor {
    
    override func peformCPR() {
        super.peformCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useEletricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
