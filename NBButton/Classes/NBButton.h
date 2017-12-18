//
//  NBButton.h
//  图片位置的改变
//
//  Created by xxzx on 2017/12/18.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  按钮中图片的位置
 */
typedef NS_ENUM(NSUInteger, NBImageAlignment) {
    /**
     *  图片在左，默认
     */
    NBImageAlignmentLeft = 0,
    /**
     *  图片在上
     */
    NBImageAlignmentTop,
    /**
     *  图片在下
     */
    NBImageAlignmentBottom,
    /**
     *  图片在右
     */
    NBImageAlignmentRight,
};

@interface NBButton : UIButton

/**
 *  按钮中图片的位置
 */
@property(nonatomic,assign) NBImageAlignment imageAlignment;
/**
 *  按钮中图片与文字的间距
 */
@property(nonatomic,assign) CGFloat spaceBetweenTitleAndImage;

@end
