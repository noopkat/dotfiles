#!/usr/bin/env bash
# tells you the total installed size of an npm package
# includes both the package files, and all dependencies (minus dev dependencies)

# generates a loose uuid
uuid()
{
  local N B C='89ab'

  for (( N=0; N < 16; ++N ))
  do
    B=$(( $RANDOM%256 ))

    case $N in
      6)
        printf '4%x' $(( B%16 ))
        ;;
      8)
        printf '%c%x' ${C:$RANDOM%${#C}:1} $(( B%16 ))
        ;;
      3 | 5 | 7 | 9)
        printf '%02x-' $B
        ;;
      *)
        printf '%02x' $B
        ;;
    esac
  done

  echo
}

U=`uuid`
D="$HOME/.pkgsize/$U"

# makes directory ~/.pkgsize with uuid as subdir, npm installs pkg into subdir, then reports size before deleting subdir
(mkdir -p $D && cd $D && npm install $1 &>/dev/null && echo `du -sh node_modules` | sed "s/ node_modules//" && cd .. && rm -rf $U)
