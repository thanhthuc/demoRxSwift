//
//  FeelLikeModel.swift
//  Weather
//
//  Created by Nguyen Thanh Thuc on 11/10/2021.
//

import Foundation

class FeelLikeModel: NSObject, Codable {
   @objc dynamic var day: Double
   @objc dynamic var night: Double
   @objc dynamic var everage: Double
   @objc dynamic var morning: Double
   
   enum FeelLikeModelKeys: String, CodingKey {
      case day = "day"
      case night = "night"
      case everage = "eve"
      case morning = "morn"
   }
   
   required init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: FeelLikeModelKeys.self)
      day = try container.decode(Double.self, forKey: .day)
      night = try container.decode(Double.self, forKey: .night)
      everage = try container.decode(Double.self, forKey: .everage)
      morning = try container.decode(Double.self, forKey: .morning)
   }
}
