import Foundation

protocol FileManager {
    func removeItem(at URL: URL) throws
}

extension Foundation.FileManager: FileManager {}
