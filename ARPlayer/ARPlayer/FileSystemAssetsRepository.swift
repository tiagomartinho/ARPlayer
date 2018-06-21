import Foundation

class FileSystemAssetsRepository: AssetsRepository {
    
    let fileManager: FileManager

    init(fileManager: FileManager) {
        self.fileManager = fileManager
    }
    
    func save(from URL: URL) {
        guard let userDocumentDirectory = fileManager.userDocumentDirectory else { return }
        try? fileManager.moveItem(at: URL, to: userDocumentDirectory)
    }
}
