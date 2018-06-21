@testable import ARPlayer
import Foundation

class SpyFileManager: ARPlayer.FileManager {
    
    var movedItem = false
    var dstURL: URL!
    
    func moveItem(at srcURL: URL, to dstURL: URL) throws {
        movedItem = true
        self.dstURL = dstURL
    }
    
    var userDocumentDirectory: URL? {
        return URL(string: "userDocumentDirectory")
    }
}
