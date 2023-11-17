//
//  LocalizedUtils.swift
//  noctOs
//
//  Created by Judit Lázaro on 2023/11/15.
//  Copyright © 2023 JuditKaramazov. All rights reserved.
//

import Foundation
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
}
