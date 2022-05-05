
import Foundation


class NetworkManager {

    func fetch (url: String, completion: @escaping(Result<Nasa, Error>) -> Void) {


        let request = NSMutableURLRequest(url: NSURL(string: url)! as URL,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error?.localizedDescription ?? "")
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }

            guard let data = data else {
                return
            }
            do {

                let decoder = JSONDecoder()
                let product = try decoder.decode(Nasa.self, from: data)
                completion(.success(product))

            }
            catch {
                print(error.localizedDescription)
            }

        })
        dataTask.resume()

    }
}
