//
//  ObjectiveCLib.h
//  LearnFramework
//
//  Created by Nguyen Tuan Anh on 30/6/24.
//

#import <Foundation/Foundation.h>
@class SwiftLib;

NS_ASSUME_NONNULL_BEGIN

@interface ObjectiveCLib : NSObject

- (NSArray<SwiftLib *> *)allSwiftLibObjects;

- (void)addSwiftLib:(SwiftLib *)lib;

@end

NS_ASSUME_NONNULL_END

/**
 File .h mang ý nghĩa bộc lộ những public function, properties của class (chỉ mang tính chất khai báo)
 */
