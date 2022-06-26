.class public Obj
.super java/lang/Object

.method public static createMyPoint()Ljava/awt/Point;
    .limit stack 8

    new java/awt/Point
    dup
    bipush 10
    bipush 20
    invokespecial java/awt/Point.<init>(II)V

    areturn
.end method

.method public static incrementPointX(Ljava/awt/Point;)V
    .limit stack 4
    aload_0
    dup
    getfield java/awt/Point.x I
    iconst_1
    iadd
    putfield java/awt/Point.x I
    aload_0
    return
.end method

.method public static incrementPointY(Ljava/awt/Point;)V
    .limit stack 4
    aload_0
    dup
    getfield java/awt/Point.y I
    iconst_1
    iadd
    putfield java/awt/Point.y I
    aload_0
    return
.end method

.method public static swapXY(Ljava/awt/Point;)V
    .limit stack 4
    .limit locals 4

    aload_0
    getfield java/awt/Point.x I
    istore_1
    
    aload_0
    getfield java/awt/Point.y I
    istore_2
    
    aload_0
    iload_2
    putfield java/awt/Point.x I
    
    aload_0
    iload_1
    putfield java/awt/Point.y I        

    return

.end method

.method public static getFirstChar(Ljava/lang/CharSequence;)I
    .limit stack 4

    aload_0
    iconst_0
    invokeinterface java/lang/CharSequence.charAt(I)C 2
    ireturn
.end method

.method public static isString(Ljava/lang/CharSequence;)I
    .limit stack 4
    
    aload_0
    instanceof java/lang/String
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 8
    .limit locals 4
    getstatic java/lang/System.out Ljava/io/PrintStream;
;    invokestatic Obj.createMyPoint()Ljava/awt/Point;
;    dup
;    invokestatic Obj.swapXY(Ljava/awt/Point;)V
;    invokevirtual java/awt/Point.toString()Ljava/lang/String;
    ldc "hi"
    invokestatic Obj.isString(Ljava/lang/CharSequence;)I
    invokestatic java/lang/Integer.toString(I)Ljava/lang/String;
	invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	return	
.end method
