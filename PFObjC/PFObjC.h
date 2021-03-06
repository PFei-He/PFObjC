//
//  PFObjC.h
//  PFObjC
//
//  Created by PFei_He on 16/5/12.
//  Copyright © 2016年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFObjC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  ***** 类库接口与调试 *****
//

#ifndef PFObjC_h
#define PFObjC_h

#import "NSDate+PFObjC.h"
#import "NSString+PFObjC.h"
#import "NSTimer+PFObjC.h"
#import "UIView+PFObjC.h"

#import "PFConfigure.h"
#import "PFFile.h"
#import "PFModel.h"
#import "PFQRCode.h"
#import "PFScanner.h"
#import "PFTime.h"

#endif /* PFObjC_h */

#import <Foundation/Foundation.h>

@interface PFObjC : NSObject

/**
 *  @brief 版本号
 *  @note 无
 *  @param 无
 *  @return 版本号
 */
+ (NSString *)debugVersion;

@end
