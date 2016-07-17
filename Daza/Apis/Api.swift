/**
 * Copyright (C) 2015 JianyingLi <lijy91@foxmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Alamofire

class Api {

    static func request(method: Alamofire.Method,
                        _ URLString: URLStringConvertible,
                        _ parameters: [String: AnyObject]? = nil,
                          encoding: ParameterEncoding = .URL,
                          headers: [String: String]? = nil) -> Request {
        var reqHeaders: [String: String] = [
            "Accept": "application/json",
        ]

        // Headers 合并
        if (headers != nil) {
            for (key, value) in headers! {
                reqHeaders[key] = value
            }
        }
        
        return Alamofire.request(method, URLString, parameters: parameters, encoding: encoding, headers: reqHeaders)
    }

}