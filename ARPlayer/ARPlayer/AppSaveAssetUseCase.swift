import Foundation

class AppSaveAssetUseCase {
    static func save(from url: URL) {
        let fileManager = Foundation.FileManager.default
        let repository = FileSystemAssetsRepository(fileManager: fileManager)
        let useCase = SaveAssetUseCase(repository: repository)
        useCase.save(from: url)
    }
}
