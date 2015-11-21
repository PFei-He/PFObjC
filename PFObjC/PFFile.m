//
//  PFFile.m
//  PFObjC
//
//  Created by PFei_He on 15/11/17.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFObjC
//
//  vesion: 0.0.9
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
//  ***** 文件操作 *****
//

#import "PFFile.h"

@implementation PFFile

//创建文件
+ (void)createFile:(NSString *)fileName
{
    NSString *path = [PFFile readFile:fileName directory:@"doucument" type:nil];
    NSFileManager *manager = [NSFileManager defaultManager];
    if (![manager fileExistsAtPath:path]) {//如果文件不存在则创建文件
        [manager createFileAtPath:path contents:nil attributes:nil];
    }
}

//读取文件
+ (NSData *)readFile:(NSString *)fileName
{
    return [[NSData alloc] initWithContentsOfFile:[PFFile readFile:fileName directory:@"doucument" type:nil]];
}

//读取JSON文件
+ (NSData *)readJSON:(NSString *)fileName
{
    return [PFFile readFile:fileName directory:@"bundle" type:@"json"];
}

//读取XML文件
+ (NSData *)readXML:(NSString *)fileName
{
    return [PFFile readFile:fileName directory:@"bundle" type:@"xml"];
}

//写入文件
+ (BOOL)writeToFile:(NSString *)fileName params:(NSDictionary *)params
{
    return [params writeToFile:[PFFile readFile:fileName directory:@"document" type:nil] atomically:YES];
}

///读取资源包文件或沙盒文件
+ (id)readFile:(NSString *)fileName directory:(NSString *)directory type:(NSString *)type
{
    if ([directory isEqualToString:@"bundle"]) {//资源包文件
        NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:type];
        NSString *string = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        return [string dataUsingEncoding:NSUTF8StringEncoding];
    } else {//沙盒文件
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        return [paths[0] stringByAppendingPathComponent:fileName];
    }
}

@end
