include 'emu8086.inc'
.stack 100h 
.model small


.data
                                   
  firstArray db 3, 5, 6, 7, 2, 1, 9 
  
.code
    main proc                  
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset firstArray  
        mov cx, 7             
        print 'Your array values'
        
        loopx:
              
            mov dl, [si]    ; i arr[i], si is index, [si] is value
            add dl, 48
            mov ah, 02h                
            int 21h 
            
            mov dl, 32  ; space
            mov ah, 02h
            int 21h      
        
            
            
            inc si
           
      loop loopx 
      mov ah, 04ch    ;return control to os
      int 21h
        
    main endp
        
end main