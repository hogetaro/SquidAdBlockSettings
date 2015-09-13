#!/bin/ruby

Dir.glob("etc/acl-*").each do |file|
  aclname = file.sub(/etc\/acl-[^-]+-(.*)\.txt/,'\1')
  acltype = file.sub(/etc\/acl-([^-]+)-.*\.txt/,'\1')
  open(file).each_line do |l|
    l.gsub!(/\./,"\\.")
    l.sub!(/$/,"$") if acltype =~ /dom/
    l.sub!(/^/,"acl #{aclname} #{acltype} ")
    puts l
  end
  puts "http_access deny #{aclname}"
end



