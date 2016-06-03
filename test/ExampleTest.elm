module ExampleTest exposing (..)

import ElmTest exposing (..)

tests : Test
tests =
  suite "A Test Suite"
    [ test "Addition"
        <| assertEqual (3 + 7) 10
    , test "This test should fail"
        <| assert False
    ]
