REGEX = /:(\w+)\s*=>/
REPLACER = '\1:'

def convert_hash_syntax old_syntax
  old_syntax.gsub(REGEX, REPLACER)
end
