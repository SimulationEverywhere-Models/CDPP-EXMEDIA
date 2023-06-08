[top]
components : ExMedia
[ExMedia]
type : cell
dim : (9,9)
delay : transport
defaultDelayTime  : 100
border : wrapped
neighbors : ExMedia(-1,-1) ExMedia(-1,0) ExMedia(-1,1)
neighbors : ExMedia(0,-1)  ExMedia(0,0)  ExMedia(0,1)
neighbors : ExMedia(1,-1)  ExMedia(1,0)  ExMedia(1,1)
initialvalue : 0
initialCellsValue : ExMedia.val
localtransition : calculus
[calculus]
rule : 0 100 { ( ( (0,0) = 0 ) and ( if((statecount(2) - (if((-1,1) = 2,1,0)) - (if((1,1) = 2,1,0))) < 0,0,(statecount(2) - (if((-1,1) = 2,1,0)) - (if((1,1) = 2,1,0)))) = 0 ) ) and even(cellpos(1)) }
rule : 0 100 { ( ( (0,0) = 0 ) and ( if((statecount(2) - (if((-1,-1) = 2,1,0)) - (if((1,-1) = 2,1,0))) < 0,0,(statecount(2) - (if((-1,-1) = 2,1,0)) - (if((1,-1) = 2,1,0)))) = 0 ) ) and odd(cellpos(1)) }
rule : 2 100 { ( ( (0,0) = 0 ) and ( if((statecount(2) - (if((-1,1) = 2,1,0)) - (if((1,1) = 2,1,0))) < 0,0,(statecount(2) - (if((-1,1) = 2,1,0)) - (if((1,1) = 2,1,0)))) > 0 ) ) and even(cellpos(1)) }
rule : 2 100 { ( ( (0,0) = 0 ) and ( if((statecount(2) - (if((-1,-1) = 2,1,0)) - (if((1,-1) = 2,1,0))) < 0,0,(statecount(2) - (if((-1,-1) = 2,1,0)) - (if((1,-1) = 2,1,0)))) > 0 ) ) and odd(cellpos(1)) }
rule : 1 100 { ( (0,0) = 2 ) and even(cellpos(1)) }
rule : 1 100 { ( (0,0) = 2 ) and odd(cellpos(1)) }
rule : 0 100 { ( (0,0) = 1 ) and even(cellpos(1)) }
rule : 0 100 { ( (0,0) = 1 ) and odd(cellpos(1)) }
rule : {(0,0)} 100 { t and even(cellpos(1)) }
rule : {(0,0)} 100 { t and odd(cellpos(1)) }
