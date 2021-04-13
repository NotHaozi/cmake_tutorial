function(get_test_prerequirements found_var config_file)
  if(SUBTEST_SUFFIX MATCHES ".*single_debug_info")
    include(${config_file})

    if(OBJDUMP_EXECUTABLE)
      set(${found_var} true PARENT_SCOPE)
    endif()
  else()
    set(${found_var} true PARENT_SCOPE)
  endif()
endfunction()