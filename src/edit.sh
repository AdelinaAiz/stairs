#!/bin/bash

# -p - for message
cd $(git rev-parse --show-toplevel)

read -r -p "Enter path, please <3: " FULLPATH
if ! [ -f "$FULLPATH" ]; then
    echo "$FULLPATH: No such file or directory"
    exit 1
fi

read -r -p "Enter old string, please: " OLDSTR
if grep -q "$OLDSTR" "$FULLPATH"; then
    read -r -p "Enter new string, please: " NEWSTR
    if [[ $OLDSTR != "" && $NEWSTR != "" ]]; then
        sed -i '' "s/$OLDSTR/$NEWSTR/g" "$FULLPATH"
        #echo "$ADDRESS - $(wc -c $ADDRESS | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 $ADDRESS | awk '{print $1}') - sha256" >> /Users/karengle/Desktop/livecoding/T02D02-1/src/files.log
        SIZE=$(wc -c $FULLPATH | awk '{print $1}')
        DATE=$(date +"%Y-%m-%d %H:%M")
        SHAS=$(shasum -a 256 $FULLPATH | awk '{print $1}')
        HASH="src/files.log"
        #PATH=/$(echo $FULLPATH | cut -d / -f 7,8)
        #PATH=${PATH:1}
        #PATH=$($FULLPATH | awk -F 'T02D02-1/' '{print $2}')
        echo "$FULLPATH - $SIZE - $DATE - $SHAS - sha256" >> $HASH
    else
        echo "Old string or new string is emrty!!"
        exit 1
    fi
else
    echo "Old string not found!!"
    exit 1
fi





## -p - for message
#read -r -p "Enter path, please <3: " FULLPATH
#read -r -p "Enter old string, please: " OLDSTR
#read -r -p "Enter new string, please: " NEWSTR
#if [ -f "$FULLPATH" ]; then
#    if [[ $OLDSTR != "" && $NEWSTR != "" ]]; then
#        sed -i '' "s/$OLDSTR/$NEWSTR/g" "$FULLPATH"
#        #echo "$ADDRESS - $(wc -c $ADDRESS | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 $ADDRESS | awk '{print $1}') - sha256" >> /Users/karengle/Desktop/livecoding/T02D02-1/src/files.log
#        SIZE=$(wc -c $FULLPATH | awk '{print $1}')
#        DATE=$(date +"%Y-%m-%d %H:%M")
#        SHAS=$(shasum -a 256 $FULLPATH | awk '{print $1}')
#        HASH="/Users/karengle/Desktop/livecoding/T02D02-1/src/files.log"
#        PATH=/$(echo $FULLPATH | cut -d / -f 7,8)
#        PATH=${PATH:1}
#        #PATH=$($FULLPATH | awk -F 'T02D02-1/' '{print $2}')
#        echo "$PATH - $SIZE - $DATE - $SHAS - sha256" >> $HASH
#    fi
#else
#    echo "$FULLPATH: No such file or directory"
#fi

# #!/bin/bash
# # -p - for message
# FULL="$(git rev-parse --show-toplevel)"
# read -r -p "Enter path, please <3: " PATH
# read -r -p "Enter old string, please: " OLDSTR
# read -r -p "Enter new string, please: " NEWSTR
# FULLPATH="$FULL/$PATH"
# if [ -f "$FULLPATH" ]; then
#     if [[ $OLDSTR != "" && $NEWSTR != "" ]]; then
#         sed -i '' "s/$OLDSTR/$NEWSTR/g" "$FULLPATH"
#         #echo "$ADDRESS - $(wc -c $ADDRESS | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 $ADDRESS | awk '{print $1}') - sha256" >> /Users/karengle/Desktop/livecoding/T02D02-1/src/files.log
#         SIZE=$(wc -c $FULLPATH | awk '{print $1}')
#         DATE=$(date +"%Y-%m-%d %H:%M")
#         SHAS=$(shasum -a 256 $FULLPATH | awk '{print $1}')
#         HASH="/Users/karengle/Desktop/livecoding/T02D02-1/src/files.log"
#         echo "$PATH - $SIZE - $DATE - $SHAS - sha256" >> $HASH
#     fi
# else
#     echo "$FULLPATH: No such file or directory"
# fi


# #!/bin/bash

# # -p - for message
# FULL=$(git rev-parse --show-toplevel)
# cd $(git rev-parse --show-toplevel)
# read -r -p "Enter path, please <3: " PATH
# read -r -p "Enter old string, please: " OLDSTR
# read -r -p "Enter new string, please: " NEWSTR
# FULLPATH="$FULL/$PATH"
# echo "$FULLPATH"
# if [ -w $FULLPATH ]; then
#     if [[ $OLDSTR != "" && $NEWSTR != "" ]]; then
#         cd $(git rev-parse --show-toplevel)
#         cat "$PATH"
#         sed -i "" "s/$OLDSTR/$NEWSTR/" $PATH
#         #echo "$ADDRESS - $(wc -c $ADDRESS | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 $ADDRESS | awk '{print $1}') - sha256" >> /Users/karengle/Desktop/livecoding/T02D02-1/src/files.log
#         SIZE=$(wc -c $PATH | awk '{print $1}')
#         DATE=$(date +"%Y-%m-%d %H:%M")
#         SHAS=$(shasum -a 256 $PATH | awk '{print $1}')
#         HASH="src/files.log"
#         echo "$PATH - $SIZE - $DATE - $SHAS - sha256" >> $HASH
#     else
#         echo "Old string or new string is empty"
#         exit 1
#     fi
# else
#     echo "$PATH: No such file or directory"
#     exit 1
# fi
