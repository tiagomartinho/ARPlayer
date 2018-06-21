import Foundation

class SaveAssetUseCase {
    
    let fileManager: FileManager
    
    init(fileManager: FileManager) {
        self.fileManager = fileManager
    }
    
    func save(from url: URL) {
        try? fileManager.removeItem(at: url)
    }
}
