program Assignment3

use moreexprcs

!print *,"parse(['+', '3', '4'])",

CONTAINS
TYPE(ExprC) function parse(sexp)
   TYPE(Idc) ::id
   id%id = 'a'
   parse=id
end function parse


end program Assignment3
