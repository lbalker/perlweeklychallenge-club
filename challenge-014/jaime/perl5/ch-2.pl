# Solution by Jaime Corchado, (@tortsnare)[https://twitter.com/tortsnare].
# 
# Challenge #2
# 
# Using only the official postal abbreviations for the 50 U.S. states,
# write a script to find the longest English word you can spell.

# list of english words of even length, minus majuscule and hyphenated.

my $max = "";
for (@words) {
    # This regex matches every word composed solely by postal abbreviations.
    # The codes were dispersed to allow more entries per regex term.
    if (/^(((c|g|i|l|m|p|v|w)a)|(n(e|v|h|j|m|y|c|d))|(m(e|d|i|n|s))|((m|c)(o|t))|(a(l|k|z|r))|(i(d|l|n))|((h|r|w)i)|(o(h|k|r))|((u|v)t)|(k(s|y))|(s(c|d))|(t(n|x))|(w(v|y))|(de)|(fl))+$/) {
	$max = $_ if (length $_) >= (length $max);
    }
}

print "$max\n";