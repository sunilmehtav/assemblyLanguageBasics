include 'emu8086.inc'
.stack 100h 
.model small


.data                                  
                                   
  firstArray db 3, 5, 6, 7, 2, 1, 9
  secondArray db 3, 5, 6, 7, 2, 1, 4 
  
.code
    main proc                  
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset firstArray 
        mov di, offset secondArray 
        mov cx, 7             
        print 'Your array values'
        
        loopx:
              
            mov al, [si]  
            mov bl, [di]
            
            cmp al, bl
            
            jne notsame
            
            inc si
            inc di
            
            loop loopx
            
            print 'Both array same'
            mov ah, 04ch                
            int 21h 
            
           notsame:
           print 'not same'
      mov ah, 04ch    ;return control to os
      int 21h
        
    main endp
        
end main