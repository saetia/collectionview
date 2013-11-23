#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImage *image;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *edit;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *trash;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *camera;

@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

- (IBAction)takePicture:(UIBarButtonItem *)sender;

- (IBAction)deleteMember:(UIBarButtonItem *)sender;

- (IBAction)editMember:(UIBarButtonItem *)sender;

@end
