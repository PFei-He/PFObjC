//
//  PFModel.m
//  PFObjC
//
//  Created by PFei_He on 15/11/17.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFObjC
//
//  vesion: 0.0.5
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
//  ***** JSON模型基类 *****
//

#import "PFModel.h"

@implementation PFModel

//初始化
- (instancetype)initWithJSON:(id)JSON
{
    [self parseJSON:JSON];
    return [self init];
}

//JSON数据
- (void)setJSON:(id)JSON
{
    _JSON = JSON;
    [self parseJSON:JSON];
}

///解析JSON
- (void)parseJSON:(id)JSON
{
    if ([JSON isKindOfClass:[NSDictionary class]]) {
        [self setValuesForKeysWithDictionary:JSON];
    } else {
        NSLog(@"The object isn't kind of NSDictionary");
    }
}

//获取未被声明的对象
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"**Class->%@ UndefinedKey->%@ Value->%@ Type->%@**", [self classForCoder], key, value, [value classForCoder]);
}

@end
