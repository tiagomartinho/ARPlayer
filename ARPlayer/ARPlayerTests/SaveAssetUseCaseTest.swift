import XCTest
@testable import ARPlayer

class SaveAssetUseCaseTest: XCTestCase {
    
    let url = URL(string: "some/random/path")!
    var fileManager: SpyFileManager!
    var repository: SpyAssetsRepository!
    var useCase: SaveAssetUseCase!
    
    override func setUp() {
        super.setUp()
        fileManager = SpyFileManager()
        repository = SpyAssetsRepository()
        useCase = SaveAssetUseCase(fileManager: fileManager,
                                   repository: repository)
    }
    
    func testDeleteTemporaryFile() {
        useCase.save(from: url)
        
        XCTAssertEqual(url, fileManager.pathRemovedItem)
    }
    
    func testSaveAssetIntoRepository() {
        useCase.save(from: url)
        
        XCTAssertNotNil(repository.savedAsset)
    }
    
    class SpyFileManager: ARPlayer.FileManager {
        
        var pathRemovedItem: URL!
        
        func removeItem(at URL: URL) throws {
            pathRemovedItem = URL
        }
    }
    
    class SpyAssetsRepository: AssetsRepository {
        
        var savedAsset: Asset!
        
        func save(asset: Asset) {
            savedAsset = asset
        }
    }
}
