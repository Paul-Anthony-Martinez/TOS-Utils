/*
   $TR-C,"Command overview"$
   $ID,2$Uptime prints to STDOUT the time since the system has being active.
  
   Functions similarly Unix's pwd.
  
   $LK,"C:/Kernel/KMisc.HC.Z,122",A="PL:C:/Kernel/KMisc.HC.Z,122"$$ID,-2$
*/

F64 getHrs(F64 time)
{  /* Divides system's time by 3600 for hours */
   return time/3600;
}

 
F64 getRemainder(F64 time)
{  /* Allows calculating minutes and seconds */
   return (time - ToI64(time)) * 60;
}

U0 printout(I64 hrs, I64 min, I64 sec)
{  /* Prints out a formated DD string */
   "\n $IV,1$uptime$IV,0$ %d hrs %d mins %d sec\n\n",
   ToI64(hrs),
   ToI64(min), 
   ToI64(sec);
}

U0 Uptime(){
   I64 time = tS;
   F64 hrs = getHrs(time);
   F64 min = getRemainder(hrs);
   F64 sec = getRemainder(min);

   printout(hrs,min,sec);
}

Uptime;
