function b = convmtx (a, n)

//This function returns a convolution matrix b.
//Calling Sequence
//b = convmtx (a, n)

//Parameters 
//a:
//n:

//Description
//This is an Octave function.
//This function returns a convolution matrix b such that the multiplication of b with a vector gives the convolution of a with that vector.
//convmtx(a, n) * y gives the convolution of a and y and is faster for more number of vectors.      

//Examples
// convmtx([5,6,7],5)
//ans =
//   5   6   7   0   0   0   0
//   0   5   6   7   0   0   0
//   0   0   5   6   7   0   0
//   0   0   0   5   6   7   0
//   0   0   0   0   5   6   7


//This function is being called from Octave

funcprot(0);
rhs = argn(2)
if(rhs~=2)
error("Wrong number of input arguments.")
end


b = callOctave("convmtx",a,n)
endfunction
