­
XC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
if 
( 
builder 
. 
Environment 
. 
IsDevelopment %
(% &
)& '
)' (
{		 
builder

 
.

 
Configuration

 
.

 
AddUserSecrets

 (
<

( )
Program

) 0
>

0 1
(

1 2
)

2 3
;

3 4
} 
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
AddDbContext 
< 
AppDBContext *
>* +
(+ ,
options, 3
=>4 6
options 
. 
UseSqlServer 
( 
builder 
. 
Configuration *
.* +
GetConnectionString+ >
(> ?
$str? R
)R S
)S T
) 
; 
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app   
.   
UseSwaggerUI   
(   
)   
;   
}!! 
app## 
.## 
UseAuthorization## 
(## 
)## 
;## 
app%% 
.%% 
MapControllers%% 
(%% 
)%% 
;%% 
await'' 
app'' 	
.''	 

RunAsync''
 
('' 
)'' 
;'' ÷j
xC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Migrations\20250116165703_InitialCreate.cs
	namespace 	
GestionReservas
 
. 

Migrations $
{ 
public		 

partial		 
class		 
InitialCreate		 &
:		' (
	Migration		) 2
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Cedula 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 F
,F G
	maxLengthH Q
:Q R
$numS U
,U V
nullableW _
:_ `
falsea f
)f g
,g h
Nombre 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
	maxLengthI R
:R S
$numT W
,W X
nullableY a
:a b
falsec h
)h i
,i j
Apellido 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
falsee j
)j k
,k l
Telefono 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: H
,H I
	maxLengthJ S
:S T
$numU W
,W X
nullableY a
:a b
falsec h
)h i
,i j
	Direccion 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; J
,J K
	maxLengthL U
:U V
$numW Z
,Z [
nullable\ d
:d e
falsef k
)k l
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name   
:   
$str   $
,  $ %
columns!! 
:!! 
table!! 
=>!! !
new!!" %
{"" 
Id## 
=## 
table## 
.## 
Column## %
<##% &
int##& )
>##) *
(##* +
type##+ /
:##/ 0
$str##1 6
,##6 7
nullable##8 @
:##@ A
false##B G
)##G H
.$$ 

Annotation$$ #
($$# $
$str$$$ 8
,$$8 9
$str$$: @
)$$@ A
,$$A B
NumeroHabitacion%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
string%%4 :
>%%: ;
(%%; <
type%%< @
:%%@ A
$str%%B P
,%%P Q
	maxLength%%R [
:%%[ \
$num%%] _
,%%_ `
nullable%%a i
:%%i j
false%%k p
)%%p q
,%%q r
Descripcion&& 
=&&  !
table&&" '
.&&' (
Column&&( .
<&&. /
string&&/ 5
>&&5 6
(&&6 7
type&&7 ;
:&&; <
$str&&= L
,&&L M
	maxLength&&N W
:&&W X
$num&&Y \
,&&\ ]
nullable&&^ f
:&&f g
false&&h m
)&&m n
,&&n o
Precio'' 
='' 
table'' "
.''" #
Column''# )
<'') *
decimal''* 1
>''1 2
(''2 3
type''3 7
:''7 8
$str''9 H
,''H I
nullable''J R
:''R S
false''T Y
)''Y Z
}(( 
,(( 
constraints)) 
:)) 
table)) "
=>))# %
{** 
table++ 
.++ 

PrimaryKey++ $
(++$ %
$str++% 6
,++6 7
x++8 9
=>++: <
x++= >
.++> ?
Id++? A
)++A B
;++B C
},, 
),, 
;,, 
migrationBuilder.. 
... 
CreateTable.. (
(..( )
name// 
:// 
$str//  
,//  !
columns00 
:00 
table00 
=>00 !
new00" %
{11 
Id22 
=22 
table22 
.22 
Column22 %
<22% &
int22& )
>22) *
(22* +
type22+ /
:22/ 0
$str221 6
,226 7
nullable228 @
:22@ A
false22B G
)22G H
.33 

Annotation33 #
(33# $
$str33$ 8
,338 9
$str33: @
)33@ A
,33A B
	IdCliente44 
=44 
table44  %
.44% &
Column44& ,
<44, -
int44- 0
>440 1
(441 2
type442 6
:446 7
$str448 =
,44= >
nullable44? G
:44G H
true44I M
)44M N
,44N O
IdHabitacion55  
=55! "
table55# (
.55( )
Column55) /
<55/ 0
int550 3
>553 4
(554 5
type555 9
:559 :
$str55; @
,55@ A
nullable55B J
:55J K
true55L P
)55P Q
,55Q R
FechaEntrada66  
=66! "
table66# (
.66( )
Column66) /
<66/ 0
DateTime660 8
>668 9
(669 :
type66: >
:66> ?
$str66@ K
,66K L
nullable66M U
:66U V
false66W \
)66\ ]
,66] ^
FechaSalida77 
=77  !
table77" '
.77' (
Column77( .
<77. /
DateTime77/ 7
>777 8
(778 9
type779 =
:77= >
$str77? J
,77J K
nullable77L T
:77T U
false77V [
)77[ \
,77\ ]
Total88 
=88 
table88 !
.88! "
Column88" (
<88( )
decimal88) 0
>880 1
(881 2
type882 6
:886 7
$str888 G
,88G H
nullable88I Q
:88Q R
false88S X
)88X Y
}99 
,99 
constraints:: 
::: 
table:: "
=>::# %
{;; 
table<< 
.<< 

PrimaryKey<< $
(<<$ %
$str<<% 2
,<<2 3
x<<4 5
=><<6 8
x<<9 :
.<<: ;
Id<<; =
)<<= >
;<<> ?
table== 
.== 

ForeignKey== $
(==$ %
name>> 
:>> 
$str>> >
,>>> ?
column?? 
:?? 
x??  !
=>??" $
x??% &
.??& '
	IdCliente??' 0
,??0 1
principalTable@@ &
:@@& '
$str@@( 2
,@@2 3
principalColumnAA '
:AA' (
$strAA) -
,AA- .
onDeleteBB  
:BB  !
ReferentialActionBB" 3
.BB3 4
CascadeBB4 ;
)BB; <
;BB< =
tableCC 
.CC 

ForeignKeyCC $
(CC$ %
nameDD 
:DD 
$strDD E
,DDE F
columnEE 
:EE 
xEE  !
=>EE" $
xEE% &
.EE& '
IdHabitacionEE' 3
,EE3 4
principalTableFF &
:FF& '
$strFF( 6
,FF6 7
principalColumnGG '
:GG' (
$strGG) -
,GG- .
onDeleteHH  
:HH  !
ReferentialActionHH" 3
.HH3 4
CascadeHH4 ;
)HH; <
;HH< =
}II 
)II 
;II 
migrationBuilderKK 
.KK 
CreateTableKK (
(KK( )
nameLL 
:LL 
$strLL ,
,LL, -
columnsMM 
:MM 
tableMM 
=>MM !
newMM" %
{NN 
IdOO 
=OO 
tableOO 
.OO 
ColumnOO %
<OO% &
intOO& )
>OO) *
(OO* +
typeOO+ /
:OO/ 0
$strOO1 6
,OO6 7
nullableOO8 @
:OO@ A
falseOOB G
)OOG H
.PP 

AnnotationPP #
(PP# $
$strPP$ 8
,PP8 9
$strPP: @
)PP@ A
,PPA B
	IdReservaQQ 
=QQ 
tableQQ  %
.QQ% &
ColumnQQ& ,
<QQ, -
intQQ- 0
>QQ0 1
(QQ1 2
typeQQ2 6
:QQ6 7
$strQQ8 =
,QQ= >
nullableQQ? G
:QQG H
trueQQI M
)QQM N
,QQN O
DescripcionRR 
=RR  !
tableRR" '
.RR' (
ColumnRR( .
<RR. /
stringRR/ 5
>RR5 6
(RR6 7
typeRR7 ;
:RR; <
$strRR= L
,RRL M
	maxLengthRRN W
:RRW X
$numRRY \
,RR\ ]
nullableRR^ f
:RRf g
falseRRh m
)RRm n
,RRn o
CostoSS 
=SS 
tableSS !
.SS! "
ColumnSS" (
<SS( )
decimalSS) 0
>SS0 1
(SS1 2
typeSS2 6
:SS6 7
$strSS8 G
,SSG H
nullableSSI Q
:SSQ R
falseSSS X
)SSX Y
}TT 
,TT 
constraintsUU 
:UU 
tableUU "
=>UU# %
{VV 
tableWW 
.WW 

PrimaryKeyWW $
(WW$ %
$strWW% >
,WW> ?
xWW@ A
=>WWB D
xWWE F
.WWF G
IdWWG I
)WWI J
;WWJ K
tableXX 
.XX 

ForeignKeyXX $
(XX$ %
nameYY 
:YY 
$strYY J
,YYJ K
columnZZ 
:ZZ 
xZZ  !
=>ZZ" $
xZZ% &
.ZZ& '
	IdReservaZZ' 0
,ZZ0 1
principalTable[[ &
:[[& '
$str[[( 2
,[[2 3
principalColumn\\ '
:\\' (
$str\\) -
,\\- .
onDelete]]  
:]]  !
ReferentialAction]]" 3
.]]3 4
Cascade]]4 ;
)]]; <
;]]< =
}^^ 
)^^ 
;^^ 
migrationBuilder`` 
.`` 
CreateIndex`` (
(``( )
nameaa 
:aa 
$straa -
,aa- .
tablebb 
:bb 
$strbb !
,bb! "
columncc 
:cc 
$strcc #
)cc# $
;cc$ %
migrationBuilderee 
.ee 
CreateIndexee (
(ee( )
nameff 
:ff 
$strff 0
,ff0 1
tablegg 
:gg 
$strgg !
,gg! "
columnhh 
:hh 
$strhh &
)hh& '
;hh' (
migrationBuilderjj 
.jj 
CreateIndexjj (
(jj( )
namekk 
:kk 
$strkk 9
,kk9 :
tablell 
:ll 
$strll -
,ll- .
columnmm 
:mm 
$strmm #
)mm# $
;mm$ %
}nn 	
	protectedqq 
overrideqq 
voidqq 
Downqq  $
(qq$ %
MigrationBuilderqq% 5
migrationBuilderqq6 F
)qqF G
{rr 	
migrationBuilderss 
.ss 
	DropTabless &
(ss& '
namett 
:tt 
$strtt ,
)tt, -
;tt- .
migrationBuildervv 
.vv 
	DropTablevv &
(vv& '
nameww 
:ww 
$strww  
)ww  !
;ww! "
migrationBuilderyy 
.yy 
	DropTableyy &
(yy& '
namezz 
:zz 
$strzz  
)zz  !
;zz! "
migrationBuilder|| 
.|| 
	DropTable|| &
(||& '
name}} 
:}} 
$str}} $
)}}$ %
;}}% &
}~~ 	
} 
}€€ ¹@
xC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Controllers\ServicioAdicionalController.cs
	namespace 	
