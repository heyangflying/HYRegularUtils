//
//  HYRegularUtils.h
//  HYRegularUtils
//
//  Created by heyang on 16/6/20.
//  Copyright © 2016年 heyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYRegularUtils : NSObject

/** 正则匹配移动手机号码*/
+ (BOOL)checkChinaMobileNumber:(NSString *)chinaMobileNumber;

/** 正则匹配联通手机号码*/
+ (BOOL)checkChinaUnicomNumber:(NSString *)chinaUnicomNumber;

/** 正则匹配电信手机号码*/
+ (BOOL)checkChinaTelecomNumber:(NSString *)chinaTelecomNumber;

/** 正则匹配大陆地区固话及小灵通手机号码*/
+ (BOOL)checkChinaCDMAAndPHSNumber:(NSString *)ChinaCDMAAndPHSNumber;

/** 正则匹配邮箱*/
+ (BOOL)checkEmailNumber:(NSString *)emailNumber;

/** 正则匹配url字符*/
+ (BOOL)checkUrl:(NSString *)url;

/** 正则匹配手机号*/
+ (BOOL)checkTelNumber:(NSString *)telNumber;

/** 正则匹配帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)*/
+ (BOOL)checkUsername1:(NSString *)username;


/** 正则匹配用户姓名,20位的中文或英文*/
+ (BOOL)checkUsername2 : (NSString *)username;

/** 正则匹配QQ号码*/
+ (BOOL)checkQQNumber:(NSString *)qqNumber;

/** 正则匹配用户密码6-18位数字和字母组合*/
+ (BOOL)checkPassword:(NSString *)password;


/** 正则匹配用户身份证号*/
+ (BOOL)checkUserIdCard: (NSString *)idCard;

/** 正则匹配验证码为4位数字*/
+ (BOOL)checkUserCode:(NSString *)Code;

@end
