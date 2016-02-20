function y = medfilt1 (x, n)
//This function applies a median filter of length n to the signal x.
//Calling Sequence
//y = medfilt1 (x)
//y = medfilt1 (x, n)
//Parameters 
//x:
//n:
//Description
//This is an Octave function.
//This function applies a median filter of length n to the signal x. A sliding window is applied to the data, and the median value in the window is returned for each step. 
//Examples
//medfilt1([0.3,8,-9],6)
//ans  =
//    0.3    0.3    0.3  
funcprot(0);
rhs = argn(2)
if(rhs<1 | rhs>2)
error("Wrong number of input arguments.")
end
select(rhs)
case 1 then
y = callOctave("medfilt1",x)
case 2 then
y = callOctave("medfilt1",x,n)
end
endfunction	


