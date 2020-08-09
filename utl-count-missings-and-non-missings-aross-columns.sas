Count missings and non missings aross columns                                                                            
                                                                                                                         
githib                                                                                                                   
https://tinyurl.com/yxnazans                                                                                             
https://github.com/rogerjdeangelis/utl-count-missings-and-non-missings-aross-columns                                     
                                                                                                                         
StackOverflow                                                                                                            
https://tinyurl.com/y27dakk8                                                                                             
https://stackoverflow.com/questions/63285161/sql-how-to-count-the-number-of-empty-and-non-empty-columns-per-record       
                                                                                                                         
/*                   _                                                                                                   
(_)_ __  _ __  _   _| |_                                                                                                 
| | `_ \| `_ \| | | | __|                                                                                                
| | | | | |_) | |_| | |_                                                                                                 
|_|_| |_| .__/ \__,_|\__|                                                                                                
        |_|                                                                                                              
*/                                                                                                                       
                                                                                                                         
data have;                                                                                                               
  input (c1 c2 c3 c4) ($);                                                                                               
cards4;                                                                                                                  
X X . Y                                                                                                                  
. . Y X                                                                                                                  
. . . .                                                                                                                  
;;;;                                                                                                                     
run;quit;                                                                                                                
                                                                                                                         
WORK.HAVE total obs=3                                                                                                    
                                                                                                                         
   C1    C2    C3    C4                                                                                                  
                                                                                                                         
   X     X           Y                                                                                                   
               Y     X                                                                                                   
/*           _               _                                                                                           
  ___  _   _| |_ _ __  _   _| |_                                                                                         
 / _ \| | | | __| `_ \| | | | __|                                                                                        
| (_) | |_| | |_| |_) | |_| | |_                                                                                         
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                        
                |_|                                                                                                      
*/                                                                                                                       
                                                                                                                         
WORK.WANT total obs=3                                                                                                    
                                                                                                                         
  C1    C2    C3    C4    CNTMIS    CNTPOP                                                                               
                                                                                                                         
  X     X           Y        1         3                                                                                 
              Y     X        2         2                                                                                 
                             4         0                                                                                 
/*                                                                                                                       
 _ __  _ __ ___   ___ ___  ___ ___                                                                                       
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                      
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                      
| .__/|_|  \___/ \___\___||___/___/                                                                                      
|_|                                                                                                                      
*/                                                                                                                       
                                                                                                                         
                                                                                                                         
data want;                                                                                                               
                                                                                                                         
  set have;                                                                                                              
                                                                                                                         
  array cs c:;                                                                                                           
                                                                                                                         
  cntMis = CMISS(of cs[*]);                                                                                              
  cntPop = dim(cs)-cntMis;                                                                                               
                                                                                                                         
run;quit;                                                                                                                
                                                                                                                         
                                                                                                                         
