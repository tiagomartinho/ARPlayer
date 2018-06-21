import XCTest
@testable import ARPlayer

class SaveAssetUseCaseTest: XCTestCase {
    func testDeleteTemporaryFile() {
        let url = URL(string: "some/random/path")!
        let fileManager = SpyFileManager()
        let useCase = SaveAssetUseCase(fileManager: fileManager)
        
        useCase.save(from: url)
        
        XCTAssert(fileManager.removeItemCalled)
        XCTAssertEqual(url, fileManager.pathRemovedItem)
    }
    
    class SpyFileManager: ARPlayer.FileManager {
        
        var removeItemCalled = false
        var pathRemovedItem: URL!
        
        func removeItem(at URL: URL) throws {
            removeItemCalled = true
            pathRemovedItem = URL
        }
    }
}
