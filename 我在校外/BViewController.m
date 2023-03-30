//
//  BViewController.m
//  我在校外
//
//  Created by 翟旭博 on 2023/3/22.
//

#import "BViewController.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface BViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *rightLabel;  //上面四个
@property (nonatomic, strong) UILabel *leftLabel;  //左边俩

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *timeLabel;

@property (nonatomic, strong) UIButton *backButton;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView = [[UIImageView alloc] init];
    self.imageView.image = [UIImage imageNamed:@"1.jpeg"];
    self.imageView.frame = self.view.frame;
    [self.view addSubview:self.imageView];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor colorWithRed:(52.0f / 255.0f) green:(132.0f / 255.0f)blue:(231.0f / 255.0f) alpha:1.0f];
    view.frame = CGRectMake(0, 0, SIZE_WIDTH, 40);
    [self.imageView addSubview:view];
    
    for (int i = 0; i < 4; i++) {
        self.rightLabel = [[UILabel alloc] init];
        self.rightLabel.text = self.array[i];
        self.rightLabel.textColor = [UIColor blackColor];
        self.rightLabel.textAlignment = NSTextAlignmentRight;
        self.rightLabel.frame = CGRectMake(SIZE_WIDTH - 210, 170 + 46 * i, 180, 50);
        self.rightLabel.font = [UIFont systemFontOfSize:14];
        [self.view addSubview:self.rightLabel];
    }
    
    for (int i = 0; i < 2; i++) {
        self.leftLabel = [[UILabel alloc] init];
        self.leftLabel.text = self.array[i + 4];
        self.leftLabel.textColor = [UIColor blackColor];
        self.leftLabel.textAlignment = NSTextAlignmentLeft;
        self.leftLabel.frame = CGRectMake(30, 380 + 90 * i, 400, 50);
        self.leftLabel.font = [UIFont systemFontOfSize:13];
        [self.view addSubview:self.leftLabel];
    }
    
    self.nameLabel = [[UILabel alloc] init];
    self.nameLabel.text = [NSString stringWithFormat:@"%@(学生)",self.array[6]];
    self.nameLabel.textAlignment = NSTextAlignmentLeft;
    self.nameLabel.textColor = [UIColor blackColor];
    self.nameLabel.frame = CGRectMake(113, 770, 200, 50);
    self.nameLabel.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:self.nameLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    self.timeLabel.text = self.array[7];
    self.timeLabel.textAlignment = NSTextAlignmentLeft;
    self.timeLabel.frame = CGRectMake(175, 791, 200, 50);
    self.timeLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:13];
    self.timeLabel.textColor = [UIColor colorWithRed:(83.0f / 255.0f) green:(176.0f / 255.0f)blue:(123.0f / 255.0f) alpha:1.0f];
    [self.view addSubview:self.timeLabel];
    
    self.backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.backButton.frame = CGRectMake(SIZE_WIDTH - 100, 0, 100, 100);
    self.backButton.backgroundColor = [UIColor clearColor];
    [self.backButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.backButton];
}

- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
