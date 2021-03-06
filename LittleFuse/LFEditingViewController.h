//
//  LFEditingViewController.h
//  LittleFuse
//
//  Created by Kranthi on 29/01/16.
//  Copyright © 2016 XcubeLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EditingDelegate <NSObject>

/**
 * This method is called when new information is entered to be updated in the configuration screen.
 * @param: txt: The new value entered.
 */
- (void)selectedValue:(NSString *)txt;

@optional

/**
 * This method is called when user updated the value of a particular field in the feature enable/disable or hardware configuration fields.
 * @param: isSuccess: This specifies if user successfully updated the data or clicked on cancel button and cancels the operation.
 * @discussion In this method, update is performed by taking the whole byte data for the hardware config or feature enable/ disable fields and bit wise operation is performed to change the value of the particular field.
 */
- (void)toggleSelectedWithSuccess:(BOOL)isSuccess;

@end

@interface LFEditingViewController : LFBaseViewController

@property (nonatomic, assign) BOOL showPicker;
@property (nonatomic, assign) BOOL showSlider;

@property (nonatomic, weak) id<EditingDelegate> delegate;

@property (nonatomic, strong) NSString *selectedText;

@property (nonatomic, assign) BOOL showAuthentication;
@property (nonatomic,assign) BOOL isAdvConfig;

@property (nonatomic, assign) NSInteger evSelectedTag;
@property (nonatomic, assign) BOOL evIsBasic;

@end
