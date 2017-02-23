# SPAlertController
对UIAlertController的简单封装

不用再重复的写一堆代码了，就像这样：
UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"这是一个简单封装的Alert" preferredStyle:UIAlertControllerStyleAlert handler:^(UIAlertAction *action) {
if ([action.title isEqualToString:@"取消"]) {
NSLog(@"点击了>>>>取消");
}
if ([action.title isEqualToString:@"确定"]) {
NSLog(@"点击了>>>>确定");
}
if ([action.title isEqualToString:@"ok"]) {
NSLog(@"点击了>>>>ok");
}
} cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"ok", nil];
[self presentViewController:alert animated:YES completion:nil];

