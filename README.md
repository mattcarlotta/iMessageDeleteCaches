# iMessageDeleteCaches
Introduction

iMessageDeleteCaches is a simple automated bash script that removes iMessage files and folders stored within a user's "Library" folder 

Simply download and unzip the iMessageDeleteCaches.zip folder to your Desktop. Open the unzipped folder and double click the iMessageDeleteCaches.command file and then follow the on screen instructions.

You'll be greeted with:
```
Would you like to delete iMessage related cache files? (y/n)?
```
Type "y" or "Y" without quotes and the following folders/files will be deleted:
```
Folders in {user}/Library/Caches:
1.) com.apple.iCloudHelper 
2.) com.apple.imfoundation.IMRemoteURLConnectionAgent 
3.) com.apple.Messages

Files in {user}/Library/Preferences:
1.) com.apple.iChat* 
2.) com.apple.icloud* 
3.) com.apple.ids.service* 
4.) com.apple.imagent* 
5.) com.apple.imessage* 
6.) com.apple.imservice*

Folder and files in {user}/Library/Messages
1.) Archive
2.) chat.db
3.) chat.db-shm
4.) chat.db-wal
```

Then you'll be greeted with:
```
All related iMessage files and folders have been successfully removed!

Do you want to reboot now? (y/n)
```
Type "y" or "Y" without quotes to reboot your computer (you may need to enter your admin password to continue).
Otherwise, you can type "n" or "N" to abort the script and restart manually.


*Note: If you type an invalid character, then that will abort the script! Wait a few seconds and it will restart the script for you!

```
Changelog:

2.0.0
- created a streamlined command with better GUI
- refactored entire functional logic pattern
- optimized and reduced WET code
- added source notes 

2.1.0
- reduced the amount of time it takes to load/reload script and description texts
- reduced error descriptions to be more specific
- optimized and reduced WET code

```
