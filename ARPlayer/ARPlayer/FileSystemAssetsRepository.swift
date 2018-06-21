import Foundation

class FileSystemAssetsRepository: AssetsRepository {
    
    let fileManager: FileManager

    init(fileManager: FileManager) {
        self.fileManager = fileManager
    }
    
    func save(from URL: URL) {
        guard let userDocumentDirectory = fileManager.userDocumentDirectory else { return }
        let finalDirectory = userDocumentDirectory.appendingPathComponent(URL.lastPathComponent)
        try? fileManager.removeItem(at: finalDirectory)
        try? fileManager.moveItem(at: URL, to: finalDirectory)
    }
}
