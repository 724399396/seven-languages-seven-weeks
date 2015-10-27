code := method("this code just prints this string" println)

invokeByName := method(name, self getSlot(name) call)

invokeByName("code")