if [ $# < 2 ]; then
  echo 'Za malo parametrow'
else
  plik=$1
  for i in $@; do
    cp $plik $i
  done
fi
