//
//  LearnFramework.h
//  LearnFramework
//
//  Created by Nguyen Tuan Anh on 30/6/24.
//

#import <Foundation/Foundation.h>

//! Project version number for LearnFramework.
FOUNDATION_EXPORT double LearnFrameworkVersionNumber;

//! Project version string for LearnFramework.
FOUNDATION_EXPORT const unsigned char LearnFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LearnFramework/PublicHeader.h>
/**
 Framework có thể chứa cả code Swift và Objective-C (Obj-C)
 
 Đối với Swift thì không cần file Header này, việc truy cập code Swift thông qua `access levels`
 
 Đối với Obj-C thì file này mang ý nghĩa những thứ được bộc lộ ra bên ngoài để sử dụng thông qua việc `import` các file headers khác,
 và các file .h này phải khai báo dưới dạng `Public` trong `File inspector --> Target Membership`
 */
#import <LearnFramework/ObjectiveCLib.h>
