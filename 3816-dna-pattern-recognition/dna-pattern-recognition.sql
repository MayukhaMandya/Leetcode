# Write your MySQL query statement below
/*THOUGHT PROCESS:
1. We need to check if the seq has_start, has_stop : 0 or 1
2. has_atg, has_taa| tag | tga, has_atat, has_ggg

*/

SELECT sample_id, dna_sequence, species, IF(dna_sequence REGEXP '^ATG', 1, 0) AS has_start,
IF(dna_sequence REGEXP '(TAA|TAG|TGA)$', 1, 0) AS has_stop,
IF(dna_sequence REGEXP 'ATAT', 1, 0) AS has_atat,
IF(dna_sequence REGEXP 'GGG', 1, 0) AS has_ggg
FROM Samples
ORDER BY sample_id