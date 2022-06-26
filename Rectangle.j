.class public Rectangle
.super java/lang/Object

.field public width I
.field public height I

; @locals the rectangle object, the width, the height
.method public <init>(II)V
    .limit stack 4
    .limit locals 3

    aload_0
    invokespecial java/lang/Object.<init>()V

    aload_0
    iload_1
    putfield Rectangle.width I

    aload_0
    iload_2
    putfield Rectangle.height I
    return

.end method

; @locals the rectangle object
.method public getWidth()I
    .limit stack 4
    .limit locals 1
        
    aload_0
    getfield Rectangle.width I
    ireturn
.end method

; @locals the rectangle object
.method public getHeight()I
    .limit stack 4
    .limit locals 1
        
    aload_0
    getfield Rectangle.height I
    ireturn
.end method

; @locals the rectangle object, the width
.method public setWidth(I)V
    .limit stack 4
    .limit locals 2

    aload_0
    iload_1
    putfield Rectangle.width I
    return
.end method

; @locals the rectangle object, the height
.method public setHeight(I)V
    .limit stack 4
    .limit locals 2

    aload_0
    iload_1
    putfield Rectangle.height I
    return
.end method

; @locals the rectangle object
.method public area()I
    .limit stack 4
    .limit locals 1

    aload_0
    getfield Rectangle.width I
    aload_0
    getfield Rectangle.height I
    imul    
    ireturn
.end method

; @locals the rectangle object, x, y
.method public contains(II)Z
    .limit stack 4
    .limit locals 3

    iconst_0
    iload_1 
    if_icmpgt is_false
    iconst_0
    iload_2
    if_icmpgt is_false   
    iload_1
    aload_0
    getfield Rectangle.width I
    if_icmpgt is_false
    iload_2
    aload_0
    getfield Rectangle.height I   
    if_icmpgt is_false

    iconst_1
    goto conditional_breakpoint

is_false:
    iconst_0
conditional_breakpoint:
    ireturn
.end method

; @locals the rectangle object, the point object
.method public contains(LPoint;)Z
    .limit stack 4
    .limit locals 2
    
    aload_0
    aload_1
    getfield Point.x I
    aload_1
    getfield Point.y I
    invokevirtual Rectangle.contains(II)Z
    ireturn
.end method

