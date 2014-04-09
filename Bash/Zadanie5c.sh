if [ $# < 1 ]; then
  echo 'Za malo parametrow'
else
  for name in `ls $1`; do
    n=`echo "$name/" | tr 'A-Z' 'a-z'`
    n=${n%/}
    if [ $name != $n ]; then
      mv "$name" "$n"
    fi
  done
fi
