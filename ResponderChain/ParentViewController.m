//
//  ViewController.m
//  ResponderChain
//

#import "ParentViewController.h"

#import "ChildViewController.h"

@interface ParentViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ParentViewController

- (void)viewDidLoad {
    ChildViewController *cvc = [self.storyboard instantiateViewControllerWithIdentifier:@"ChildViewController"];

    [super viewDidLoad];
    [cvc willMoveToParentViewController:self];
    cvc.view.frame = self.containerView.bounds;
    [self.containerView addSubview:cvc.view];
    [cvc didMoveToParentViewController:self];
}
- (IBAction)customAction:(id)sender {
    NSLog(@"customAction from %@", self);
}

@end
