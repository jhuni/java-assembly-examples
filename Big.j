.class public Big
.super java/lang/Object

.method public static triangularNumber(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .limit stack 4
    aload_0
    aload_0
    lconst_1
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;
    invokevirtual java/math/BigInteger.add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    invokevirtual java/math/BigInteger.multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    ldc2_w 2
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;
    invokevirtual java/math/BigInteger.divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    areturn        
.end method

.method public static squareNumber(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .limit stack 4
    aload_0
    dup
    invokevirtual java/math/BigInteger.multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    areturn
.end method

.method public static factorial(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .limit stack 8
    lconst_0    
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;
    aload_0
    invokevirtual java/math/BigInteger.compareTo(Ljava/math/BigInteger;)I
    ifeq isZero
    
    aload_0
    lconst_1
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;
    invokevirtual java/math/BigInteger.subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    invokestatic Big.factorial(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    aload_0
    invokevirtual java/math/BigInteger.multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    goto done
isZero:
    lconst_1
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;
done:
    areturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc2_w 50
    invokestatic java/math/BigInteger.valueOf(J)Ljava/math/BigInteger;    
    invokestatic Big.factorial(Ljava/math/BigInteger;)Ljava/math/BigInteger;    
    invokestatic Big.triangularNumber(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    invokevirtual java/math/BigInteger.toString()Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V    
    return
.end method
