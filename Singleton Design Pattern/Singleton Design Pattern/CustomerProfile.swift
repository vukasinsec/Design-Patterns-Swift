import Foundation

final class CustomProfile {
    static let shared = CustomProfile()
    
    var name: String?
    var age: Int?
    
    private init() {}
    
    func setProfile(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func getProfile() -> String {
        if let name = name, let age = age {
            return "Name: \(name), Age: \(age)"
        } else {
            return "Profile not set"
        }
    }
}
