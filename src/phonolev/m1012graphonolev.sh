# transliteration argument is set to None in the first example, and set to use a Latin to Cyrillic translateration table from "m1012graphonolev-phonetic-trans-lat2cyr.txt" in the second example
# command line arguments:
# argv[1] = input file
# argv[2] = source language code (must be the same as the character feature language codes in the m1012graphonolev-phonetic-features*.tsv files -- (the second field in these files)
# argv[3] = target language code (must be the same as the character feature language codes ... )
# argv[4] = 'Debug' to create a debug file, 'None' not to create a debug file; the Debug logs the script, recording the history of matches, matrices for Levenshtein feature-based calculations and comparisons and log of matched features
# argv[5] = use transliteration table for baseline Levenshtein? None if not; if yes, then provide the name of the file in tsv format, character \t replacement character
# argv[6] = the list of phonological feature tables used, separated by coma (no space), in the tsv format; first field = character; second field = list of languages; third field = tab separated phonological features and their values for this character
# examples do processing for closely related languages (uk, ru) and for distant languages (en, uk) (uk, or ua -- Ukrainian)
python m1012graphonolev.py m1012graphonolev-uk-ru-in.txt ua ru Debug None m1012graphonolev-phonetic-features.tsv,m1012graphonolev-phonetic-features0.tsv  >m1012graphonolev-uk-ru-out.txt
python m1012graphonolev.py m1012graphonolev-en-uk-in.txt en ua Debug m1012graphonolev-phonetic-trans-lat2cyr.txt m1012graphonolev-phonetic-features.tsv,m1012graphonolev-phonetic-features0.tsv  >m1012graphonolev-en-uk-out.txt

# output format for the script:
# sys.stdout.write('%(SW1)s, %(SW2)s, %(Lev0)d, %(Lev0Norm).4f, %(LevenshteinI2).4f, %(LevenshteinI2Norm).4f, %(LevenshteinI4).4f, %(LevenshteinI4Norm).4f, %(LevenshteinI6).4f, %(LevenshteinI6Norm).4f, %(LevenshteinI8).4f, %(LevenshteinI8Norm).4f, %(Lev1).4f, %(Lev1Norm).4f\n' % locals())
# where:
# SW1 = string word 1: source
# SW2 = string word 2 target
# Lev0= baseline 'traditional' Levenshtein distance
# Lev0Norm = baseline 'traditional Levenshtein distance normalised for length of the compared words
# LevenshteinI2 = phonological Levenshtein distance, with insertion cost 0.2 (instead of 1)
# LevenshteinI2Norm = the same, normalised for length of the compared words
# LevenshteinI4 = phonological Levenshtein distance, with insertion cost 0.4
# LevenshteinI4Norm = the same, normalised for length 
# LevenshteinI6 = phonological Levenshtein distance, with insertion cost 0.6
# LevenshteinI6Norm = the same, normalised for length 
# LevenshteinI8 = phonological Levenshtein distance, with insertion cost 0.8 
# LevenshteinI8Norm = the same, normalised for length (!!! best performance on cognate identification from comparable corpora, from two large word lists)
# Lev1 = phonological Levenshtein distance, with insertion cost 1
# Lev1Norm = the same, normalised for length

# two lines are generated for each word pair in the input file -- for each phonological feature set, specified in argv[6] = the list of phonological feature tables
# (the first one is the hierarcical (best performance); the second one is plain vector of features (over-generates on larger search spaces)
