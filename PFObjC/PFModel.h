//
//  PFModel.h
//  PFObjC
//
//  Created by PFei_He on 15/11/17.
//  Copyright © 2015年 PF-Lib. All rights reserved.
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
//  ***** 数据模型基类 *****
//

#import <Foundation/Foundation.h>

@interface PFModel : NSObject

///JSON数据
@property (strong, nonatomic) id JSON;

///XML数据
@property (strong, nonatomic) id XML;

/**
 *  @brief 初始化
 *  @note 无
 *  @param 无
 *  @return Model实例
 */
+ (instancetype)model;

/**
 *  @brief 初始化
 *  @note 无
 *  @param JSON: JSON数据
 *  @return Model实例
 */
- (instancetype)initWithJSON:(id)JSON;

/**
 *  @brief 初始化
 *  @note 无
 *  @param JSON: JSON数据
 *  @return Model实例
 */
+ (instancetype)modelWithJSON:(id)JSON;

/**
 *  @brief 初始化
 *  @note 无
 *  @param XML: XML数据
 *  @return Model实例
 */
- (instancetype)initWithXML:(id)XML;

/**
 *  @brief 初始化
 *  @note 无
 *  @param XML: XML数据
 *  @return Model实例
 */
+ (instancetype)modelWithXML:(id)XML;

/**
 *  @brief 创建JSON
 *  @note 将键值转化为字典
 *  @param 无
 *  @return 转化后JSON数据
 */
- (NSDictionary *)createJSON;

@end
