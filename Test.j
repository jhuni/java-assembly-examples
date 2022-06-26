.class public Test
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    .limit locals 4

    new Point
    dup
    bipush 10
    bipush 20
    invokespecial Point.<init>(II)V
    astore_0

    new Rectangle
    dup
    bipush 20
    bipush 20
    invokespecial Rectangle.<init>(II)V
    astore_1

    getstatic java/lang/System.out Ljava/io/PrintStream;

    aload_1
    aload_0
    invokevirtual Rectangle.contains(LPoint;)Z

;    aload_0
;    dup
;    bipush 30
;    invokevirtual Point.addX(I)V
;    getfield Point.x I

    invokestatic java/lang/Integer.toString(I)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
