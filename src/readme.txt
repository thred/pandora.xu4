===========
Pandora XU4
===========

https://github.com/thred/pandora.xu4

Ultima IV: Quest of the Avatar is a classic RPG published and released 
in 1985 by Origin for the Apple II, C64, IBM-PC and Atari 8-bit. 

It's often referenced as a milestone in computer game history.

See https://en.wikipedia.org/wiki/Ultima_IV:_Quest_of_the_Avatar for
more information.

The game itself is legally optainable on various sources:

https://www.gog.com/game/ultima_4
http://ultima.thatfleminggent.com/u4download.html

But, it's not freeware, so I am not allowed to bundle it with this 
PND. Instead, the game will be downloaded on the first launch!

The engine is a remake of the original Ultima IV engine. It loads
and runs the original game files. The source is compiled for the
ARMv7 and offers good performance. The engine (XU4, 
http://xu4.sourceforge.net/) adds some visual enhancements over
the original version while leaving the gameplay true to the original.
If you want, you can disable all enhancements, and enjoy the game
like in 1985 ... on your dad's PC ... with a CGA card. 

Aradindae Dragon & Wiltshire Dragon offer a very nice graphics
upgrade (see http://www.moongates.com/u4/upgrade/Upgrade.htm). This
is included, too and selected by default (VGA).

Downloading the game manually
=============================

You can download the file "ultima4.zip" from the sources mentioned
earlier and place the file in the directory 
"pandora/appdata/pandora.xu4.thred" on your SD-card. Make sure, 
that the file is called "ultima4.zip" (case must match).

XU4
===

   "Prepare yourself for a grand adventure: Ultima IV, sixteen times
   larger than Ultima III, is a milestone in computer gaming.  Lord
   British has produced a game to challenge, not only your physical
   and mental skills, but the true fabric of your character.  The evil
   triad of Mondain, Minax, and the hellspawn Exodus, have been
   vanquished and peace reigns throughout the land of Britannia.  Evil
   yet abounds, but in isolated pockets and in the hearts of men.  A
   new age awaits the coming of one who can conquer evil on all
   frontiers through the mastery of both magic and the use of force.
   Daemons, dragons and long-dead wizards still plague the countryside
   and must be destroyed.  The seeker on the path of the avatar will
   faces hostile groups composed of mixed enemy types and will survive
   such encounters only by strategic use of weapons and terrain.
   Earthly victories over seemingly impossible odds lead to the final
   conflict, where the ultimate challenge -- the self -- awaits..."
     -- Back cover of Ultima IV box

XU4 is a remake of the computer game Ultima IV.  The goal is to make
it easy and convenient to play this classic on modern operating
systems.  XU4 is primarily inspired by the much more ambitious project
Exult.  Linux is the primary development platform but it gets ported
to Windows and MacOS X regularly. It should be trivial to port to any
system with SDL support.

XU4 isn't a new game based on the Ultima IV story -- it is a faithful
recreation of the old game, right up to the crappy graphics.  If you
are looking for a game with modern gameplay and graphics, this is not
it -- yet.  New features that improve the gameplay and keep with the
spirit of the original game will be added.

XU4 also tries to maintain strict compatibility with the original for
its savegame files.  You can use a game saved in XU4 with the original
and vice versa, at least in theory.


STATUS
------

New in v1.0beta4
 - many bug fixes
 - text colorization
 - enchanced line-of-sight algorithm
 - more sound effects
 - support for multiple profiles/saved games
 - the traditional title sequence was implemented
 - tracker-based music files have been generated to replace the midi
 - spell/combat animations and sound effect timings have been tweaked
 - dungeon rendering improved
 - tile stacks and effects display transparencies

New in v1.0beta3
 - more bug fixes
 - stability improvements
 - lots more changes under the hood

New in v1.0beta1
 - lots of fixes for dungeons and combat
 - now fully playable from start to finish
 - stability improvements
 - lots of changes under the hood: xu4 is now written in C++, new
   vendor scripting system

New in v0.9
 - dungeon altars and codex sequence (the game is now completeable)
 - added context-sensitive default action to "Enter" key
 - completed first person dungeon view
 - sounds effects
 - a few crasher bugs from 0.8 are now fixed
 - as usual, lots of bugs fixes and code reorganization

New in v0.8
 - dungeon rooms
 - first person view in dungeons
 - improved config menus 
 - config menu navigation with arrow keys
 - can now switch between VGA/EGA versions of the game
 - ranged monster attacks
 - implemented hole up & camp command
 - implemented inn ghost
 - xu4 can now load the Ultima IV data files straight out of
   ultima4.zip and u4upgrad.zip
 - all music can be previewed at the intro screen with the number keys
 - many spells now work: awaken, blink, cure, dispel, gate, heal,
   light, negate, tremor, resurrect, xit
 - The bell, book, candle and skull now work
 - better error reporting under MacOS X
 - bug fixes galore
 - lots of code cleanup

New in v0.7
 - ranged combat
 - long responses now pause before scrolling off screen
 - the telescope in the Lycaeum now works
 - the silver horn now works
 - monsters now initiate combat
 - wind now influences ship movement
 - fields, lava and poison now work in combat
 - added player highlighting in stats display during combat
 - added options to filter move messages and automatically open doors
 - certain people now "turn away" in conversations
 - lots more bugs squashed

New in v0.6
 - many bug fixes
 - lots of code reorganization
 - better pathfinding code
 - all vendors, healers, taverns and inns now work

New in v0.5
 - lots of combat refinements, random monsters
 - lots of fixes to vendor code (weapon, armor and food fully
   implemented)
 - Lord British nows heals party when asked about health
 - "Mix Reagents" command works
 - the "Yell" command now controls horse speed
 - lots of the game mechanics that were guessed before now match the
   original Ultima IV
 - two new utility programs are provided for encoding and decoding the
   graphics files used in the introduction (lzwenc & lzwdec)
 - the usual bug fixes

New in v0.09:
 - first go at combat; still need to figure out true U4
   combat algorithms
 - food vendors now work and buggy weapons/armor vendors are fixed
 - AdvanceMAME scaler (now the default), handles x2, x3, x4
 - configuration menu at startup, settings saved in .xu4rc file
 - drops frames when needed to better handle slow computers or X displays
 - lots of code cleanup and bug fixes

New in v0.08:
 - 2xSaI scaler (now the default)
 - fullscreen mode (-f on the command line)
 - skip intro mode (-i on the command line)
 - shrines and meditation, more actions affect karma
 - sleep fields and poison now work
 - if the party dies, they are now resurrected by Lord British
 - spell casting improvements: Awaken, Cure, Heal, Dispel, Resurrect work

New in v0.07:
 - items searchable (runes, white & black stones, bell, book, candle,
   etc.)
 - city residents now move and have animated tiles
 - gem viewing (tiles aren't quite right)
 - getting chests
 - some actions now affect your virtues (stealing chests, talking to
   hawkwind, finding runes and stones)
 - companions will now join the party if asked
 - added filtering to the scaled images, like exult (2xBilinear only,
   for now); the -scale parameter now accepts a number or "2xBi" for
   filtered scaling (2 is still the default, 2xBi looks bad without
   the VGA upgrade)

To do, in no particular order:
 - sound effects
 - autoconf, automake
 - everything else :)

Some thoughts for possible improvements:
 - Ultima 5 style aiming in combat (i.e. allow angle shots)
 - support for higher-resolution tile sets
 - allow the map view to display more of the world
 - automatically fetch Ultima 4 for DOS if not found
 - move hardcoded data (starting attributes, etc.)
   into xml config file
 - menu-based interface, like Sega version
 - improve the scalers:
   + scale entire screen image rather than individual tiles
   + correct for aspect ratio


COMPILING
---------

Note that you need libxml2, SDL, the SDL development libraries &
headers, and the SDL_mixer library to compile.  TiMidity++ may be
necessary on some platforms, too.  Assuming they are present, type
make in the src directory to build it.  An executable called u4 is
created.


RUNNING
-------

The actual data files from Ultima 4 are loaded at runtime, which means
that a copy of Ultima 4 for DOS must be present at runtime.
Fortunately, Ultima IV is available as closed-source freeware from
www.ultimaforever.com.

Download UltimaIV.zip and (optionally) u4upgrad.zip, and place them in
the same directory as the u4 executable.  xu4 will read the Ultima IV
data files straight out of the zipfile.

xu4 searches for the zipfiles, or the unpacked contents of the
zipfiles in the following places:
 - the current directory when u4 is run
 - a subdirectory named "ultima4" of the current directory
 - "/usr/lib/u4/ultima4/"
 - "/usr/local/lib/u4/ultima4/"

The zipfile doesn't need to be unpacked, but if it is, xu4 can handle
uppercase or lowercase filenames even on case-sensitive filesystems,
so it doesn't matter whether the files are named AVATAR.EXE or
avater.exe or even Avatar.exe.

At the title screen, a configuration menu can be accessed by pressing
'c'.  Here, the screen scale, filter, volume and other settings can be
modified.  Note: the game must be restarted for the new settings to
take effect.  These settings are stored in the file $HOME/.xu4rc.

xu4 also accepts the following command line options:

   -fullscreen      Fullscreen mode.
   -f

   -filter <str>    Apply a filter on the scaled images. The <str>
                    parameter must be set to one of the following
                    case-sensitive options:
                        point
                        2xBi
                        2xSaI
                        Scale2x

   -skipintro       Skip the intro, and go directly into the game.
   -i               This option requires the existance of a valid saved
                    game.

   -profile <str>   Activate a specific save game profile.  Using this
   -p <str>         option, you may have multiple saved games at the
                    same time.
                      * Use quotation marks around profile names that
                        include spaces.
                      * All profiles are stored in the "profiles"
                        sub-directory.
                      * The active profile name is shown on the
                        introduction map view off the main menu.

   -quiet           Quiet mode - no music.
   -q

   -scale <n>       Scale the original graphics by a factor of <n>.
                    Factor <n> must be 1, 2, 3, 4, or 5.

   -verbose         Verbose output; prints out information useful for
   -v               trouble-shooting.


ULTIMA 4 DOCUMENTATION
----------------------

Included with Ultima 4 for DOS, as downloaded from one of the above
sites, are electronic copies of the printed documentation from the
original Ultima IV box.  HISTORY.TXT contains the "The History of
Britannia", a general introduction to the world of Ultima IV.
WISDOM.TXT contains "The Book of Mystic Wisdom", which explains the
system of magic and provides descriptions of the spells and reagents.

PDF versions of these books are included in the official download in
the EXTRA folder of the zip file.
As an added bonus this folder also includes a pdf of the offical 
Ultima IV cluebook.

An image of the cloth map from the original Ultima IV box is also
included in the EXTRA folder.


DEBUG MODE (CHEATS)
-------------------

xu4 has a very useful debug mode (you can also think of it as a cheat mode).
To enable it:
- press 'c' in the main xu4 menu
- make sure that
  1) Game Enhancements = On
  2) Enhanced Gameplay Options -> Debug Mode (Cheats) = On

