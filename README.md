# iMessageDeleteCaches
An automated script that deletes some iMessage Cache and Preferences files/folders.

Introduction

iMessageDeleteCaches is a simple bash script that removes iMessage files and folders stored within a user's "Library" folder 

Simply unzip the folder iMessageDeleteCaches_v1.0.0.zip to your Desktop, open a Terminal window, and drag and drop the file "iMessageDeleteCaches_v1.0.0" into the Terminal window and hit the Return key.

You'll be greeted with:
"Delete iMessage related files in Caches and Preferences? (y/n)

Type "y" or "Y" without quotes and the following folders/files will be deleted:

Folders in {user}/Library/Caches:
-com.apple.iCloudHelper 
-com.apple.imfoundation.IMRemoteURLConnectionAgent 
-com.apple.Messages

Files in {user}/Library/Preferences:
-com.apple.iChat* 
-com.apple.icloud* 
-com.apple.ids.service* 
-com.apple.imagent* 
-com.apple.imessage* 
-com.apple.imservice*

Folder and files in {user}/Library/Messages
-Archive
-chat.db
-chat.db-shm
-chat.db-wal

Then you'll be greeted with:
Do you want to reboot now? (y/n)

Type "y" or "Y" without quotes to reboot your computer (you may need to enter your admin password to continue).
Otheriwse, you can type "n" or "N" to abort the script and restart manually.


*Note: If you type an invalid character, then that will abort the script!
