# cognates-phonology
Phonological models for cognate terminology identification

The repository hosts resources for computing Levenshtein edit distance with phonological features for several alphabets - (currently the alphabest based on Latin and Cyrillic, new sets will be added in future for Arabic, Georgian, Armenian, script etc.), which explicitly represent linguistic phonological features of compared characters, so the Levenshtein metric can use information about characters’ internal structure rather than treat them as elementary atomic units of comparison. The proposed framework allows developers to test alternative configurations of phonological features, and select feature arrangements, which show greater improvements over the traditional character-based Levenshtein edit distance.


output format for the script:

sys.stdout.write('%(SW1)s, %(SW2)s, %(Lev0)d, %(Lev0Norm).4f, %(LevenshteinI2).4f, %(LevenshteinI2Norm).4f, %(LevenshteinI4).4f, %(LevenshteinI4Norm).4f, %(LevenshteinI6).4f, %(LevenshteinI6Norm).4f, %(LevenshteinI8).4f, %(LevenshteinI8Norm).4f, %(Lev1).4f, %(Lev1Norm).4f\n' % locals())

where:

SW1 = string word 1: source

SW2 = string word 2 target

Lev0= baseline 'traditional' Levenshtein distance

Lev0Norm = baseline 'traditional Levenshtein distance normalised for length of the compared words

LevenshteinI2 = phonological Levenshtein distance, with insertion cost 0.2 (instead of 1)

LevenshteinI2Norm = the same, normalised for length of the compared words

LevenshteinI4 = phonological Levenshtein distance, with insertion cost 0.4

LevenshteinI4Norm = the same, normalised for length 

LevenshteinI6 = phonological Levenshtein distance, with insertion cost 0.6

LevenshteinI6Norm = the same, normalised for length 

LevenshteinI8 = phonological Levenshtein distance, with insertion cost 0.8 

LevenshteinI8Norm = the same, normalised for length (!!! best performance on cognate identification from comparable corpora, from two large word lists)

Lev1 = phonological Levenshtein distance, with insertion cost 1

Lev1Norm = the same, normalised for length

two lines are generated for each word pair from the input file -- for each phonological feature set, specified in argv[6] = the list of phonological feature tables

(the first one is the hierarcical (best performance); the second one is plain vector of features (over-generates on larger search spaces)