GestionReservas
 
. 
Controllers %
{ 
	namespace 
GestionReservas 
. 
Controllers )
{		 
[

 	
Route

	 
(

 
$str

 !
)

! "
]

" #
[ 	
ApiController	 
] 
public 
class '
ServicioAdicionalController 0
:1 2
ControllerBase3 A
{ 	
private 
readonly 
AppDBContext )
_appDBContext* 7
;7 8
public '
ServicioAdicionalController .
(. /
AppDBContext/ ;
appDBContext< H
)H I
{ 
_appDBContext 
= 
appDBContext  ,
;, -
} 
[ 
HttpGet 
] 
public 
async 
Task 
< 
ActionResult *
<* +
IEnumerable+ 6
<6 7
ServicioAdicional7 H
>H I
>I J
>J K#
GetServiciosAdicionalesL c
(c d
)d e
{ 
return 
await 
_appDBContext *
.* + 
ServiciosAdicionales+ ?
.? @
ToListAsync@ K
(K L
)L M
;M N
} 
[ 
HttpGet 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult *
<* +
ServicioAdicional+ <
>< =
>= > 
GetServicioAdicional? S
(S T
intT W
idX Z
)Z [
{ 
var 
servicioAdicional %
=& '
await( -
_appDBContext. ;
.; < 
ServiciosAdicionales< P
.P Q
	FindAsyncQ Z
(Z [
id[ ]
)] ^
;^ _
if 
( 
servicioAdicional %
==& (
null) -
)- .
{   
return!! 
NotFound!! #
(!!# $
$str!!$ F
)!!F G
;!!G H
}"" 
return## 
Ok## 
(## 
servicioAdicional## +
)##+ ,
;##, -
}$$ 
[&& 
HttpPost&& 
]&& 
public'' 
async'' 
Task'' 
<'' 
ActionResult'' *
<''* +
ServicioAdicional''+ <
>''< =
>''= >!
PostServicioAdicional''? T
(''T U
ServicioAdicional''U f
servicioAdicional''g x
)''x y
{(( 
var** 
reserva** 
=** 
await** #
_appDBContext**$ 1
.**1 2
Reservas**2 :
.**: ;
	FindAsync**; D
(**D E
servicioAdicional**E V
.**V W
	IdReserva**W `
)**` a
;**a b
if++ 
(++ 
reserva++ 
==++ 
null++ #
)++# $
return,, 

BadRequest,, %
(,,% &
$",,& (
$str,,( :
{,,: ;
servicioAdicional,,; L
.,,L M
	IdReserva,,M V
},,V W
$str,,W b
",,b c
),,c d
;,,d e
_appDBContext.. 
...  
ServiciosAdicionales.. 2
...2 3
Add..3 6
(..6 7
servicioAdicional..7 H
)..H I
;..I J
await// 
_appDBContext// #
.//# $
SaveChangesAsync//$ 4
(//4 5
)//5 6
;//6 7
return00 
Ok00 
(00 
servicioAdicional00 +
)00+ ,
;00, -
}11 
[33 
HttpPut33 
(33 
$str33 
)33 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 +
>44+ , 
PutServicioAdicional44- A
(44A B
int44B E
id44F H
,44H I
ServicioAdicional44J [
servicioAdicional44\ m
)44m n
{55 
if66 
(66 
id66 
<66 
$num66 
)66 
return66 "

BadRequest66# -
(66- .
$str66. O
)66O P
;66P Q
var88 %
existingServicioAdicional88 -
=88. /
await880 5
_appDBContext886 C
.88C D 
ServiciosAdicionales88D X
.88X Y
	FindAsync88Y b
(88b c
id88c e
)88e f
;88f g
if99 
(99 %
existingServicioAdicional99 -
==99. 0
null991 5
)995 6
return:: 
NotFound:: #
(::# $
$str::$ Q
)::Q R
;::R S
var== 
reserva== 
=== 
await== #
_appDBContext==$ 1
.==1 2
Reservas==2 :
.==: ;
	FindAsync==; D
(==D E
servicioAdicional==E V
.==V W
	IdReserva==W `
)==` a
;==a b
if>> 
(>> 
reserva>> 
==>> 
null>> #
)>># $
return?? 

BadRequest?? %
(??% &
$"??& (
$str??( :
{??: ;
servicioAdicional??; L
.??L M
	IdReserva??M V
}??V W
$str??W b
"??b c
)??c d
;??d e%
existingServicioAdicionalAA )
.AA) *
DescripcionAA* 5
=AA6 7
stringAA8 >
.AA> ?
IsNullOrEmptyAA? L
(AAL M
servicioAdicionalAAM ^
.AA^ _
DescripcionAA_ j
)AAj k
?BB %
existingServicioAdicionalBB /
.BB/ 0
DescripcionBB0 ;
:CC 
servicioAdicionalCC '
.CC' (
DescripcionCC( 3
;CC3 4%
existingServicioAdicionalDD )
.DD) *
CostoDD* /
=DD0 1
servicioAdicionalDD2 C
.DDC D
CostoDDD I
??DDJ L%
existingServicioAdicionalDDM f
.DDf g
CostoDDg l
;DDl m%
existingServicioAdicionalEE )
.EE) *
	IdReservaEE* 3
=EE4 5
servicioAdicionalEE6 G
.EEG H
	IdReservaEEH Q
;EEQ R
awaitGG 
_appDBContextGG #
.GG# $
SaveChangesAsyncGG$ 4
(GG4 5
)GG5 6
;GG6 7
returnHH 
OkHH 
(HH %
existingServicioAdicionalHH 3
)HH3 4
;HH4 5
}II 
[KK 

HttpDeleteKK 
(KK 
$strKK 
)KK 
]KK  
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL +
>LL+ ,#
DeleteServicioAdicionalLL- D
(LLD E
intLLE H
idLLI K
)LLK L
{MM 
varNN 
servicioAdicionalNN %
=NN& '
awaitNN( -
_appDBContextNN. ;
.NN; < 
ServiciosAdicionalesNN< P
.NNP Q
	FindAsyncNNQ Z
(NNZ [
idNN[ ]
)NN] ^
;NN^ _
ifOO 
(OO 
servicioAdicionalOO %
==OO& (
nullOO) -
)OO- .
{PP 
returnQQ 
NotFoundQQ #
(QQ# $
$strQQ$ F
)QQF G
;QQG H
}RR 
_appDBContextTT 
.TT  
ServiciosAdicionalesTT 2
.TT2 3
RemoveTT3 9
(TT9 :
servicioAdicionalTT: K
)TTK L
;TTL M
awaitUU 
_appDBContextUU #
.UU# $
SaveChangesAsyncUU$ 4
(UU4 5
)UU5 6
;UU6 7
returnVV 
OkVV 
(VV 
$strVV 8
)VV8 9
;VV9 :
}WW 
}XX 	
}YY 
}[[ I
nC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Controllers\ReservaController.cs
	namespace 	
GestionReservas
 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ReservaController "
:# $
ControllerBase% 3
{		 
private

 
readonly

 
AppDBContext

 %
_appDBContext

& 3
;

3 4
public 
ReservaController  
(  !
AppDBContext! -
appDBContext. :
): ;
{ 	
_appDBContext 
= 
appDBContext (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Reserva3 :
>: ;
>; <
>< =
GetReservas> I
(I J
)J K
{ 	
return 
await 
_appDBContext &
.& '
Reservas' /
./ 0
ToListAsync0 ;
(; <
)< =
;= >
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Reserva' .
>. /
>/ 0

GetReserva1 ;
(; <
int< ?
id@ B
)B C
{ 	
var 
reserva 
= 
await 
_appDBContext  -
.- .
Reservas. 6
.6 7
	FindAsync7 @
(@ A
idA C
)C D
;D E
if 
( 
reserva 
== 
null 
)  
return 
NotFound 
(  
$str  7
)7 8
;8 9
return 
Ok 
( 
reserva 
) 
; 
} 	
[!! 	
HttpPost!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
<""& '
Reserva""' .
>"". /
>""/ 0
PostReserva""1 <
(""< =
Reserva""= D
reserva""E L
)""L M
{## 	
var%% 
cliente%% 
=%% 
await%% 
_appDBContext%%  -
.%%- .
Clientes%%. 6
.%%6 7
	FindAsync%%7 @
(%%@ A
reserva%%A H
.%%H I
	IdCliente%%I R
)%%R S
;%%S T
if&& 
(&& 
cliente&& 
==&& 
null&& 
)&&  
return'' 

BadRequest'' !
(''! "
$"''" $
$str''$ 6
{''6 7
reserva''7 >
.''> ?
	IdCliente''? H
}''H I
$str''I T
"''T U
)''U V
;''V W
var** 

habitacion** 
=** 
await** "
_appDBContext**# 0
.**0 1
Habitaciones**1 =
.**= >
	FindAsync**> G
(**G H
reserva**H O
.**O P
IdHabitacion**P \
)**\ ]
;**] ^
if++ 
(++ 

habitacion++ 
==++ 
null++ "
)++" #
return,, 

BadRequest,, !
(,,! "
$",," $
$str,,$ 9
{,,9 :
reserva,,: A
.,,A B
IdHabitacion,,B N
},,N O
$str,,O Z
",,Z [
),,[ \
;,,\ ]
_appDBContext.. 
... 
Reservas.. "
..." #
Add..# &
(..& '
reserva..' .
)... /
;../ 0
await// 
_appDBContext// 
.//  
SaveChangesAsync//  0
(//0 1
)//1 2
;//2 3
return00 
CreatedAtAction00 "
(00" #
nameof00# )
(00) *

GetReserva00* 4
)004 5
,005 6
new007 :
{00; <
id00= ?
=00@ A
reserva00B I
.00I J
Id00J L
}00M N
,00N O
reserva00P W
)00W X
;00X Y
}11 	
[33 	
HttpPut33	 
(33 
$str33 
)33 
]33 
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (

PutReserva44) 3
(443 4
int444 7
id448 :
,44: ;
Reserva44< C
reserva44D K
)44K L
{55 	
if66 
(66 
id66 
<66 
$num66 
)66 
return77 

BadRequest77 !
(77! "
$str77" C
)77C D
;77D E
var99 
existingReserva99 
=99  !
await99" '
_appDBContext99( 5
.995 6
Reservas996 >
.99> ?
	FindAsync99? H
(99H I
id99I K
)99K L
;99L M
if:: 
(:: 
existingReserva:: 
==::  "
null::# '
)::' (
return;; 
NotFound;; 
(;;  
$str;;  B
);;B C
;;;C D
var>> 
cliente>> 
=>> 
await>> 
_appDBContext>>  -
.>>- .
Clientes>>. 6
.>>6 7
	FindAsync>>7 @
(>>@ A
reserva>>A H
.>>H I
	IdCliente>>I R
)>>R S
;>>S T
if?? 
(?? 
cliente?? 
==?? 
null?? 
)??  
return@@ 

BadRequest@@ !
(@@! "
$"@@" $
$str@@$ 6
{@@6 7
reserva@@7 >
.@@> ?
	IdCliente@@? H
}@@H I
$str@@I T
"@@T U
)@@U V
;@@V W
varCC 

habitacionCC 
=CC 
awaitCC "
_appDBContextCC# 0
.CC0 1
HabitacionesCC1 =
.CC= >
	FindAsyncCC> G
(CCG H
reservaCCH O
.CCO P
IdHabitacionCCP \
)CC\ ]
;CC] ^
ifDD 
(DD 

habitacionDD 
==DD 
nullDD "
)DD" #
returnEE 

BadRequestEE !
(EE! "
$"EE" $
$strEE$ 9
{EE9 :
reservaEE: A
.EEA B
IdHabitacionEEB N
}EEN O
$strEEO Z
"EEZ [
)EE[ \
;EE\ ]
existingReservaGG 
.GG 
	IdClienteGG %
=GG& '
reservaGG( /
.GG/ 0
	IdClienteGG0 9
;GG9 :
existingReservaHH 
.HH 
IdHabitacionHH (
=HH) *
reservaHH+ 2
.HH2 3
IdHabitacionHH3 ?
;HH? @
existingReservaII 
.II 
FechaEntradaII (
=II) *
reservaII+ 2
.II2 3
FechaEntradaII3 ?
??II@ B
existingReservaIIC R
.IIR S
FechaEntradaIIS _
;II_ `
existingReservaJJ 
.JJ 
FechaSalidaJJ '
=JJ( )
reservaJJ* 1
.JJ1 2
FechaSalidaJJ2 =
??JJ> @
existingReservaJJA P
.JJP Q
FechaSalidaJJQ \
;JJ\ ]
existingReservaKK 
.KK 
TotalKK !
=KK" #
reservaKK$ +
.KK+ ,
TotalKK, 1
??KK2 4
existingReservaKK5 D
.KKD E
TotalKKE J
;KKJ K
awaitMM 
_appDBContextMM 
.MM  
SaveChangesAsyncMM  0
(MM0 1
)MM1 2
;MM2 3
returnNN 
OkNN 
(NN 
existingReservaNN %
)NN% &
;NN& '
}OO 	
[QQ 	

HttpDeleteQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicRR 
asyncRR 
TaskRR 
<RR 
IActionResultRR '
>RR' (
DeleteReservaRR) 6
(RR6 7
intRR7 :
idRR; =
)RR= >
{SS 	
varTT 
reservaTT 
=TT 
awaitTT 
_appDBContextTT  -
.TT- .
ReservasTT. 6
.TT6 7
	FindAsyncTT7 @
(TT@ A
idTTA C
)TTC D
;TTD E
ifUU 
(UU 
reservaUU 
==UU 
nullUU 
)UU  
returnVV 
NotFoundVV 
(VV  
$strVV  B
)VVB C
;VVC D
_appDBContextXX 
.XX 
ReservasXX "
.XX" #
RemoveXX# )
(XX) *
reservaXX* 1
)XX1 2
;XX2 3
awaitYY 
_appDBContextYY 
.YY  
SaveChangesAsyncYY  0
(YY0 1
)YY1 2
;YY2 3
returnZZ 
OkZZ 
(ZZ 
$strZZ )
)ZZ) *
;ZZ* +
}[[ 	
}\\ 
}]] 7
qC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Controllers\HabitacionController.cs
	namespace 	
GestionReservas
 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
HabitacionController %
:& '
ControllerBase( 6
{		 
private

 
readonly

 
AppDBContext

 %
_appDBContext

& 3
;

3 4
public  
HabitacionController #
(# $
AppDBContext$ 0
appDBContext1 =
)= >
{ 	
_appDBContext 
= 
appDBContext (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3

Habitacion3 =
>= >
>> ?
>? @
GetHabitacionesA P
(P Q
)Q R
{ 	
return 
await 
_appDBContext &
.& '
Habitaciones' 3
.3 4
ToListAsync4 ?
(? @
)@ A
;A B
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '

Habitacion' 1
>1 2
>2 3
GetHabitacion4 A
(A B
intB E
idF H
)H I
{ 	
var 

habitacion 
= 
await "
_appDBContext# 0
.0 1
Habitaciones1 =
.= >
	FindAsync> G
(G H
idH J
)J K
;K L
if 
( 

habitacion 
== 
null "
)" #
return 
NotFound 
(  
$str  E
)E F
;F G
return 
Ok 
( 

habitacion  
)  !
;! "
} 	
[!! 	
HttpPost!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
<""& '

Habitacion""' 1
>""1 2
>""2 3
PostHabitacion""4 B
(""B C

Habitacion""C M

habitacion""N X
)""X Y
{## 	
_appDBContext$$ 
.$$ 
Habitaciones$$ &
.$$& '
Add$$' *
($$* +

habitacion$$+ 5
)$$5 6
;$$6 7
await%% 
_appDBContext%% 
.%%  
SaveChangesAsync%%  0
(%%0 1
)%%1 2
;%%2 3
return&& 
CreatedAtAction&& "
(&&" #
nameof&&# )
(&&) *
GetHabitacion&&* 7
)&&7 8
,&&8 9
new&&: =
{&&> ?
id&&@ B
=&&C D

habitacion&&E O
.&&O P
Id&&P R
}&&S T
,&&T U

habitacion&&V `
)&&` a
;&&a b
}'' 	
[)) 	
HttpPut))	 
()) 
$str)) 
))) 
])) 
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
PutHabitacion**) 6
(**6 7
int**7 :
id**; =
,**= >

Habitacion**? I

habitacion**J T
)**T U
{++ 	
if,, 
(,, 
id,, 
<,, 
$num,, 
),, 
return-- 

BadRequest-- !
(--! "
$str--" C
)--C D
;--D E
var// 
existingHabitacion// "
=//# $
await//% *
_appDBContext//+ 8
.//8 9
Habitaciones//9 E
.//E F
	FindAsync//F O
(//O P
id//P R
)//R S
;//S T
if00 
(00 
existingHabitacion00 "
==00# %
null00& *
)00* +
return11 
NotFound11 
(11  
$str11  E
)11E F
;11F G
existingHabitacion33 
.33 
NumeroHabitacion33 /
=330 1
string332 8
.338 9
IsNullOrEmpty339 F
(33F G

habitacion33G Q
.33Q R
NumeroHabitacion33R b
)33b c
?33d e
existingHabitacion33f x
.33x y
NumeroHabitacion	33y ‰
:
33Š ‹

habitacion
33Œ –
.
33– —
NumeroHabitacion
33— §
;
33§ ¨
existingHabitacion44 
.44 
Descripcion44 *
=44+ ,
string44- 3
.443 4
IsNullOrEmpty444 A
(44A B

habitacion44B L
.44L M
Descripcion44M X
)44X Y
?44Z [
existingHabitacion44\ n
.44n o
Descripcion44o z
:44{ |

habitacion	44} ‡
.
44‡ ˆ
Descripcion
44ˆ “
;
44“ ”
existingHabitacion55 
.55 
Precio55 %
=55& '

habitacion55( 2
.552 3
Precio553 9
??55: <
existingHabitacion55= O
.55O P
Precio55P V
;55V W
await77 
_appDBContext77 
.77  
SaveChangesAsync77  0
(770 1
)771 2
;772 3
return88 
Ok88 
(88 
existingHabitacion88 (
)88( )
;88) *
}99 	
[;; 	

HttpDelete;;	 
(;; 
$str;; 
);; 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
DeleteHabitacion<<) 9
(<<9 :
int<<: =
id<<> @
)<<@ A
{== 	
var>> 

habitacion>> 
=>> 
await>> "
_appDBContext>># 0
.>>0 1
Habitaciones>>1 =
.>>= >
	FindAsync>>> G
(>>G H
id>>H J
)>>J K
;>>K L
if?? 
(?? 

habitacion?? 
==?? 
null?? "
)??" #
return@@ 
NotFound@@ 
(@@  
$str@@  E
)@@E F
;@@F G
_appDBContextBB 
.BB 
HabitacionesBB &
.BB& '
RemoveBB' -
(BB- .

habitacionBB. 8
)BB8 9
;BB9 :
awaitCC 
_appDBContextCC 
.CC  
SaveChangesAsyncCC  0
(CC0 1
)CC1 2
;CC2 3
returnDD 
OkDD 
(DD 
$strDD ,
)DD, -
;DD- .
}EE 	
}FF 
}GG ¢;
nC:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Controllers\ClienteController.cs
	namespace 	
GestionReservas
 
. 
Controllers %
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ClienteController "
:# $
ControllerBase% 3
{		 
private

 
readonly

 
AppDBContext

 %
_appDBContext

& 3
;

3 4
public 
ClienteController  
(  !
AppDBContext! -
appDBContext. :
): ;
{ 	
_appDBContext 
= 
appDBContext (
;( )
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Cliente3 :
>: ;
>; <
>< =
GetClientes> I
(I J
)J K
{ 	
return 
await 
_appDBContext &
.& '
Clientes' /
./ 0
ToListAsync0 ;
(; <
)< =
;= >
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Cliente' .
>. /
>/ 0

GetCliente1 ;
(; <
int< ?
id@ B
)B C
{ 	
var 
cliente 
= 
await 
_appDBContext  -
.- .
Clientes. 6
.6 7
	FindAsync7 @
(@ A
idA C
)C D
;D E
if 
( 
cliente 
== 
null 
)  
{ 
return 
NotFound 
(  
$str  7
)7 8
;8 9
} 
return 
Ok 
( 
cliente 
) 
; 
}   	
["" 	
HttpPost""	 
]"" 
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '
Cliente##' .
>##. /
>##/ 0
PostCliente##1 <
(##< =
Cliente##= D
cliente##E L
)##L M
{$$ 	
_appDBContext%% 
.%% 
Clientes%% "
.%%" #
Add%%# &
(%%& '
cliente%%' .
)%%. /
;%%/ 0
await&& 
_appDBContext&& 
.&&  
SaveChangesAsync&&  0
(&&0 1
)&&1 2
;&&2 3
return'' 
Ok'' 
('' 
cliente'' 
)'' 
;'' 
}(( 	
[** 	
HttpPut**	 
(** 
$str** 
)** 
]** 
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (

PutCliente++) 3
(++3 4
int++4 7
id++8 :
,++: ;
Cliente++< C
cliente++D K
)++K L
{,, 	
if-- 
(-- 
id-- 
<-- 
$num-- 
)-- 
return-- 

BadRequest-- )
(--) *
$str--* K
)--K L
;--L M
var.. 
existingClient.. 
=..  
await..! &
_appDBContext..' 4
...4 5
Clientes..5 =
...= >
	FindAsync..> G
(..G H
id..H J
)..J K
;..K L
if// 
(// 
existingClient// 
==// !
null//" &
)//& '
return//( .

BadRequest/// 9
(//9 :
$str//: \
)//\ ]
;//] ^
existingClient11 
.11 
Cedula11 !
=11" #
string11$ *
.11* +
IsNullOrEmpty11+ 8
(118 9
cliente119 @
.11@ A
Cedula11A G
)11G H
?11I J
existingClient11K Y
.11Y Z
Cedula11Z `
:11a b
cliente11c j
.11j k
Cedula11k q
;11q r
existingClient22 
.22 
Nombre22 !
=22" #
string22$ *
.22* +
IsNullOrEmpty22+ 8
(228 9
cliente229 @
.22@ A
Nombre22A G
)22G H
?22I J
existingClient22K Y
.22Y Z
Nombre22Z `
:22a b
cliente22c j
.22j k
Nombre22k q
;22q r
existingClient33 
.33 
Apellido33 #
=33$ %
string33& ,
.33, -
IsNullOrEmpty33- :
(33: ;
cliente33; B
.33B C
Apellido33C K
)33K L
?33M N
existingClient33O ]
.33] ^
Apellido33^ f
:33g h
cliente33i p
.33p q
Apellido33q y
;33y z
existingClient44 
.44 
Telefono44 #
=44$ %
string44& ,
.44, -
IsNullOrEmpty44- :
(44: ;
cliente44; B
.44B C
Telefono44C K
)44K L
?44M N
existingClient44O ]
.44] ^
Telefono44^ f
:44g h
cliente44i p
.44p q
Telefono44q y
;44y z
existingClient55 
.55 
	Direccion55 $
=55% &
string55' -
.55- .
IsNullOrEmpty55. ;
(55; <
cliente55< C
.55C D
	Direccion55D M
)55M N
?55O P
existingClient55Q _
.55_ `
	Direccion55` i
:55j k
cliente55l s
.55s t
	Direccion55t }
;55} ~
await88 
_appDBContext88 
.88  
SaveChangesAsync88  0
(880 1
)881 2
;882 3
return99 
Ok99 
(99 
existingClient99 $
)99$ %
;99% &
}:: 	
[<< 	

HttpDelete<<	 
(<< 
$str<< 
)<< 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
DeleteCliente==) 6
(==6 7
int==7 :
id==; =
)=== >
{>> 	
var?? 
cliente?? 
=?? 
await?? 
_appDBContext??  -
.??- .
Clientes??. 6
.??6 7
	FindAsync??7 @
(??@ A
id??A C
)??C D
;??D E
if@@ 
(@@ 
cliente@@ 
==@@ 
null@@ 
)@@  
{AA 
returnBB 
NotFoundBB 
(BB  
$strBB  7
)BB7 8
;BB8 9
}CC 
_appDBContextDD 
.DD 
ClientesDD "
.DD" #
RemoveDD# )
(DD) *
clienteDD* 1
)DD1 2
;DD2 3
awaitEE 
_appDBContextEE 
.EE  
SaveChangesAsyncEE  0
(EE0 1
)EE1 2
;EE2 3
returnFF 
	NoContentFF 
(FF 
)FF 
;FF 
}GG 	
}HH 
}II ÷y
]C:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\AppDBContext.cs
	namespace 	
GestionReservas
 
{ 
public 

class 
AppDBContext 
: 
	DbContext  )
{ 
public 
AppDBContext 
( 
DbContextOptions ,
<, -
AppDBContext- 9
>9 :
options; B
)B C
:D E
baseF J
(J K
optionsK R
)R S
{T U
}V W
public

 
DbSet

 
<

 
Reserva

 
>

 
Reservas

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
DbSet 
< 
Cliente 
> 
Clientes &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 

Habitacion 
>  
Habitaciones! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 
ServicioAdicional &
>& ' 
ServiciosAdicionales( <
{= >
get? B
;B C
setD G
;G H
}I J
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
Cliente  '
>' (
(( )
entity) /
=>0 2
{ 
entity 
. 
HasKey 
( 
c 
=>  "
c# $
.$ %
Id% '
)' (
;( )
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Cedula' -
)- .
.. /

IsRequired/ 9
(9 :
): ;
.; <
HasMaxLength< H
(H I
$numI K
)K L
.L M
	IsUnicodeM V
(V W
)W X
;X Y
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Nombre' -
)- .
.. /

IsRequired/ 9
(9 :
): ;
.; <
HasMaxLength< H
(H I
$numI L
)L M
;M N
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Apellido' /
)/ 0
.0 1

IsRequired1 ;
(; <
)< =
.= >
HasMaxLength> J
(J K
$numK N
)N O
;O P
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Telefono' /
)/ 0
.0 1

IsRequired1 ;
(; <
)< =
.= >
HasMaxLength> J
(J K
$numK M
)M N
;N O
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
	Direccion' 0
)0 1
.1 2

IsRequired2 <
(< =
)= >
.> ?
HasMaxLength? K
(K L
$numL O
)O P
;P Q
} 
) 
; 
modelBuilder 
. 
Entity 
<  

Habitacion  *
>* +
(+ ,
entity, 2
=>3 5
{ 
entity 
. 
HasKey 
( 
h 
=>  "
h# $
.$ %
Id% '
)' (
;( )
entity   
.   
Property   
(    
h    !
=>  " $
h  % &
.  & '
NumeroHabitacion  ' 7
)  7 8
.  8 9

IsRequired  9 C
(  C D
)  D E
.  E F
HasMaxLength  F R
(  R S
$num  S U
)  U V
.  V W
	IsUnicode  W `
(  ` a
)  a b
;  b c
entity!! 
.!! 
Property!! 
(!!  
h!!  !
=>!!" $
h!!% &
.!!& '
Descripcion!!' 2
)!!2 3
.!!3 4

IsRequired!!4 >
(!!> ?
)!!? @
.!!@ A
HasMaxLength!!A M
(!!M N
$num!!N Q
)!!Q R
;!!R S
entity"" 
."" 
Property"" 
(""  
h""  !
=>""" $
h""% &
.""& '
Precio""' -
)""- .
."". /

IsRequired""/ 9
(""9 :
)"": ;
.""; <
HasColumnType""< I
(""I J
$str""J Z
)""Z [
;""[ \
}## 
)## 
;## 
modelBuilder%% 
.%% 
Entity%% 
<%%  
Reserva%%  '
>%%' (
(%%( )
entity%%) /
=>%%0 2
{&& 
entity'' 
.'' 
HasKey'' 
('' 
r'' 
=>''  "
r''# $
.''$ %
Id''% '
)''' (
;''( )
entity(( 
.(( 
Property(( 
(((  
r((  !
=>((" $
r((% &
.((& '
FechaEntrada((' 3
)((3 4
.((4 5

IsRequired((5 ?
(((? @
)((@ A
;((A B
entity)) 
.)) 
Property)) 
())  
r))  !
=>))" $
r))% &
.))& '
FechaSalida))' 2
)))2 3
.))3 4

IsRequired))4 >
())> ?
)))? @
;))@ A
entity** 
.** 
Property** 
(**  
r**  !
=>**" $
r**% &
.**& '
Total**' ,
)**, -
.**- .

IsRequired**. 8
(**8 9
)**9 :
.**: ;
HasColumnType**; H
(**H I
$str**I Y
)**Y Z
;**Z [
entity,, 
.,, 
HasOne,, 
(,, 
r,, 
=>,,  "
r,,# $
.,,$ %
Cliente,,% ,
),,, -
.-- 
WithMany-- 
(--  
c--  !
=>--" $
c--% &
.--& '
Reservas--' /
)--/ 0
... 
HasForeignKey.. $
(..$ %
r..% &
=>..' )
r..* +
...+ ,
	IdCliente.., 5
)..5 6
.// 
OnDelete// 
(//  
DeleteBehavior//  .
.//. /
Cascade/// 6
)//6 7
;//7 8
entity11 
.11 
HasOne11 
(11 
r11 
=>11  "
r11# $
.11$ %

Habitacion11% /
)11/ 0
.22 
WithMany22 
(22  
h22  !
=>22" $
h22% &
.22& '
Reservas22' /
)22/ 0
.33 
HasForeignKey33 $
(33$ %
r33% &
=>33' )
r33* +
.33+ ,
IdHabitacion33, 8
)338 9
.44 
OnDelete44 
(44  
DeleteBehavior44  .
.44. /
Cascade44/ 6
)446 7
;447 8
}55 
)55 
;55 
modelBuilder77 
.77 
Entity77 
<77  
ServicioAdicional77  1
>771 2
(772 3
entity773 9
=>77: <
{88 
entity99 
.99 
HasKey99 
(99 
s99 
=>99  "
s99# $
.99$ %
Id99% '
)99' (
;99( )
entity:: 
.:: 
Property:: 
(::  
s::  !
=>::" $
s::% &
.::& '
Descripcion::' 2
)::2 3
.::3 4

IsRequired::4 >
(::> ?
)::? @
.::@ A
HasMaxLength::A M
(::M N
$num::N Q
)::Q R
;::R S
entity;; 
.;; 
Property;; 
(;;  
s;;  !
=>;;" $
s;;% &
.;;& '
Costo;;' ,
);;, -
.;;- .

IsRequired;;. 8
(;;8 9
);;9 :
.;;: ;
HasColumnType;;; H
(;;H I
$str;;I Y
);;Y Z
;;;Z [
entity== 
.== 
HasOne== 
(== 
s== 
=>==  "
s==# $
.==$ %
Reserva==% ,
)==, -
.>> 
WithMany>> 
(>>  
r>>  !
=>>>" $
r>>% &
.>>& ' 
ServiciosAdicionales>>' ;
)>>; <
.?? 
HasForeignKey?? $
(??$ %
s??% &
=>??' )
s??* +
.??+ ,
	IdReserva??, 5
)??5 6
.@@ 
OnDelete@@ 
(@@  
DeleteBehavior@@  .
.@@. /
Cascade@@/ 6
)@@6 7
;@@7 8
}AA 
)AA 
;AA 
}BB 	
}CC 
publicEE 

classEE 
ClienteEE 
{FF 
publicGG 
requiredGG 
intGG 
?GG 
IdGG 
{GG  !
getGG" %
;GG% &
setGG' *
;GG* +
}GG, -
publicHH 
requiredHH 
stringHH 
?HH 
CedulaHH  &
{HH' (
getHH) ,
;HH, -
setHH. 1
;HH1 2
}HH3 4
publicII 
requiredII 
stringII 
?II 
NombreII  &
{II' (
getII) ,
;II, -
setII. 1
;II1 2
}II3 4
publicJJ 
requiredJJ 
stringJJ 
?JJ 
ApellidoJJ  (
{JJ) *
getJJ+ .
;JJ. /
setJJ0 3
;JJ3 4
}JJ5 6
publicKK 
requiredKK 
stringKK 
?KK 
TelefonoKK  (
{KK) *
getKK+ .
;KK. /
setKK0 3
;KK3 4
}KK5 6
publicLL 
requiredLL 
stringLL 
?LL 
	DireccionLL  )
{LL* +
getLL, /
;LL/ 0
setLL1 4
;LL4 5
}LL6 7
[MM 	

JsonIgnoreMM	 
]MM 
publicNN 
ListNN 
<NN 
ReservaNN 
>NN 
?NN 
ReservasNN &
{NN' (
getNN) ,
;NN, -
setNN. 1
;NN1 2
}NN3 4
}OO 
publicQQ 

classQQ 

HabitacionQQ 
{RR 
[SS 	

JsonIgnoreSS	 
]SS 
publicTT 
requiredTT 
intTT 
?TT 
IdTT 
{TT  !
getTT" %
;TT% &
setTT' *
;TT* +
}TT, -
publicUU 
requiredUU 
stringUU 
?UU 
NumeroHabitacionUU  0
{UU1 2
getUU3 6
;UU6 7
setUU8 ;
;UU; <
}UU= >
publicVV 
requiredVV 
stringVV 
?VV 
DescripcionVV  +
{VV, -
getVV. 1
;VV1 2
setVV3 6
;VV6 7
}VV8 9
publicWW 
requiredWW 
decimalWW 
?WW  
PrecioWW! '
{WW( )
getWW* -
;WW- .
setWW/ 2
;WW2 3
}WW4 5
[XX 	

JsonIgnoreXX	 
]XX 
publicYY 
ListYY 
<YY 
ReservaYY 
>YY 
?YY 
ReservasYY &
{YY' (
getYY) ,
;YY, -
setYY. 1
;YY1 2
}YY3 4
}ZZ 
public\\ 

class\\ 
Reserva\\ 
{]] 
[^^ 	

JsonIgnore^^	 
]^^ 
public__ 
required__ 
int__ 
?__ 
Id__ 
{__  !
get__" %
;__% &
set__' *
;__* +
}__, -
public`` 
required`` 
int`` 
?`` 
	IdCliente`` &
{``' (
get``) ,
;``, -
set``. 1
;``1 2
}``3 4
publicaa 
requiredaa 
intaa 
?aa 
IdHabitacionaa )
{aa* +
getaa, /
;aa/ 0
setaa1 4
;aa4 5
}aa6 7
publicbb 
requiredbb 
DateTimebb  
?bb  !
FechaEntradabb" .
{bb/ 0
getbb1 4
;bb4 5
setbb6 9
;bb9 :
}bb; <
publiccc 
requiredcc 
DateTimecc  
?cc  !
FechaSalidacc" -
{cc. /
getcc0 3
;cc3 4
setcc5 8
;cc8 9
}cc: ;
publicdd 
requireddd 
decimaldd 
?dd  
Totaldd! &
{dd' (
getdd) ,
;dd, -
setdd. 1
;dd1 2
}dd3 4
[ee 	

JsonIgnoreee	 
]ee 
publicff 
Clienteff 
?ff 
Clienteff 
{ff  !
getff" %
;ff% &
setff' *
;ff* +
}ff, -
[gg 	

JsonIgnoregg	 
]gg 
publichh 

Habitacionhh 
?hh 

Habitacionhh %
{hh& '
gethh( +
;hh+ ,
sethh- 0
;hh0 1
}hh2 3
[ii 	

JsonIgnoreii	 
]ii 
publicjj 
Listjj 
<jj 
ServicioAdicionaljj %
>jj% &
?jj& ' 
ServiciosAdicionalesjj( <
{jj= >
getjj? B
;jjB C
setjjD G
;jjG H
}jjI J
}kk 
publicmm 

classmm 
ServicioAdicionalmm "
{nn 
[oo 	

JsonIgnoreoo	 
]oo 
publicpp 
requiredpp 
intpp 
?pp 
Idpp 
{pp  !
getpp" %
;pp% &
setpp' *
;pp* +
}pp, -
publicqq 
requiredqq 
intqq 
?qq 
	IdReservaqq &
{qq' (
getqq) ,
;qq, -
setqq. 1
;qq1 2
}qq3 4
publicrr 
requiredrr 
stringrr 
?rr 
Descripcionrr  +
{rr, -
getrr. 1
;rr1 2
setrr3 6
;rr6 7
}rr8 9
publicss 
requiredss 
decimalss 
?ss  
Costoss! &
{ss' (
getss) ,
;ss, -
setss. 1
;ss1 2
}ss3 4
[tt 	

JsonIgnorett	 
]tt 
publicuu 
Reservauu 
?uu 
Reservauu 
{uu  !
getuu" %
;uu% &
setuu' *
;uu* +
}uu, -
}vv 
}ww 