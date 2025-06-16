section .data 
	const_e dq 2.718281828459045
    const_ln2 dq 1.4426950408889634
	const1 dq 3.0
	const2 dq -1.0 
	const3 dq 2.0
    const4 dq -2.0

section .text 
global _f1
global _f2
global _f3
_f1: 
    push ebp 
	mov ebp, esp
    fld qword [ebp + 8] 
    fmul qword [const2]
    fmul qword [const_ln2]   
    fld st0       
    frndint       
    fld st1                
    fsub st0, st1           
    f2xm1                   
    fld1                    
    fadd                    
    fscale          
    fstp st1               
    fadd qword [const1]
    pop ebp 
    ret 

_f2: 
	push ebp 
	mov ebp, esp 
	fld qword [ebp + 8] 
    fmul qword [const3]
    fadd qword [const4]
	pop ebp 
	ret 

_f3: 
	push ebp 
	mov ebp, esp 
    fld1
	fld qword [ebp + 8]
	fdivp  
	pop ebp 
	ret
