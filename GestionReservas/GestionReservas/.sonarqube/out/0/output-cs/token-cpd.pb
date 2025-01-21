≠
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
;'' ª
|C:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\Migrations\20250116173949_LugarEnHabitacion.cs
	namespace 	
GestionReservas
 
. 

Migrations $
{ 
public 

partial 
class 
LugarEnHabitacion *
:+ ,
	Migration- 6
{		 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str %
,% &
type 
: 
$str %
,% &
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
, 
table 
: 
$str %
)% &
;& '
} 	
} 
} Ñm
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
{ 	
const 
string 
sqlServIdent %
=& '
$str( <
;< =
const 
string 
TReserv  
=! "
$str# -
;- .
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
sqlServIdent$ 0
,0 1
$str2 8
)8 9
,9 :
Cedula 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 F
,F G
	maxLengthH Q
:Q R
$numS U
,U V
nullableW _
:_ `
falsea f
)f g
,g h
Nombre 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
	maxLengthI R
:R S
$numT W
,W X
nullableY a
:a b
falsec h
)h i
,i j
Apellido 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
falsee j
)j k
,k l
Telefono 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: H
,H I
	maxLengthJ S
:S T
$numU W
,W X
nullableY a
:a b
falsec h
)h i
,i j
	Direccion 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; J
,J K
	maxLengthL U
:U V
$numW Z
,Z [
nullable\ d
:d e
falsef k
)k l
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder!! 
.!! 
CreateTable!! (
(!!( )
name"" 
:"" 
$str"" $
,""$ %
columns## 
:## 
table## 
=>## !
new##" %
{$$ 
Id%% 
=%% 
table%% 
.%% 
Column%% %
<%%% &
int%%& )
>%%) *
(%%* +
type%%+ /
:%%/ 0
$str%%1 6
,%%6 7
nullable%%8 @
:%%@ A
false%%B G
)%%G H
.&& 

Annotation&& #
(&&# $
sqlServIdent&&$ 0
,&&0 1
$str&&2 8
)&&8 9
,&&9 :
NumeroHabitacion'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
string''4 :
>'': ;
(''; <
type''< @
:''@ A
$str''B P
,''P Q
	maxLength''R [
:''[ \
$num''] _
,''_ `
nullable''a i
:''i j
false''k p
)''p q
,''q r
Descripcion(( 
=((  !
table((" '
.((' (
Column((( .
<((. /
string((/ 5
>((5 6
(((6 7
type((7 ;
:((; <
$str((= L
,((L M
	maxLength((N W
:((W X
$num((Y \
,((\ ]
nullable((^ f
:((f g
false((h m
)((m n
,((n o
Precio)) 
=)) 
table)) "
.))" #
Column))# )
<))) *
decimal))* 1
>))1 2
())2 3
type))3 7
:))7 8
$str))9 H
,))H I
nullable))J R
:))R S
false))T Y
)))Y Z
}** 
,** 
constraints++ 
:++ 
table++ "
=>++# %
{,, 
table-- 
.-- 

PrimaryKey-- $
(--$ %
$str--% 6
,--6 7
x--8 9
=>--: <
x--= >
.--> ?
Id--? A
)--A B
;--B C
}.. 
).. 
;.. 
migrationBuilder00 
.00 
CreateTable00 (
(00( )
name11 
:11 
TReserv11 
,11 
columns22 
:22 
table22 
=>22 !
new22" %
{33 
Id44 
=44 
table44 
.44 
Column44 %
<44% &
int44& )
>44) *
(44* +
type44+ /
:44/ 0
$str441 6
,446 7
nullable448 @
:44@ A
false44B G
)44G H
.55 

Annotation55 #
(55# $
sqlServIdent55$ 0
,550 1
$str552 8
)558 9
,559 :
	IdCliente66 
=66 
table66  %
.66% &
Column66& ,
<66, -
int66- 0
>660 1
(661 2
type662 6
:666 7
$str668 =
,66= >
nullable66? G
:66G H
true66I M
)66M N
,66N O
IdHabitacion77  
=77! "
table77# (
.77( )
Column77) /
<77/ 0
int770 3
>773 4
(774 5
type775 9
:779 :
$str77; @
,77@ A
nullable77B J
:77J K
true77L P
)77P Q
,77Q R
FechaEntrada88  
=88! "
table88# (
.88( )
Column88) /
<88/ 0
DateTime880 8
>888 9
(889 :
type88: >
:88> ?
$str88@ K
,88K L
nullable88M U
:88U V
false88W \
)88\ ]
,88] ^
FechaSalida99 
=99  !
table99" '
.99' (
Column99( .
<99. /
DateTime99/ 7
>997 8
(998 9
type999 =
:99= >
$str99? J
,99J K
nullable99L T
:99T U
false99V [
)99[ \
,99\ ]
Total:: 
=:: 
table:: !
.::! "
Column::" (
<::( )
decimal::) 0
>::0 1
(::1 2
type::2 6
:::6 7
$str::8 G
,::G H
nullable::I Q
:::Q R
false::S X
)::X Y
};; 
,;; 
constraints<< 
:<< 
table<< "
=><<# %
{== 
table>> 
.>> 

PrimaryKey>> $
(>>$ %
$str>>% 2
,>>2 3
x>>4 5
=>>>6 8
x>>9 :
.>>: ;
Id>>; =
)>>= >
;>>> ?
table?? 
.?? 

ForeignKey?? $
(??$ %
name@@ 
:@@ 
$str@@ >
,@@> ?
columnAA 
:AA 
xAA  !
=>AA" $
xAA% &
.AA& '
	IdClienteAA' 0
,AA0 1
principalTableBB &
:BB& '
$strBB( 2
,BB2 3
principalColumnCC '
:CC' (
$strCC) -
,CC- .
onDeleteDD  
:DD  !
ReferentialActionDD" 3
.DD3 4
CascadeDD4 ;
)DD; <
;DD< =
tableEE 
.EE 

ForeignKeyEE $
(EE$ %
nameFF 
:FF 
$strFF E
,FFE F
columnGG 
:GG 
xGG  !
=>GG" $
xGG% &
.GG& '
IdHabitacionGG' 3
,GG3 4
principalTableHH &
:HH& '
$strHH( 6
,HH6 7
principalColumnII '
:II' (
$strII) -
,II- .
onDeleteJJ  
:JJ  !
ReferentialActionJJ" 3
.JJ3 4
CascadeJJ4 ;
)JJ; <
;JJ< =
}KK 
)KK 
;KK 
migrationBuilderMM 
.MM 
CreateTableMM (
(MM( )
nameNN 
:NN 
$strNN ,
,NN, -
columnsOO 
:OO 
tableOO 
=>OO !
newOO" %
{PP 
IdQQ 
=QQ 
tableQQ 
.QQ 
ColumnQQ %
<QQ% &
intQQ& )
>QQ) *
(QQ* +
typeQQ+ /
:QQ/ 0
$strQQ1 6
,QQ6 7
nullableQQ8 @
:QQ@ A
falseQQB G
)QQG H
.RR 

AnnotationRR #
(RR# $
sqlServIdentRR$ 0
,RR0 1
$strRR2 8
)RR8 9
,RR9 :
	IdReservaSS 
=SS 
tableSS  %
.SS% &
ColumnSS& ,
<SS, -
intSS- 0
>SS0 1
(SS1 2
typeSS2 6
:SS6 7
$strSS8 =
,SS= >
nullableSS? G
:SSG H
trueSSI M
)SSM N
,SSN O
DescripcionTT 
=TT  !
tableTT" '
.TT' (
ColumnTT( .
<TT. /
stringTT/ 5
>TT5 6
(TT6 7
typeTT7 ;
:TT; <
$strTT= L
,TTL M
	maxLengthTTN W
:TTW X
$numTTY \
,TT\ ]
nullableTT^ f
:TTf g
falseTTh m
)TTm n
,TTn o
CostoUU 
=UU 
tableUU !
.UU! "
ColumnUU" (
<UU( )
decimalUU) 0
>UU0 1
(UU1 2
typeUU2 6
:UU6 7
$strUU8 G
,UUG H
nullableUUI Q
:UUQ R
falseUUS X
)UUX Y
}VV 
,VV 
constraintsWW 
:WW 
tableWW "
=>WW# %
{XX 
tableYY 
.YY 

PrimaryKeyYY $
(YY$ %
$strYY% >
,YY> ?
xYY@ A
=>YYB D
xYYE F
.YYF G
IdYYG I
)YYI J
;YYJ K
tableZZ 
.ZZ 

ForeignKeyZZ $
(ZZ$ %
name[[ 
:[[ 
$str[[ J
,[[J K
column\\ 
:\\ 
x\\  !
=>\\" $
x\\% &
.\\& '
	IdReserva\\' 0
,\\0 1
principalTable]] &
:]]& '
TReserv]]( /
,]]/ 0
principalColumn^^ '
:^^' (
$str^^) -
,^^- .
onDelete__  
:__  !
ReferentialAction__" 3
.__3 4
Cascade__4 ;
)__; <
;__< =
}`` 
)`` 
;`` 
migrationBuilderbb 
.bb 
CreateIndexbb (
(bb( )
namecc 
:cc 
$strcc -
,cc- .
tabledd 
:dd 
TReservdd 
,dd 
columnee 
:ee 
$stree #
)ee# $
;ee$ %
migrationBuildergg 
.gg 
CreateIndexgg (
(gg( )
namehh 
:hh 
$strhh 0
,hh0 1
tableii 
:ii 
TReservii 
,ii 
columnjj 
:jj 
$strjj &
)jj& '
;jj' (
migrationBuilderll 
.ll 
CreateIndexll (
(ll( )
namemm 
:mm 
$strmm 9
,mm9 :
tablenn 
:nn 
$strnn -
,nn- .
columnoo 
:oo 
$stroo #
)oo# $
;oo$ %
}pp 	
	protectedss 
overridess 
voidss 
Downss  $
(ss$ %
MigrationBuilderss% 5
migrationBuilderss6 F
)ssF G
{tt 	
migrationBuilderuu 
.uu 
	DropTableuu &
(uu& '
namevv 
:vv 
$strvv ,
)vv, -
;vv- .
migrationBuilderxx 
.xx 
	DropTablexx &
(xx& '
nameyy 
:yy 
$stryy  
)yy  !
;yy! "
migrationBuilder{{ 
.{{ 
	DropTable{{ &
({{& '
name|| 
:|| 
$str||  
)||  !
;||! "
migrationBuilder~~ 
.~~ 
	DropTable~~ &
(~~& '
name 
: 
$str $
)$ %
;% &
}
ÄÄ 	
}
ÅÅ 
}ÇÇ …L
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
var)) 
reserva)) 
=)) 
await)) #
_appDBContext))$ 1
.))1 2
Reservas))2 :
.)): ;
	FindAsync)); D
