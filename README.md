# AllAroundPullView [![build](https://travis-ci.org/r-plus/AllAroundPullView.png?branch=master)](https://travis-ci.org/r-plus/AllAroundPullView)
AllAroundPullView allow you to 4 direction Pull-To-Refresh feature.

<img src="http://gifzo.net/QDABb6h5pY.gif" width="320" height="480" />

## Installation
* Import `AllAroundPullView.h/m and arrow image` to your project.
* Add *QuartzCore* framework to your project.
* `#import "AllAroundPullView.h"`

## Usage

    AllAroundPullView *pull = [[AllAroundPullView alloc] initWithScrollView:scrollView
                                                                   position:AllAroundPullViewPositionTop
                                                                     action:^(AllAroundPullView *view){
      // do anything
      [view performSelector:@selector(finishedLoading) withObject:nil afterDelay:0.0f];
    }];
    [scrollView addSubview:pull];
    [pull release];

### Customization
You can customize `timeout, threshold, activityView` from property.

    @property (nonatomic, assign) NSTimeInterval timeout; // default is nothing.
    @property (nonatomic, assign) CGFloat threshold; // default is 60.0f
    // default is UIActivityIndicatorViewStyleWhiteLarge
    @property (nonatomic, retain) UIActivityIndicatorView *activityView; 

So, like this.

    pull.timout = 10.0f;
    pull.threshold = 120.0f;
    pull.activityView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;

## No-ARC and delegate design pattern
maintained in `noARC` and `delegate` branch.

## License
See LICENSE file.
