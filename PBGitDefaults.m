//
//  PBGitDefaults.m
//  GitX
//
//  Created by Jeff Mesnil on 19/10/08.
//  Copyright 2008 Jeff Mesnil (http://jmesnil.net/). All rights reserved.
//

#import "PBGitDefaults.h"

#define kDefaultVerticalLineLength 50
#define kCommitMessageViewVerticalLineLength @"PBCommitMessageViewVerticalLineLength"
#define kEnableGist @"PBEnableGist"
#define kEnableGravatar @"PBEnableGravatar"
#define kConfirmPublicGists @"PBConfirmPublicGists"
#define kPublicGist @"PBGistPublic"
#define kShowWhitespaceDifferences @"PBShowWhitespaceDifferences"
#define kOpenCurDirOnLaunch @"PBOpenCurDirOnLaunch"
#define kShowOpenPanelOnLaunch @"PBShowOpenPanelOnLaunch"
#define kShouldCheckoutBranch @"PBShouldCheckoutBranch"
#define kRecentCloneDestination @"PBRecentCloneDestination"
#define kSuppressAcceptDropRef @"PBSuppressAcceptDropRef"
#define kShowStageView @"PBShowStageView"

@implementation PBGitDefaults

+ (void)initialize
{
	NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary];
	[defaultValues setObject:[NSNumber numberWithInt:kDefaultVerticalLineLength]
                      forKey:kCommitMessageViewVerticalLineLength];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kEnableGist];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kEnableGravatar];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kConfirmPublicGists];
	[defaultValues setObject:[NSNumber numberWithBool:NO]
			  forKey:kPublicGist];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kShowWhitespaceDifferences];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kOpenCurDirOnLaunch];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kShowOpenPanelOnLaunch];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
					  forKey:kShouldCheckoutBranch];
	[[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];
}

+ (int) commitMessageViewVerticalLineLength
{
	return [[NSUserDefaults standardUserDefaults] integerForKey:kCommitMessageViewVerticalLineLength];
}

+ (BOOL) isGistEnabled
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kEnableGist];
}

+ (BOOL) isGravatarEnabled
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kEnableGravatar];
}

+ (BOOL) confirmPublicGists
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kConfirmPublicGists];
}

+ (BOOL) isGistPublic
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kPublicGist];
}

+ (BOOL)showWhitespaceDifferences
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowWhitespaceDifferences];
}

+ (BOOL)openCurDirOnLaunch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kOpenCurDirOnLaunch];
}

+ (BOOL)showOpenPanelOnLaunch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowOpenPanelOnLaunch];
}

+ (BOOL) shouldCheckoutBranch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShouldCheckoutBranch];
}

+ (void) setShouldCheckoutBranch:(BOOL)shouldCheckout
{
	[[NSUserDefaults standardUserDefaults] setBool:shouldCheckout forKey:kShouldCheckoutBranch];
}

+ (NSString *) recentCloneDestination
{
	return [[NSUserDefaults standardUserDefaults] stringForKey:kRecentCloneDestination];
}

+ (void) setRecentCloneDestination:(NSString *)path
{
	[[NSUserDefaults standardUserDefaults] setObject:path forKey:kRecentCloneDestination];
}

+ (BOOL) suppressAcceptDropRef
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kSuppressAcceptDropRef];
}

+ (void) setSuppressAcceptDropRef:(BOOL)suppress
{
	return [[NSUserDefaults standardUserDefaults] setBool:suppress forKey:kSuppressAcceptDropRef];
}

+ (BOOL) showStageView
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowStageView];
}

+ (void) setShowStageView:(BOOL)suppress
{
	return [[NSUserDefaults standardUserDefaults] setBool:suppress forKey:kShowStageView];
}


@end
