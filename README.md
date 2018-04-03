# cognates-phonology
Phonological models for cognate terminology identification

The repository hosts resources for computing Levenshtein edit distance with phonological features for several alphabets - (currently the alphabest based on Latin and Cyrillic, new sets will be added in future for Arabic, Georgian, Armenian, script etc.), which explicitly represent linguistic phonological features of compared characters, so the Levenshtein metric can use information about characters’ internal structure rather than treat them as elementary atomic units of comparison. The proposed framework allows developers to test alternative configurations of phonological features, and select feature arrangements, which show greater improvements over the traditional character-based Levenshtein edit distance.
