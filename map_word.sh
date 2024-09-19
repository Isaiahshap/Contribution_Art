#!/bin/bash

# Script to map a word onto the GitHub contribution graph by making past commits

# Ensure a word is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <word>"
    exit 1
fi

WORD=${1^^} # Convert to uppercase

# Define a 5x7 font for letters A-Z
declare -A FONT

FONT[A]=(" 111 "
         "1   1"
         "1   1"
         "11111"
         "1   1"
         "1   1"
         "1   1")

FONT[B]=("1111 "
         "1   1"
         "1   1"
         "1111 "
         "1   1"
         "1   1"
         "1111 ")

FONT[C]=(" 111 "
         "1   1"
         "1    "
         "1    "
         "1    "
         "1   1"
         " 111 ")

FONT[D]=("1111 "
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         "1111 ")

FONT[E]=("11111"
         "1    "
         "1    "
         "1111 "
         "1    "
         "1    "
         "11111")

FONT[F]=("11111"
         "1    "
         "1    "
         "1111 "
         "1    "
         "1    "
         "1    ")

FONT[G]=(" 111 "
         "1   1"
         "1    "
         "1 111"
         "1   1"
         "1   1"
         " 111 ")

FONT[H]=("1   1"
         "1   1"
         "1   1"
         "11111"
         "1   1"
         "1   1"
         "1   1")

FONT[I]=(" 111 "
         "  1  "
         "  1  "
         "  1  "
         "  1  "
         "  1  "
         " 111 ")

FONT[J]=("   11"
         "    1"
         "    1"
         "    1"
         "1   1"
         "1   1"
         " 111 ")

FONT[K]=("1   1"
         "1  1 "
         "1 1  "
         "11   "
         "1 1  "
         "1  1 "
         "1   1")

FONT[L]=("1    "
         "1    "
         "1    "
         "1    "
         "1    "
         "1    "
         "11111")

FONT[M]=("1   1"
         "11 11"
         "1 1 1"
         "1   1"
         "1   1"
         "1   1"
         "1   1")

FONT[N]=("1   1"
         "11  1"
         "1 1 1"
         "1  11"
         "1   1"
         "1   1"
         "1   1")

FONT[O]=(" 111 "
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         " 111 ")

FONT[P]=("1111 "
         "1   1"
         "1   1"
         "1111 "
         "1    "
         "1    "
         "1    ")

FONT[Q]=(" 111 "
         "1   1"
         "1   1"
         "1   1"
         "1 1 1"
         "1  1 "
         " 11 1")

FONT[R]=("1111 "
         "1   1"
         "1   1"
         "1111 "
         "1 1  "
         "1  1 "
         "1   1")

FONT[S]=(" 1111"
         "1    "
         "1    "
         " 111 "
         "    1"
         "    1"
         "1111 ")

FONT[T]=("11111"
         "  1  "
         "  1  "
         "  1  "
         "  1  "
         "  1  "
         "  1  ")

FONT[U]=("1   1"
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         " 111 ")

FONT[V]=("1   1"
         "1   1"
         "1   1"
         "1   1"
         "1   1"
         " 1 1 "
         "  1  ")

FONT[W]=("1   1"
         "1   1"
         "1   1"
         "1 1 1"
         "1 1 1"
         "11 11"
         "1   1")

FONT[X]=("1   1"
         "1   1"
         " 1 1 "
         "  1  "
         " 1 1 "
         "1   1"
         "1   1")

FONT[Y]=("1   1"
         "1   1"
         " 1 1 "
         "  1  "
         "  1  "
         "  1  "
         "  1  ")

FONT[Z]=("11111"
         "    1"
         "   1 "
         "  1  "
         " 1   "
         "1    "
         "11111")

# Function to get bitmap of a letter
get_letter_bitmap() {
    local letter=$1
    echo "${FONT[$letter]}"
}

# Build the bitmap for the word
BITMAP=()
for ((i=0; i<7; i++)); do
    LINE=""
    for ((j=0; j<${#WORD}; j++)); do
        LETTER=${WORD:j:1}
        # Handle undefined letters
        if [[ -z "${FONT[$LETTER]}" ]]; then
            echo "Letter '$LETTER' not defined in font."
            exit 1
        fi
        BITMAP_LETTER_LINE=$(echo "${FONT[$LETTER]}" | sed -n "$((i+1))p")
        LINE+="$BITMAP_LETTER_LINE "
    done
    BITMAP+=("$LINE")
done

# Display the bitmap (optional)
echo "Bitmap for the word:"
for line in "${BITMAP[@]}"; do
    echo "$line"
done

# Get today's date
START_DATE=$(date +%Y-%m-%d)

# Build a list of dates over the past year
DATES=()
for week in {51..0}; do  # Weeks ago
    for day in {6..0}; do  # Days ago
        DAYS_AGO=$((week * 7 + day))
        DATE=$(date -d "$START_DATE -$DAYS_AGO days" +%Y-%m-%d)
        DATES+=("$DATE")
    done
done

# Map the bitmap onto the dates
DATES_TO_COMMIT=()
for ((i=0; i<7; i++)); do  # For each row (day of the week)
    LINE=${BITMAP[i]}
    for ((j=0; j<${#LINE}; j++)); do
        PIXEL=${LINE:j:1}
        week_index=$j
        day_index=$i
        INDEX=$((week_index * 7 + day_index))
        if [ "$PIXEL" == "1" ]; then
            DATES_TO_COMMIT+=("${DATES[$INDEX]}")
        fi
    done
done

# Remove duplicates and sort dates
DATES_TO_COMMIT=($(printf "%s\n" "${DATES_TO_COMMIT[@]}" | sort))

# Make commits on the required dates
echo "Making commits..."
for DATE in "${DATES_TO_COMMIT[@]}"; do
    for i in {1..5}; do
        echo "$RANDOM" >> dummy_file.txt
        git add dummy_file.txt
        GIT_AUTHOR_DATE="$DATE 12:0$i:00" GIT_COMMITTER_DATE="$DATE 12:0$i:00" git commit -m "Commit on $DATE"
    done
done

# Push the commits
git push origin main

echo "All commits have been made and pushed to GitHub."
