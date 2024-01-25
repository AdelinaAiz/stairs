
## YEARS
vim history_of_vim.txt
# i - insert
# insert info about years
# esc
# :wq
cat history_of_vim.txt
# check info
echo "src/history_of_vim.txt - $(wc -c history_of_vim.txt | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 history_of_vim.txt | awk '{print $1}') - sha256" >> files.log

##TITLE
vim history_of_vim.txt
# i - insert
# insert info about title
# esc
# :wq
cat history_of_vim.txt
# check info
echo "src/history_of_vim.txt - $(wc -c history_of_vim.txt | awk '{print $1}') - $(date +"%Y-%m-%d %H:%M") - $(shasum -a 256 history_of_vim.txt | awk '{print $1}') - sha256" >> files.log

