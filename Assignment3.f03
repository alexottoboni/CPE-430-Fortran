program Assignment3

use exprcmodule

type, EXTENDS ( ExprC ) :: Binop
   character(1) :: Op
   integer :: Left
   integer :: Right
end type Binop

type, EXTENDS ( ExprC ) :: IdC
   character(20) :: id
end type IdC

type, EXTENDS ( ExprC ) :: BoolC
   integer :: val
end type

end program Assignment3
