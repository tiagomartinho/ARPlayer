import XCTest
@testable import ARPlayer

class SaveAssetUseCaseTest: XCTestCase {

    func testSaveAssetIntoRepository() {
        let url = URL(string: "some/random/path/hsdasfgdkhj")!
        let repository = SpyAssetsRepository()
        let useCase = SaveAssetUseCase(repository: repository)
        
        useCase.save(from: url)
        
        XCTAssert(repository.savedCalled)
    }
}