())D E
servicioAdicional))E V
.))V W
	IdReserva))W `
)))` a
;))a b
if** 
(** 
reserva** 
==** 
null** #
)**# $
return++ 

BadRequest++ %
(++% &
$"++& (
$str++( :
{++: ;
servicioAdicional++; L
.++L M
	IdReserva++M V
}++V W
$str++W b
"++b c
)++c d
;++d e
var.. 
existeServicio.. "
=..# $
await..% *
_appDBContext..+ 8
...8 9 
ServiciosAdicionales..9 M
.// 
AnyAsync// 
(// 
s// 
=>//  "
s//# $
.//$ %
	IdReserva//% .
==/// 1
servicioAdicional//2 C
.//C D
	IdReserva//D M
&&//N P
s//Q R
.//R S
Descripcion//S ^
==//_ a
servicioAdicional//b s
.//s t
Descripcion//t 
)	// Ä
;
//Ä Å
if00 
(00 
existeServicio00 "
)00" #
return11 

BadRequest11 %
(11% &
$str11& s
)11s t
;11t u
_appDBContext33 
.33  
ServiciosAdicionales33 2
.332 3
Add333 6
(336 7
servicioAdicional337 H
)33H I
;33I J
await44 
_appDBContext44 #
.44# $
SaveChangesAsync44$ 4
(444 5
)445 6
;446 7
var66 '
serviciosAdicionalIngresado66 /
=660 1
await662 7
_appDBContext668 E
.66E F 
ServiciosAdicionales66F Z
.66Z [
FirstOrDefaultAsync66[ n
(66n o
(66o p
p66p q
=>66r t
p66u v
.66v w
Id66w y
==66z |
servicioAdicional	66} é
.
66é è
Id
66è ë
)
66ë í
)
66í ì
;
66ì î
return88 
Ok88 
(88 
new88 
{88 
message88  '
=88( )
$str88* R
,88R S
servicioAdicional88T e
=88f g(
serviciosAdicionalIngresado	88h É
}
88Ñ Ö
)
88Ö Ü
;
88Ü á
}:: 
[<< 
HttpPut<< 
(<< 
$str<< 
)<< 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== +
>==+ , 
PutServicioAdicional==- A
(==A B
int==B E
id==F H
,==H I
ServicioAdicional==J [
servicioAdicional==\ m
)==m n
{>> 
if?? 
(?? 
id?? 
<?? 
$num?? 
)?? 
return?? "

BadRequest??# -
(??- .
$str??. O
)??O P
;??P Q
varAA %
existingServicioAdicionalAA -
=AA. /
awaitAA0 5
_appDBContextAA6 C
.AAC D 
ServiciosAdicionalesAAD X
.AAX Y
	FindAsyncAAY b
(AAb c
idAAc e
)AAe f
;AAf g
ifBB 
(BB %
existingServicioAdicionalBB -
==BB. 0
nullBB1 5
)BB5 6
returnCC 
NotFoundCC #
(CC# $
$strCC$ Q
)CCQ R
;CCR S
varEE 
reservaEE 
=EE 
awaitEE #
_appDBContextEE$ 1
.EE1 2
ReservasEE2 :
.EE: ;
	FindAsyncEE; D
(EED E
servicioAdicionalEEE V
.EEV W
	IdReservaEEW `
)EE` a
;EEa b
ifFF 
(FF 
reservaFF 
==FF 
nullFF #
)FF# $
returnGG 

BadRequestGG %
(GG% &
$"GG& (
$strGG( :
{GG: ;
servicioAdicionalGG; L
.GGL M
	IdReservaGGM V
}GGV W
$strGGW b
"GGb c
)GGc d
;GGd e%
existingServicioAdicionalII )
.II) *
DescripcionII* 5
=II6 7
stringII8 >
.II> ?
IsNullOrEmptyII? L
(IIL M
servicioAdicionalIIM ^
.II^ _
DescripcionII_ j
)IIj k
?JJ %
existingServicioAdicionalJJ /
.JJ/ 0
DescripcionJJ0 ;
:KK 
servicioAdicionalKK '
.KK' (
DescripcionKK( 3
;KK3 4%
existingServicioAdicionalLL )
.LL) *
CostoLL* /
=LL0 1
servicioAdicionalLL2 C
.LLC D
CostoLLD I
??LLJ L%
existingServicioAdicionalLLM f
.LLf g
CostoLLg l
;LLl m%
existingServicioAdicionalMM )
.MM) *
	IdReservaMM* 3
=MM4 5
servicioAdicionalMM6 G
.MMG H
	IdReservaMMH Q
;MMQ R
awaitOO 
_appDBContextOO #
.OO# $
SaveChangesAsyncOO$ 4
(OO4 5
)OO5 6
;OO6 7
returnPP 
OkPP 
(PP 
newPP 
{PP 
messagePP  '
=PP( )
$strPP* P
,PPP Q
servicioAdicionalPPR c
=PPd e%
existingServicioAdicionalPPf 
}
PPÄ Å
)
PPÅ Ç
;
PPÇ É
}QQ 
[SS 

HttpDeleteSS 
(SS 
$strSS 
)SS 
]SS  
publicTT 
asyncTT 
TaskTT 
<TT 
IActionResultTT +
>TT+ ,#
DeleteServicioAdicionalTT- D
(TTD E
intTTE H
idTTI K
)TTK L
{UU 
varVV 
servicioAdicionalVV %
=VV& '
awaitVV( -
_appDBContextVV. ;
.VV; < 
ServiciosAdicionalesVV< P
.VVP Q
	FindAsyncVVQ Z
(VVZ [
idVV[ ]
)VV] ^
;VV^ _
ifWW 
(WW 
servicioAdicionalWW %
==WW& (
nullWW) -
)WW- .
{XX 
returnYY 
NotFoundYY #
(YY# $
$strYY$ F
)YYF G
;YYG H
}ZZ 
_appDBContext\\ 
.\\  
ServiciosAdicionales\\ 2
.\\2 3
Remove\\3 9
(\\9 :
servicioAdicional\\: K
)\\K L
;\\L M
await]] 
_appDBContext]] #
.]]# $
SaveChangesAsync]]$ 4
(]]4 5
)]]5 6
;]]6 7
return^^ 
Ok^^ 
(^^ 
$str^^ 8
)^^8 9
;^^9 :
}__ 
}`` 	
}aa 
}cc Åt
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
{## 	
if$$ 
($$ 
reserva$$ 
.$$ 
FechaEntrada$$ $
>=$$% '
reserva$$( /
.$$/ 0
FechaSalida$$0 ;
)$$; <
return%% 

BadRequest%% !
(%%! "
$str%%" ^
)%%^ _
;%%_ `
var'' 
clienteExiste'' 
='' 
await''  %
_appDBContext''& 3
.''3 4
Clientes''4 <
.''< =
AnyAsync''= E
(''E F
c''F G
=>''H J
c''K L
.''L M
Id''M O
==''P R
reserva''S Z
.''Z [
	IdCliente''[ d
)''d e
;''e f
if(( 
((( 
!(( 
clienteExiste(( 
)(( 
return)) 

BadRequest)) !
())! "
$"))" $
$str))$ 6
{))6 7
reserva))7 >
.))> ?
	IdCliente))? H
}))H I
$str))I T
"))T U
)))U V
;))V W
var++ 
habitacionExiste++  
=++! "
await++# (
_appDBContext++) 6
.++6 7
Habitaciones++7 C
.++C D
AnyAsync++D L
(++L M
h++M N
=>++O Q
h++R S
.++S T
Id++T V
==++W Y
reserva++Z a
.++a b
IdHabitacion++b n
)++n o
;++o p
if,, 
(,, 
!,, 
habitacionExiste,, !
),,! "
return-- 

BadRequest-- !
(--! "
$"--" $
$str--$ 9
{--9 :
reserva--: A
.--A B
IdHabitacion--B N
}--N O
$str--O Z
"--Z [
)--[ \
;--\ ]
var// 
habitacionReservada// #
=//$ %
await//& +
_appDBContext//, 9
.//9 :
Reservas//: B
.//B C
AnyAsync//C K
(//K L
r//L M
=>//N P
r00 
.00 
IdHabitacion00 
==00 
reserva00 %
.00% &
IdHabitacion00& 2
&&003 5
(11 
(22 
reserva22 
.22 
FechaEntrada22 %
>=22& (
r22) *
.22* +
FechaEntrada22+ 7
&&228 :
reserva22; B
.22B C
FechaEntrada22C O
<22P Q
r22R S
.22S T
FechaSalida22T _
)22_ `
||22a c
(33 
reserva33 
.33 
FechaSalida33 $
>33% &
r33' (
.33( )
FechaEntrada33) 5
&&336 8
reserva339 @
.33@ A
FechaSalida33A L
<=33M O
r33P Q
.33Q R
FechaSalida33R ]
)33] ^
||33_ a
(44 
reserva44 
.44 
FechaEntrada44 %
<=44& (
r44) *
.44* +
FechaEntrada44+ 7
&&448 :
reserva44; B
.44B C
FechaSalida44C N
>=44O Q
r44R S
.44S T
FechaSalida44T _
)44_ `
)55 
)55 
;55 
if77 
(77 
habitacionReservada77 #
)77# $
return88 

BadRequest88 !
(88! "
$str88" g
)88g h
;88h i
if;; 
(;; 
habitacionReservada;; #
);;# $
return<< 

BadRequest<< !
(<<! "
$str<<" g
)<<g h
;<<h i
_appDBContext>> 
.>> 
Reservas>> "
.>>" #
Add>># &
(>>& '
reserva>>' .
)>>. /
;>>/ 0
await?? 
_appDBContext?? 
.??  
SaveChangesAsync??  0
(??0 1
)??1 2
;??2 3
varAA 
reservaIngresadaAA  
=AA! "
awaitAA# (
_appDBContextAA) 6
.AA6 7
ReservasAA7 ?
.AA? @
FirstOrDefaultAsyncAA@ S
(AAS T
(AAT U
pAAU V
=>AAW Y
pAAZ [
.AA[ \
IdAA\ ^
==AA_ a
reservaAAb i
.AAi j
IdAAj l
)AAl m
)AAm n
;AAn o
returnCC 
OkCC 
(CC 
newCC 
{CC 
messageCC #
=CC$ %
$strCC& @
,CC@ A
reservaCCB I
=CCJ K
reservaIngresadaCCL \
}CC] ^
)CC^ _
;CC_ `
}EE 	
[GG 	
HttpPutGG	 
(GG 
$strGG 
)GG 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (

PutReservaHH) 3
(HH3 4
intHH4 7
idHH8 :
,HH: ;
ReservaHH< C
reservaHHD K
)HHK L
{II 	
ifJJ 
(JJ 
idJJ 
<JJ 
$numJJ 
)JJ 
returnKK 

BadRequestKK !
(KK! "
$strKK" D
)KKD E
;KKE F
varMM 
existingReservaMM 
=MM  !
awaitMM" '
_appDBContextMM( 5
.MM5 6
ReservasMM6 >
.MM> ?
	FindAsyncMM? H
(MMH I
idMMI K
)MMK L
;MML M
ifNN 
(NN 
existingReservaNN 
==NN  "
nullNN# '
)NN' (
returnOO 
NotFoundOO 
(OO  
$strOO  C
)OOC D
;OOD E
ifQQ 
(QQ 
reservaQQ 
.QQ 
FechaEntradaQQ $
>=QQ% '
reservaQQ( /
.QQ/ 0
FechaSalidaQQ0 ;
)QQ; <
returnRR 

BadRequestRR !
(RR! "
$strRR" ^
)RR^ _
;RR_ `
varTT 
clienteExisteTT 
=TT 
awaitTT  %
_appDBContextTT& 3
.TT3 4
ClientesTT4 <
.TT< =
AnyAsyncTT= E
(TTE F
cTTF G
=>TTH J
cTTK L
.TTL M
IdTTM O
==TTP R
reservaTTS Z
.TTZ [
	IdClienteTT[ d
)TTd e
;TTe f
ifUU 
(UU 
!UU 
clienteExisteUU 
)UU 
returnVV 

BadRequestVV !
(VV! "
$"VV" $
$strVV$ 6
{VV6 7
reservaVV7 >
.VV> ?
	IdClienteVV? H
}VVH I
$strVVI T
"VVT U
)VVU V
;VVV W
varXX 
habitacionExisteXX  
=XX! "
awaitXX# (
_appDBContextXX) 6
.XX6 7
HabitacionesXX7 C
.XXC D
AnyAsyncXXD L
(XXL M
hXXM N
=>XXO Q
hXXR S
.XXS T
IdXXT V
==XXW Y
reservaXXZ a
.XXa b
IdHabitacionXXb n
)XXn o
;XXo p
ifYY 
(YY 
!YY 
habitacionExisteYY !
)YY! "
returnZZ 

BadRequestZZ !
(ZZ! "
$"ZZ" $
$strZZ$ 9
{ZZ9 :
reservaZZ: A
.ZZA B
IdHabitacionZZB N
}ZZN O
$strZZO Z
"ZZZ [
)ZZ[ \
;ZZ\ ]
var]] 
habitacionReservada]] #
=]]$ %
await]]& +
_appDBContext]], 9
.]]9 :
Reservas]]: B
.]]B C
AnyAsync]]C K
(]]K L
r]]L M
=>]]N P
r^^ 
.^^ 
IdHabitacion^^ 
==^^ 
reserva^^ $
.^^$ %
IdHabitacion^^% 1
&&^^2 4
r__ 
.__ 
Id__ 
!=__ 
id__ 
&&__ 
(`` 
(aa 
reservaaa 
.aa 
FechaEntradaaa $
>=aa% '
raa( )
.aa) *
FechaEntradaaa* 6
&&aa7 9
reservaaa: A
.aaA B
FechaEntradaaaB N
<aaO P
raaQ R
.aaR S
FechaSalidaaaS ^
)aa^ _
||aa` b
(bb 
reservabb 
.bb 
FechaSalidabb #
>bb$ %
rbb& '
.bb' (
FechaEntradabb( 4
&&bb5 7
reservabb8 ?
.bb? @
FechaSalidabb@ K
<=bbL N
rbbO P
.bbP Q
FechaSalidabbQ \
)bb\ ]
||bb^ `
(cc 
reservacc 
.cc 
FechaEntradacc $
<=cc% '
rcc( )
.cc) *
FechaEntradacc* 6
&&cc7 9
reservacc: A
.ccA B
FechaSalidaccB M
>=ccN P
rccQ R
.ccR S
FechaSalidaccS ^
)cc^ _
)dd 
)dd 
;dd 
ifee 
(ee 
habitacionReservadaee #
)ee# $
returnff 

BadRequestff !
(ff! "
$strff" g
)ffg h
;ffh i
existingReservahh 
.hh 
	IdClientehh %
=hh& '
reservahh( /
.hh/ 0
	IdClientehh0 9
;hh9 :
existingReservaii 
.ii 
IdHabitacionii (
=ii) *
reservaii+ 2
.ii2 3
IdHabitacionii3 ?
;ii? @
existingReservajj 
.jj 
FechaEntradajj (
=jj) *
reservajj+ 2
.jj2 3
FechaEntradajj3 ?
??jj@ B
existingReservajjC R
.jjR S
FechaEntradajjS _
;jj_ `
existingReservakk 
.kk 
FechaSalidakk '
=kk( )
reservakk* 1
.kk1 2
FechaSalidakk2 =
??kk> @
existingReservakkA P
.kkP Q
FechaSalidakkQ \
;kk\ ]
existingReservall 
.ll 
Totalll !
=ll" #
reservall$ +
.ll+ ,
Totalll, 1
??ll2 4
existingReservall5 D
.llD E
TotalllE J
;llJ K
awaitnn 
_appDBContextnn 
.nn  
SaveChangesAsyncnn  0
(nn0 1
)nn1 2
;nn2 3
returnoo 
Okoo 
(oo 
newoo 
{oo 
messageoo #
=oo$ %
$stroo& A
,ooA B

habitacionooC M
=ooN O
existingReservaooP _
}oo` a
)ooa b
;oob c
}pp 	
[rr 	

HttpDeleterr	 
(rr 
$strrr 
)rr 
]rr 
publicss 
asyncss 
Taskss 
<ss 
IActionResultss '
>ss' (
DeleteReservass) 6
(ss6 7
intss7 :
idss; =
)ss= >
{tt 	
varuu 
reservauu 
=uu 
awaituu 
_appDBContextuu  -
.uu- .
Reservasuu. 6
.uu6 7
	FindAsyncuu7 @
(uu@ A
iduuA C
)uuC D
;uuD E
ifvv 
(vv 
reservavv 
==vv 
nullvv 
)vv  
returnww 
NotFoundww 
(ww  
$strww  C
)wwC D
;wwD E
varzz $
tieneServiciosVinculadoszz (
=zz) *
awaitzz+ 0
_appDBContextzz1 >
.zz> ? 
ServiciosAdicionaleszz? S
.{{ 
AnyAsync{{ 
({{ 
s{{ 
=>{{ 
s{{  
.{{  !
	IdReserva{{! *
=={{+ -
id{{. 0
){{0 1
;{{1 2
if}} 
(}} $
tieneServiciosVinculados}} (
)}}( )
return~~ 

BadRequest~~ !
(~~! "
$str~~" r
)~~r s
;~~s t
_appDBContext
ÄÄ 
.
ÄÄ 
Reservas
ÄÄ "
.
ÄÄ" #
Remove
ÄÄ# )
(
ÄÄ) *
reserva
ÄÄ* 1
)
ÄÄ1 2
;
ÄÄ2 3
await
ÅÅ 
_appDBContext
ÅÅ 
.
ÅÅ  
SaveChangesAsync
ÅÅ  0
(
ÅÅ0 1
)
ÅÅ1 2
;
ÅÅ2 3
return
ÉÉ 
Ok
ÉÉ 
(
ÉÉ 
$str
ÉÉ 7
)
ÉÉ7 8
;
ÉÉ8 9
}
ÑÑ 	
}
ÜÜ 
}áá ¥E
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
{## 	
var%% 
existeHabitacion%%  
=%%! "
await%%# (
_appDBContext%%) 6
.%%6 7
Habitaciones%%7 C
.%%C D
AnyAsync%%D L
(%%L M
h%%M N
=>%%O Q
h%%R S
.%%S T
NumeroHabitacion%%T d
==%%e g

habitacion%%h r
.%%r s
NumeroHabitacion	%%s É
)
%%É Ñ
;
%%Ñ Ö
if&& 
(&& 
existeHabitacion&&  
)&&  !
return'' 

BadRequest'' !
(''! "
$str''" Q
)''Q R
;''R S
_appDBContext)) 
.)) 
Habitaciones)) &
.))& '
Add))' *
())* +

habitacion))+ 5
)))5 6
;))6 7
await** 
_appDBContext** 
.**  
SaveChangesAsync**  0
(**0 1
)**1 2
;**2 3
var,, 
habitacionIngresada,, #
=,,$ %
await,,& +
_appDBContext,,, 9
.,,9 :
Habitaciones,,: F
.,,F G
FirstOrDefaultAsync,,G Z
(,,Z [
(,,[ \
p,,\ ]
=>,,^ `
p,,a b
.,,b c
Id,,c e
==,,f h

habitacion,,i s
.,,s t
Id,,t v
),,v w
),,w x
;,,x y
return.. 
Ok.. 
(.. 
new.. 
{.. 
message.. #
=..$ %
$str..& F
,..F G

habitacion..H R
=..S T
habitacionIngresada..U h
}..i j
)..j k
;..k l
}00 	
[22 	
HttpPut22	 
(22 
$str22 
)22 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
PutHabitacion33) 6
(336 7
int337 :
id33; =
,33= >

Habitacion33? I

habitacion33J T
)33T U
{44 	
if55 
(55 
id55 
<55 
$num55 
)55 
return66 

BadRequest66 !
(66! "
$str66" C
)66C D
;66D E
var88 
existingHabitacion88 "
=88# $
await88% *
_appDBContext88+ 8
.888 9
Habitaciones889 E
.88E F
	FindAsync88F O
(88O P
id88P R
)88R S
;88S T
if99 
(99 
existingHabitacion99 "
==99# %
null99& *
)99* +
return:: 
NotFound:: 
(::  
$str::  E
)::E F
;::F G
existingHabitacion<< 
.<< 
NumeroHabitacion<< /
=<<0 1
string<<2 8
.<<8 9
IsNullOrEmpty<<9 F
(<<F G

habitacion<<G Q
.<<Q R
NumeroHabitacion<<R b
)<<b c
?<<d e
existingHabitacion<<f x
.<<x y
NumeroHabitacion	<<y â
:
<<ä ã

habitacion
<<å ñ
.
<<ñ ó
NumeroHabitacion
<<ó ß
;
<<ß ®
existingHabitacion== 
.== 
Descripcion== *
===+ ,
string==- 3
.==3 4
IsNullOrEmpty==4 A
(==A B

habitacion==B L
.==L M
Descripcion==M X
)==X Y
?==Z [
existingHabitacion==\ n
.==n o
Descripcion==o z
:=={ |

habitacion	==} á
.
==á à
Descripcion
==à ì
;
==ì î
existingHabitacion>> 
.>> 
Precio>> %
=>>& '

habitacion>>( 2
.>>2 3
Precio>>3 9
??>>: <
existingHabitacion>>= O
.>>O P
Precio>>P V
;>>V W
existingHabitacion?? 
.?? 
Lugar?? $
=??$ %

habitacion??% /
.??/ 0
Lugar??0 5
????6 8
existingHabitacion??9 K
.??K L
Lugar??L Q
;??Q R
awaitAA 
_appDBContextAA 
.AA  
SaveChangesAsyncAA  0
(AA0 1
)AA1 2
;AA2 3
returnCC 
OkCC 
(CC 
newCC 
{CC 
messageCC #
=CC$ %
$strCC& D
,CCD E

habitacionCCF P
=CCQ R
existingHabitacionCCS e
}CCf g
)CCg h
;CCh i
}EE 	
[HH 	

HttpDeleteHH	 
(HH 
$strHH 
)HH 
]HH 
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
DeleteHabitacionII) 9
(II9 :
intII: =
idII> @
)II@ A
{JJ 	
varKK 

habitacionKK 
=KK 
awaitKK "
_appDBContextKK# 0
.KK0 1
HabitacionesKK1 =
.KK= >
	FindAsyncKK> G
(KKG H
idKKH J
)KKJ K
;KKK L
ifLL 
(LL 

habitacionLL 
==LL 
nullLL "
)LL" #
returnMM 
NotFoundMM 
(MM  
$strMM  F
)MMF G
;MMG H
varOO 
tieneReservasOO 
=OO 
awaitOO  %
_appDBContextOO& 3
.OO3 4
ReservasOO4 <
.OO< =
AnyAsyncOO= E
(OOE F
rOOF G
=>OOH J
rOOK L
.OOL M
IdHabitacionOOM Y
==OOZ \
idOO] _
)OO_ `
;OO` a
ifPP 
(PP 
tieneReservasPP 
)PP 
returnQQ 

BadRequestQQ !
(QQ! "
$strQQ" g
)QQg h
;QQh i
_appDBContextSS 
.SS 
HabitacionesSS &
.SS& '
RemoveSS' -
(SS- .

habitacionSS. 8
)SS8 9
;SS9 :
awaitTT 
_appDBContextTT 
.TT  
SaveChangesAsyncTT  0
(TT0 1
)TT1 2
;TT2 3
returnVV 
OkVV 
(VV 
$strVV :
)VV: ;
;VV; <
}WW 	
}YY 
}ZZ ∏t
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
[!! 	
HttpPost!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
<""& '
Cliente""' .
>"". /
>""/ 0
PostCliente""1 <
(""< =
Cliente""= D
cliente""E L
)""L M
{## 	
if$$ 
($$ 
string$$ 
.$$ 
IsNullOrEmpty$$ $
($$$ %
cliente$$% ,
.$$, -
Cedula$$- 3
)$$3 4
)$$4 5
{%% 
return&& 

BadRequest&& !
(&&! "
$str&&" H
)&&H I
;&&I J
}'' 
if(( 
((( 
!(( $
ValidarCedulaEcuadoriana(( )
((() *
cliente((* 1
.((1 2
Cedula((2 8
)((8 9
)((9 :
{)) 
return** 

BadRequest** !
(**! "
$str**" ;
)**; <
;**< =
}++ 
var,, 
existeCliente,, 
=,, 
await,,  %
_appDBContext,,& 3
.,,3 4
Clientes,,4 <
.,,< =
AnyAsync,,= E
(,,E F
c,,F G
=>,,H J
c,,K L
.,,L M
Cedula,,M S
==,,T V
cliente,,W ^
.,,^ _
Cedula,,_ e
),,e f
;,,f g
if-- 
(-- 
existeCliente-- 
)-- 
return.. 

BadRequest.. !
(..! "
$str.." M
)..M N
;..N O
_appDBContext00 
.00 
Clientes00 "
.00" #
Add00# &
(00& '
cliente00' .
)00. /
;00/ 0
await11 
_appDBContext11 
.11  
SaveChangesAsync11  0
(110 1
)111 2
;112 3
var33 
clienteIngresado33  
=33! "
await33# (
_appDBContext33) 6
.336 7
Clientes337 ?
.33? @
FirstOrDefaultAsync33@ S
(33S T
(33T U
p33U V
=>33W Y
p33Z [
.33[ \
Id33\ ^
==33_ a
cliente33b i
.33i j
Id33j l
)33l m
)33m n
;33n o
return44 
Ok44 
(44 
new44 
{44 
message44 #
=44$ %
$str44& C
,44C D
cliente44E L
=44M N
clienteIngresado44O _
}44` a
)44a b
;44b c
}55 	
private77 
static77 
bool77 $
ValidarCedulaEcuadoriana77 4
(774 5
string775 ;
cedula77< B
)77B C
{88 	
if99 
(99 
cedula99 
.99 
Length99 
!=99  
$num99! #
)99# $
{:: 
return;; 
false;; 
;;; 
}<< 
if>> 
(>> 
!>> 
cedula>> 
.>> 
All>> 
(>> 
char>>  
.>>  !
IsDigit>>! (
)>>( )
)>>) *
{?? 
return@@ 
false@@ 
;@@ 
}AA 
intCC 
	provinciaCC 
=CC 
intCC 
.CC  
ParseCC  %
(CC% &
cedulaCC& ,
.CC, -
	SubstringCC- 6
(CC6 7
$numCC7 8
,CC8 9
$numCC: ;
)CC; <
)CC< =
;CC= >
ifEE 
(EE 
	provinciaEE 
<EE 
$numEE 
||EE  
	provinciaEE! *
>EE+ ,
$numEE- /
)EE/ 0
{FF 
returnGG 
falseGG 
;GG 
}HH 
intJJ 
[JJ 
]JJ 
coeficientesJJ 
=JJ  
{JJ! "
$numJJ# $
,JJ$ %
$numJJ& '
,JJ' (
$numJJ) *
,JJ* +
$numJJ, -
,JJ- .
$numJJ/ 0
,JJ0 1
$numJJ2 3
,JJ3 4
$numJJ5 6
,JJ6 7
$numJJ8 9
,JJ9 :
$numJJ; <
}JJ= >
;JJ> ?
intKK 
sumaKK 
=KK 
$numKK 
;KK 
forMM 
(MM 
intMM 
iMM 
=MM 
$numMM 
;MM 
iMM 
<MM 
$numMM  !
;MM! "
iMM# $
++MM$ &
)MM& '
{NN 
intOO 
digitoOO 
=OO 
intOO  
.OO  !
ParseOO! &
(OO& '
cedulaOO' -
[OO- .
iOO. /
]OO/ 0
.OO0 1
ToStringOO1 9
(OO9 :
)OO: ;
)OO; <
;OO< =
intPP 
productoPP 
=PP 
digitoPP %
*PP& '
coeficientesPP( 4
[PP4 5
iPP5 6
]PP6 7
;PP7 8
sumaQQ 
+=QQ 
(QQ 
productoQQ !
>=QQ" $
$numQQ% '
)QQ' (
?QQ) *
productoQQ+ 3
-QQ4 5
$numQQ6 7
:QQ8 9
productoQQ: B
;QQB C
}RR 
intTT 
verificadorTT 
=TT 
intTT !
.TT! "
ParseTT" '
(TT' (
cedulaTT( .
[TT. /
$numTT/ 0
]TT0 1
.TT1 2
ToStringTT2 :
(TT: ;
)TT; <
)TT< =
;TT= >
intUU 
moduloUU 
=UU 
sumaUU 
%UU 
$numUU  "
;UU" #
intVV 
digitoVerificacionVV "
=VV# $
(VV% &
moduloVV& ,
==VV- /
$numVV0 1
)VV1 2
?VV3 4
$numVV5 6
:VV7 8
$numVV9 ;
-VV< =
moduloVV> D
;VVD E
returnXX 
digitoVerificacionXX %
==XX& (
verificadorXX) 4
;XX4 5
}YY 	
[[[ 	
HttpPut[[	 
([[ 
$str[[ 
)[[ 
][[ 
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (

PutCliente\\) 3
(\\3 4
int\\4 7
id\\8 :
,\\: ;
Cliente\\< C
cliente\\D K
)\\K L
{]] 	
if^^ 
(^^ 
string^^ 
.^^ 
IsNullOrEmpty^^ $
(^^$ %
cliente^^% ,
.^^, -
Cedula^^- 3
)^^3 4
)^^4 5
{__ 
return`` 

BadRequest`` !
(``! "
$str``" H
)``H I
;``I J
}aa 
ifbb 
(bb 
!bb $
ValidarCedulaEcuadorianabb )
(bb) *
clientebb* 1
.bb1 2
Cedulabb2 8
)bb8 9
)bb9 :
{cc 
returndd 

BadRequestdd !
(dd! "
$strdd" ;
)dd; <
;dd< =
}ee 
varff 
existeClienteff 
=ff 
awaitff  %
_appDBContextff& 3
.ff3 4
Clientesff4 <
.ff< =
AnyAsyncff= E
(ffE F
cffF G
=>ffH J
cffK L
.ffL M
CedulaffM S
==ffT V
clienteffW ^
.ff^ _
Cedulaff_ e
&&fff h
cffi j
.ffj k
Idffk m
!=ffn p
idffq s
)ffs t
;fft u
ifgg 
(gg 
existeClientegg 
)gg 
returnhh 

BadRequesthh !
(hh! "
$strhh" M
)hhM N
;hhN O
ifjj 
(jj 
idjj 
<jj 
$numjj 
)jj 
returnjj 

BadRequestjj )
(jj) *
$strjj* K
)jjK L
;jjL M
varkk 
existingClientkk 
=kk  
awaitkk! &
_appDBContextkk' 4
.kk4 5
Clienteskk5 =
.kk= >
	FindAsynckk> G
(kkG H
idkkH J
)kkJ K
;kkK L
ifll 
(ll 
existingClientll 
==ll !
nullll" &
)ll& '
returnll( .

BadRequestll/ 9
(ll9 :
$strll: \
)ll\ ]
;ll] ^
existingClientnn 
.nn 
Cedulann !
=nn" #
stringnn$ *
.nn* +
IsNullOrEmptynn+ 8
(nn8 9
clientenn9 @
.nn@ A
CedulannA G
)nnG H
?nnI J
existingClientnnK Y
.nnY Z
CedulannZ `
:nna b
clientennc j
.nnj k
Cedulannk q
;nnq r
existingClientoo 
.oo 
Nombreoo !
=oo" #
stringoo$ *
.oo* +
IsNullOrEmptyoo+ 8
(oo8 9
clienteoo9 @
.oo@ A
NombreooA G
)ooG H
?ooI J
existingClientooK Y
.ooY Z
NombreooZ `
:ooa b
clienteooc j
.ooj k
Nombreook q
;ooq r
existingClientpp 
.pp 
Apellidopp #
=pp$ %
stringpp& ,
.pp, -
IsNullOrEmptypp- :
(pp: ;
clientepp; B
.ppB C
ApellidoppC K
)ppK L
?ppM N
existingClientppO ]
.pp] ^
Apellidopp^ f
:ppg h
clienteppi p
.ppp q
Apellidoppq y
;ppy z
existingClientqq 
.qq 
Telefonoqq #
=qq$ %
stringqq& ,
.qq, -
IsNullOrEmptyqq- :
(qq: ;
clienteqq; B
.qqB C
TelefonoqqC K
)qqK L
?qqM N
existingClientqqO ]
.qq] ^
Telefonoqq^ f
:qqg h
clienteqqi p
.qqp q
Telefonoqqq y
;qqy z
existingClientrr 
.rr 
	Direccionrr $
=rr% &
stringrr' -
.rr- .
IsNullOrEmptyrr. ;
(rr; <
clienterr< C
.rrC D
	DireccionrrD M
)rrM N
?rrO P
existingClientrrQ _
.rr_ `
	Direccionrr` i
:rrj k
clienterrl s
.rrs t
	Direccionrrt }
;rr} ~
awaituu 
_appDBContextuu 
.uu  
SaveChangesAsyncuu  0
(uu0 1
)uu1 2
;uu2 3
returnvv 
Okvv 
(vv 
newvv 
{vv 
messagevv #
=vv$ %
$strvv& A
,vvA B
clientevvC J
=vvK L
existingClientvvM [
}vv\ ]
)vv] ^
;vv^ _
}ww 	
[zz 	

HttpDeletezz	 
(zz 
$strzz 
)zz 
]zz 
public{{ 
async{{ 
Task{{ 
<{{ 
IActionResult{{ '
>{{' (
DeleteCliente{{) 6
({{6 7
int{{7 :
id{{; =
){{= >
{|| 	
var}} 
cliente}} 
=}} 
await}} 
_appDBContext}}  -
.}}- .
Clientes}}. 6
.}}6 7
	FindAsync}}7 @
(}}@ A
id}}A C
)}}C D
;}}D E
if~~ 
(~~ 
cliente~~ 
==~~ 
null~~ 
)~~  
return 
NotFound 
(  
$str  C
)C D
;D E
var
ÅÅ 
tieneReservas
ÅÅ 
=
ÅÅ 
await
ÅÅ  %
_appDBContext
ÅÅ& 3
.
ÅÅ3 4
Reservas
ÅÅ4 <
.
ÅÅ< =
AnyAsync
ÅÅ= E
(
ÅÅE F
r
ÅÅF G
=>
ÅÅH J
r
ÅÅK L
.
ÅÅL M
	IdCliente
ÅÅM V
==
ÅÅW Y
id
ÅÅZ \
)
ÅÅ\ ]
;
ÅÅ] ^
if
ÇÇ 
(
ÇÇ 
tieneReservas
ÇÇ 
)
ÇÇ 
return
ÉÉ 

BadRequest
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" d
)
ÉÉd e
;
ÉÉe f
_appDBContext
ÖÖ 
.
ÖÖ 
Clientes
ÖÖ "
.
ÖÖ" #
Remove
ÖÖ# )
(
ÖÖ) *
cliente
ÖÖ* 1
)
ÖÖ1 2
;
ÖÖ2 3
await
ÜÜ 
_appDBContext
ÜÜ 
.
ÜÜ  
SaveChangesAsync
ÜÜ  0
(
ÜÜ0 1
)
ÜÜ1 2
;
ÜÜ2 3
return
àà 
Ok
àà 
(
àà 
$str
àà 7
)
àà7 8
;
àà8 9
}
ââ 	
}
ää 
}ãã ˝©
]C:\Users\leona\source\repos\GestionDeReservas\GestionReservas\GestionReservas\AppDBContext.cs
	namespace 	
GestionReservas
 
{ 
public 

class 
AppDBContext 
: 
	DbContext  )
{ 
public		 
AppDBContext		 
(		 
DbContextOptions		 ,
<		, -
AppDBContext		- 9
>		9 :
options		; B
)		B C
:		D E
base		F J
(		J K
options		K R
)		R S
{		T U
}		V W
public 
DbSet 
< 
Reserva 
> 
Reservas &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Cliente 
> 
Clientes &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 

Habitacion 
>  
Habitaciones! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 
ServicioAdicional &
>& ' 
ServiciosAdicionales( <
{= >
get? B
;B C
setD G
;G H
}I J
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
Cliente  '
>' (
(( )
entity) /
=>0 2
{ 
entity 
. 
HasKey 
( 
c 
=>  "
c# $
.$ %
Id% '
)' (
;( )
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Cedula' -
)- .
.. /

IsRequired/ 9
(9 :
): ;
.; <
HasMaxLength< H
(H I
$numI K
)K L
.L M
	IsUnicodeM V
(V W
)W X
;X Y
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Nombre' -
)- .
.. /

IsRequired/ 9
(9 :
): ;
.; <
HasMaxLength< H
(H I
$numI L
)L M
;M N
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Apellido' /
)/ 0
.0 1

IsRequired1 ;
(; <
)< =
.= >
HasMaxLength> J
(J K
$numK N
)N O
;O P
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
Telefono' /
)/ 0
.0 1

IsRequired1 ;
(; <
)< =
.= >
HasMaxLength> J
(J K
$numK M
)M N
;N O
entity 
. 
Property 
(  
c  !
=>" $
c% &
.& '
	Direccion' 0
)0 1
.1 2

IsRequired2 <
(< =
)= >
.> ?
HasMaxLength? K
(K L
$numL O
)O P
;P Q
} 
) 
; 
modelBuilder 
. 
Entity 
<  

Habitacion  *
>* +
(+ ,
entity, 2
=>3 5
{ 
entity   
.   
HasKey   
(   
h   
=>    "
h  # $
.  $ %
Id  % '
)  ' (
;  ( )
entity!! 
.!! 
Property!! 
(!!  
h!!  !
=>!!" $
h!!% &
.!!& '
NumeroHabitacion!!' 7
)!!7 8
.!!8 9

IsRequired!!9 C
(!!C D
)!!D E
.!!E F
HasMaxLength!!F R
(!!R S
$num!!S U
)!!U V
.!!V W
	IsUnicode!!W `
(!!` a
)!!a b
;!!b c
entity"" 
."" 
Property"" 
(""  
h""  !
=>""" $
h""% &
.""& '
Descripcion""' 2
)""2 3
.""3 4

IsRequired""4 >
(""> ?
)""? @
.""@ A
HasMaxLength""A M
(""M N
$num""N Q
)""Q R
;""R S
entity## 
.## 
Property## 
(##  
h##  !
=>##" $
h##% &
.##& '
Precio##' -
)##- .
.##. /

IsRequired##/ 9
(##9 :
)##: ;
.##; <
HasColumnType##< I
(##I J
$str##J Z
)##Z [
;##[ \
entity$$ 
.$$ 
Property$$ 
($$  
h$$  !
=>$$" $
h$$% &
.$$& '
Lugar$$' ,
)$$, -
.$$- .

IsRequired$$. 8
($$8 9
)$$9 :
.$$: ;
HasMaxLength$$; G
($$G H
$num$$H K
)$$K L
;$$L M
}%% 
)%% 
;%% 
modelBuilder'' 
.'' 
Entity'' 
<''  
Reserva''  '
>''' (
(''( )
entity'') /
=>''0 2
{(( 
entity)) 
.)) 
HasKey)) 
()) 
r)) 
=>))  "
r))# $
.))$ %
Id))% '
)))' (
;))( )
entity** 
.** 
Property** 
(**  
r**  !
=>**" $
r**% &
.**& '
FechaEntrada**' 3
)**3 4
.**4 5

IsRequired**5 ?
(**? @
)**@ A
;**A B
entity++ 
.++ 
Property++ 
(++  
r++  !
=>++" $
r++% &
.++& '
FechaSalida++' 2
)++2 3
.++3 4

IsRequired++4 >
(++> ?
)++? @
;++@ A
entity,, 
.,, 
Property,, 
(,,  
r,,  !
=>,," $
r,,% &
.,,& '
Total,,' ,
),,, -
.,,- .

IsRequired,,. 8
(,,8 9
),,9 :
.,,: ;
HasColumnType,,; H
(,,H I
$str,,I Y
),,Y Z
;,,Z [
entity.. 
... 
HasOne.. 
(.. 
r.. 
=>..  "
r..# $
...$ %
Cliente..% ,
).., -
.// 
WithMany// 
(//  
c//  !
=>//" $
c//% &
.//& '
Reservas//' /
)/// 0
.00 
HasForeignKey00 $
(00$ %
r00% &
=>00' )
r00* +
.00+ ,
	IdCliente00, 5
)005 6
.11 
OnDelete11 
(11  
DeleteBehavior11  .
.11. /
Cascade11/ 6
)116 7
;117 8
entity33 
.33 
HasOne33 
(33 
r33 
=>33  "
r33# $
.33$ %

Habitacion33% /
)33/ 0
.44 
WithMany44 
(44  
h44  !
=>44" $
h44% &
.44& '
Reservas44' /
)44/ 0
.55 
HasForeignKey55 $
(55$ %
r55% &
=>55' )
r55* +
.55+ ,
IdHabitacion55, 8
)558 9
.66 
OnDelete66 
(66  
DeleteBehavior66  .
.66. /
Cascade66/ 6
)666 7
;667 8
}77 
)77 
;77 
modelBuilder99 
.99 
Entity99 
<99  
ServicioAdicional99  1
>991 2
(992 3
entity993 9
=>99: <
{:: 
entity;; 
.;; 
HasKey;; 
(;; 
s;; 
=>;;  "
s;;# $
.;;$ %
Id;;% '
);;' (
;;;( )
entity<< 
.<< 
Property<< 
(<<  
s<<  !
=><<" $
s<<% &
.<<& '
Descripcion<<' 2
)<<2 3
.<<3 4

IsRequired<<4 >
(<<> ?
)<<? @
.<<@ A
HasMaxLength<<A M
(<<M N
$num<<N Q
)<<Q R
;<<R S
entity== 
.== 
Property== 
(==  
s==  !
=>==" $
s==% &
.==& '
Costo==' ,
)==, -
.==- .

IsRequired==. 8
(==8 9
)==9 :
.==: ;
HasColumnType==; H
(==H I
$str==I Y
)==Y Z
;==Z [
entity?? 
.?? 
HasOne?? 
(?? 
s?? 
=>??  "
s??# $
.??$ %
Reserva??% ,
)??, -
.@@ 
WithMany@@ 
(@@  
r@@  !
=>@@" $
r@@% &
.@@& ' 
ServiciosAdicionales@@' ;
)@@; <
.AA 
HasForeignKeyAA $
(AA$ %
sAA% &
=>AA' )
sAA* +
.AA+ ,
	IdReservaAA, 5
)AA5 6
.BB 
OnDeleteBB 
(BB  
DeleteBehaviorBB  .
.BB. /
CascadeBB/ 6
)BB6 7
;BB7 8
}CC 
)CC 
;CC 
}DD 	
}EE 
publicGG 

classGG 
ClienteGG 
{HH 
publicJJ 
intJJ 
?JJ 
IdJJ 
{JJ 
getJJ 
;JJ 
setJJ !
;JJ! "
}JJ# $
[KK 	
RequiredKK	 
(KK 
ErrorMessageKK 
=KK  
$strKK! <
)KK< =
]KK= >
[LL 	
StringLengthLL	 
(LL 
$numLL 
,LL 
MinimumLengthLL '
=LL( )
$numLL* ,
,LL, -
ErrorMessageLL. :
=LL; <
$strLL= n
)LLn o
]LLo p
publicMM 
stringMM 
?MM 
CedulaMM 
{MM 
getMM  #
;MM# $
setMM% (
;MM( )
}MM* +
[NN 	
RequiredNN	 
(NN 
ErrorMessageNN 
=NN  
$strNN! <
)NN< =
]NN= >
[OO 	
StringLengthOO	 
(OO 
$numOO 
,OO 
ErrorMessageOO '
=OO( )
$strOO* Y
)OOY Z
]OOZ [
publicPP 
stringPP 
?PP 
NombrePP 
{PP 
getPP  #
;PP# $
setPP% (
;PP( )
}PP* +
[QQ 	
RequiredQQ	 
(QQ 
ErrorMessageQQ 
=QQ  
$strQQ! >
)QQ> ?
]QQ? @
[RR 	
StringLengthRR	 
(RR 
$numRR 
,RR 
ErrorMessageRR '
=RR( )
$strRR* [
)RR[ \
]RR\ ]
publicSS 
stringSS 
?SS 
ApellidoSS 
{SS  !
getSS" %
;SS% &
setSS' *
;SS* +
}SS, -
[TT 	
RequiredTT	 
(TT 
ErrorMessageTT 
=TT  
$strTT! >
)TT> ?
]TT? @
[UU 	
StringLengthUU	 
(UU 
$numUU 
,UU 
MinimumLengthUU '
=UU( )
$numUU* ,
,UU, -
ErrorMessageUU. :
=UU; <
$strUU= o
)UUo p
]UUp q
[VV 	
PhoneVV	 
(VV 
ErrorMessageVV 
=VV 
$strVV I
)VVI J
]VVJ K
publicWW 
requiredWW 
stringWW 
?WW 
TelefonoWW  (
{WW) *
getWW+ .
;WW. /
setWW0 3
;WW3 4
}WW5 6
[XX 	
RequiredXX	 
(XX 
ErrorMessageXX 
=XX  
$strXX! ?
)XX? @
]XX@ A
[YY 	
StringLengthYY	 
(YY 
$numYY 
,YY 
ErrorMessageYY '
=YY( )
$strYY* \
)YY\ ]
]YY] ^
publicZZ 
requiredZZ 
stringZZ 
?ZZ 
	DireccionZZ  )
{ZZ* +
getZZ, /
;ZZ/ 0
setZZ1 4
;ZZ4 5
}ZZ6 7
[[[ 	

JsonIgnore[[	 
][[ 
public\\ 
List\\ 
<\\ 
Reserva\\ 
>\\ 
?\\ 
Reservas\\ &
{\\' (
get\\) ,
;\\, -
set\\. 1
;\\1 2
}\\3 4
}]] 
public__ 

class__ 

Habitacion__ 
{`` 
publicaa 
intaa 
?aa 
Idaa 
{aa 
getaa 
;aa 
setaa !
;aa! "
}aa# $
[bb 	
Requiredbb	 
(bb 
ErrorMessagebb 
=bb  
$strbb! J
)bbJ K
]bbK L
[cc 	
StringLengthcc	 
(cc 
$numcc 
,cc 
ErrorMessagecc &
=cc' (
$strcc) e
)cce f
]ccf g
publicdd 
stringdd 
?dd 
NumeroHabitaciondd '
{dd( )
getdd* -
;dd- .
setdd/ 2
;dd2 3
}dd4 5
[ff 	
Requiredff	 
(ff 
ErrorMessageff 
=ff  
$strff! A
)ffA B
]ffB C
[gg 	
StringLengthgg	 
(gg 
$numgg 
,gg 
ErrorMessagegg '
=gg( )
$strgg* ^
)gg^ _
]gg_ `
publichh 
stringhh 
?hh 
Descripcionhh "
{hh# $
gethh% (
;hh( )
sethh* -
;hh- .
}hh/ 0
[jj 	
Requiredjj	 
(jj 
ErrorMessagejj 
=jj  
$strjj! <
)jj< =
]jj= >
[kk 	
Rangekk	 
(kk 
$numkk 
,kk 
doublekk 
.kk 
MaxValuekk $
,kk$ %
ErrorMessagekk& 2
=kk3 4
$strkk5 T
)kkT U
]kkU V
publicll 
decimalll 
?ll 
Precioll 
{ll  
getll! $
;ll$ %
setll& )
;ll) *
}ll+ ,
[nn 	
Requirednn	 
(nn 
ErrorMessagenn 
=nn  
$strnn! ;
)nn; <
]nn< =
[oo 	
StringLengthoo	 
(oo 
$numoo 
,oo 
ErrorMessageoo '
=oo( )
$stroo* X
)ooX Y
]ooY Z
publicpp 
stringpp 
?pp 
Lugarpp 
{pp 
getpp "
;pp" #
setpp$ '
;pp' (
}pp) *
[rr 	

JsonIgnorerr	 
]rr 
publicss 
Listss 
<ss 
Reservass 
>ss 
?ss 
Reservasss &
{ss' (
getss) ,
;ss, -
setss. 1
;ss1 2
}ss3 4
}tt 
publicvv 

classvv 
Reservavv 
{ww 
publicxx 
intxx 
?xx 
Idxx 
{xx 
getxx 
;xx 
setxx !
;xx! "
}xx# $
[yy 	
Requiredyy	 
(yy 
ErrorMessageyy 
=yy  
$stryy! D
)yyD E
]yyE F
[zz 	
Rangezz	 
(zz 
$numzz 
,zz 
intzz 
.zz 
MaxValuezz 
,zz 
ErrorMessagezz  ,
=zz- .
$strzz/ V
)zzV W
]zzW X
public{{ 
int{{ 
?{{ 
	IdCliente{{ 
{{{ 
get{{  #
;{{# $
set{{% (
;{{( )
}{{* +
[}} 	
Required}}	 
(}} 
ErrorMessage}} 
=}}  
$str}}! I
)}}I J
]}}J K
[~~ 	
Range~~	 
(~~ 
$num~~ 
,~~ 
int~~ 
.~~ 
MaxValue~~ 
,~~ 
ErrorMessage~~  ,
=~~- .
$str~~/ [
)~~[ \
]~~\ ]
public 
int 
? 
IdHabitacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
[
ÅÅ 	
Required
ÅÅ	 
(
ÅÅ 
ErrorMessage
ÅÅ 
=
ÅÅ  
$str
ÅÅ! F
)
ÅÅF G
]
ÅÅG H
public
ÇÇ 
DateTime
ÇÇ 
?
ÇÇ 
FechaEntrada
ÇÇ %
{
ÇÇ& '
get
ÇÇ( +
;
ÇÇ+ ,
set
ÇÇ- 0
;
ÇÇ0 1
}
ÇÇ2 3
[
ÑÑ 	
Required
ÑÑ	 
(
ÑÑ 
ErrorMessage
ÑÑ 
=
ÑÑ  
$str
ÑÑ! E
)
ÑÑE F
]
ÑÑF G
public
ÖÖ 
DateTime
ÖÖ 
?
ÖÖ 
FechaSalida
ÖÖ $
{
ÖÖ% &
get
ÖÖ' *
;
ÖÖ* +
set
ÖÖ, /
;
ÖÖ/ 0
}
ÖÖ1 2
[
áá 	
Required
áá	 
(
áá 
ErrorMessage
áá 
=
áá  
$str
áá! ;
)
áá; <
]
áá< =
[
àà 	
Range
àà	 
(
àà 
$num
àà 
,
àà 
double
àà 
.
àà 
MaxValue
àà $
,
àà$ %
ErrorMessage
àà& 2
=
àà3 4
$str
àà5 S
)
ààS T
]
ààT U
public
ââ 
decimal
ââ 
?
ââ 
Total
ââ 
{
ââ 
get
ââ  #
;
ââ# $
set
ââ% (
;
ââ( )
}
ââ* +
[
ãã 	

JsonIgnore
ãã	 
]
ãã 
public
åå 
Cliente
åå 
?
åå 
Cliente
åå 
{
åå  !
get
åå" %
;
åå% &
set
åå' *
;
åå* +
}
åå, -
[
éé 	

JsonIgnore
éé	 
]
éé 
public
èè 

Habitacion
èè 
?
èè 

Habitacion
èè %
{
èè& '
get
èè( +
;
èè+ ,
set
èè- 0
;
èè0 1
}
èè2 3
[
ëë 	

JsonIgnore
ëë	 
]
ëë 
public
íí 
List
íí 
<
íí 
ServicioAdicional
íí %
>
íí% &
?
íí& '"
ServiciosAdicionales
íí( <
{
íí= >
get
íí? B
;
ííB C
set
ííD G
;
ííG H
}
ííI J
}
ìì 
public
ïï 

class
ïï 
ServicioAdicional
ïï "
{
ññ 
public
òò 
int
òò 
?
òò 
Id
òò 
{
òò 
get
òò 
;
òò 
set
òò !
;
òò! "
}
òò# $
[
öö 	
Required
öö	 
(
öö 
ErrorMessage
öö 
=
öö  
$str
öö! F
)
ööF G
]
ööG H
[
õõ 	
Range
õõ	 
(
õõ 
$num
õõ 
,
õõ 
int
õõ 
.
õõ 
MaxValue
õõ 
,
õõ 
ErrorMessage
õõ  ,
=
õõ- .
$str
õõ/ X
)
õõX Y
]
õõY Z
public
úú 
int
úú 
?
úú 
	IdReserva
úú 
{
úú 
get
úú  #
;
úú# $
set
úú% (
;
úú( )
}
úú* +
[
ûû 	
Required
ûû	 
(
ûû 
ErrorMessage
ûû 
=
ûû  
$str
ûû! A
)
ûûA B
]
ûûB C
[
üü 	
StringLength
üü	 
(
üü 
$num
üü 
,
üü 
ErrorMessage
üü '
=
üü( )
$str
üü* ^
)
üü^ _
]
üü_ `
public
†† 
string
†† 
?
†† 
Descripcion
†† "
{
††# $
get
††% (
;
††( )
set
††* -
;
††- .
}
††/ 0
[
¢¢ 	
Required
¢¢	 
(
¢¢ 
ErrorMessage
¢¢ 
=
¢¢  
$str
¢¢! ;
)
¢¢; <
]
¢¢< =
[
££ 	
Range
££	 
(
££ 
$num
££ 
,
££ 
double
££ 
.
££ 
MaxValue
££ $
,
££$ %
ErrorMessage
££& 2
=
££3 4
$str
££5 S
)
££S T
]
££T U
public
§§ 
decimal
§§ 
?
§§ 
Costo
§§ 
{
§§ 
get
§§  #
;
§§# $
set
§§% (
;
§§( )
}
§§* +
[
¶¶ 	

JsonIgnore
¶¶	 
]
¶¶ 
public
ßß 
Reserva
ßß 
?
ßß 
Reserva
ßß 
{
ßß  !
get
ßß" %
;
ßß% &
set
ßß' *
;
ßß* +
}
ßß, -
}
®® 
}™™ 