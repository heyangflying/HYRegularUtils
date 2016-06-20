//
//  HYRegularUtils.m
//  HYRegularUtils
//
//  Created by heyang on 16/6/20.
//  Copyright © 2016年 heyang. All rights reserved.
//

#import "HYRegularUtils.h"

@implementation HYRegularUtils


#pragma 正则匹配移动手机号
+ (BOOL)checkChinaMobileNumber:(NSString *)chinaMobileNumber
{
     NSString *MOBILE = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    
    return [[self getPredicate:MOBILE] evaluateWithObject:chinaMobileNumber];
    
}

#pragma 正则匹配联通手机号
+ (BOOL)checkChinaUnicomNumber:(NSString *)chinaUnicomNumber
{
    NSString *MOBILE = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    
    return [[self getPredicate:MOBILE] evaluateWithObject:chinaUnicomNumber];
    
}

#pragma 正则匹配电信手机号
+ (BOOL)checkChinaTelecomNumber:(NSString *)chinaTelecomNumber
{
    NSString *MOBILE = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    
    return [[self getPredicate:MOBILE] evaluateWithObject:chinaTelecomNumber];
    
}


#pragma 正则匹配大陆地区固话及小灵通手机号码
+ (BOOL)checkChinaCDMAAndPHSNumber:(NSString *)ChinaCDMAAndPHSNumber
{
    NSString *MOBILE = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    return [[self getPredicate:MOBILE] evaluateWithObject:ChinaCDMAAndPHSNumber];
    
}


#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber
{
    NSString *MOBILE = @"^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    
    return [[self getPredicate:MOBILE] evaluateWithObject:telNumber];
}


#pragma  正则匹配邮箱
+ (BOOL)checkEmailNumber:(NSString *)emailNumber{
    
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,4}";
    
    return [[self getPredicate:emailRegex] evaluateWithObject:emailNumber];
    
}

#pragma 正则匹配url
+ (BOOL)checkUrl:(NSString *)url{
  
    NSString *urlStr = @"[a-zA-z]+://[^\\s]*";
    
    return [[self getPredicate:urlStr] evaluateWithObject:url];
    
}



#pragma 正则匹配帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)
+(BOOL)checkUsername1:(NSString *)username
{
    NSString *usernameStr = @"^[a-zA-Z][a-zA-Z0-9_]{4,15}$";
    
    return [[self getPredicate:usernameStr] evaluateWithObject:username];
}



#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,18}+$";
    
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    
    return [passWordPredicate evaluateWithObject:password];
    
}

#pragma 正则匹配用户姓名,20位的中文或英文
+(BOOL)checkUsername2:(NSString *)username
{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{4,8}$";
    
   return [[self getPredicate:nicknameRegex] evaluateWithObject:username];
    
}

#pragma 正则匹配QQ号
+ (BOOL)checkQQNumber:(NSString *)qqNumber
{
    
    NSString *QQStr = @"^[1-9][0-9]{4,}";
    
    return [[self getPredicate:QQStr] evaluateWithObject:qqNumber];

    
}

#pragma 正则匹配用户身份证号14或17位
+ (BOOL)checkUserIdCard: (NSString *) idCard
{
    BOOL flag;
    
    if (idCard.length <= 0) {
        
        flag = NO;
        
        return flag;
        
    }
    
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    
  return [[self getPredicate:regex2] evaluateWithObject:idCard];
    
}

+ (BOOL)checkUserCode: (NSString *) Code{
    BOOL flag;
    
    if (Code.length <= 0) {
        
        flag = NO;
        
        return flag;
        
    }
    
    NSString *regex2 = @"^\\d{4}$";
    
    return [[self getPredicate:regex2] evaluateWithObject:Code];
}



+ (NSPredicate *)getPredicate:(NSString *)predicate{
    return  [NSPredicate predicateWithFormat:@"SELF MATCHES %@",predicate];
}


@end
