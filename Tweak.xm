// By @aJBboCydia

#import <UIKit/UIKit.h>


@interface CSDashBoardQuickActionsButtonSettings : NSObject
@property (assign,nonatomic) BOOL showsButtons;
@end

@interface CSQuickActionsView : NSObject
@property (nonatomic,retain) CSDashBoardQuickActionsButtonSettings *quickActionsSettings; 
@end


@interface CSCoverSheetView : NSObject
@property (nonatomic,retain) CSQuickActionsView *quickActionsView; 
@end

@interface CSCoverSheetViewController : UIViewController
@property (nonatomic,readonly) CSCoverSheetView *coverSheetView;
@end

%hook CSCoverSheetViewController
-(void)viewDidLoad { %orig;

        self.coverSheetView.quickActionsView.quickActionsSettings.showsButtons = NO; // YES Or NO

}

%end





//