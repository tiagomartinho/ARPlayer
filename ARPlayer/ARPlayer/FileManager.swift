import Foundation

protocol FileManager {
    func removeItem(at URL: URL) throws
    func moveItem(at srcURL: URL, to dstURL: URL) throws
    var userDocumentDirectory: URL? { get }
}
