.class Switch
.super java/lang/Object

.method public static getMonth(I)Ljava/lang/String;
    .limit stack 4
    iload_0
    tableswitch 1
        january 
        february
        march
        april
        default : default_label
january:
    ldc "january"
    goto done
february:
    ldc "february"
    goto done
march:
    ldc "march"
    goto done
april:
    ldc "april"
    goto done
default_label:
    ldc "invalid"
done:
    areturn
.end method

.method public static getEvenMonth(I)Ljava/lang/String;
    .limit stack 4
    iload_0
    lookupswitch 
        2 : february
        4 : april
        6 : june
        8 : august
        default : default_label
february:
    ldc "february"
    goto done
april:
    ldc "april"
    goto done
june:
    ldc "june"
    goto done
august:
    ldc "august"
    goto done
default_label:
    ldc "invalid"
done:
    areturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    getstatic java/lang/System.out Ljava/io/PrintStream;
    bipush 8
    invokestatic Switch.getEvenMonth(I)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
