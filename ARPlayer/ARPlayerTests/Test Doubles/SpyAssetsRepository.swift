@testable import ARPlayer
import Foundation

class SpyAssetsRepository: AssetsRepository {
    
    var savedCalled = false
    
    func save(from URL: URL) {
        savedCalled = true
    }
 }
