name "py-compiled-cleanup"
description "removes all pyc/pyo files from the embedded dir and lists them in a file"

build do
  # Works on Linux only
  # Should be built after all the python-related software defs
  # The prerm script of the package should use this list to remove the pyc/pyo files
  command "echo '# DO NOT REMOVE/MODIFY - used by package removal tasks' > #{install_dir}/embedded/.py_compiled_files.txt"
  command "find #{install_dir}/embedded '(' -name '*.pyc' -o -name '*.pyo' ')' -type f -delete -print >> #{install_dir}/embedded/.py_compiled_files.txt"
end
