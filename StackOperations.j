.class public StackOperations
.super java/lang/Object

.method public static secondpred()V
	.limit stack 8
	.limit locals 4
	getstatic java/lang/System.out Ljava/io/PrintStream;
	astore_0

	ldc "2"
	ldc "1"
	swap
	dup_x1

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	
	return
.end method

.method public static thirdpred()V
	.limit stack 8
	.limit locals 4
	getstatic java/lang/System.out Ljava/io/PrintStream;
	astore_0

	ldc "3"
	ldc "2"
	ldc "1"
	dup2_x1
	pop2
	dup_x2

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	
	return
.end method

.method public static longsecondpred()V
	.limit stack 8
	.limit locals 4
	getstatic java/lang/System.out Ljava/io/PrintStream;
	astore_0

	ldc "3"
	ldc "2"
	ldc "1"
	dup_x2
	pop
	dup2_x1

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	
	return
.end method

.method public static longthirdpred()V
	.limit stack 8
	.limit locals 4
	getstatic java/lang/System.out Ljava/io/PrintStream;
	astore_0

	ldc "4"
	ldc "3"
	ldc "2"
	ldc "1"
	dup2_x2
	pop2
	dup2_x2

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

	aload_0
	swap
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
	
	return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
	invokestatic StackOperations.longthirdpred()V
;	invokestatic StackOperations.secondpred()V
;	invokestatic StackOperations.thirdpred()V
    return
.end method
