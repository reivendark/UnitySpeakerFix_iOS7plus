
#import "iPhoneSpeaker.h"
#import <AVFoundation/AVFoundation.h>


void _forceToSpeaker()
{
    if (_headsetConnected()) return;

    AVAudioSession *session = [AVAudioSession sharedInstance];

    BOOL success;
    NSError *error;

    success = [session setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];

    if (!success)
    {
        NSLog(@"AVAudioSession error setting category:%@",error);
    }

    success = [session overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    if (!success)
    {
        NSLog(@"AVAudioSession error overrideOutputAudioPort:%@",error);
    }

    success = [session setActive:YES error:&error];
    if (!success)
    {
        NSLog(@"AVAudioSession error activating: %@",error);
    }
    else
    {
        NSLog(@"AudioSession active");
    }
}


bool _headsetConnected()
{
    AVAudioSessionRouteDescription* route = [[AVAudioSession sharedInstance] currentRoute];
    for (AVAudioSessionPortDescription* desc in [route outputs])
    {
        if ([[desc portType] isEqualToString:AVAudioSessionPortHeadphones])
            return true;
    }
    return false;
}
