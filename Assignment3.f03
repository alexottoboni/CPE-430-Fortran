program Assignment3

use moreexprcs

integer :: answer
TYPE(Binop) :: testcase1
TYPE(IntC) :: int1
TYPE(IntC) :: int2
testcase1%op='+'
testcase1%left%int=1
testcase1%right%int=2

answer = interp (testcase1)
!print *,"parse(['+', '3', '4'])",
!print *,"answer",

CONTAINS
TYPE(Integer) function interp(expr) result(a)
   CLASS(ExprC), intent(in) :: expr
   integer :: newleft, newright
   select type (expr)
   type is (Binop)
      if (expr%Op == '+') then
         newleft=interp(expr%left)
         newright=interp(expr%right)
         a=newleft+newright
      else if (expr%op == '*') then
         newleft=interp(expr%left)
         newright=interp(expr%left)
         a=newleft*newright
      else if (expr%op == '/') then
         newleft=interp(expr%left)
         newright=interp(expr%right)
         a=newleft/newright
      else if (expr%op == '-') then
         newleft=interp(expr%left)
         newright=interp(expr%right)
         a=newleft-newright
      endif
   type is (IntC)
      a=expr%int
   end select
end function interp

TYPE(Binop) function parse(sexp)
   CHARACTER, DIMENSION(0:2), intent(in) :: sexp
   TYPE(Binop) :: b
   b%op = '+'
   parse = b
end function parse

end program Assignment3
