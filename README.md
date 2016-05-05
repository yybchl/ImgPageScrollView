# ImgPageScrollView
广告图片滚动器

###使用方法
####导入头部
```Objective-C
#import "ImageScrollView.h"
```
####具体使用
```Objective-C
    //创建
    ImageScrollView *imgScrollView = [[ImageScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    [self.view addSubview:imgScrollView];
    //添加数据
    imgScrollView.pics = @[@"http://g.hiphotos.baidu.com/zhidao/pic/item/8326cffc1e178a823f2331f0f703738da977e847.jpg", @"http://imgsrc.baidu.com/forum/pic/item/d833c895d143ad4bf8e5b06c82025aafa50f0656.jpg", @"http://h.hiphotos.baidu.com/zhidao/pic/item/f703738da97739123c6dc373fe198618367ae25d.jpg"];
    //点击事件
    [imgScrollView returnIndex:^(NSInteger index) {
        NSLog(@"点击了第%zi张", index);
    }];
    //刷新（必需的步骤）
    [imgScrollView reloadView];
```
