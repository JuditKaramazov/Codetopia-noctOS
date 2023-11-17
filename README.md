# "Codetopia 2023": noctOS

<p align="center">
  <a href="https://github.com/JuditKaramazov/Codetopia-noctOS/releases/tag/v1.0.0">
    <img src="https://github.com/JuditKaramazov/Codetopia-noctOS/blob/cf7d25b6abae724b9e41483053390a40a0f6c95b/Screenshots/Codetopia-noctOS-01.png" width="300" height="300" alt="noctOS original logo.">
  </a>
</p>
<h1 align="center">
  noctOS, v.1.0
</h1>
<div align="center">
  <img src="https://img.shields.io/badge/Xcode-Xcode-1575F9?logo=xcode" alt="Xcode" title="Xcode" />
  <img src="https://img.shields.io/badge/Swift-Swift-FA7343?logo=swift" alt="Swift" title="Swift" />
  <img src="https://img.shields.io/badge/Storyboard-Storyboard-1493D8?logo=storyboard" alt="Storyboard" title="Storyboard" />
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" title="License: MIT" />
</div>
<br />
<p align="center">
  <a href="https:/github.com/JuditKaramazov">🐱 /JuditKaramazov</a>
</p>
<p align="center">
  <a href="https://karamazfolio.xyz/">📍 Personal site</a>
</p>
<p align="center">
  <a href="https://github.com/JuditKaramazov/Codetopia-noctOS/releases/download/v1.0.0/noctOs.zip">⬇️ App</a>
</p>

---

