#!/bin/bash

# Output of the last commands if no argument is specified, search by history, if specified
h() {
    if [[ -z "$1" ]]; then
        history
    else
        history 0 | grep "$*"
    fi
}

# Adding files, creating a commit and sending to the server
# Example: gup "commit"
gup() {
    git add .
    git commit -am "$*"
    git push
}

# Installing packages from AUR Repositories
# Example: aur https://aur.archlinux.org/foo.git
aur() {
    REPO=$1
    DIR=$(mktemp -d)

    git clone ${REPO} ${DIR}
    cd ${DIR}

    makepkg -sri
}

# Unpacking archives
# Example: extract file.tar /tmp/example
ex () {
   file=$1
   dir=$2

   if [[ -n $dir ]]; then
      mkdir -p $dir;
      echo Extracting $1 into $2 ...
   else
      echo Extracting $1 ...
   fi

   if [[ ! -f $1 ]] ; then
      echo "'$1' is not a valid file"
   else
      case $1 in
         *.tar.bz2)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar xjvf $1 $dc"
             echo $cmd
             eval ${cmd}
             ;;
         *.tar.gz)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar xzvf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.tar)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar vxf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.tbz2)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar xjvf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.tgz)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar xzf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.bz2)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar jf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.zip)
             if [[ -n $dir ]]; then dc="-d $dir"; fi
             cmd="unzip $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.gz)
             if [[ -n $dir ]]; then dc="-C $dir"; fi
             cmd="tar zf $1 $dc";
             echo $cmd;
             eval ${cmd}
             ;;
         *.7z)
             cmd="7z x -o$dir $1";
             echo $cmd;
             eval ${cmd}
             ;;
         *.rar)
             cmd="unrar x $1 $dir";
             echo $cmd;
             eval ${cmd}
             ;;
         *)
            echo "'$1' cannot be extracted via extract()"
            ;;
         esac
   fi
}

# Pack archive
# Example: pk tar /tmp/example
pk () {
    if [ $1 ] ; then
        case $1 in
            tbz)        tar cjvf $2.tar.bz2 $2      ;;
            tgz)        tar czvf $2.tar.gz  $2      ;;
            tar)        tar cpvf $2.tar  $2         ;;
            bz2)        bzip $2                     ;;
            gz)         gzip -c -9 -n $2 > $2.gz    ;;
            zip)        zip -r $2.zip $2            ;;
            7z)         7z a $2.7z $2               ;;
            *)          echo "'$1' cannot be packed via pk()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Create a directory and go to it
take () {
	mkdir -p $1
	cd $1
}

# If the current directory is empty, then delete it and go to the parent directory
rcd () {
    local P="`pwd`"; cd .. && rmdir "$P" || cd "$P";
}

# Swap two files in places
fswap() {
    test -e $1 && test -e $2 && (
    mv $1 $1.tmp
    mv $2 $1
    mv $1.tmp $2
    )
}

# Rename files with the addition to the name of the suffix ".old"
reold() {
    for f in $@;
    do
        test -e "$f" && mv "$f" "$f.old"
    done
}

# Renaming a file
rename() {
    name=$1
    vared -c -p 'rename to: ' name
    command mv $1 $name
}