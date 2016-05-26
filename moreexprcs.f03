module moreexprcs
use exprcmodule
type, EXTENDS ( ExprC ) :: Binop
   character(1) :: Op
   CLASS(exprc), pointer :: Left
   CLASS(exprc), pointer :: Right
end type Binop

type, EXTENDS ( ExprC ) :: IntC
   integer :: int
end type IntC

type, EXTENDS ( ExprC ) :: IdC
   character(20) :: id
end type IdC

type, EXTENDS ( ExprC ) :: BoolC
   logical :: val
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

end module
