import Foundation

protocol FileManager {
    func moveItem(at srcURL: URL, to dstURL: URL) throws
    var userDocumentDirectory: URL? { get }
}

extension Foundation.FileManager: FileManager {
    
    var userDocumentDirectory: URL? {
        return urls(for: .documentDirectory, in: .userDomainMask).first
    }
}
