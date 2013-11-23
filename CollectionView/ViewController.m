#import "ViewController.h"
#import "DetailViewController.h"
#import "Cell.h"
#import <QuartzCore/QuartzCore.h>
#import "HeaderView.h"

NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id

@implementation ViewController

-(void)viewDidLoad {

    self.categories = @[
                            @{@"title": @"Nurses"},
                            @{@"title": @"Tech"},
                            @{@"title": @"Attending"},
                            @{@"title": @"Residents"},
                            @{@"title": @"Pharmacists"},
                            @{@"title": @"Registration"},
                            @{@"title": @"Social workers"},
                            @{@"title": @"NP"},
                            @{@"title": @"PA"},
                            @{@"title": @"Security"},
                            @{@"title": @"Maintenance"},
                            ];
    
    
    self.members = @[
                       @{@"name": @"Amena Ward"},
                       @{@"name": @"Nevada Blankenship"},
                       @{@"name": @"Vincent Duke"},
                       @{@"name": @"Nathan Knapp"},
                       @{@"name": @"Perry Foreman"},
                       @{@"name": @"Iola Velez"},
                       @{@"name": @"Kaseem Mcgee"},
                       @{@"name": @"Zia Roth"},
                       @{@"name": @"Audra Figueroa"},
                       @{@"name": @"Emery Oconnor"},
                       @{@"name": @"Hedda Holt"},
                       @{@"name": @"Baxter Velez"},
                       @{@"name": @"Kaseem Potter"},
                       @{@"name": @"Orlando Stephenson"},
                       @{@"name": @"Uriel Wolfe"},
                       @{@"name": @"Caesar Wilcox"},
                       @{@"name": @"Ursa Short"},
                       @{@"name": @"Amethyst Spence"},
                       @{@"name": @"Benjamin Price"},
                       @{@"name": @"Hadley Sims"},
                       @{@"name": @"Amaya Salazar"},
                       @{@"name": @"Rahim Mann"},
                       @{@"name": @"Hilda Rivas"},
                       @{@"name": @"Giselle Johnson"},
                       @{@"name": @"Aphrodite Mullins"},
                       @{@"name": @"Candice Huber"},
                       @{@"name": @"Basil Doyle"},
                       @{@"name": @"Hanna Mcneil"},
                       @{@"name": @"Yvonne Buckley"},
                       @{@"name": @"Jillian Tucker"},
                       @{@"name": @"Belle Middleton"},
                       @{@"name": @"Suki Atkinson"},
                       @{@"name": @"Jasper Velasquez"},
                       @{@"name": @"Tallulah Mason"},
                       @{@"name": @"Melyssa Duran"},
                       @{@"name": @"Hyatt Patrick"},
                       @{@"name": @"Arsenio Conley"},
                       @{@"name": @"Dolan James"},
                       @{@"name": @"Xandra Middleton"},
                       @{@"name": @"Warren Avila"},
                       @{@"name": @"Dustin Browning"},
                       @{@"name": @"Jerome Gutierrez"},
                       @{@"name": @"Gloria Solis"},
                       @{@"name": @"Yoshio Glenn"},
                       @{@"name": @"Xerxes Hyde"},
                       @{@"name": @"Debra Best"},
                       @{@"name": @"Basia Cain"},
                       @{@"name": @"Basil Mann"},
                       @{@"name": @"Anjolie Winters"},
                       @{@"name": @"Britanney Peterson"},
                       @{@"name": @"Danielle Love"},
                       @{@"name": @"Ina Francis"},
                       @{@"name": @"Owen Padilla"},
                       @{@"name": @"Rahim Parks"},
                       @{@"name": @"Fletcher Phillips"},
                       @{@"name": @"Oprah Mcknight"},
                       @{@"name": @"Sasha Craft"},
                       @{@"name": @"Yardley Combs"},
                       @{@"name": @"Armand Weiss"},
                       @{@"name": @"Kelsey Barnes"},
                       @{@"name": @"Ignacia Rojas"},
                       @{@"name": @"Blake Koch"},
                       @{@"name": @"Ulysses Cooke"},
                       @{@"name": @"Ashton Williams"},
                       @{@"name": @"Chancellor Cook"},
                       @{@"name": @"Nell Hess"},
                       @{@"name": @"Pascale Byrd"},
                       @{@"name": @"Odysseus Johnston"},
                       @{@"name": @"Sage Kim"},
                       @{@"name": @"Charde Carson"},
                       @{@"name": @"Cruz Underwood"},
                       @{@"name": @"Phillip Bell"},
                       @{@"name": @"Brenden Pittman"},
                       @{@"name": @"Deacon Cole"},
                       @{@"name": @"Mufutau Rodriguez"},
                       @{@"name": @"Cruz Brooks"},
                       @{@"name": @"Lareina Gay"},
                       @{@"name": @"MacKensie Kemp"},
                       @{@"name": @"Keith Oneil"},
                       @{@"name": @"Jasper Patton"},
                       @{@"name": @"Tad Charles"},
                       @{@"name": @"Britanney Mills"},
                       @{@"name": @"Elvis Skinner"},
                       @{@"name": @"Blaze Burns"},
                       @{@"name": @"Georgia Fitzpatrick"},
                       @{@"name": @"Donna Mayer"},
                       @{@"name": @"Clarke Avery"},
                       @{@"name": @"Malcolm Gamble"},
                       @{@"name": @"Philip Stuart"},
                       @{@"name": @"Kamal Holt"},
                       @{@"name": @"Meredith Potts"},
                       @{@"name": @"Kerry Dixon"},
                       @{@"name": @"Armando Castro"},
                       @{@"name": @"Oscar Mckay"},
                       @{@"name": @"Shafira Cote"},
                       @{@"name": @"Eve Poole"},
                       @{@"name": @"Hadley Holmes"},
                       @{@"name": @"Grady Nguyen"},
                       @{@"name": @"Elaine Jacobs"},
                       @{@"name": @"Raya Moon"}
                       ];

    
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return (arc4random() % 50) + 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{

    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
    cell.label.text = self.members[indexPath.row][@"name"];
    
    // load the image for this cell
    NSString *imageToLoad = [NSString stringWithFormat:@"%d.jpg", indexPath.row + 1];
    cell.image.image = [UIImage imageNamed:imageToLoad];
    
    cell.image.layer.cornerRadius = cell.image.frame.size.width / 2;
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.categories.count;
}


- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    HeaderView *headerView = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        headerView.title.text = self.categories[indexPath.section][@"title"];
        reusableview = headerView;
    }
    
    return reusableview;
}


// the user tapped a collection item, load and set the image on the detail view controller
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
        NSString *imageNameToLoad = [NSString stringWithFormat:@"%d", selectedIndexPath.row + 1];
        NSString *pathToImage = [[NSBundle mainBundle] pathForResource:imageNameToLoad ofType:@"jpg"];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:pathToImage];
        
        DetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.image = image;
    }
}

@end
