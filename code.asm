.model small
.stack 100h
.data
    fname db 'fl.txt',0
    fhandle dw ?
    buffer db 100 dup('$')  
    M1 DB 10,13,10,13,' **       Welcome to Our Shop    **$'
    M2 DB 10,13,' Catalogue: $'
    M3 DB 10,13,'  *                 1.Tshirt/Top : 30/-         *$' 
    M4 DB 10,13,'  *                 2.Trouser : 60/-            *$'
    M5 DB 10,13,'  *                 3.Pullover : 60/-           *$'
    M6 DB 10,13,'  *                 4.Dress : 60/-              *$'
    M7 DB 10,13,'  *                 5.Coat : 40/-               *$'
    M8 DB 10,13,'  *                 6.Sandal : 20/-             *$' 
    M9 DB 10,13,'  *                 7.Shirt : 30/-              *$' 
    M10 DB 10,13,'  *                 8.Sneaker : 80/-            *$' 
    M11 DB 10,13,'  *                 9.Bag : 50/-                *$'
    M12 DB 10,13,'  *                 10.Ankle Boot : 50/-        *$'
    M13 DB 10,13,'* Price is 30 *$'
    M14 DB 10,13,'* Price is 60 *$'
    M15 DB 10,13,'* Price is 60 *$'
    M16 DB 10,13,'* Price is 60 *$'
    M17 DB 10,13,'* Price is 40 *$'
    M18 DB 10,13,'* Price is 20 *$'
    M19 DB 10,13,'* Price is 30 *$'
    M20 DB 10,13,'* Price is 80 *$'
    M21 DB 10,13,'* Price is 50 *$'
    M22 DB 10,13,'* Price is 50 *$'
    M23 DB 10,13,'* The item is a Tshirt *$'
    M24 DB 10,13,'* The item is a Trouser *$'
    M25 DB 10,13,'* The item is a Pullover *$'
    M26 DB 10,13,'* The item is a Dress *$'
    M27 DB 10,13,'* The item is a Coat *$'
    M28 DB 10,13,'* The item is a Sandal *$'
    M29 DB 10,13,'* The item is a Shirt *$'
    M30 DB 10,13,'* The item is a Sneaker *$'
    M31 DB 10,13,'* The item is a Bag *$'
    M32 DB 10,13,'* The item is a Ankle Boot *$'
    
    QUANTITY DB ?     
    SEJ DB 10,13,10,13,' $'
    
     
.code
    main proc
        mov ax,@data
        mov ds,ax    
        ;displaying the initial mssg
        lea dx,M1
        mov ah,09h
        int 21h
        
        lea dx,SEJ ;newline
        mov ah,9
        int 21h
        
        lea dx,M2
        mov ah,9
        int 21h
        
        lea dx,M3
        mov ah,9
        int 21h
        
        lea dx,M4
        mov ah,9
        int 21h
        
        lea dx,M5
        mov ah,9
        int 21h   
        
        lea dx,M6
        mov ah,9
        int 21h
        
        lea dx,M7
        mov ah,9
        int 21h
        
        lea dx,M8
        mov ah,9
        int 21h
        
        lea dx,M9
        mov ah,9
        int 21h   
        
        lea dx,M10
        mov ah,9
        int 21h  
        
        lea dx,M11
        mov ah,9
        int 21h     
        
                
        lea dx,M12
        mov ah,9
        int 21h
               
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h  
        
        ;open existing file
        mov ah,3dh
        lea dx,fname
        mov al,2
        int 21h
        mov fhandle,ax
        ;reading from file
        mov ah,3fh
        lea dx,buffer
        mov cx,1
        mov bx,fhandle
        int 21h  
        
        ;comparison will start here
        ;mov bh,buffer
        cmp buffer,'0'
        jz TSHIRT
        
        cmp buffer,'1'
        jz TROUSER
        
        cmp buffer,'2'
        jz PULLOVER
        
        cmp buffer,'3'
        jz DRESS
        
        cmp buffer,'4'
        jz COAT
        
        cmp buffer,'5'
        jz SANDAL
        
        cmp buffer,'6'
        jz SHIRT
        
        cmp buffer,'7'
        jz SNEAKER
        
        cmp buffer,'8'
        jz BAG
        
        cmp buffer,'9'
        jz BOOT
        
        ;Each item actions start here
        TSHIRT: lea dx,M23
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M13
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        TROUSER: lea dx,M24
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M14
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        PULLOVER: lea dx,M25
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M15
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H  

        
        DRESS: lea dx,M26
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M16
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        COAT: lea dx,M27
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M17
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        SANDAL: lea dx,M28
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M18
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H   
        
        SHIRT: lea dx,M29
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M19
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        SNEAKER: lea dx,M30
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M20
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        BAG:lea dx,M31
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M21
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 
        
        BOOT: lea dx,M32
        mov ah,09h  
        int 21h
        lea dx,SEJ ;newline
        mov ah,09h
        int 21h
        lea dx,M22
        mov ah,09h
        int 21h
        mov ah,4CH
        int 21H 