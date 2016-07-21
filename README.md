# Unity Speaker Fix iOS 7+

Unity switches audio output in some iOS devices to the earpiece speaker, instead of the usual speakerphone speaker. As a result, all the audio in game becomes very quiet.

#How-To

Copy UnitySpeakeFix_iOS7plus folder to any of your Unity project's folder. Add-Ons for example. 
'''CSharp

Just call

#if(UNITY_IOS)
iPhoneSpeaker.ForceToSpeaker();
#endif

somewhere on apllication start and after every call of Microphone.Start
