;; 這裏的 number_of_arguments 其實代表
;; 在對齊棧之後 
;; 你還想要將棧的指針 向下移動多少個單位
;; 根據 windows calling convention 
;; 這個數字最少是 4

macro windows_function number_of_arguments {
   push rbp
   mov rbp, rsp

   mov rax, rsp
   add rax, 8*number_of_arguments
   mov rbx, 1111b
   and rbx, rax

   sub rsp, 16
   add rsp, rbx
}

macro end_windows_function {
   mov rsp, rbp
   pop rbp
}
