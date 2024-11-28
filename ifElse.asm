 include 'emu8086.inc'
.stack 100h 
.model small


.data
                                   

  
.code
    main proc                  
        
    mov dl,5
    mov bl, 5
    
    cmp dl, bl
    
    jne toElse
    print 'equal' 
        
        
      mov ah, 04ch    ;return control to os
      int 21h     
                 
      toElse:           
      print 'not equal' 
        
        
      mov ah, 04ch    ;return control to os
      int 21h
        
    main endp
        
end main