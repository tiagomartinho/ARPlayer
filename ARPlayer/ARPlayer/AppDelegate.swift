import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = AssetsViewController()
        window?.makeKeyAndVisible()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let fileManager = Foundation.FileManager.default
        let repository = FileSystemAssetsRepository(fileManager: fileManager)
        let useCase = SaveAssetUseCase(repository: repository)
        useCase.save(from: url)
        return true
    }
}

