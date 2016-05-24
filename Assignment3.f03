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

type, EXTENDS ( ExprC ) :: AppC
   CLASS(exprc), pointer :: fun
   CLASS(exprc), pointer :: args
end type AppC

type, EXTENDS ( ExprC ) :: LamC
   CLASS(exprc), pointer :: params
   CLASS(exprc), pointer :: body
end type LamC

type, EXTENDS ( ExprC ) :: IfC
   CLASS(exprc), pointer :: test
   CLASS(exprc), pointer :: then
   CLASS(exprc), pointer :: else
end type IfC

end program Assignment3
