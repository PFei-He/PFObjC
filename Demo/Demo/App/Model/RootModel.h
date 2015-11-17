//
//  RootModel.h
//  Demo
//
//  Created by PFei_He on 15/11/13.
//  Copyright © 2015年 PF-Lib. All rights reserved.
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

#import "PFModel.h"

@interface Sports : PFModel

@property (copy, nonatomic)     NSString        *one;
@property (copy, nonatomic)     NSString        *two;

@end

@interface Fruits : PFModel

@property (copy, nonatomic)     NSString        *fruit;

@end

@interface Food : PFModel

@property (copy, nonatomic)     NSString        *meat;
@property (copy, nonatomic)     NSArray         *fruit;

@end

@interface Person : PFModel

@property (copy, nonatomic)     NSString        *name;
@property (strong, nonatomic)   NSNumber        *age;
@property (copy, nonatomic)     NSString        *sex;
@property (strong, nonatomic)   NSNumber        *phone;
@property (strong, nonatomic)   NSArray         *address;
@property (strong, nonatomic)   NSNumber        *height;
@property (strong, nonatomic)   NSNumber        *weight;
@property (strong, nonatomic)   NSDictionary    *food;
@property (strong, nonatomic)   NSArray         *sport;
@property (copy, nonatomic)     NSString        *code;

/**
 *  @brief 单例
 *  @note
 *  @param
 *  @return PersonModel类的唯一实例
 */
+ (Person *)sharedInstance;

@end
