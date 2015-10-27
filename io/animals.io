Object ancestors := method(
    prototype := self proto
    if(prototype != Object,
    writeln("Slots of " , prototype type, "\n---------------" )
    prototype slotNames foreach(slotName, writeln(slotName))
    writeln
    prototype ancestors))

Animal := Object clone
Animal speak := method(
            "ambiguous animal noise" println)

Duck := Animal clone
Duck speack := method(
        "quack" println)

Duck walk := method(
        "waddle" println)

disco := Duck clone
disco ancestors