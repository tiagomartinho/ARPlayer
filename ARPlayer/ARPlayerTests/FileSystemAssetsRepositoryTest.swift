import XCTest
@testable import ARPlayer

class FileSystemAssetsRepositoryTest: XCTestCase {
    
    let url = URL(string: "some/random/path/kjvchxif")!
    var fileManager: SpyFileManager!
    var repository: FileSystemAssetsRepository!
    
    override func setUp() {
        super.setUp()
        fileManager = SpyFileManager()
        repository = FileSystemAssetsRepository(fileManager: fileManager)
    }
    
    func testSaveAssetMovesItem() {
        repository.save(from: url)
        
        XCTAssert(fileManager.movedItem)
    }
    
    func testSaveAssetIntoUserDocumentDirectory() {
        repository.save(from: url)
        
        XCTAssertEqual(fileManager.userDocumentDirectory, fileManager.dstURL)
    }
}
