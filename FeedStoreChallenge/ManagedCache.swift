//
//  ManagedCache.swift
//  FeedStoreChallenge
//
//  Created by Nicolò Pasini on 10/09/21.
//  Copyright © 2021 Essential Developer. All rights reserved.
//

import CoreData

@objc(ManagedCache)
class ManagedCache: NSManagedObject {
	@NSManaged internal var timestamp: Date
	@NSManaged internal var feed: NSOrderedSet
}

extension ManagedCache {
	static func newUniqueInstance(in context: NSManagedObjectContext) -> ManagedCache {
		return ManagedCache(context: context)
	}
}