This is a macOS extension developed with [Swift](https://developer.apple.com/swift/) and [Xcode](https://developer.apple.com/xcode/), so please, make sure to have Apple's integrated development environment for macOS installed on your Mac. While Xcode is the primary IDE for Apple platform development, you can use other text editors and IDEs, such as Visual Studio Code, JetBrains AppCode, or even Vim or Emacs with the Swift compiler in order to write and develop Swift code. However, Xcode provides a development environment with graphical tools for building macOS apps making your way much easier; it's definitely worth a try!

## Getting Started

If you simply want to try the extension itself, you have the option to install it directly with no unnecessarily-complicated steps obstructing the process:

1. Download and unzip the [latest release](https://github.com/JuditKaramazov/Codetopia-noctOS/releases/tag/v1.0.0).
2. Open the app and grant the proper permissions popping up in the dialog window. Depending on your version, you can also enable Accessibility:

- System Preferences > Security & Privacy > Privacy

3. *Boom, Shakalaka!* `(This one goes for you and your lovely anecdotes, Theresa!)`
*Note: Remember to move the app to "Applications"!.*


Offering options is always neat, though. If you're interested in the development process and exploration, start by cloning the extension's repository to your local machine using Git. 

Open your terminal and run the following command:

```bash
$ git clone https://github.com/JuditKaramazov/Codetopia-noctOS.git
```

Then, prepare the build:

```fish
cd noctOS
pod install
open noctOS.xcworkspace
```

Now, you are ready to run it!

Bear in mind that if you want to test noctOS (and your personal derivations of it) on a physical iOS device, you'll need to set up a development provisioning profile and code-signing identity in Xcode. Refer to Apple's documentation for details on this process - and feel free to modify and customize the project as needed! Sharing is caring, after all, and the most interesting things can come from entire communities and not individuals.

## Introduction

<p align="center">
  <img src="https://github.com/JuditKaramazov/Codetopia-noctOS/blob/cf7d25b6abae724b9e41483053390a40a0f6c95b/Screenshots/Codetopia-noctOS-02.png" alt="noctOS app visual asset." width="480"> 
  <img src="https://github.com/JuditKaramazov/Codetopia-noctOS/blob/cf7d25b6abae724b9e41483053390a40a0f6c95b/Screenshots/Codetopia-noctOS-03.png" alt="noctOS app visual asset." width="480">
</p>

Do you remember `Grand Theft Auto: San Andreas` and its infamous "here we go again" meme? Well, I must admit it's starting to feel somehow similar to that emblematic moment, but now that I (hopefully) have your attention, and just like it recently happened with my little [ChromatOS](https://github.com/JuditKaramazov/Codetopia-ChromatOS), today we're introducing `noctOS`. As it previously happened with its big brother, today's project works as part of this fall's `Codetopia`, inspired by Africa’s first annual destination Indie Games & Immersive Arts festival and conference [Playtopia](https://playtopiafestival.co.za/about/). "Why so many 'Codetopias', and 'Summer Code Fests', and some other bunch of strange labels, Judit?" First of all, it truly helps me organize my ideas and keep track of my progress; and it's an indirect way of supporting events related to spheres that I truly enjoy, too. Finally, this is nothing more than an excuse to let you know that all these projects prove that I am still learning and practicing the basics I couldn't explore during my formation - as well as getting to know better different technologies, languages, frameworks and tools allowing me to solve my every day's mundanities.

Not long ago, we discussed how much Apple restricts the customization of system elements like folder colors for consistency, coherency, and security. This strong, perfectly-solid brand identity has been at the core of Apple’s success, and with it, the emblematic half-eaten-fruit managed to win new enthusiasts while solidifying the relationship with existing ones. Innovation, quality customer service, captivating marketing campaigns that resonate with its audience... Marketing has changed because the world has changed, and while many people in this industry have become overwhelmed and paralyzed by the blizzard of technology that's literally upon us, entrepreneurs and engineers have been able to forge new businesses and disrupt, or create, markets. "Es el mercado, amigo."

Although we all have to admit that, at a `meta` level, each of these businesses - Apple included - demonstrated an absurd degree of coherence between their multiple departments (perfectly aligned, like a living organism), it's still `lame` to exist within some boundaries when, paradoxically, choice and control have been the preferred labels of most of these companies finding customization not so representative of concepts such as "value" and "integrity". `What do we truly value as individuals, in the end?` Quite a difficult question, this one. In my case, and after reflecting on the ideas that I explored in my last (and colorful) project of the kind, I would say that `customization` and (at least the fiction of) `freedom of choice` are indeed essential, and I do appreciate having a minimum control over `how` things work - and `when`. Why would that be so crucial, especially in the digital era? Here's a short explanation of it:

- In a world of predefined defaults, the `power of choice and freedom` is unparalleled - and there's no way we refuse to mold our digital spaces in order to mirror the complexities of our evolving identities.
- Much like colors in the physical realm, the colors of our digital environment are `personal expressions` unique to us. Imagine launching your creative apps under an inspiring theme or your productivity tools under a focused ambiance. It's not just about organizing; it's about creating an `emotional connection with your digital space`.
- In an era where the expression of identity remains both blurred and resoundingly powerful, and now that algorithms often curate our experiences, customization becomes a tool for `reclaiming control` and `asserting individuality`.
- No matter how much the distinction between analog and digital identities is diminishing, the concept of "self" is paramount, and our devices should adapt to our preferences, not the other way around (not even your `Apple device` is excluded from this list, dear stranger).
- As stated in ChromatOS, MacBooks are cool - but they could be cool, colorful, `and` more customizable.

Considering this, and due to this never-ending rapture pushing me to allow other individuals (including myself, this time) to make their devices into digital sanctuaries, I decided to create a `Swift` application empowering users to personalize their macOS experience by easily `setting a light or dark mode theme for their chosen applications`.

The ability to switch themes and colors can still become a reflection of the dynamic nature of the self, can't it?

<p align="center">
  <img src="https://github.com/JuditKaramazov/Codetopia-noctOS/blob/cf7d25b6abae724b9e41483053390a40a0f6c95b/Screenshots/Codetopia-noctOS-05.png" alt="noctOS app visual asset.">
</p>

## Features

"The distinction between analog and digital identities is diminishing"; that's undeniable. However, why should it be described as a "distinction" or schism? `noctOS` embraces the fusion instead, offering a seamless transition between physical and digital expressions of self. Not everything has to be `black or white`, `dark or light` - and if something has to, make it be your different applications only:

- **Easy Installation**. Users can grant noctOS the proper permissions by clicking "Allow" after installation. If that wasn't the case, it's still possible to do so through `System Preferences > Security & Privacy > Privacy`, which makes the tool the most easy-peasy one to use ever.
- **Intuitive Theme Selection**. You'll have to choose your default theme if you didn't already, and then click the apps you'd want to be launched on the contrary. Give it a try!
- **Persistent Preferences**. Just like we explored with `ChromatOS`, `noctOS` continues to work even after the initial window is closed, which means that users' preferences persist across sessions. Yay!
- **Grid & List View**. Again: you choose how to display the different apps!
- **Search Bar**. Couldn't it be easier?
- **Localized**. Spanish? French? Catalan? ¿Nos quedamos en la comodidad del inglés, tal vez? We're slowly incorporating different localizations, so please, feel free to ask for your own language to be included!
- **Light (and sometimes dark, too. Ehem) & Simple**. The applications is lighter than a feather, I promise. It doesn't have to take much space to keep things fashionable!

## What's Coming Next

As we stride forward on our journey to enhance this digital experience we're all immersed in, here's a glimpse of what's on the horizon for `noctOS`:

>     - [ ] New localizations aiming to answer different profile's needs.
>     - [ ] Regular updates according to major *macOS releases*.
>     - [ ] Extension of the main theme color schemes to the dark/light modes.

*Note: noctOS has been thoroughly tested on various macOS versions, including the latest macOS 14 (Sonoma). Please be aware that we'll try our best to keep the app up to date with future macOS changes.*

## Style

The exploration of my digital identity didn’t start with LinkedIn, Instagram, or Twitter profiles for me, as it did for many others; if anything, I would associate this way-too-distant-and-blurry moment with the creation of several (and already deprecated) blogs that witnessed some of the most crucial moments of my life. However, in terms of "present days", this association is intrinsically linked to the color schemes that are slowly defining my virtual existence through my latest projects. How funny it is to think that they seem to be now the new witnesses of the persona that I am today, constantly evolving and diving into the unknown.

In all honesty, this project started with the idea of establishing this sort of "brand" for my personal use, probably as some sort of theme switcher or something of the kind. However, I eventually asked myself: `"what defines you?"`, and one of the immediate answers was: `"the lack of transition from day to night"`. Although a nocturnal owl, I still do enjoy the appearance of some applications under the light mode, and having to make a choice that never felt flexible enough led to a thoughtful exploration of the concepts of day, night, themes, flexibility, identity, and decisions. And here we are now.

What's undeniable, too, is that there's this other witness constantly supporting and encouraging me throughout the strange (and sometimes painful) process of de-(and re-)construction of the "self": the well-known `Auregan Nedelec`, in charge not only of the extremely beautiful and accurate illustrations giving shape to my digital identity but also the guardian of my mental sanity, as well as the best teammate one could ask for. You know how tough these recent times have been (and still are) for me, and yet you're patient enough to give me the proper time to heal, learn, and redefine what I thought was as solid as a mountain. This identity wouldn't exist without you, and I can't thank you enough for taking part in it.

As for you, and since I do understand we all have different ways to decode, understand, and navigate the person that we are, remember that you can always make this app yours by simply investigating the `SystemPreferenceView.swift` and `AppearanceAware.swift` files, and then apply your own color schemes here:

```swift
private func configureAppearance() {
    switch view.effectiveAppearance.bestMatch(from: [.darkAqua, .aqua]) {
    case .darkAqua?:
        view.layer?.backgroundColor = NSColor(named: "Dark")?.cgColor
        titleLabel.animator().textColor = NSColor(hex: "#88bec8")
        subtitleLabel.textColor = NSColor(hex: "#7f97a1")
    case .aqua?:
        view.layer?.backgroundColor = .white
        titleLabel.textColor = NSColor(hex: "#43a699")
        subtitleLabel.textColor = NSColor(hex: "#4e5d63")
    default:
        break
    }
}

```

We are constantly making decisions. Sometimes, the best choice is not having to choose at all.

<p align="center">
  <img src="https://github.com/JuditKaramazov/Codetopia-noctOS/blob/cf7d25b6abae724b9e41483053390a40a0f6c95b/Screenshots/Codetopia-noctOS-04.png" alt="noctOS app visual asset." width="600">
</p>

Please note that while I'm trying my best to improve and explore different possibilities, there might be some inconsistencies, bugs and errors that will surely be addressed in the future, as we previously discussed. Do not hesitate to let me know about it, though! 
And remember that you can make the Dinosaur extremely happy if you...
<br />

---

<h1 align="center">
  <a href="https://karamazfolio.xyz/"><img src="https://github.com/JuditKaramazov/JuditKaramazfolio/blob/a7b1825e33711948f51e53e249751761e1779f56/public/karamaBrand.png" width="100" height="100" alt="Original logo asset.">
</h1>
<h2 align="center">
  <a href="https://www.buymeacoffee.com/JuditKaramazov" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 207px !important;" ></a>
</h2>
