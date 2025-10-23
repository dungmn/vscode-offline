export GPG_TTY=$(tty)
ct_path=$1
rm -rf app.zip
rm -rf app/* 
gpg --decrypt -o app.zip $ct_path
unzip app.zip
cp -r checkpoints app/
