.class public Arrays
.super java/lang/Object

.method public static multiplicationTable(II)[[I
    .limit stack 8
    .limit locals 8

    iload_0
    iload_1
    multianewarray [[I 2
    astore 4    

    iconst_0
    istore_2        

    iconst_0
    istore_3
loop:
    iload_0
    iload_2
    if_icmple loop_breakpoint

    iconst_0
    istore_3

    aload 4
    iload_2

    iload_1
    newarray int

inner_loop:
    iload_1
    iload_3
    if_icmple inner_loop_breakpoint

    dup
    iload_3
    iload_2
    iconst_1
    iadd
    iload_3
    iconst_1
    iadd
    imul
    iastore

    iinc 3 1
    goto inner_loop
inner_loop_breakpoint:

    aastore
    iinc 2 1
    goto loop
loop_breakpoint:
    aload 4
    areturn
.end method

.method public static multidimensionalArray()[[I
    .limit stack 8
    .limit locals 4

    iconst_2
    iconst_2
    multianewarray [[I 2
    astore_0

    aload_0
    iconst_0    
    iconst_2
    newarray int
    dup
    iconst_0
    bipush 10
    iastore
    dup
    iconst_1
    bipush 20
    iastore
    aastore

    aload_0
    iconst_1
    iconst_2
    newarray int
    dup
    iconst_0
    bipush 30
    iastore
    dup
    iconst_1
    bipush 40
    iastore
    aastore

    aload_0
    areturn
.end method

.method public static sizeTwoArray()[I
    .limit stack 4
    iconst_2
    newarray int

    dup
    iconst_0
    bipush 10
    iastore

    dup
    iconst_1
    bipush 20
    iastore

    areturn
.end method

.method public static sizeFourArray()[I
    .limit stack 4
    iconst_4
    newarray int

    dup
    iconst_0
    bipush 10
    iastore

    dup
    iconst_1
    bipush 20
    iastore

    dup
    iconst_2
    bipush 30
    iastore
    
    dup
    iconst_3
    bipush 40
    iastore

    areturn
.end method 

.method public static helloWorldArray()[Ljava/lang/String;
    .limit stack 4
    .limit locals 4

    iconst_2
    anewarray java/lang/String

    dup
    iconst_0
    ldc "hello"
    aastore

    dup
    iconst_1
    ldc "world"
    aastore

    areturn
.end method

.method public static incrementArrayIndex([II)[I
    .limit stack 4
    .limit locals 4
    aload_0
    iload_1
    dup2
    iaload
    iconst_1
    iadd
    iastore
    aload_0
    areturn    
.end method

.method public static incrementArray([I)[I
    .limit stack 5
    .limit locals 5
    
    aload_0
    arraylength
    istore_1
    
    iconst_0
    istore_2
loop:
    iload_1
    iload_2
    if_icmple loop_breakpoint

    aload_0
    iload_2
    invokestatic Arrays.incrementArrayIndex([II)[I  
    pop
    
    iinc 2 1

    goto loop
loop_breakpoint:
    aload_0
    areturn
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	getstatic java/lang/System.out Ljava/io/PrintStream;
;    invokestatic Arrays.multidimensionalArray()[[I
    bipush 4
    bipush 4
    invokestatic Arrays.multiplicationTable(II)[[I
    invokestatic java/util/Arrays.deepToString([Ljava.lang.Object;)Ljava/lang/String;
	invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	return	
.end method
