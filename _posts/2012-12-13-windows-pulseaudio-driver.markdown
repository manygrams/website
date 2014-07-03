---
layout: post
status: publish
title: Windows PulseAudio Driver
date: '2012-12-13 15:23:04 -0500'
comments:
- id: 78
  author: moreje
  author_email: moreje@gmail.com
  author_url: ''
  date: '2013-03-04 10:28:29 -0500'
  date_gmt: '2013-03-04 15:28:29 -0500'
  content: "Hey!\r\ndid you get something ? I really need this kind of driver!!\r\nThanks"
- id: 79
  author: Nick
  author_email: me@nicolasevans.org
  author_url: http://nicolasevans.org
  date: '2013-03-04 18:06:17 -0500'
  date_gmt: '2013-03-04 23:06:17 -0500'
  content: "Hey moreje,\r\nUnfortunately, I have not finished this project yet. It
    is proving to be a little more complicated than I originally expected! However,
    I'm hoping to get more done on it in the next few months. \r\nStay tuned!"
- id: 80
  author: agribu
  author_email: agribu@online.de
  author_url: http://wiki.schuermann.cc/
  date: '2013-03-21 07:03:37 -0400'
  date_gmt: '2013-03-21 11:03:37 -0400'
  content: "Hey Nicolas,\r\n\r\nI like your idea of implementing a pulseaudio driver
    for Windows. Right know I am experimenting with a pulseaudio server running headless
    on a local debian server. Since I am using a plug computer (Pogoplug) with a simple
    usb soundcard I thought it would be a good idea to deliver stand alone systems
    with sound streaming via network capability. In my opinion having windows supported
    would be a really great. Maybe there could even be an option for toggling the
    audio output in windows. Have you considered putting your sources on http://github.com
    or any similar provider? That would be great for other developers to help you
    out. I am also very interested in your conception and implementation, furthermore
    in testing.\r\n\r\n Greetings from Germany :)\r\nagribu\r\n\r\n----\r\nhttp://github.com/agribu"
- id: 81
  author: iamnotastring
  author_email: alon@pobox.com
  author_url: http://telavivmakers.org/
  date: '2013-03-22 14:53:31 -0400'
  date_gmt: '2013-03-22 18:53:31 -0400'
  content: "Hi Nicolas,\r\n\r\n I'm looking for the same thing, I've just started
    a wiki page and planned to try to merge pulseaudio with an existing BSD licensed
    C-Media driver (https://code.google.com/p/cmediadrivers/) , but then did one more
    google page, and here I am :) (here is the page I setup btw - http://telavivmakers.org/index.php/MiscSoftwareProjects)\r\n\r\n
    I have some experience with windows driver development (http://cgit.freedesktop.org/spice/win32/qxl),
    and would very much like to help in this project, if there is any git repository
    already available, please let me know at my email . Thanks,\r\n\r\nAlon"
- id: 82
  author: Nick
  author_email: me@nicolasevans.org
  author_url: http://nicolasevans.org
  date: '2013-03-22 14:56:44 -0400'
  date_gmt: '2013-03-22 18:56:44 -0400'
  content: "Hi agribu,\r\n\r\nThat's the plan! I'm still mostly doing readings into
    the workings of the Windows driver system, and will be working with a friend soon
    (who does have experience) to get it going ASAP. As soon as we have anything somewhat
    usable, I will be creating a public git repo.\r\n\r\nCheers,\r\nNick"
- id: 83
  author: Nick
  author_email: me@nicolasevans.org
  author_url: http://nicolasevans.org
  date: '2013-03-22 14:58:39 -0400'
  date_gmt: '2013-03-22 18:58:39 -0400'
  content: "Hi Alon,\r\n\r\nThanks! Yeah, as soon as my friend with Windows driver
    experience and I get working on it, I'll let you know. He's busy with another
    project, but I'm hoping to get the ball rolling early May. I'll check out the
    links you provided.\r\n\r\nThanks for your interest!\r\nNick"
- id: 84
  author: Alon Levy
  author_email: alon@pobox.com
  author_url: http://telavivmakers.org/
  date: '2013-03-22 15:08:36 -0400'
  date_gmt: '2013-03-22 19:08:36 -0400'
  content: There is also http://dork.clingman.org:8080/winesd/ , but it is very old,
    I'm not sure yet if it is still relevant, although it does try to solve the same
    type of problem, only with esound replacing pulseaudio (which didn't exist in
    2000 :)
- id: 86
  author: Jeff L
  author_email: tehlec@gmail.com
  author_url: ''
  date: '2013-06-07 13:02:27 -0400'
  date_gmt: '2013-06-07 17:02:27 -0400'
  content: This is exactly what I'm looking for - I leave my linux box up 24x7, so
    it has the speakers hooked up. When I have my windows box on (mostly for gaming)
    I want to be able to play 5.1 surround over the speakers (mixed with the linux
    sound, e.g. spotify on linux playing at the same time as the game). I hope things
    are going well, I would love for this to work.
- id: 88
  author: Jonas Trampem
  author_email: jonas@jonas-trampe.de
  author_url: ''
  date: '2013-10-19 18:35:52 -0400'
  date_gmt: '2013-10-19 22:35:52 -0400'
  content: "Hello,\r\n\r\nI am just wondering if something is happening on this project.\r\nBecause
    this is something i was looking for a long time.\r\n\r\nCheers,\r\nJonas"
- id: 89
  author: Jonas Trampe
  author_email: jonas@jonas-trampe.de
  author_url: ''
  date: '2013-10-19 18:41:58 -0400'
  date_gmt: '2013-10-19 22:41:58 -0400'
  content: "Found this btw:\r\nhttps://github.com/rdp/virtual-audio-capture-grabber-device"
---

I have run into a problem whilst trying to enjoy my music library.

I have a nice set of 5.1 speakers connected up to my media center (running XBMC under Linux), a laptop running Fedora, and my main desktop running Windows 7. I used to store my music library on my laptop, but it ran into some reliability issues and I have since started mostly using my desktop.

The issue arises when I want to play my music over the nice speakers. I hate the XBMC's music library functionality and I LOVE iTunes' interface, but I can no longer stream to the media center over PulseAudio, as the existing support for Windows is pitiful. Thus, I have decided to write my own PulseAudio driver for Windows.

The goals for my project are (I tried not to make them too lofty) are:

- to have it fully open-sourced under the GPL,
- full and reliable support for over-network streaming,
- to have it install as an actual Windows driver, and not simply a capture program, and
- to have some configuration (only the basics required for network streaming).

Basically, I want to be able to select the PulseAudio driver as default on Windows and have all sound redirected from my computer to the speakers. I also don't want any of the shoddiness of the current Windows support. Once it's done, I hope people can just download, install, and set it as default under the "Playback Devices" menu in Windows 7.

If you are interested in helping develop/test, or if you have any suggestions/requests, please leave a comment on this page with your e-mail, and I'll get in contact with you.
