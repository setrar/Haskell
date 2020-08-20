import Quipper

-- declare hello_world function
hello_world :: Bool → Circ Qubit
hello_world var = do
   -- convert Bool into Qubit
   qbit <- qinit var
   -- to label a variable on pdf circuit
   label (qbit) ("|1i")
   -- return the result
   return qbit
   
main = print_simple Preview (hello_world True)
