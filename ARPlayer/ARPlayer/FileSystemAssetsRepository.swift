import Foundation

class FileSystemAssetsRepository: AssetsRepository {
    
    let fileManager: FileManager

    init(fileManager: FileManager) {
        self.fileManager = fileManager
    }
    
    func save(from URL: URL) {
        guard let userDocumentDirectory = fileManager.userDocumentDirectory else { return }
        do {
            let finalDirectory = userDocumentDirectory.appendingPathComponent(URL.lastPathComponent)
            try fileManager.moveItem(at: URL, to: finalDirectory)
            print("Moved")
        } catch let error {
            print("Error moving \(error)")
        }
    }
}
