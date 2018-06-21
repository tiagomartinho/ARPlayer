@testable import ARPlayer
import Foundation

class SpyFileManager: ARPlayer.FileManager {

    var movedItem = false
    var dstURL: URL!
    var removedItemURL: URL!

    var userDocumentDirectory: URL? {
        return URL(string: "userDocumentDirectory")
    }
    
    func moveItem(at srcURL: URL, to dstURL: URL) throws {
        movedItem = true
        self.dstURL = dstURL
    }
    
    func removeItem(at URL: URL) throws {
        removedItemURL = URL
    }
}
