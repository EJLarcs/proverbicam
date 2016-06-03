module Main exposing (..)

import ElmTest exposing (..)
import ExampleTest


tests : Test
tests =
  suite "all tests"
    [ ExampleTest.tests
    ]


main : Program Never
main =
  runSuite tests
