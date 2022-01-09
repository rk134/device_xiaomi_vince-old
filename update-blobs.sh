#!bin/bash

bash extract-files.sh -s "CNE" /home/rxhul/temp/zeelog/mido/proprietary
bash setup-makefiles.sh
bash extract-files.sh -s "DPM" /home/rxhul/temp/zeelog/mido/proprietary
bash setup-makefiles.sh
bash extract-files.sh -s "QMI" /home/rxhul/temp/zeelog/mido/proprietary
bash setup-makefiles.sh
bash extract-files.sh -s "Radio" /home/rxhul/temp/zeelog/mido/proprietary
bash setup-makefiles.sh
bash extract-files.sh -s "QC RIL" /home/rxhul/temp/zeelog/mido/proprietary
bash setup-makefiles.sh
python3.9 update-sha1sums.py
cd ../../.. && cd vendor/*/*
git add .
echo "Blobs update finished!"
