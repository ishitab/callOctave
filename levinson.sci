function [a, v, ref] = levinson (acf, p) 

rhs = argn(2)
lhs = argn(1)
if(rhs>=1)
[r,c]=size(acf)
end
if(rhs<1)
error("Wrong number of input arguments.")
elseif(r~=1 | length(acf)<2 )
error("Parameter 1 (acf) should be vector of length>1.")
elseif(rhs>1 & (~sum(length(p)==1) | fix(p)~=p))
error("Parameter 2 (p) must be integer>0.")
end

	select(lhs)
	case 1 then
	if(rhs==1)
	a = callOctave("levinson",acf)
	elseif(rhs==2)
	a = callOctave("levinson",acf,p)
	end
	case 2 then
	if(rhs==1)
	[a,v] = callOctave("levinson",acf)
	elseif(rhs==2)
	[a,v] = callOctave("levinson",acf,p)
	end
	case 3 then
	if(rhs==1)
	[a,v,ref] = callOctave("levinson",acf)
	elseif(rhs==2)
	[a,v,ref] = callOctave("levinson",acf,p)
	end
	end
endfunction

