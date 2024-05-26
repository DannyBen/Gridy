======================================================================

    Gridy 0.70
    Snap Windows to Grid

    by Danny Ben Shitrit (Sector-Seven) 2015
    db@sector-seven.net
    http://sector-seven.net

    Download Binary: http://sector-seven.net/software/gridy
    
======================================================================

Introduction
-----------------------------
  Gridy adds an invisible grid to Windows, so that any window you move 
  or resize is snapped to it.
  Snapping is enabled with mouse drag or keyboard arrow keys.
  
  Gridy also lets you store and restore a window's size and position 
  in up to 12 slots. This is useful for quickly arranging your windows 
  in a convenient way.
  
  In addition, you can apply these changes to any window or dialog:
  - Make any window semi-transparent
  - Hide the window's Alt-Tab icon
  - Set any window to be Always on Top
  - Resize any window to a predefined size of your choice
  - Minimize all windows but the active one


Getting Started
-----------------------------
  After starting Gridy, right click its icon in the system tray to 
  access some configuration options.
  You may also double click the system tray to see the Help screen 
  with all of the available actions.
  
  For example, while a restored window (not maximized) is in focus, 
  press and hold the Win key and press the arrow keys to move the 
  window in fixed intervals.
  The same snapping effect can also be achieved by simply moving or 
  resizing the window.


Technical Notes
-----------------------------
  Gridy is built as a single executable + a configuration file.
  The configuration file is a simple INI file that can be edited 
  either manually or by using the system tray menu.
  
  Gridy does not write anything to the registry and is completely 
  portable.
  

