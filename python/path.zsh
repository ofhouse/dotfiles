# sup pip
# https://stackoverflow.com/a/62151306/831465

if (( $+commands[python3] ))
then
  export PATH=`python3 -m site --user-base`/bin:$PATH
fi
