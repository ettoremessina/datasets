bin/bash
# Define a string variable with a value

DSPath=./synthetic-words
Voices="Daniel Kate Oliver Serena Karen Lee Veena Moira Fiona Tessa Agnes Allison Ava Kathy Princess Samantha Susan Vicki Victoria Alex Bruce Fred Junior Ralph Tom"
Words01Grp="ok save cancel select edit copy cut paste undo redo"
Words02Grp="open close exit next previous first last find replace run"

gen_group()
{
    declare -i cnt=0

    for word in $2; do
        mkdir -p $DSPath/$1-$word
        cnt=0
        for r in $(seq 150 10 270); do
            for voice in $Voices; do
        	    (( ++cnt ))
                soundName=$word-$(printf '%04d' $((cnt)) )
                echo $soundName $word $voice $r
                aiffout=$DSPath/$1-$word/$soundName.aiff
                say -v $voice -o $aiffout -r $r $word
                wavout=$DSPath/$1-$word/$soundName.wav
                ffmpeg -y -i "$aiffout" "$wavout"
                rm $aiffout
            done
        done
    done
}

mkdir -p $DSPath

gen_group 01 "$Words01Grp"
gen_group 02 "$Words02Grp"

tar cvzf synthetic-words-01.tar.gz synthetic-words/01-*
tar cvzf synthetic-words-02.tar.gz synthetic-words/02-*

