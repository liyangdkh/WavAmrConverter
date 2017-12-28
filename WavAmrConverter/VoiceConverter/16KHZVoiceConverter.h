//
//  16KHZVoiceConverter.h
//  WavAmrConverter
//
//  Created by liyang on 2017/12/27.
//  Copyright © 2017年 dashang. All rights reserved.
//

#ifndef _6KHZVoiceConverter_h
#define _6KHZVoiceConverter_h
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include "dec_if.h"
#include "enc_if.h"
#include "wavwriter.h"
#include "wavreader.h"

/**
 *  编码
 *
 *  @param infile  wav文件路径
 *  @param outfile amr文件路径
 *
 *  @return
 */
int Encode16KWAVEFileToAMRFile(const char* infile, const char* outfile);


/**
 *  解码
 *
 *  @param inputFile  amr文件路径
 *  @param outputFile wav文件路径
 *
 *  @return
 */
int Decode16KAMRFileToWAVEFile(const char* inputFile, const char* outputFile);

#endif /* _6KHZVoiceConverter_h */
