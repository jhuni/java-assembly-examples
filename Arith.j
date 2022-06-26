.class public Arith
.super java/lang/Object

.method public static abs(I)I
    .limit stack 4
    iload_0
    dup
    ifge done
    ineg
done:
    ireturn
.end method

.method public static isEven(I)I
    .limit stack 4
    iload_0
    iconst_2
    irem
    ifeq is_even
    iconst_0
    goto done
is_even:
    iconst_1
done:
    ireturn
.end method

.method public static isOdd(I)I
    .limit stack 4
    iload_0
    iconst_2
    irem
    ifne is_odd
    iconst_0
    goto done
is_odd:
    iconst_1
done:
    ireturn
.end method

.method public static evenNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iadd
    ireturn
.end method

.method public static oddNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iadd
    iconst_1
    iadd
    ireturn
.end method

.method public static tripleNumber(I)I
    .limit stack 4
    iload_0
    iconst_3
    imul
    ireturn
.end method

.method public static triangularNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iconst_1
    iadd
    imul
    iconst_2
    idiv
    ireturn
.end method

.method public static pronicNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iconst_1
    iadd
    imul
    ireturn
.end method

.method public static squareNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    imul
    ireturn
.end method

.method public static pentagonalNumber(I)I
    .limit stack 4
    iload_0
    dup
    imul
    iconst_3
    imul
    iload_0
    isub
    iconst_2
    idiv
    ireturn
.end method

.method public static hexagonalNumber(I)I
    .limit stack 4
    iload_0
    dup
    imul
    iload_0
    isub
    ireturn
.end method

.method public static cubeNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    imul
    iload_0
    imul
    ireturn
.end method

.method public static tetrahedralNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iconst_1
    iadd
    imul
    iload_0
    iconst_2
    iadd
    imul
    bipush 6
    idiv
    ireturn
.end method

.method public static squarePyramidalNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    iconst_1
    iadd
    imul
    iload_0
    iconst_2
    imul
    iconst_1
    iadd
    imul
    bipush 6
    idiv
    ireturn    
.end method

.method public static centeredTriangularNumber(I)I
    .limit stack 4
    iload_0
    dup
    imul
    iconst_3
    imul
    iload_0
    iconst_3
    imul
    iadd
    iconst_2
    iadd
    iconst_2
    idiv
    ireturn   
.end method

.method public static centeredSquareNumber(I)I
    .limit stack 4
    iload_0
    iload_0
    imul
    iload_0
    iconst_1
    isub
    dup
    imul
    iadd
    ireturn
.end method

.method public static centeredPentagonalNumber(I)I
    .limit stack 4
    iload_0
    dup
    imul
    iconst_5
    imul
    iload_0
    iconst_5
    imul
    iadd
    iconst_2
    iadd
    iconst_2
    idiv
    ireturn
.end method

.method public static centeredHexagonalNumber(I)I
    .limit stack 4
    iload_0
    dup
    dup
    imul
    imul
    iload_0
    iconst_1
    isub
    dup
    dup
    imul
    imul
    isub
    ireturn
.end method

.method public static factorialRecursive(I)I
    .limit stack 4
    iload_0
    iconst_0
    if_icmpeq elseif

    iload_0
    iconst_1
    isub
    invokestatic Arith.factorialRecursive(I)I
    iload_0
    imul
    goto done
elseif:
    iconst_1
    ireturn
done:
    ireturn
.end method

.method public static factorial(I)I
    .limit stack 4
    .limit locals 4

    iconst_1
    istore_1

    iconst_1
    istore_2

loop:
    iload_0
    iload_1 
    if_icmplt loop_break

    iload_1
    iload_2
    imul    
    istore_2
    
    iinc 1 1    
    goto loop
loop_break:
    iload_2
    ireturn
.end method

.method public static fallingFactorial(JJ)J
    .limit stack 16
    .limit locals 8

    lconst_0
    lstore 4 

    lconst_1
    lstore 6
   
loop:
    lload 4
    lload 2
    lcmp
    ifge loop_breakpoint

    lload 6
    lload 0
    lload 4
    lsub
    lmul
    lstore 6

    lload 4
    lconst_1
    ladd
    lstore 4
    goto loop
loop_breakpoint:
    lload 6
    lreturn
.end method

.method public static powerOfTwo(I)I
    .limit stack 4
    .limit locals 3
    iconst_0
    istore_1
    
    iconst_1
    istore_2
loop:
    iload_1    
    iload_0
    if_icmpge loop_breakpoint

    iload_2
    iconst_2
    imul
    istore_2
    
    iinc 1 1
    goto loop
loop_breakpoint:
    iload_2
    ireturn
.end method

.method public static nthSquareRoot(I)I
    .limit stack 4
    iload_0
    i2d
    invokestatic java/lang/Math.sqrt(D)D
    invokestatic java/lang/Math.floor(D)D
    d2i
    ireturn
.end method

.method public static fibonacciNumber(I)I
    .limit stack 8
    iload_0
    iconst_2
    if_icmplt special_case
    goto normal_case
special_case:
    iload_0
    ireturn
normal_case:
    iload_0
    iconst_1
    isub
    invokestatic Arith.fibonacciNumber(I)I
    iload_0
    iconst_2
    isub
    invokestatic Arith.fibonacciNumber(I)I
    iadd
    ireturn
.end method

.method public static binomialCoefficient(II)I
    .limit stack 4
    .limit locals 2
    iload_0
    invokestatic Arith.factorial(I)I

    iload_1
    invokestatic Arith.factorial(I)I
    iload_0
    iload_1
    isub
    invokestatic Arith.factorial(I)I
    imul

    idiv
    ireturn
.end method

.method public static sumSquareDifference(I)I
    .limit stack 4
    .limit locals 2
    iload_0
    invokestatic Arith.triangularNumber(I)I
    invokestatic Arith.squareNumber(I)I
    iload_0
    invokestatic Arith.squarePyramidalNumber(I)I
    isub
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    getstatic java/lang/System.out Ljava/io/PrintStream;
;    bipush 12
;    bipush 3
;    invokestatic Arith.binomialCoefficient(II)I
    bipush 100
    invokestatic Arith.sumSquareDifference(I)I
    invokestatic java/lang/Integer.toString(I)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