Revision History
-----------------------------
  2024 05 26 - 0.71
    Changed: Maximized windows can now be resized/moved by keyboard (they will
             be restored first)

  2015 11 22 - 0.70
    Fixed  : Help dialog reported one incorrect keyboard shortcut
             (Thanks Garrick)
    Changed: Help dialog will now consider all the custom keyboard shortcuts

  2015 03 03 - 0.61
    Added  : Ability to resize non resizable windows

  2015 01 16 - 0.60
    Added  : Ability to use F keys for storing windows positions
    Changed: Modifier for windows preset from Win to Win+Alt
    Changed: Ability to customize windows preset modifier keys
    Changed: License from Creative Commons Attribution 3.0 Unported 
             License to MIT.

  2011 10 11 - 0.50
    Changed: Source released as creative commons, time to have a round version 
             number...
    
  2011 06 30 - 0.48
    Added  : Support for edge behavior on multiple monitors. Windows can now 
             be confined to a specific monitor. When in Block or Shrink mode, 
             use the mouse to drag windows from one monitor to the other.
             (thanks Daniel)
    Changed: Monitor count is now updating whenever a new monitor is plugged in
             or out.

  2011 02 11 - 0.47
    Added  : Edge Behavior option. Lets you configure how Gridy behaves when 
             a window is moved or resized past the edges of the screen.
             Block: Will snap the window back into view
             Shrink: Will shrink the window so its completely in view
             Ignore: Will let you move or resize window past the screen 
             (previous behavior).
             This function is taskbar aware and will not be available for 
             systems with multiple monitors.

  2011 02 09 - 0.46
    Added  : Ability to configure is Numpad or normal numbers are used for
             the preset positions (thanks Sycdan)
    
  2010 12 03 - 0.45
    Added  : Ability to configure hotkeys in the INI file (thanks Nick).

  2010 01 22 - 0.44
    Added  : Store/Restore up to 9 window sizes and positions.
    Added  : Ability to edit the Grid Size menu (see INI file -> Grid Sizes)
    Changed: Grid size for horizontal and vertical axes now separated, to 
             allow higher flexibility and better compatibility with 
             widescreen monitors.
  
  2009 08 05 - 0.42
    Fixed  : When window were resized using the statusbar corner grabber, 
             windows were usually not snapped.

  2009 07 31 - 0.41
    Added  : Setting in INI file to disable the Win+ESC hotkey (which 
             normally exits Gridy).
    Updated: Young installer from 0.34 to 0.37

  2009 07 23 - 0.40
    Removed: All code related to window shadowing. Decided to release to hte 
             public without this feature.
    Added  : Welcome tip.
    Changed: Some additional minor code changes and cleanup.

  2008 12 25 - 0.37
    Added  : Win+F10 adds transparency. 
    Added  : Sub menu to configure transparency level.
    Removed: LiveUpdate
    
  2007 02 02 - 0.36
    Fixed  : Win+Shift+Home did not store new values in the INI file.
    
  2007 01 31 - 0.35
    Removed: startup tray tip
    Added  : Win+Shift+Home shortcut to store the window height/width, to 
             later be restored by Win+Home.
    Updated: installer
    
  2006 11 12 - 0.34
    Fixed  : LiveUpdate now knows when there is no internet connection
    
  2006 09 18 - 0.33
    Changed: icons
    
  2006 09 17 - 0.32
    Added  : Win+PgDn hotkey - minimize all except active window
    
  2006 09 10 - 0.31
    Added  : LiveUpdate on startup and in menu
    
  2006 09 04 - 0.30
    Added  : Win+F12 hotkey for always on top (toggle)
    Added  : Win+F11 hotkey for alt tab icon (toggle)
    
  2006 09 01 - 0.26
    Changed: shipped with new installer
    Chamged: now no longer including ini and ico files inside the exe
    
  2006 08 31 - 0.25
    Added  - Win+Home key now resizes the window to a fixed size 
             (configurable)
    Fixed  - help dialog is now created only once
    Added  - Esc will now exit the help dialog
       
  2006 08 12 - 0.24
    Fixed  : keyboard snapping did not ignore maximized windows
  
  2006 08 11 - 0.23
    Added  : reload option to tray menu
    Added  : new hotkey: Win+Arrow Keys to move windows and snap to grid
    Added  : new hotkey: Shift+Win+Arrow Keys to resize windows and snap to 
             grid
    Changed: new Help dialog
  
  2006 08 11 - 0.22
    Added  : menu items to change some INI settings

  2006 08 09 - 0.21
    Fixed  : when starting to move another window, shadow first showed 
             itself for a quick second, with the size of the previously 
             snapped window. Fixed by first placing the shadow at the right
             place and only then "untransparenting" it

  2006 08 09 - 0.20
    Changed: improved performance when shadow is enabled. now when the 
             frame is created, it is never "hidden", instead, it is being
             resized to a 1x1 pixel on the top left of the screen, and then 
             set to full transparency. in order to accomplish this, the 
             alt-tab icon of the frame was removed using ExStyle 0x80.
             in addition, some seemingly ineffective lines were removed from
             the ShowFrame and HideFrame routines. Another, more minor 
             change was done in the main WatchCursor timer.
    Fixed  : shadowtype Shadow is now also transparent. This was fixed by 
             accident, probably to a better use of the transparency settings
             and the fact that we do not hide and show the window all the 
             time

  2006 08 08 - 0.19
    Fixed  : version 0.18 broke the Solid frametype action - solid shadow
             got stuck. This was fixed by changing the way by which we
             check if we have a menu, by simply checking if the window we
             attempt to "shadow" still exists. Menus, do not exist after
             they are clicked.
    Changed: startup and exit tooltips are now shorter
    Added  : first attempt to reduce timer performance - added SetBatchLines
     

  2006 08 08 - 0.18
    Fixed  : shadow frame and tooltip were created when clicking menus.
             fixed by checking if the window id has changed since we first
             clicked the mouse.

  2006 08 07 - 0.17
    Fixed  : shadow frame now does not have a task bar icon. fixed with 
             +OWNER attribute
    Added  : abother shadow type - Shadow. This style currently does not
             support transparency for some reason. Need to check if this
             is by design, or by bug.

  2006 08 07 - 0.16
    Added  : shadow border when moving/resizing windows. configurable 
             through INI.

  2006 08 06 - 0.15
    Fixed  : non resizable windows used to be moved to grid when certain 
             controls were selected. this was fixed by capturing the control
             under the mouse upon click, and if there is any control, we do
             not move.
    Added  : exit traytip

  2006 08 06 - 0.14
    Fixed  : changed the execution order of the main routine. It should fix 
             the bugs where non resizable windows are resized, and the bug
             where windows used to move with only a mouse-over.
  
  2006 08 06 - 0.13
    Fixed  : when a window first loaded, it used to snap even without the 
             user moving it. had a missing Return in startup routine.
    Fixed  : now ignoring maximized windows, or windows that are just being
             maximized.
  
  2006 08 05 - 0.12
    Added  : new key in INI - DisableKey. pressing this key when dragging
             will move the window freely, without any snapping.

  2006 08 05 - 0.11
    Fixed  : (hopefully) now ignoring non-resizable windows
    Added  : key in INI file to set the non-resizable window handling
  
  2006 08 05 - 0.10
    First version
    
    
=============================================================================
  