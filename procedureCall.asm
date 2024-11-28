include 'emu8086.inc'
.stack 100h 
.model small


.data                                  
                                   
  str db 'ivleoevnea'
  
.code
    main proc 
        
        print 'calling udf'                 
        
        call userDefinedFn
        
        print 'udf done'
         
         mov ah, 04ch
         int 21h
        
    main endp             
    
    userDefinedFn proc
        print 'Hello Aadvika n Udayan'  
        ret
    userDefinedFn endp
        
end main