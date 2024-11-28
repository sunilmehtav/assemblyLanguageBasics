include 'emu8086.inc'
.stack 100h 
.model small


.data                                  
                                   
  str db 'ivleoevnea'
  
.code
    main proc                  
        
        mov ax, @data               
        mov ds, ax
        
        mov si, offset str 
        mov cx, 10            
        
        loop1:
              
            mov bx, [si]  
            push bx
            
            inc si

            
            loop loop1  
        mov cx, 10
            
        loop2:  
            pop dx
              
            mov ah, 02h    ;return control to os
            int 21h

            
            loop loop2
      
        
    main endp
        
end main