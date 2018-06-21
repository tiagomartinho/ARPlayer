import Foundation

extension Foundation.FileManager: FileManager {
    
    var userDocumentDirectory: URL? {
        return urls(for: .documentDirectory, in: .userDomainMask).first
    }
}
