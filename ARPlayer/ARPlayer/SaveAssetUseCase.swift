import Foundation

class SaveAssetUseCase {
    
    let fileManager: FileManager
    let repository: AssetsRepository
    
    init(fileManager: FileManager, repository: AssetsRepository) {
        self.fileManager = fileManager
        self.repository = repository
    }
    
    func save(from url: URL) {
        repository.save(asset: Asset(url: url))
        try? fileManager.removeItem(at: url)
    }
}
