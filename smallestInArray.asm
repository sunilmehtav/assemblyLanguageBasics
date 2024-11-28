include 'emu8086.inc'
.stack 100h 
.model small


.data
                                   
  firstArray db 3, 5, 6, 7, 2, 8, 9 
  
.code
    main proc                  
        
        mov ax, @data
        mov ds, ax
                                            
                                            
        mov si, offset firstArray  
        mov cx, 7 
        mov bl, [si]            
        
        
        loopx:
              
            cmp [si], bl    
            jle update
            resume:
            inc si
            loop loopx
                      
            print 'smallest value from array is:'  
            add bl, 48
            mov dl, bl
              mov ah, 02h
              int 21h
            
            update:
            mov bl, [si]
            jmp resume
           

      mov ah, 04ch    ;return control to os
      int 21h
        
    main endp
        
end main