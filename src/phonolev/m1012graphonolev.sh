# transliteration argument is set to False
# command line arguments:
# argv[1] = input file
# argv[2] = source language code (must be the same as the character feature language codes in the m1012graphonolev-phonetic-features*.tsv files -- (the second field in these files)
# argv[3] = target language code (must be the same as the character feature language codes ... )
# argv[4] = Debug to create a debug file, with history of matches and matrices for Levenshtein feature-based calculations and comparisons and log of matched features
# argv[5] = use transliteration table for baseline Levenshtein? None if not; if yes, then provide the name of the file in tsv format, character \t replacement character
# argv[6] = the list of phonetic feature tables used, separated by coma (no space), in the tsv format; first field = character; second field = list of languages; third field = tab separated phonological features and their values for this character
# examples do processing for closely related languages (uk, ru) and for distant languages (en, uk) (uk, or ua -- Ukrainian)
python m1012graphonolev.py m1012graphonolev-uk-ru-in.txt ua ru Debug None m1012graphonolev-phonetic-features.tsv,m1012graphonolev-phonetic-features0.tsv  >m1012graphonolev-uk-ru-out.txt
python m1012graphonolev.py m1012graphonolev-en-uk-in.txt en ua Debug m1012graphonolev-phonetic-trans-lat2cyr.txt m1012graphonolev-phonetic-features.tsv,m1012graphonolev-phonetic-features0.tsv  >m1012graphonolev-en-uk-out.txt
