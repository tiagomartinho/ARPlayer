import Foundation

class SaveAssetUseCase {
    
    let repository: AssetsRepository
    
    init(repository: AssetsRepository) {
        self.repository = repository
    }
    
    func save(from url: URL) {
        repository.save(from: url)
    }
}
