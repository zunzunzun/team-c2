//
//  CoreDataUserManagerType.swift
//  FineDust
//
//  Created by Presto on 03/02/2019.
//  Copyright © 2019 boostcamp3rd. All rights reserved.
//

import CoreData
import Foundation

/// `User` Entity에 대한 프로토콜.
protocol CoreDataUserManagerType: CoreDataManagerType {
  
  /// 연관 타입. `NSManagedObject` 준수.
  associatedtype Entity: NSManagedObject
  
  /// READ
  func fetch(completion: (Entity?, Error?) -> Void)
  
  /// CREATE
  func save(_ dictionary: [String: Any], completion: (Error?) -> Void)
}
