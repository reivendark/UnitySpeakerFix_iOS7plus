# Unity Speaker Fix iOS 7+

**Unity** switches audio output in some **iOS7+** devices to the *earpiece speaker*, instead of the usual *speakerphone speaker*. As a result, all the audio in game becomes very quiet.

#How-To

Copy **UnitySpeakeFix_iOS7plus** folder to any of your Unity project's folder, **Add-Ons** for example. 

Just call

```C#
#if(UNITY_IOS)
iPhoneSpeaker.ForceToSpeaker();
#endif
```

somewhere on application start and after every call of ```Microphone.Start```

Tested on iPhone 5S and iPhone 6S plus. Successfully used by G.H.O.R. Corporation for  MMO mobile tank game **Tanktastic 2.0**

#Credit

You can support author buying his [Advanced Coroutines](http://u3d.as/wuD) **Unity** plugin on **Asset Store**

Based on @cbaltzer project [UnitySpeakerFix](https://github.com/cbaltzer/UnitySpeakerFix) for **iOS6 or older**
