# Pathologically way ;)
$<.each_line.collect do |line| line.strip.split('.').reverse.join("."); end.sort.collect do |line| puts line.split('.').reverse.join("."); end


