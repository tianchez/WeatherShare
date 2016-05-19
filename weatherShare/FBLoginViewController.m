////
////  FBLoginViewController.m
////  weatherShare
////
////  Created by Tianchen Zhang on 5/5/15.
////  Copyright (c) 2015 Tianchen Zhang. All rights reserved.
////
//
//#import "FBLoginViewController.h"
//
//@implementation FBLoginViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    _model=[ WeatherModel sharedModel];
//    
//    [self.postText setText:[NSString stringWithFormat:@"I am %@ that it is %@ in %@ right now",[self.model mood], [self.model weatherDiscription], [self.model cityName]]];
//    
//    NSString *imageName=[NSString stringWithFormat:@"%@.png",[self.model mood]];
//     self.postImage.image = [UIImage imageNamed:imageName];
//    
//    // Do any additional setup after loading the view.
////    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
////    loginButton.center = self.view.center;
////    [self.view addSubview:loginButton];
////    
////    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
////    [content setContentTitle:@"Testing title"];
////    [content setContentDescription:@"Testing description."];
////    content.contentURL = [NSURL URLWithString:@"https://developers.facebook.com"];
//    
//    // Create an object
////    NSDictionary *properties = @{
////                                 @"og:type": @"books.book",
////                                 @"og:title": @"A Game of Thrones",
////                                 @"og:description": @"In the frozen wastes to the north of Winterfell, sinister and supernatural forces are mustering.",
////                                 @"books:isbn": @"0-553-57340-3",
////                                 };
////    FBSDKShareOpenGraphObject *object = [FBSDKShareOpenGraphObject objectWithProperties:properties];
////    
////    // Create an action
////    FBSDKShareOpenGraphAction *action = [[FBSDKShareOpenGraphAction alloc] init];
////    action.actionType = @"books.read";
////    [action setObject:object forKey:@"books:book"];
////    
////
////    
////    // Create the content
////    FBSDKShareOpenGraphContent *content = [[FBSDKShareOpenGraphContent alloc] init];
////    content.action = action;
////    content.previewPropertyName = @"books:book";
//    
////    [FBSDKShareDialog showFromViewController:self
////                                 withContent:content
////                                    delegate:nil];
//
//    
////    FBSDKShareButton *sharebutton = [[FBSDKShareButton alloc] init];
////    sharebutton.shareContent = content;
////    sharebutton.center = self.view.center;
////    [self.view addSubview:sharebutton];
//}
//
//- (IBAction)sendPost:(id)sender {
//    NSArray *activityItems;
//    
//    if (_postImage.image != nil) {
//        activityItems = @[_postText.text, _postImage.image];
//    } else {
//        activityItems = @[_postText.text];
//    }
//    
//    UIActivityViewController *activityController =
//    [[UIActivityViewController alloc]
//     initWithActivityItems:activityItems
//     applicationActivities:nil];
//    
//   activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact];
//    
//    [self presentViewController:activityController
//                       animated:YES completion:nil];
//}
//
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    
//    UITouch *touch = [[event allTouches] anyObject];
//    if ([_postText isFirstResponder] && [touch view] != _postText) {
//        [_postText resignFirstResponder];
//    }
//    [super touchesBegan:touches withEvent:event];
//}
//
////- (IBAction)selectImage:(id)sender {
////    if ([UIImagePickerController isSourceTypeAvailable:
////         UIImagePickerControllerSourceTypeSavedPhotosAlbum])
////    {
////        UIImagePickerController *imagePicker =
////        [[UIImagePickerController alloc] init];
////        imagePicker.delegate = self;
////        imagePicker.sourceType =
////        UIImagePickerControllerSourceTypePhotoLibrary;
////        imagePicker.mediaTypes = @[(NSString *) kUTTypeImage];
////        imagePicker.allowsEditing = NO;
////        [self presentViewController:imagePicker
////                           animated:YES completion:nil];
////    }
////}
//
//#pragma mark -
//#pragma mark UIImagePickerControllerDelegate
//
//-(void)imagePickerController:(UIImagePickerController *)picker
//didFinishPickingMediaWithInfo:(NSDictionary *)info
//{
//    NSString *mediaType = info[UIImagePickerControllerMediaType];
//    [self dismissViewControllerAnimated:YES completion:nil];
//    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
//        UIImage *image =
//        info[UIImagePickerControllerOriginalImage];
//        
//        _postImage.image = image;
//    }
//}
//
//-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
//
////- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
////{
////    // Construct an FBSDKSharePhoto
////    FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc] init];
////    photo.image = info[UIImagePickerControllerOriginalImage];
////    photo.userGenerated = YES;
////    
////    // Create an object
////    NSDictionary *properties = @{
////                                 @"og:type": @"books.book",
////                                 @"og:title": @"A Game of Thrones",
////                                 @"og:description": @"In the frozen wastes to the north of Winterfell, sinister and supernatural forces are mustering.",
////                                 @"books:isbn": @"0-553-57340-3",
////                                 };
////    FBSDKShareOpenGraphObject *object = [FBSDKShareOpenGraphObject objectWithProperties:properties];
////    
////    // Create an action
////    FBSDKShareOpenGraphAction *action = [[FBSDKShareOpenGraphAction alloc] init];
////    action.actionType = @"books.read";
////    [action setObject:object forKey:@"books:book"];
////    
////    // Add the photo to the action
////    [action setPhoto:photo forKey:@"image"];
////    
////    // Create the content
////    FBSDKShareOpenGraphContent *content = [[FBSDKShareOpenGraphContent alloc] init];
////    content.action = action;
////    content.previewPropertyName = @"books:book";
////    
////    [FBSDKShareDialog showFromViewController:self
////                                 withContent:content
////                                    delegate:nil];
////}
//
//
//@end
