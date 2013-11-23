#import "DetailViewController.h"
#import "JVFloatLabeledTextField.h"

@interface DetailViewController ()
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;

@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *name;

@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *nickname;

@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *department;

@property (weak, nonatomic) IBOutlet UITextView *notes;

@end

@implementation DetailViewController

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    self.imageView.image = self.image;
    self.thumbnail.image = self.image;
    self.toolbar.alpha = 0;
    
}

- (IBAction)takePicture:(UIBarButtonItem *)sender {
    
}

- (IBAction)deleteMember:(UIBarButtonItem *)sender {
    
}

- (IBAction)editMember:(UIBarButtonItem *)sender {
    
    self.toolbar.alpha = !!!self.toolbar.alpha;

}
@end
