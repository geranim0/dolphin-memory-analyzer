add_test( Dummy.dummytest1 /home/sam/development/UniqueProjectName/test/build/Release/bin/dolphin-memory-analyzerTests [==[--gtest_filter=Dummy.dummytest1]==] --gtest_also_run_disabled_tests)
set_tests_properties( Dummy.dummytest1 PROPERTIES WORKING_DIRECTORY /home/sam/development/UniqueProjectName/test/build/Release)
set( dolphin-memory-analyzerTests_TESTS Dummy.dummytest1)