Cheat list:
* ctrl-c (cheat menu; press one of the following keys to use a cheat)
  1-8     gate (teleports you to a moongate location)
  F1-F8   virtue +10
  a       advance moons (advances the left moon [Trammel] to its next phase)
  c       collision (lets you walk across water, through mountains, etc.)
  e       equipment (gives the party Armour and Weapons)
  f       full stats (gives all party members 50 str, dex & intel and level 8)
  g       goto (enter a location and xu4 teleports you there)
  h       help (displays list of available cheats)
  i       items (gives the party Items and Equipment)
  k       show karma (shows your virtues)
  l       location (displays current map and coordinates)
  m       mixtures (gives the party 99 mixtures of all spells)
  o       opacity (lets you see through opaque tiles)
  p       peer (switches between normal and gem view)
  r       reagents (gives the party 99 of all reagents)
  s       summon (enter a monster name, and xu4 creates it somewhere nearby)
  t       transports (press b/h/s + arrow key, and xu4 creates a balloon/horse/ship)
  v       full virtues (makes you a full avatar)
  w       change wind (changes or locks the wind direction)
  x       exit map (teleports the party to where it entered the current map)
  y       y-up (like the Y-up spell, but free)
  z       z-down (like the Z-down spell, but free)
* ctrl-d (destroy monster/object; doesn't work on energy fields)
* ctrl-h (teleport to Lord British's throne room)
* ctrl-v (switch between 3-d and 2-d view; dungeons only)
* F1-F8 (teleport to a dungeon entrance; surface only)
* F9-F11 (teleport to the altar room of truth/love/courage; surface only)
* F12 (display torch duration)
* Escape (end combat)

Note:
Except for the Escape key, none of the cheats work during combat.


MISC
----

See http://xu4.sourceforge.net/links.html for some other interesting
Ultima IV related links.

Please send me a mail at andrewtaylor@users.sourceforge.net if you are
interested in helping.
