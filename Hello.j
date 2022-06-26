.class public Hello
.super java/lang/Object

; Get rather or not a number is a multiple of another
; @param(0) the possible factor
; @param(1) the number which is to be a multiple of the factor
.method public static isMultiple(II)I
    .limit stack 4
    .limit locals 2
    iload_0
    iload_1
    irem
    ifeq is_multiple
    iconst_0
    goto done
is_multiple:
    iconst_1
done:
    ireturn
.end method

; Push an integer into an integer array
; @param(0) integer array
; @param(1) what to push into the array
; @local(2) the length of the array parameter
; @local(3) the array being buit
; @local(4) the current integer index
.method public static pushInt([II)[I
    .limit stack 8
    .limit locals 5
    aload_0
    arraylength
    dup
    istore_2
    iconst_1
    iadd
    newarray int
    astore_3

    iconst_0    
    istore 4    
loop:
    iload 4
    iload_2
    if_icmpgt loop_breakpoint

    iload 4
    iload_2
    if_icmpne is_existing_index
    goto is_new_index
is_existing_index:

    aload_3
    iload 4
    aload_0
    iload 4
    iaload
    iastore    

    goto done
is_new_index:
    aload_3
    iload 4
    iload_1
    iastore
done:
    iinc 4 1
    goto loop
loop_breakpoint:
    aload_3
    areturn    
.end method

; Get the divisors of the number
; @param(0) the number we are computing the divisors of
; @local(1) the current index
; @local(2) the divisors array we are creating
.method public static divisors(I)[I
    .limit stack 4
    .limit locals 3
    iconst_1
    istore_1
    
    iconst_0
    newarray int
    astore_2
    
loop:
    iload_1
    iload_0
    if_icmpgt loop_breakpoint

    iload_0
    iload_1
    invokestatic Hello.isMultiple(II)I
    ifne is_divisor
    goto done
is_divisor:
    aload_2
    iload_1
    invokestatic Hello.pushInt([II)[I
    astore_2
done:   
    iinc 1 1
    goto loop
loop_breakpoint:
    aload_2    
    areturn
.end method

; Computes the sum of the values of the integer array
; @param(0) the integer array
; @local(1) the array length
; @local(2) the current index
; @local(3) the current sum
.method public static intArraySum([I)I
    .limit stack 4
    .limit locals 4
    aload_0
    arraylength
    istore_1
    
    iconst_0
    istore_2
    
    iconst_0
    istore_3
loop:
    iload_2
    iload_1
    if_icmpge loop_breakpoint

    aload_0 
    iload_2
    iaload
    iload_3
    iadd
    istore_3

    iinc 2 1
    goto loop
loop_breakpoint:
    iload_3
    ireturn
.end method

.method public static numberOfDivisors(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.divisors(I)[I
    arraylength
    ireturn
.end method

.method public static sumOfDivisors(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.divisors(I)[I
    invokestatic Hello.intArraySum([I)I
    ireturn
.end method

.method public static isPerfect(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.sumOfDivisors(I)I
    iload_0
    iconst_2
    imul
    if_icmpeq is_perfect
    iconst_0
    goto done
is_perfect:
    iconst_1
done:
    ireturn
.end method

.method public static isDeficient(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.sumOfDivisors(I)I
    iload_0
    iconst_2
    imul
    if_icmplt is_deficient
    iconst_0
    goto done
is_deficient:
    iconst_1
done:
    ireturn
.end method

.method public static isAbundant(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.sumOfDivisors(I)I
    iload_0
    iconst_2
    imul
    if_icmpgt is_abundant
    iconst_0
    goto done
is_abundant:
    iconst_1
done:
    ireturn
.end method

.method public static isPrime(I)I
    .limit stack 4
    iload_0
    invokestatic Hello.numberOfDivisors(I)I
    iconst_2
    if_icmpeq is_prime
    iconst_0
    goto done
is_prime:
    iconst_1
done:
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc 25
    invokestatic Hello.sumOfDivisors(I)I
;    invokestatic java/util/Arrays.toString([I)Ljava/lang/String;
    invokestatic java/lang/Integer.toString(I)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
