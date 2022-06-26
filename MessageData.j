.class public MessageData
.super java/lang/Object

.field public static message Ljava/lang/String;

.method static public <clinit>()V
    .limit locals 4
    .limit stack 4
    
    ldc "hello world"
    putstatic MessageData.message Ljava/lang/String;
    return
.end method
