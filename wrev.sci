function [y] = wrev (x)

rhs = argn(2)
if(rhs~=1)
error("Wrong number of input arguments.")
elseif(~isvector(x))
error("x should be a vector.")
end

y = callOctave("wrev",x)

endfunction
