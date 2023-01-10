#!/bin/bash

echo "Moving all Sound files to Music Folder"
mv *.mp3 *.ogg *.wav *.aac *.flac ~/Music
echo "Moving all Image files to Music Folder"
mv *.bmp *.bmp *.jpg *.jpeg *.gif *.png *.raw *.psd ~/Pictures
echo "Moving all Documents to the Documents Folder"
mv *.pdf *.doc *.docx *.dot *.xls *.xlsm *.ppt *.pptx ~/Documents
echo "Moving all Video files to Videos Folder"
mv *.mp4 *.mov *.wmv *.mkv *.webm *.avi *.mkv ~/Videos
echo "Moving all Compressed files to Archived Folder"
mv *.zip *.rar *.7z *.pzip *.gzip *.targz *.tar  ~/Archived
echo "Moving all ISO files to ISO Folder"
mv *.iso ~/ISO
echo "Moving all Deb files to ISO/Deb"
mv *.deb ~/Archived/Debs
echo "Transfer completed"
