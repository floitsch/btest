import ..src.test_util show *
import ..src.float_util show *

failed_calculation -> int:
  throw "oops"

main:

  test_start

  test "#0, 3 tests" "all pass":
  
    expect_true: true
    expect_false: false
    expect_equals 2 2

  test "#1, 3 tests" "all fail":
  
    expect_true: false  // 1
    expect_false: true  // 2
    expect_equals 2 3   // 3

  test "#2, 3 tests" "1st failed":
  
    expect_true: false  // 4
    expect_false: false
    expect_equals 2 2

  test "#3, 3 tests" "2nd failed":
  
    expect_true: true
    expect_false: true  // 5
    expect_equals 2 2

  test "#4, 3 tests" "3rd failed":
  
    expect_true: true
    expect_false: false
    expect_equals 2 3   // 6

  test "#5, 3 tests" "first throws":
  
    expect_true: 0 == failed_calculation  // 7
    expect_false: false
    expect_equals 0 0

  test "#6, 3 tests" "2nd throws":
  
    expect_true: true
    expect_false: 0 == failed_calculation  // 8
    expect_equals 0 0    

  test "#7, 3 tests" "3rd throws":
  
    expect_true: true
    expect_false: false
    expect_equals 0 failed_calculation  // 9


  test_end