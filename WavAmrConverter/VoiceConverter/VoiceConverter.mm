//
//  VoiceConverter.m
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VoiceConverter.h"


@implementation VoiceConverter

/**
 *  转换wav到amr
 *
 *  @param aWavPath  wav文件路径
 *  @param aSavePath amr保存路径
 *
 *  @return 0失败 1成功
 */
+ (int)EncodeWavToAmr:(NSString *)aWavPath amrSavePath:(NSString *)aSavePath sampleRateType:(Sample_Rate)sampleRateType
{
    if (sampleRateType == Sample_Rate_8000)
    {
        int result = Encode8KWAVEFileToAMRFile([aWavPath cStringUsingEncoding:NSUTF8StringEncoding], [aSavePath cStringUsingEncoding:NSUTF8StringEncoding], 1, 16);
        return  result;
    }
    else
    {
        int result = Encode16KWAVEFileToAMRFile([aWavPath cStringUsingEncoding:NSUTF8StringEncoding], [aSavePath cStringUsingEncoding:NSUTF8StringEncoding]);
        return  result;
    }
}

/**
 *  转换amr到wav
 *
 *  @param aAmrPath  amr文件路径
 *  @param aSavePath wav保存路径
 *
 *  @return 0失败 1成功
 */
+ (int)DecodeAmrToWav:(NSString *)aAmrPath wavSavePath:(NSString *)aSavePath sampleRateType:(Sample_Rate)sampleRateType
{
    if (sampleRateType == Sample_Rate_8000)
    {
        return Decode8KAMRFileToWAVEFile([aAmrPath cStringUsingEncoding:NSUTF8StringEncoding], [aSavePath cStringUsingEncoding:NSUTF8StringEncoding]);
    }
    else
    {
        return Decode16KAMRFileToWAVEFile([aAmrPath cStringUsingEncoding:NSUTF8StringEncoding], [aSavePath cStringUsingEncoding:NSUTF8StringEncoding]);
    }
}

@end
