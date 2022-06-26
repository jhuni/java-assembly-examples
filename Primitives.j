.class public Primitives
.super java/lang/Object

; @locals the argument number
.method public static triangularNumber(I)I
    .limit stack 4
    .limit locals 4

    iload_0
    iload_0
    iconst_1
    iadd
    imul
    iconst_2
    idiv
    ireturn
.end method

; @locals the target index argument, the current index, the current number
.method public static factorial(I)I
    .limit stack 4
    .limit locals 4
    iconst_1
    istore_1
    
    iconst_1
    istore_2

loop:
    iload_1
    iload_0
    if_icmpgt loop_breakpoint

    iload_2
    iload_1
    imul
    istore_2    

    iinc 1 1
    goto loop
loop_breakpoint:
    iload_2    
    ireturn
.end method

; @locals the argument number
.method public static catalanNumber(I)I
    .limit stack 4
    .limit locals 4
    
    iload_0
    iconst_2
    imul
    invokestatic Primitives/factorial(I)I
    
    iload_0
    invokestatic Primitives/factorial(I)I
    iload_0
    iconst_1
    iadd
    invokestatic Primitives/factorial(I)I
    imul
    
    idiv
    ireturn
.end method

.method public static exampleArray()[I
    .limit stack 4
    bipush 5
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

    dup
    iconst_4
    bipush 50
    iastore

    areturn
.end method

.method public static exampleArrayTwo()[I
    .limit stack 4
    bipush 3
    newarray int

    dup
    iconst_0
    bipush 0
    iastore

    dup
    iconst_1
    bipush 2
    iastore

    dup
    iconst_2
    bipush 1
    iastore

    areturn
.end method

.method public static jaggedArray()[[I
    .limit stack 8

    iconst_2
    anewarray [I

    dup
    iconst_0
; create the second array
    iconst_1
    newarray int
    dup
    iconst_0    
    iconst_0
    iastore

    aastore

    dup
    iconst_1
; create the second array
    iconst_2
    newarray int
    dup
    iconst_0
    iconst_1
    iastore
    dup
    iconst_1
    iconst_2
    iastore

    aastore
    
    areturn
.end method

; @locals the array object, current index, the array length
.method public static checkArray([I)Z
    .limit stack 6
    .limit locals 4
    
    iconst_0
    istore_1

    aload_0
    arraylength
    istore_2

loop_array:
    iload_1
    iload_2
    if_icmpge loop_array_breakpoint
  
    aload_0
    iload_1
    iaload
    iload_2  
    if_icmpge not_a_match

    iinc 1 1
    goto loop_array   
not_a_match:
    iconst_0
    ireturn
loop_array_breakpoint:
    iconst_1    
    ireturn
.end method

; @locals the array object, the argument index, the current index, the array length
.method public static distinctIndex([II)Z
    .limit stack 6
    .limit locals 4

    iconst_0
    istore_2
    
    aload_0
    arraylength
    istore_3

loop_array:
    iload_2
    iload_3
    if_icmpge loop_array_breakpoint

    aload_0
    iload_1
    iaload
    aload_0
    iload_2
    iaload
    if_icmpeq not_a_match

    iinc 2 1
    goto loop_array
not_a_match:
    iinc 2 1
    iload_1
    iload_2
    iconst_1
    isub
    if_icmpeq loop_array

    iconst_0
    ireturn
loop_array_breakpoint:
    iconst_1    
    ireturn
.end method

; @locals the array object, current index, array length
.method public static isDistinct([I)Z
    .limit stack 6
    .limit locals 4
    
    iconst_0
    istore_1

    aload_0
    arraylength
    istore_2

loop_array:
    iload_1
    iload_2
    if_icmpge loop_array_breakpoint
  
    aload_0
    iload_1
    invokestatic Primitives/distinctIndex([II)Z
    ifeq not_a_match

    iinc 1 1
    goto loop_array   
not_a_match:
    iconst_0
    ireturn
loop_array_breakpoint:
    iconst_1    
    ireturn
.end method

; @locals the argument array
.method public static isPermutation([I)Z
    .limit stack 4
    .limit locals 4

    aload_0
    invokestatic Primitives/isDistinct([I)Z
    aload_0    
    invokestatic Primitives/checkArray([I)Z
    iand
    ireturn
.end method

; @locals the argument array, the indices array, the current index, the array length, and the produced array
.method public static permuteArray([I[I)[I
    .limit stack 8
    .limit locals 8

    iconst_0
    istore_2
    
    aload_0
    arraylength
    istore_3
    
    iload_3
    newarray int
    astore 4

loop:
    iload_2
    iload_3
    if_icmpge loop_breakpoint

    aload 4
    iload_2

    aload_0
    aload_1
    iload_2
    iaload
    iaload

    iastore

    iinc 2 1
    goto loop
loop_breakpoint:
    aload 4
    areturn    
.end method

; Slice an array by index
; @locals the array, start index, end index, current index, new array
.method public static slice([III)[I
    .limit stack 8
    .limit locals 8

    iload_1
    istore_3
    
    iload_2
    iload_1
    isub
    iconst_1
    iadd
    newarray int
    astore 4

loop:
    iload_3
    iload_2
    if_icmpgt loop_breakpoint

    aload 4
    iload_3
    iload_1
    isub
    aload_0
    iload_3
    iaload
    iastore

    iinc 3 1    
    goto loop
loop_breakpoint:
    aload 4
    areturn
.end method

; Take some number of elements from the start of an array
; @locals the array, the number of elements to take
.method public static take([II)[I
    .limit stack 4
    .limit locals 4
    aload_0
    iconst_0
    iload_1 
    iconst_1
    isub
    invokestatic Primitives/slice([III)[I
    areturn
.end method

; Drop some number of elements from the end of an array
; @locals the array, the number of elements to drop
.method public static drop([II)[I
    .limit stack 4
    .limit locals 4
    aload_0
    iload_1
    aload_0
    arraylength
    iconst_1
    isub
    invokestatic Primitives/slice([III)[I
    areturn
.end method

; Construct a range of elements
; @locals the start index, the end index, the current index, the new array
.method public static createRange(II)[I
    .limit stack 4
    .limit locals 4

    iload_0
    istore_2

    iload_1
    iload_0
    isub
    iconst_1
    iadd
    newarray int
    astore_3
loop:
    iload_2
    iload_1
    if_icmpgt loop_breakpoint

    aload_3
    iload_2
    iload_0
    isub
    iload_2
    iastore

    iinc 2 1
    goto loop
loop_breakpoint:
    aload_3
    areturn
.end method

; Construct a range starting from zero
; @locals the end index of the range
.method public static upto(I)[I
    .limit stack 4
    .limit locals 1

    iconst_0
    iload_0
    invokestatic Primitives/createRange(II)[I
    areturn    
.end method

; Reverse an array
; @locals the array argument, the current index, the array length, the new array to be created
.method public static reverse([I)[I
    .limit stack 4
    .limit locals 4

    iconst_0
    istore_1
    
    aload_0
    arraylength
    istore_2
    
    iload_2
    newarray int
    astore_3

loop:
    iload_1
    iload_2
    if_icmpge loop_breakpoint

    aload_3

    iload_2
    iload_1
    isub
    iconst_1
    isub    

    aload_0
    iload_1
    iaload
    iastore

    iinc 1 1
    goto loop
loop_breakpoint:
    aload_3
    areturn
.end method

; Compute the concatenation of two arrays
; if the current index is going to be greater then or equal to array 0 length 
; then access the other array from that index minus array 0 length
; array 0, array 1, array 0 length, current index, new array length, new array
.method public static concat([I[I)[I
    .limit locals 6
    .limit stack 8

    aload_0
    arraylength
    istore_2
    
    iconst_0
    istore_3
    
    iload_2
    aload_1
    arraylength
    iadd
    istore 4

    iload 4
    newarray int
    astore 5

loop:
    iload_3
    iload 4
    if_icmpge loop_breakpoint

    iload_3
    iload_2
    if_icmpge is_second_array_index
    goto is_first_array_index

is_first_array_index:
    aload 5
    iload_3
    aload_0
    iload_3
    iaload
    iastore
    goto conditional_breakpoint
is_second_array_index:
    aload 5
    iload_3
    aload_1
    iload_3
    iload_2
    isub
    iaload
    iastore
conditional_breakpoint:
    iinc 3 1
    goto loop
loop_breakpoint:
    aload 5
    areturn
.end method

; @locals the first array, the second array, the minimum length, the current index
.method public static commonPrefixLength([I[I)I
    .limit stack 4
    .limit locals 4
    
; initialization component
    aload_0
    arraylength
    aload_1
    arraylength

    invokestatic java/lang/Math.min(II)I
    istore_2

    iconst_0
    istore_3

loop:
    iload 3
    iload 2
    if_icmpge loop_breakpoint

    aload_0
    iload_3
    iaload

    aload_1
    iload_3
    iaload
    if_icmpne loop_breakpoint
    
; iteration component
    iinc 3 1
    goto loop
loop_breakpoint:

    iload 3
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    .limit locals 4

    getstatic java/lang/System.out Ljava/io/PrintStream;

    bipush 20
    invokestatic Primitives/upto(I)[I
    bipush 100
    bipush 104
    invokestatic Primitives/createRange(II)[I
    invokestatic Primitives/concat([I[I)[I
    invokestatic java/util/Arrays.toString([I)Ljava/lang/String;
    pop

    invokestatic Primitives/jaggedArray()[[I
    invokestatic java/util/Arrays.deepToString([Ljava/lang/Object;)Ljava/lang/String; 
   
;    bipush 3
;    invokestatic Primitives/catalanNumber(I)I
;    invokestatic java/lang/Integer.toString(I)Ljava/lang/String;

    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
