џ%
9щ8
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
B
AssignVariableOp
resource
value"dtype"
dtypetype
k
BatchMatMulV2
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
ж
RaggedTensorToSparse(
rt_nested_splits"Tsplits*RAGGED_RANK
rt_dense_values"T
sparse_indices	
sparse_values"T
sparse_dense_shape	"
RAGGED_RANKint(0"	
Ttype"
Tsplitstype0	:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
s
	ScatterNd
indices"Tindices
updates"T
shape"Tindices
output"T"	
Ttype"
Tindicestype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
2
StopGradient

input"T
output"T"	
Ttype
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
$
StringStrip	
input

output
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	


WordpieceTokenizeWithOffsets
input_values
vocab_lookup_table
output_values
output_row_lengths	
start_values	
limit_values	"
suffix_indicatorstring"
max_bytes_per_wordint"
max_chars_per_tokenint "
use_unknown_tokenbool"
unknown_tokenstring"$
split_unknown_charactersbool( "O
output_row_partition_typestringrow_lengths:
row_lengths
row_splits*1.14.02v1.14.0-rc1-22-gaf24dc91b58аЛ 
Л
=SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/keysConst*
_output_shapes
:p*Щ
valueПBМpBяЙBsBeBiBnBcBlByBяЙaBtBяЙ, BяЙtheBuBdBoBaBmBreBуЎBяЙbB BяЙandBяЙofBяЙуBatBgBveBяЙcatBяЙtBcaBriBяЙ.BяЙisBяЙlBanBldBrBstBуЏBуBяЙcBяЙwBinBouBpeBraBtiBуІBуЈBяЙcoBяЙoBяЙуB[BarBbiBedBerBesBhaBlaBmeBonBpBroBуBуBуBуЋBуІBшБBшBяЙ?BяЙ]BяЙdoBяЙfBяЙgBяЙitsBяЙsBяЙtabbyB,BceBfBheBhoBkBksBleBmoBndBodBorBsticBteBumBуBуBуЊBхBшBяЙ (BяЙ)BяЙalBяЙanBяЙfelisBяЙfoBяЙgeneB
яЙpatternBяЙrBяЙsiBяЙstBяЙwiBяЙy*
dtype0

?SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/valuesConst*
valueB	p"                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       *
dtype0	*
_output_shapes
:p

>SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 

CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0
Ю
[SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2LookupTableImportV2CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table=SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/keys?SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/values*

Tout0	*	
Tin0
 
"SubwordTokenizer/lookup_table/keysConst*
_output_shapes
:p*Щ
valueПBМpBяЙBsBeBiBnBcBlByBяЙaBtBяЙ, BяЙtheBuBdBoBaBmBreBуЎBяЙbB BяЙandBяЙofBяЙуBatBgBveBяЙcatBяЙtBcaBriBяЙ.BяЙisBяЙlBanBldBrBstBуЏBуBяЙcBяЙwBinBouBpeBraBtiBуІBуЈBяЙcoBяЙoBяЙуB[BarBbiBedBerBesBhaBlaBmeBonBpBroBуBуBуBуЋBуІBшБBшBяЙ?BяЙ]BяЙdoBяЙfBяЙgBяЙitsBяЙsBяЙtabbyB,BceBfBheBhoBkBksBleBmoBndBodBorBsticBteBumBуBуBуЊBхBшBяЙ (BяЙ)BяЙalBяЙanBяЙfelisBяЙfoBяЙgeneB
яЙpatternBяЙrBяЙsiBяЙstBяЙwiBяЙy*
dtype0
ё
$SubwordTokenizer/lookup_table/valuesConst*
valueB	p"                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       *
dtype0	*
_output_shapes
:p
n
#SubwordTokenizer/lookup_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
џџџџџџџџџ
s
(SubwordTokenizer/lookup_table/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0
т
@SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2LookupTableImportV2(SubwordTokenizer/lookup_table/hash_table"SubwordTokenizer/lookup_table/keys$SubwordTokenizer/lookup_table/values*	
Tin0*

Tout0	
y
context_featurePlaceholder"/device:CPU:0*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
t

nl_featurePlaceholder"/device:CPU:0*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

extra_context_feature/0Placeholder"/device:CPU:0*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

extra_context_feature/1Placeholder"/device:CPU:0*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
S
ShapeShapecontext_feature"/device:CPU:0*
_output_shapes
:*
T0
c
empty_strings/valueConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
n
empty_stringsFillShapeempty_strings/value"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
Z

NotEqual/yConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
v
NotEqualNotEqualextra_context_feature/0
NotEqual/y"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
e
ToInt32CastNotEqual"/device:CPU:0*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0

\
NotEqual_1/yConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
z

NotEqual_1NotEqualextra_context_feature/1NotEqual_1/y"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
i
	ToInt32_1Cast
NotEqual_1"/device:CPU:0*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
o
	Sum/inputPackToInt32	ToInt32_1"/device:CPU:0*
T0*
N*'
_output_shapes
:џџџџџџџџџ
f
Sum/reduction_indicesConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
i
SumSum	Sum/inputSum/reduction_indices"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ


StringJoin
StringJoinextra_context_feature/0extra_context_feature/1"/device:CPU:0*
N*#
_output_shapes
:џџџџџџџџџ*
	separator 
Z
StringStripStringStrip
StringJoin"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ
\
NotEqual_2/yConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
n

NotEqual_2NotEqualStringStripNotEqual_2/y"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
R
WhereWhere
NotEqual_2"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ
v
SqueezeSqueezeWhere"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

џџџџџџџџџ*
T0	
^
GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

GatherV2GatherV2StringStripSqueezeGatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
С
KSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplaceStaticRegexReplace
nl_feature"/device:CPU:0*
rewritea*#
_output_shapes
:џџџџџџџџџ*
patternA

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_1StaticRegexReplaceKSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternB*
rewriteb

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_2StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternC*
rewritec

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_3StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_2"/device:CPU:0*
patternD*
rewrited*#
_output_shapes
:џџџџџџџџџ

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_4StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_3"/device:CPU:0*
rewritee*#
_output_shapes
:џџџџџџџџџ*
patternE

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_5StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_4"/device:CPU:0*
rewritef*#
_output_shapes
:џџџџџџџџџ*
patternF

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_6StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_5"/device:CPU:0*
rewriteg*#
_output_shapes
:џџџџџџџџџ*
patternG

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_7StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_6"/device:CPU:0*
patternH*
rewriteh*#
_output_shapes
:џџџџџџџџџ

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_8StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_7"/device:CPU:0*
patternI*
rewritei*#
_output_shapes
:џџџџџџџџџ

MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_9StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_8"/device:CPU:0*
rewritej*#
_output_shapes
:џџџџџџџџџ*
patternJ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_10StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_9"/device:CPU:0*
rewritek*#
_output_shapes
:џџџџџџџџџ*
patternK

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_11StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_10"/device:CPU:0*
patternL*
rewritel*#
_output_shapes
:џџџџџџџџџ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_12StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_11"/device:CPU:0*
rewritem*#
_output_shapes
:џџџџџџџџџ*
patternM

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_13StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_12"/device:CPU:0*
rewriten*#
_output_shapes
:џџџџџџџџџ*
patternN

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_14StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_13"/device:CPU:0*
rewriteo*#
_output_shapes
:џџџџџџџџџ*
patternO

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_15StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_14"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternP*
rewritep

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_16StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_15"/device:CPU:0*
patternQ*
rewriteq*#
_output_shapes
:џџџџџџџџџ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_17StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_16"/device:CPU:0*
patternR*
rewriter*#
_output_shapes
:џџџџџџџџџ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_18StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_17"/device:CPU:0*
patternS*
rewrites*#
_output_shapes
:џџџџџџџџџ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_19StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_18"/device:CPU:0*
patternT*
rewritet*#
_output_shapes
:џџџџџџџџџ

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_20StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_19"/device:CPU:0*
rewriteu*#
_output_shapes
:џџџџџџџџџ*
patternU

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_21StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_20"/device:CPU:0*
rewritev*#
_output_shapes
:џџџџџџџџџ*
patternV

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_22StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_21"/device:CPU:0*
rewritew*#
_output_shapes
:џџџџџџџџџ*
patternW

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_23StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_22"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternX*
rewritex

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_24StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_23"/device:CPU:0*
rewritey*#
_output_shapes
:џџџџџџџџџ*
patternY

NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_25StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_24"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternZ*
rewritez

@SubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplaceStaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_25"/device:CPU:0*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ**
pattern([^\p{P}\p{Z}])([\p{P}\p{Z}])

BSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_1StaticRegexReplace@SubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace"/device:CPU:0**
pattern([\p{P}\p{Z}])([^\p{P}\p{Z}])*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ
ђ
BSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_2StaticRegexReplaceBSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_1"/device:CPU:0*
rewriteT*#
_output_shapes
:џџџџџџџџџ*
patternT T

?SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/ConstConst"/device:CPU:0*
value	B BT*
dtype0*
_output_shapes
: 
І
ESubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplitStringSplitBSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_2?SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/Const"/device:CPU:0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
­
MSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"        
Џ
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:
Џ
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

GSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_sliceStridedSliceESubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplitMSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stackOSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_1OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
Ј
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Њ
QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Њ
QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
ю
ISubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1StridedSliceGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplit:2OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stackQSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_1QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*
_output_shapes
: 
ё
TSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastCastGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice"/device:CPU:0*

SrcT0	*

DstT0*#
_output_shapes
:џџџџџџџџџ
ш
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1CastISubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
ё
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ShapeShapeTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
З
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
е
]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdProd^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Shape^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
Г
bSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
о
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdbSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
_output_shapes
: *
T0

]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/CastCast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 
Й
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ы
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaxMaxTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 
Џ
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
б
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/addAdd\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Max^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
_output_shapes
: *
T0
а
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mulMul]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Cast\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
_output_shapes
: *
T0
б
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximumVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
_output_shapes
: *
T0
е
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimumVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
_output_shapes
: *
T0
В
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
Ф
aSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/BincountBincountTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Minimum`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Ќ
[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
н
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CumsumCumsumaSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Bincount[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
И
_SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
Ќ
[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
О
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatConcatV2_SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
r
SubwordTokenizer/tokenize/Add/xConst"/device:CPU:0*
valueB	 BяЙ*
dtype0*
_output_shapes
: 
n
SubwordTokenizer/tokenize/xConst"/device:CPU:0*
valueB	 BяЙ*
dtype0*
_output_shapes
: 
Щ
SubwordTokenizer/tokenize/Add_1AddSubwordTokenizer/tokenize/xGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplit:1"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
Є
pSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsetsSubwordTokenizer/tokenize/Add_1CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
suffix_indicator *
split_unknown_characters(*
max_chars_per_token
*
unknown_token[UNK]*
max_bytes_per_word*)
output_row_partition_type
row_splits*
use_unknown_token( *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
ќ
=SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatrSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:1pSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:

-SubwordTokenizer/tokenize/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"        

/SubwordTokenizer/tokenize/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:

/SubwordTokenizer/tokenize/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

'SubwordTokenizer/tokenize/strided_sliceStridedSlice=SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparse-SubwordTokenizer/tokenize/strided_slice/stack/SubwordTokenizer/tokenize/strided_slice/stack_1/SubwordTokenizer/tokenize/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

/SubwordTokenizer/tokenize/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

1SubwordTokenizer/tokenize/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

1SubwordTokenizer/tokenize/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
ц
)SubwordTokenizer/tokenize/strided_slice_1StridedSlice?SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparse:2/SubwordTokenizer/tokenize/strided_slice_1/stack1SubwordTokenizer/tokenize/strided_slice_1/stack_11SubwordTokenizer/tokenize/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask*
_output_shapes
: *
T0	*
Index0
ф
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/ShapeShapepSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0

CSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ќ
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_sliceStridedSlice5SubwordTokenizer/tokenize/RaggedFromValueRowIds/ShapeCSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stackESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_1ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

7SubwordTokenizer/tokenize/RaggedFromValueRowIds/Shape_1Shape'SubwordTokenizer/tokenize/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ж
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1StridedSlice7SubwordTokenizer/tokenize/RaggedFromValueRowIds/Shape_1ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
Ї
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/ShapeShape'SubwordTokenizer/tokenize/strided_slice"/device:CPU:0*
T0	*
_output_shapes
:

jSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
r
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_okNoOp"/device:CPU:0

BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/rankConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

CSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 

lSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
t
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okNoOp"/device:CPU:0
ћ
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/EqualEqual=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T0*
_output_shapes
: 

BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
і
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/AllAllBSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/EqualBSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Const"/device:CPU:0*
_output_shapes
: 
и
ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ц
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
с
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_2Const"/device:CPU:0*
dtype0*
_output_shapes
: *W
valueNBL BFx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice:0) = 
у
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_3Const"/device:CPU:0*Y
valuePBN BHy (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
р
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0Const"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ь
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
ч
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2Const"/device:CPU:0*
dtype0*
_output_shapes
: *W
valueNBL BFx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice:0) = 
щ
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4Const"/device:CPU:0*Y
valuePBN BHy (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/AssertAssert@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/AllQSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_sliceQSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T

2

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
­
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_2"/device:CPU:0*

begin_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/ConstConst"/device:CPU:0*
dtype0	*
_output_shapes
: *
value	B	 R 
Е
_SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual	LessEqualISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/Const?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Д
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Х
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllAll_SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ё
bSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
п
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0
ќ
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_2Const"/device:CPU:0*
_output_shapes
: *Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0
с
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitchYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
 
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
_output_shapes
: *
T0


qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityoSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 

pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentityYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: 
ј
mSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Ё
{SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tn^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*
_classz
xvloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
љ
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
х
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0*
_output_shapes
: 
ё
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertvSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchvSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
э
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllpSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
е
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ѕ
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fp^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
_classz
xvloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
T0

Ў
nSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMerge}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1{SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
_output_shapes
: : *
T0
*
N

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ћ
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Љ
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_1Const"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
­
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_2"/device:CPU:0*
Index0*
T0	*

begin_mask*#
_output_shapes
:џџџџџџџџџ
љ
3SubwordTokenizer/tokenize/RaggedFromValueRowIds/subSub?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
­
aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualKSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/Const3SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
Ж
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ы
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllAllaSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ѓ
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
с
fSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
ђ
fSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_2Const"/device:CPU:0*
_output_shapes
: *M
valueDBB B<x (SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0) = *
dtype0
ч
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/SwitchSwitch[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: : *
T0

Є
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tIdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
Ђ
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
_output_shapes
: *
T0


rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_idIdentity[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: 
ќ
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Љ
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tp^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*
_class|
zxloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
§
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0
щ
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
њ
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*M
valueDBB B<x (SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 
§
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssertxSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchxSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
ѕ
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
_output_shapes
: : *
T0
*n
_classd
b`loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All
С
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch3SubwordTokenizer/tokenize/RaggedFromValueRowIds/subrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*F
_class<
:8loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
­
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*
_class|
zxloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Д
pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
N*
_output_shapes
: : *
T0

Ї
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stackConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
 
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Ћ
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
ё
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/LessLess?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5)SubwordTokenizer/tokenize/strided_slice_1"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ђ
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/AllAll@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/LessASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Const"/device:CPU:0*
_output_shapes
: 
з
HSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ф
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_1Const"/device:CPU:0*
_output_shapes
: *;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0
т
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
Ь
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_3Const"/device:CPU:0*C
value:B8 B2y (SubwordTokenizer/tokenize/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

USubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/SwitchSwitch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
_output_shapes
: : *
T0

ь
WSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tIdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
ъ
WSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fIdentityUSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 
г
VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_idIdentity?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: 
Ф
SSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOpNoOpX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t"/device:CPU:0
И
aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependencyIdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tT^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOp"/device:CPU:0*
_output_shapes
: *
T0
*j
_class`
^\loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t
Х
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
А
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
Ю
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
И
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *C
value:B8 B2y (SubwordTokenizer/tokenize/strided_slice_1:0) = 

USubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/AssertAssert\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2"/device:CPU:0*
T

2		

\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/SwitchSwitch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/AllVSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All*
_output_shapes
: : 
Ё
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1Switch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
л
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2Switch)SubwordTokenizer/tokenize/strided_slice_1VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*<
_class2
0.loc:@SubwordTokenizer/tokenize/strided_slice_1*
_output_shapes
: : 
М
cSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1IdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fV^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*j
_class`
^\loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f*
_output_shapes
: 
р
TSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/MergeMergecSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 

ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
љ
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/ShapeShapepSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0

sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
{
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_okNoOp"/device:CPU:0

BSubwordTokenizer/tokenize/RaggedFromValueRowIds/control_dependencyIdentity'SubwordTokenizer/tokenize/strided_sliceK^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/AssertU^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Mergeo^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Mergeq^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Merge\^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_ok^^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_oke^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_ok"/device:CPU:0*
T0	*:
_class0
.,loc:@SubwordTokenizer/tokenize/strided_slice*#
_output_shapes
:џџџџџџџџџ
Ь
4SubwordTokenizer/tokenize/RaggedFromValueRowIds/CastCastBSubwordTokenizer/tokenize/RaggedFromValueRowIds/control_dependency"/device:CPU:0*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0	
Ј
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1Cast)SubwordTokenizer/tokenize/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
Б
>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ShapeShape4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:

>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ѕ
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ProdProd>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Shape>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
_output_shapes
: *
T0

BSubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ў
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/GreaterGreater=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ProdBSubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 
Ц
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/CastCast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 

@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
ы
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MaxMax4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 

>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
ё
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/addAdd<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Max>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
№
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/mulMul=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Cast<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
ё
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MaximumMaximum6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
T0*
_output_shapes
: 
ѕ
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MinimumMinimum6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 

@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
Ф
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/BincountBincount4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Minimum@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

;SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
§
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/CumsumCumsumASubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Bincount;SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

?SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
_output_shapes
:*
valueB	R *
dtype0	

;SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
О
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/concatConcatV2?SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/values_06SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum;SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
Ю
#RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparse6SubwordTokenizer/tokenize/RaggedFromValueRowIds/concatpSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Ѕ
hash_table_Lookup/hash_bucketStringToHashBucketFast%RaggedToSparse/RaggedTensorToSparse:1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
num_buckets

5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2(SubwordTokenizer/lookup_table/hash_table%RaggedToSparse/RaggedTensorToSparse:1#SubwordTokenizer/lookup_table/Const"/device:CPU:0*	
Tin0*#
_output_shapes
:џџџџџџџџџ*

Tout0	

3hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2(SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
_output_shapes
: 
­
hash_table_Lookup/AddAddhash_table_Lookup/hash_bucket3hash_table_Lookup/hash_table_Size/LookupTableSizeV2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
П
hash_table_Lookup/NotEqualNotEqual5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2#SubwordTokenizer/lookup_table/Const"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Щ
hash_table_Lookup/SelectSelecthash_table_Lookup/NotEqual5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2hash_table_Lookup/Add"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
Ш
MSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplaceStaticRegexReplacecontext_feature"/device:CPU:0*
patternA*
rewritea*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_1StaticRegexReplaceMSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace"/device:CPU:0*
rewriteb*#
_output_shapes
:џџџџџџџџџ*
patternB

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_2StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_1"/device:CPU:0*
rewritec*#
_output_shapes
:џџџџџџџџџ*
patternC

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_3StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternD*
rewrited

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_4StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_3"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternE*
rewritee

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_5StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_4"/device:CPU:0*
patternF*
rewritef*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_6StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_5"/device:CPU:0*
patternG*
rewriteg*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_7StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_6"/device:CPU:0*
rewriteh*#
_output_shapes
:џџџџџџџџџ*
patternH

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_8StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_7"/device:CPU:0*
patternI*
rewritei*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_9StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_8"/device:CPU:0*
rewritej*#
_output_shapes
:џџџџџџџџџ*
patternJ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_10StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_9"/device:CPU:0*
patternK*
rewritek*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_11StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_10"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternL*
rewritel

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_12StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_11"/device:CPU:0*
patternM*
rewritem*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_13StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_12"/device:CPU:0*
patternN*
rewriten*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_14StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_13"/device:CPU:0*
patternO*
rewriteo*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_15StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_14"/device:CPU:0*
patternP*
rewritep*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_16StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_15"/device:CPU:0*
patternQ*
rewriteq*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_17StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_16"/device:CPU:0*
patternR*
rewriter*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_18StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_17"/device:CPU:0*
rewrites*#
_output_shapes
:џџџџџџџџџ*
patternS

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_19StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_18"/device:CPU:0*
rewritet*#
_output_shapes
:џџџџџџџџџ*
patternT

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_20StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_19"/device:CPU:0*
rewriteu*#
_output_shapes
:џџџџџџџџџ*
patternU

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_21StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_20"/device:CPU:0*
rewritev*#
_output_shapes
:џџџџџџџџџ*
patternV

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_22StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_21"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternW*
rewritew

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_23StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_22"/device:CPU:0*
patternX*
rewritex*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_24StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_23"/device:CPU:0*
rewritey*#
_output_shapes
:џџџџџџџџџ*
patternY

PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_25StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_24"/device:CPU:0*
rewritez*#
_output_shapes
:џџџџџџџџџ*
patternZ

BSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplaceStaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_25"/device:CPU:0**
pattern([^\p{P}\p{Z}])([\p{P}\p{Z}])*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ

DSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_1StaticRegexReplaceBSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace"/device:CPU:0*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ**
pattern([\p{P}\p{Z}])([^\p{P}\p{Z}])
і
DSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_2StaticRegexReplaceDSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_1"/device:CPU:0*
rewriteT*#
_output_shapes
:џџџџџџџџџ*
patternT T

ASubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/ConstConst"/device:CPU:0*
value	B BT*
dtype0*
_output_shapes
: 
Ќ
GSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplitStringSplitDSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_2ASubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/Const"/device:CPU:0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Џ
OSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
Б
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:
Б
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

ISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_sliceStridedSliceGSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplitOSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stackQSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_1QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask
Њ
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ќ
SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ќ
SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
ј
KSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1StridedSliceISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplit:2QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stackSSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_1SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
ѕ
VSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastCastISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice"/device:CPU:0*

SrcT0	*

DstT0*#
_output_shapes
:џџџџџџџџџ
ь
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1CastKSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0	
ѕ
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ShapeShapeVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
Й
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
л
_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdProd`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Shape`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
Е
dSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ф
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProddSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 

_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/CastCastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 
Л
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
б
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaxMaxVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 
Б
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
з
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/addAdd^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Max`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
_output_shapes
: *
T0
ж
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mulMul_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Cast^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
_output_shapes
: *
T0
з
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximumXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
T0*
_output_shapes
: 
л
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimumXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
Д
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
Ь
cSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/BincountBincountVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
у
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CumsumCumsumcSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Bincount]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
К
aSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
Ў
]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ц
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatConcatV2aSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
t
!SubwordTokenizer/tokenize_1/Add/xConst"/device:CPU:0*
valueB	 BяЙ*
dtype0*
_output_shapes
: 
p
SubwordTokenizer/tokenize_1/xConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB	 BяЙ
Я
!SubwordTokenizer/tokenize_1/Add_1AddSubwordTokenizer/tokenize_1/xISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplit:1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0
Ј
rSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsets!SubwordTokenizer/tokenize_1/Add_1CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
unknown_token[UNK]*
max_chars_per_token
*
max_bytes_per_word*)
output_row_partition_type
row_splits*
use_unknown_token( *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
suffix_indicator *
split_unknown_characters(

?SubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concattSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:1rSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:

/SubwordTokenizer/tokenize_1/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:

1SubwordTokenizer/tokenize_1/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB"       *
dtype0

1SubwordTokenizer/tokenize_1/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

)SubwordTokenizer/tokenize_1/strided_sliceStridedSlice?SubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparse/SubwordTokenizer/tokenize_1/strided_slice/stack1SubwordTokenizer/tokenize_1/strided_slice/stack_11SubwordTokenizer/tokenize_1/strided_slice/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ

1SubwordTokenizer/tokenize_1/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

3SubwordTokenizer/tokenize_1/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

3SubwordTokenizer/tokenize_1/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
№
+SubwordTokenizer/tokenize_1/strided_slice_1StridedSliceASubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparse:21SubwordTokenizer/tokenize_1/strided_slice_1/stack3SubwordTokenizer/tokenize_1/strided_slice_1/stack_13SubwordTokenizer/tokenize_1/strided_slice_1/stack_2"/device:CPU:0*
T0	*
Index0*
shrink_axis_mask*
_output_shapes
: 
ш
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/ShapeShaperSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0

ESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ж
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceStridedSlice7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/ShapeESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stackGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_1GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Ё
9SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Shape_1Shape)SubwordTokenizer/tokenize_1/strided_slice"/device:CPU:0*
T0	*
_output_shapes
:
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Р
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1StridedSlice9SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Shape_1GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 

BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/rankConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
Ћ
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/ShapeShape)SubwordTokenizer/tokenize_1/strided_slice"/device:CPU:0*
T0	*
_output_shapes
:

lSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
t
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_okNoOp"/device:CPU:0

DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/rankConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

ESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 

nSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
v
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okNoOp"/device:CPU:0

DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/EqualEqual?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T0*
_output_shapes
: 

DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
ќ
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/AllAllDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/EqualDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Const"/device:CPU:0*
_output_shapes
: 
к
KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/ConstConst"/device:CPU:0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0
Ш
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
х
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
ч
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_3Const"/device:CPU:0*[
valueRBP BJy (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
т
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0Const"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
Ю
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0
ы
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
э
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4Const"/device:CPU:0*[
valueRBP BJy (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/AssertAssertBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/AllSSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceSSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T

2
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
З
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*

begin_mask

KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
Л
aSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual	LessEqualKSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/ConstASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ы
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllAllaSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ѓ
dSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
с
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_2Const"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0*
_output_shapes
: 
ч
qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
_output_shapes
: : *
T0

Є
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
_output_shapes
: *
T0

Ђ
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityqSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 

rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: 
ќ
oSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Љ
}SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tp^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
_class|
zxloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: *
T0

§
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
щ
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0

xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0) = 
§
qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertxSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchxSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
ѕ
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllrSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*n
_classd
b`loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
н
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
­
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fr^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*
_class|
zxloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Д
pSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1}SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
Е
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
 
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ћ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_1Const"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
З
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*

begin_mask
џ
5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/subSubASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
Г
cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualMSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/Const5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
И
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
б
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllAllcSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ѕ
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/ConstConst"/device:CPU:0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0
у
hSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0
і
hSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_2Const"/device:CPU:0*
dtype0*
_output_shapes
: *O
valueFBD B>x (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0) = 
э
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/SwitchSwitch]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
Ј
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tIdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
І
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 

tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_idIdentity]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0


qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Б
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tr^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
_class~
|zloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: *
T0


zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
э
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *O
valueFBD B>x (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0) = 

sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssertzSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchzSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
§
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AlltSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
_output_shapes
: : *
T0
*p
_classf
dbloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All
Щ
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/subtSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*H
_class>
<:loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_ft^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
_output_shapes
: *
T0
*
_class~
|zloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f
Л
rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
Љ
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Е
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0
ї
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/LessLessASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5+SubwordTokenizer/tokenize_1/strided_slice_1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	

CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
ј
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllAllBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/LessCSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Const"/device:CPU:0*
_output_shapes
: 
й
JSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ц
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *;
value2B0 B*Condition x < y did not hold element-wise:
ц
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_2Const"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
а
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_3Const"/device:CPU:0*E
value<B: B4y (SubwordTokenizer/tokenize_1/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

WSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/SwitchSwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: : 
№
YSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tIdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch:1"/device:CPU:0*
_output_shapes
: *
T0

ю
YSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fIdentityWSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 
з
XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_idIdentityASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: 
Ш
USubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOpNoOpZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t"/device:CPU:0
Р
cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependencyIdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tV^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t*
_output_shapes
: 
Щ
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
Д
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
д
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
О
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*E
value<B: B4y (SubwordTokenizer/tokenize_1/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
Ѕ
WSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/AssertAssert^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2"/device:CPU:0*
T

2		

^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/SwitchSwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllXSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All*
_output_shapes
: : 
Љ
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
у
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2Switch+SubwordTokenizer/tokenize_1/strided_slice_1XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*>
_class4
20loc:@SubwordTokenizer/tokenize_1/strided_slice_1*
_output_shapes
: : 
Ф
eSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1IdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fX^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f*
_output_shapes
: 
ц
VSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/MergeMergeeSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 

KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
§
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/ShapeShaperSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
_output_shapes
:

uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
}
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_okNoOp"/device:CPU:0
Б
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/control_dependencyIdentity)SubwordTokenizer/tokenize_1/strided_sliceM^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/AssertW^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Mergeq^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merges^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Merge^^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_ok`^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okg^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_ok"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	*<
_class2
0.loc:@SubwordTokenizer/tokenize_1/strided_slice
а
6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastCastDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/control_dependency"/device:CPU:0*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0	
Ќ
8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1Cast+SubwordTokenizer/tokenize_1/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
Е
@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ShapeShape6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:

@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
ћ
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ProdProd@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Shape@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 

DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/GreaterGreater?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ProdDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
_output_shapes
: *
T0
Ъ
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/CastCastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 

BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
ё
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MaxMax6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 

@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
ї
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/addAdd>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Max@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
_output_shapes
: *
T0
і
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/mulMul?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Cast>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
_output_shapes
: *
T0
ї
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MaximumMaximum8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
T0*
_output_shapes
: 
ћ
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MinimumMinimum8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
_output_shapes
: *
T0

BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
Ь
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/BincountBincount6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MinimumBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	

=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CumsumCumsumCSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Bincount=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:

=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ц
8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concatConcatV2ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/values_08SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
д
%RaggedToSparse_1/RaggedTensorToSparseRaggedTensorToSparse8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concatrSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Љ
hash_table_Lookup_1/hash_bucketStringToHashBucketFast'RaggedToSparse_1/RaggedTensorToSparse:1"/device:CPU:0*
num_buckets*#
_output_shapes
:џџџџџџџџџ

7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2(SubwordTokenizer/lookup_table/hash_table'RaggedToSparse_1/RaggedTensorToSparse:1#SubwordTokenizer/lookup_table/Const"/device:CPU:0*	
Tin0*#
_output_shapes
:џџџџџџџџџ*

Tout0	

5hash_table_Lookup_1/hash_table_Size/LookupTableSizeV2LookupTableSizeV2(SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
_output_shapes
: 
Г
hash_table_Lookup_1/AddAddhash_table_Lookup_1/hash_bucket5hash_table_Lookup_1/hash_table_Size/LookupTableSizeV2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
У
hash_table_Lookup_1/NotEqualNotEqual7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2#SubwordTokenizer/lookup_table/Const"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
б
hash_table_Lookup_1/SelectSelecthash_table_Lookup_1/NotEqual7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2hash_table_Lookup_1/Add"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
k
SparseToDense/default_valueConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 

SparseToDenseSparseToDense%RaggedToSparse_1/RaggedTensorToSparse'RaggedToSparse_1/RaggedTensorToSparse:2'RaggedToSparse_1/RaggedTensorToSparse:1SparseToDense/default_value"/device:CPU:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tindices0	
k
tokensIdentitySparseToDense"/device:CPU:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
С
MSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplaceStaticRegexReplaceGatherV2"/device:CPU:0*
rewritea*#
_output_shapes
:џџџџџџџџџ*
patternA

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_1StaticRegexReplaceMSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternB*
rewriteb

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_2StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternC*
rewritec

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_3StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_2"/device:CPU:0*
rewrited*#
_output_shapes
:џџџџџџџџџ*
patternD

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_4StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_3"/device:CPU:0*
rewritee*#
_output_shapes
:џџџџџџџџџ*
patternE

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_5StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_4"/device:CPU:0*
patternF*
rewritef*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_6StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_5"/device:CPU:0*
rewriteg*#
_output_shapes
:џџџџџџџџџ*
patternG

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_7StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_6"/device:CPU:0*
patternH*
rewriteh*#
_output_shapes
:џџџџџџџџџ

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_8StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_7"/device:CPU:0*
rewritei*#
_output_shapes
:џџџџџџџџџ*
patternI

OSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_9StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_8"/device:CPU:0*
rewritej*#
_output_shapes
:џџџџџџџџџ*
patternJ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_10StaticRegexReplaceOSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_9"/device:CPU:0*
rewritek*#
_output_shapes
:џџџџџџџџџ*
patternK

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_11StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_10"/device:CPU:0*
rewritel*#
_output_shapes
:џџџџџџџџџ*
patternL

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_12StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_11"/device:CPU:0*
rewritem*#
_output_shapes
:џџџџџџџџџ*
patternM

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_13StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_12"/device:CPU:0*
rewriten*#
_output_shapes
:џџџџџџџџџ*
patternN

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_14StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_13"/device:CPU:0*
rewriteo*#
_output_shapes
:џџџџџџџџџ*
patternO

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_15StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_14"/device:CPU:0*
patternP*
rewritep*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_16StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_15"/device:CPU:0*
rewriteq*#
_output_shapes
:џџџџџџџџџ*
patternQ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_17StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_16"/device:CPU:0*
rewriter*#
_output_shapes
:џџџџџџџџџ*
patternR

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_18StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_17"/device:CPU:0*
patternS*
rewrites*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_19StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_18"/device:CPU:0*
patternT*
rewritet*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_20StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_19"/device:CPU:0*
rewriteu*#
_output_shapes
:џџџџџџџџџ*
patternU

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_21StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_20"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
patternV*
rewritev

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_22StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_21"/device:CPU:0*
patternW*
rewritew*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_23StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_22"/device:CPU:0*
rewritex*#
_output_shapes
:џџџџџџџџџ*
patternX

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_24StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_23"/device:CPU:0*
patternY*
rewritey*#
_output_shapes
:џџџџџџџџџ

PSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_25StaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_24"/device:CPU:0*
patternZ*
rewritez*#
_output_shapes
:џџџџџџџџџ

BSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplaceStaticRegexReplacePSubwordTokenizer/tokenize_2/invertible_tokenize/lower_case/StaticRegexReplace_25"/device:CPU:0*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ**
pattern([^\p{P}\p{Z}])([\p{P}\p{Z}])

DSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplace_1StaticRegexReplaceBSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplace"/device:CPU:0**
pattern([\p{P}\p{Z}])([^\p{P}\p{Z}])*
rewrite\1T\2*#
_output_shapes
:џџџџџџџџџ
і
DSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplace_2StaticRegexReplaceDSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplace_1"/device:CPU:0*
patternT T*
rewriteT*#
_output_shapes
:џџџџџџџџџ

ASubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/ConstConst"/device:CPU:0*
value	B BT*
dtype0*
_output_shapes
: 
Ќ
GSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/StringSplitStringSplitDSubwordTokenizer/tokenize_2/invertible_tokenize/StaticRegexReplace_2ASubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/Const"/device:CPU:0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Џ
OSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB"        *
dtype0
Б
QSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:
Б
QSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

ISubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_sliceStridedSliceGSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/StringSplitOSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stackQSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stack_1QSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ
Њ
QSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
Ќ
SSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ќ
SSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ј
KSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1StridedSliceISubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/StringSplit:2QSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stackSSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stack_1SSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*
_output_shapes
: 
ѕ
VSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastCastISubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice"/device:CPU:0*

DstT0*#
_output_shapes
:џџџџџџџџџ*

SrcT0	
ь
XSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1CastKSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
ѕ
`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ShapeShapeVSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
Й
`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
л
_SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdProd`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Shape`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
Е
dSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ф
bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater_SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProddSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 

_SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/CastCastbSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 
Л
bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
б
^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaxMaxVSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
_output_shapes
: *
T0
Б
`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
з
^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/addAdd^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Max`SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
ж
^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mulMul_SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Cast^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
з
bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximumXSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1^SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
_output_shapes
: *
T0
л
bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimumXSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
_output_shapes
: *
T0
Д
bSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
_output_shapes
: *
valueB	 *
dtype0	
Ь
cSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/BincountBincountVSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumbSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Ў
]SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
у
XSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CumsumCumsumcSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Bincount]SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
К
aSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
dtype0	*
_output_shapes
:*
valueB	R 
Ў
]SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ц
XSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatConcatV2aSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0XSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum]SubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
t
!SubwordTokenizer/tokenize_2/Add/xConst"/device:CPU:0*
_output_shapes
: *
valueB	 BяЙ*
dtype0
p
SubwordTokenizer/tokenize_2/xConst"/device:CPU:0*
valueB	 BяЙ*
dtype0*
_output_shapes
: 
Я
!SubwordTokenizer/tokenize_2/Add_1AddSubwordTokenizer/tokenize_2/xISubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/StringSplit:1"/device:CPU:0*
T0*#
_output_shapes
:џџџџџџџџџ
Ј
rSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsets!SubwordTokenizer/tokenize_2/Add_1CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
use_unknown_token( *P
_output_shapes>
<:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
suffix_indicator *
split_unknown_characters(*
max_chars_per_token
*
unknown_token[UNK]*
max_bytes_per_word*)
output_row_partition_type
row_splits

?SubwordTokenizer/tokenize_2/RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseXSubwordTokenizer/tokenize_2/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concattSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:1rSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
T0*
RAGGED_RANK

/SubwordTokenizer/tokenize_2/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:

1SubwordTokenizer/tokenize_2/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:

1SubwordTokenizer/tokenize_2/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:

)SubwordTokenizer/tokenize_2/strided_sliceStridedSlice?SubwordTokenizer/tokenize_2/RaggedToSparse/RaggedTensorToSparse/SubwordTokenizer/tokenize_2/strided_slice/stack1SubwordTokenizer/tokenize_2/strided_slice/stack_11SubwordTokenizer/tokenize_2/strided_slice/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0*
shrink_axis_mask*

begin_mask

1SubwordTokenizer/tokenize_2/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

3SubwordTokenizer/tokenize_2/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

3SubwordTokenizer/tokenize_2/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
№
+SubwordTokenizer/tokenize_2/strided_slice_1StridedSliceASubwordTokenizer/tokenize_2/RaggedToSparse/RaggedTensorToSparse:21SubwordTokenizer/tokenize_2/strided_slice_1/stack3SubwordTokenizer/tokenize_2/strided_slice_1/stack_13SubwordTokenizer/tokenize_2/strided_slice_1/stack_2"/device:CPU:0*
T0	*
Index0*
shrink_axis_mask*
_output_shapes
: 
ш
7SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/ShapeShaperSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0

ESubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ж
?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_sliceStridedSlice7SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/ShapeESubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stackGSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stack_1GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
Ё
9SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Shape_1Shape)SubwordTokenizer/tokenize_2/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Р
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1StridedSlice9SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Shape_1GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stackISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stack_1ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 

BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
Ћ
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank/ShapeShape)SubwordTokenizer/tokenize_2/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	

lSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
t
]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_okNoOp"/device:CPU:0

DSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_1/rankConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

ESubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_1/ShapeConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 

nSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_1/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
v
_SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okNoOp"/device:CPU:0

DSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/EqualEqual?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_sliceASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T0*
_output_shapes
: 

DSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
ќ
BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/AllAllDSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/EqualDSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Const"/device:CPU:0*
_output_shapes
: 
к
KSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ш
MSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
х
MSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Const_2Const"/device:CPU:0*
_output_shapes
: *Y
valuePBN BHx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice:0) = *
dtype0
ч
MSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Const_3Const"/device:CPU:0*[
valueRBP BJy (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
т
SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0Const"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Ю
SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
ы
SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
э
SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4Const"/device:CPU:0*[
valueRBP BJy (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

LSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/AssertAssertBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/AllSSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1SSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_sliceSSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T

2
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
З
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2StridedSlice)SubwordTokenizer/tokenize_2/strided_sliceGSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stackISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stack_1ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2/stack_2"/device:CPU:0*

begin_mask*#
_output_shapes
:џџџџџџџџџ*
T0	*
Index0

KSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/ConstConst"/device:CPU:0*
_output_shapes
: *
value	B	 R *
dtype0	
Л
aSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual	LessEqualKSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/ConstASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
Ж
]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
Ы
[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllAllaSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ѓ
dSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
с
fSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

fSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_2Const"/device:CPU:0*
_output_shapes
: *[
valueRBP BJx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0
ч
qSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
Є
sSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentitysSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
Ђ
sSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityqSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 

rSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0

ќ
oSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpt^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Љ
}SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentitysSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tp^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*
_class|
zxloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
§
xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Constt^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
щ
xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Constt^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Constt^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0*
_output_shapes
: 
§
qSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertxSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchxSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
ѕ
xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllrSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*n
_classd
b`loc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
н
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2rSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
­
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentitysSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fr^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*
_class|
zxloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Д
pSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1}SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Е
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3StridedSlice)SubwordTokenizer/tokenize_2/strided_sliceGSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stackISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stack_1ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3/stack_2"/device:CPU:0*
Index0*
T0	*
end_mask*#
_output_shapes
:џџџџџџџџџ
 
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
Ћ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stack_1Const"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
З
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4StridedSlice)SubwordTokenizer/tokenize_2/strided_sliceGSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stackISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stack_1ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4/stack_2"/device:CPU:0*

begin_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
џ
5SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/subSubASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_3ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_4"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	

MSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
Г
cSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualMSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/Const5SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
И
_SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
б
]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllAllcSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual_SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ѕ
fSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
у
hSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
і
hSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_2Const"/device:CPU:0*O
valueFBD B>x (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 
э
sSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/SwitchSwitch]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: : *
T0

Ј
uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tIdentityuSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
І
uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fIdentitysSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 

tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_idIdentity]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0


qSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpv^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
Б
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityuSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tr^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*
_class~
|zloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 

zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Constv^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
э
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Constv^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Constv^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*O
valueFBD B>x (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 

sSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssertzSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchzSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
§
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AlltSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*p
_classf
dbloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All*
_output_shapes
: : *
T0

Щ
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch5SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/subtSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*H
_class>
<:loc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityuSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_ft^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*
_class~
|zloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Л
rSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
Љ
GSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stackConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ђ
ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Е
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5StridedSlice)SubwordTokenizer/tokenize_2/strided_sliceGSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stackISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stack_1ISubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0	
ї
BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/LessLessASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5+SubwordTokenizer/tokenize_2/strided_slice_1"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
ј
ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/AllAllBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/LessCSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Const"/device:CPU:0*
_output_shapes
: 
й
JSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
Ц
LSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/Const_1Const"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
ц
LSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/Const_2Const"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
а
LSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/Const_3Const"/device:CPU:0*E
value<B: B4y (SubwordTokenizer/tokenize_2/strided_slice_1:0) = *
dtype0*
_output_shapes
: 

WSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/SwitchSwitchASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/AllASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: : 
№
YSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tIdentityYSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch:1"/device:CPU:0*
_output_shapes
: *
T0

ю
YSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fIdentityWSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 
з
XSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_idIdentityASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: 
Ш
USubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOpNoOpZ^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t"/device:CPU:0
Р
cSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependencyIdentityYSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tV^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t*
_output_shapes
: 
Щ
^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0ConstZ^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
Д
^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1ConstZ^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
д
^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2ConstZ^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *[
valueRBP BJx (SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0
О
^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4ConstZ^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *E
value<B: B4y (SubwordTokenizer/tokenize_2/strided_slice_1:0) = 
Ѕ
WSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/AssertAssert^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2"/device:CPU:0*
T

2		

^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/SwitchSwitchASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/AllXSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*T
_classJ
HFloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/All*
_output_shapes
: : 
Љ
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5XSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5
у
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2Switch+SubwordTokenizer/tokenize_2/strided_slice_1XSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
_output_shapes
: : *
T0	*>
_class4
20loc:@SubwordTokenizer/tokenize_2/strided_slice_1
Ф
eSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1IdentityYSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fX^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f*
_output_shapes
: 
ц
VSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/MergeMergeeSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1cSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency"/device:CPU:0*
N*
_output_shapes
: : *
T0


KSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_at_least/rankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
§
LSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_at_least/ShapeShaperSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
_output_shapes
:

uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
}
fSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_okNoOp"/device:CPU:0
Б
DSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/control_dependencyIdentity)SubwordTokenizer/tokenize_2/strided_sliceM^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_equal/Assert/AssertW^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Mergeq^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merges^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Merge^^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_ok`^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okg^SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_ok"/device:CPU:0*<
_class2
0.loc:@SubwordTokenizer/tokenize_2/strided_slice*#
_output_shapes
:џџџџџџџџџ*
T0	
а
6SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/CastCastDSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/control_dependency"/device:CPU:0*

SrcT0	*

DstT0*#
_output_shapes
:џџџџџџџџџ
Ќ
8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cast_1Cast+SubwordTokenizer/tokenize_2/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
Е
@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/ShapeShape6SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cast"/device:CPU:0*
_output_shapes
:*
T0

@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
ћ
?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/ProdProd@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Shape@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 

DSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/GreaterGreater?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/ProdDSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 
Ъ
?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/CastCastBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0


BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ё
>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/MaxMax6SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 

@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
ї
>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/addAdd>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Max@SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
і
>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/mulMul?SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Cast>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
_output_shapes
: *
T0
ї
BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/MaximumMaximum8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cast_1>SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
_output_shapes
: *
T0
ћ
BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/MinimumMinimum8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cast_1BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 

BSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
Ь
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/BincountBincount6SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/MinimumBSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	

=SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/CumsumCumsumCSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/bincount/Bincount=SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ

ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:

=SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Ц
8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concatConcatV2ASubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concat/values_08SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/Cumsum=SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:џџџџџџџџџ
д
%RaggedToSparse_2/RaggedTensorToSparseRaggedTensorToSparse8SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/concatrSubwordTokenizer/tokenize_2/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:
Љ
hash_table_Lookup_2/hash_bucketStringToHashBucketFast'RaggedToSparse_2/RaggedTensorToSparse:1"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
num_buckets

7hash_table_Lookup_2/hash_table_Lookup/LookupTableFindV2LookupTableFindV2(SubwordTokenizer/lookup_table/hash_table'RaggedToSparse_2/RaggedTensorToSparse:1#SubwordTokenizer/lookup_table/Const"/device:CPU:0*	
Tin0*#
_output_shapes
:џџџџџџџџџ*

Tout0	

5hash_table_Lookup_2/hash_table_Size/LookupTableSizeV2LookupTableSizeV2(SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
_output_shapes
: 
Г
hash_table_Lookup_2/AddAddhash_table_Lookup_2/hash_bucket5hash_table_Lookup_2/hash_table_Size/LookupTableSizeV2"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
У
hash_table_Lookup_2/NotEqualNotEqual7hash_table_Lookup_2/hash_table_Lookup/LookupTableFindV2#SubwordTokenizer/lookup_table/Const"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ
б
hash_table_Lookup_2/SelectSelecthash_table_Lookup_2/NotEqual7hash_table_Lookup_2/hash_table_Lookup/LookupTableFindV2hash_table_Lookup_2/Add"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
T0	
б
Fembedding_matrices/subword_embeddings/Initializer/random_uniform/shapeConst*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB"x      *
dtype0*
_output_shapes
:
У
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/minConst*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB
 *
з#М*
dtype0*
_output_shapes
: 
У
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/maxConst*
_output_shapes
: *8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB
 *
з#<*
dtype0

Nembedding_matrices/subword_embeddings/Initializer/random_uniform/RandomUniformRandomUniformFembedding_matrices/subword_embeddings/Initializer/random_uniform/shape*
_output_shapes

:x*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
dtype0
В
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/subSubDembedding_matrices/subword_embeddings/Initializer/random_uniform/maxDembedding_matrices/subword_embeddings/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
_output_shapes
: 
Ф
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/mulMulNembedding_matrices/subword_embeddings/Initializer/random_uniform/RandomUniformDembedding_matrices/subword_embeddings/Initializer/random_uniform/sub*
_output_shapes

:x*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings
Ж
@embedding_matrices/subword_embeddings/Initializer/random_uniformAddDembedding_matrices/subword_embeddings/Initializer/random_uniform/mulDembedding_matrices/subword_embeddings/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
_output_shapes

:x
р
%embedding_matrices/subword_embeddingsVarHandleOp*6
shared_name'%embedding_matrices/subword_embeddings*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
shape
:x*
dtype0*
_output_shapes
: 

Fembedding_matrices/subword_embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOp%embedding_matrices/subword_embeddings*
_output_shapes
: 
№
,embedding_matrices/subword_embeddings/AssignAssignVariableOp%embedding_matrices/subword_embeddings@embedding_matrices/subword_embeddings/Initializer/random_uniform*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
dtype0
й
9embedding_matrices/subword_embeddings/Read/ReadVariableOpReadVariableOp%embedding_matrices/subword_embeddings*
dtype0*
_output_shapes

:x*8
_class.
,*loc:@embedding_matrices/subword_embeddings
t
2embed_context/embed_nl/SparseToDense/default_valueConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
 
$embed_context/embed_nl/SparseToDenseSparseToDense%RaggedToSparse_1/RaggedTensorToSparse'RaggedToSparse_1/RaggedTensorToSparse:2hash_table_Lookup_1/Select2embed_context/embed_nl/SparseToDense/default_value*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
c
!embed_context/embed_nl/NotEqual/yConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
Џ
embed_context/embed_nl/NotEqualNotEqual$embed_context/embed_nl/SparseToDense!embed_context/embed_nl/NotEqual/y*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0	

2embed_context/embed_nl/EmbeddingLookupUnique/ShapeShape$embed_context/embed_nl/SparseToDense*
_output_shapes
:*
T0	
|
2embed_context/embed_nl/EmbeddingLookupUnique/ConstConst*
_output_shapes
:*
valueB: *
dtype0
з
1embed_context/embed_nl/EmbeddingLookupUnique/ProdProd2embed_context/embed_nl/EmbeddingLookupUnique/Shape2embed_context/embed_nl/EmbeddingLookupUnique/Const*
_output_shapes
:*
	keep_dims(*
T0
Ц
4embed_context/embed_nl/EmbeddingLookupUnique/ReshapeReshape$embed_context/embed_nl/SparseToDense1embed_context/embed_nl/EmbeddingLookupUnique/Prod*#
_output_shapes
:џџџџџџџџџ*
T0	
А
3embed_context/embed_nl/EmbeddingLookupUnique/UniqueUnique4embed_context/embed_nl/EmbeddingLookupUnique/Reshape*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0	
Ћ
=embed_context/embed_nl/EmbeddingLookupUnique/embedding_lookupResourceGather%embedding_matrices/subword_embeddings3embed_context/embed_nl/EmbeddingLookupUnique/Unique*
Tindices0	*
dtype0*'
_output_shapes
:џџџџџџџџџ*8
_class.
,*loc:@embedding_matrices/subword_embeddings
§
Fembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/IdentityIdentity=embed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*'
_output_shapes
:џџџџџџџџџ
Ю
Hembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1IdentityFembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
\embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scaleConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
в
]embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2LossL2LossHembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
: 
Л
Vembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizerMul\embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scale]embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2Loss*
_output_shapes
: *
T0
Ь
Gembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penaltyIdentityVembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer*
_output_shapes
: *
T0
|
:embed_context/embed_nl/EmbeddingLookupUnique/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
г
5embed_context/embed_nl/EmbeddingLookupUnique/GatherV2GatherV2Hembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_15embed_context/embed_nl/EmbeddingLookupUnique/Unique:1:embed_context/embed_nl/EmbeddingLookupUnique/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:џџџџџџџџџ
Ќ
4embed_context/embed_nl/EmbeddingLookupUnique/Shape_1ShapeHembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
:

@embed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

:embed_context/embed_nl/EmbeddingLookupUnique/strided_sliceStridedSlice4embed_context/embed_nl/EmbeddingLookupUnique/Shape_1@embed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stackBembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0
z
8embed_context/embed_nl/EmbeddingLookupUnique/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

3embed_context/embed_nl/EmbeddingLookupUnique/concatConcatV22embed_context/embed_nl/EmbeddingLookupUnique/Shape:embed_context/embed_nl/EmbeddingLookupUnique/strided_slice8embed_context/embed_nl/EmbeddingLookupUnique/concat/axis*
T0*
N*
_output_shapes
:
ь
6embed_context/embed_nl/EmbeddingLookupUnique/Reshape_1Reshape5embed_context/embed_nl/EmbeddingLookupUnique/GatherV23embed_context/embed_nl/EmbeddingLookupUnique/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
a
embed_context/embed_nl/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *зГн?
Ж
embed_context/embed_nl/mulMul6embed_context/embed_nl/EmbeddingLookupUnique/Reshape_1embed_context/embed_nl/mul/y*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ч
Aembed_nl/positional_embeddings/0/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB"      *
dtype0*
_output_shapes
:
Й
?embed_nl/positional_embeddings/0/Initializer/random_uniform/minConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *b'П*
dtype0*
_output_shapes
: 
Й
?embed_nl/positional_embeddings/0/Initializer/random_uniform/maxConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *b'?*
dtype0*
_output_shapes
: 

Iembed_nl/positional_embeddings/0/Initializer/random_uniform/RandomUniformRandomUniformAembed_nl/positional_embeddings/0/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:

?embed_nl/positional_embeddings/0/Initializer/random_uniform/subSub?embed_nl/positional_embeddings/0/Initializer/random_uniform/max?embed_nl/positional_embeddings/0/Initializer/random_uniform/min*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes
: *
T0
А
?embed_nl/positional_embeddings/0/Initializer/random_uniform/mulMulIembed_nl/positional_embeddings/0/Initializer/random_uniform/RandomUniform?embed_nl/positional_embeddings/0/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes

:
Ђ
;embed_nl/positional_embeddings/0/Initializer/random_uniformAdd?embed_nl/positional_embeddings/0/Initializer/random_uniform/mul?embed_nl/positional_embeddings/0/Initializer/random_uniform/min*
_output_shapes

:*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0
б
 embed_nl/positional_embeddings/0VarHandleOp*
_output_shapes
: *1
shared_name" embed_nl/positional_embeddings/0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
shape
:*
dtype0

Aembed_nl/positional_embeddings/0/IsInitialized/VarIsInitializedOpVarIsInitializedOp embed_nl/positional_embeddings/0*
_output_shapes
: 
м
'embed_nl/positional_embeddings/0/AssignAssignVariableOp embed_nl/positional_embeddings/0;embed_nl/positional_embeddings/0/Initializer/random_uniform*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
dtype0
Ъ
4embed_nl/positional_embeddings/0/Read/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:*3
_class)
'%loc:@embed_nl/positional_embeddings/0
Л
Aembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/scaleConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
В
Qembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:
ѕ
Bembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2LossL2LossQembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes
: 

;embed_nl/positional_embeddings/0/Regularizer/l2_regularizerMulAembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/scaleBembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes
: 

5embed_context/embed_nl/add_positional_embedding/ShapeShapeembed_context/embed_nl/mul*
T0*
_output_shapes
:

Cembed_context/embed_nl/add_positional_embedding/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

=embed_context/embed_nl/add_positional_embedding/strided_sliceStridedSlice5embed_context/embed_nl/add_positional_embedding/ShapeCembed_context/embed_nl/add_positional_embedding/strided_slice/stackEembed_context/embed_nl/add_positional_embedding/strided_slice/stack_1Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
|
:embed_context/embed_nl/add_positional_embedding/floordiv/yConst*
_output_shapes
: *
value	B :*
dtype0
р
8embed_context/embed_nl/add_positional_embedding/floordivFloorDiv=embed_context/embed_nl/add_positional_embedding/strided_slice:embed_context/embed_nl/add_positional_embedding/floordiv/y*
_output_shapes
: *
T0
w
5embed_context/embed_nl/add_positional_embedding/add/xConst*
dtype0*
_output_shapes
: *
value	B :
Ь
3embed_context/embed_nl/add_positional_embedding/addAdd5embed_context/embed_nl/add_positional_embedding/add/x8embed_context/embed_nl/add_positional_embedding/floordiv*
_output_shapes
: *
T0
Є
Cembed_context/embed_nl/add_positional_embedding/Tile/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:

@embed_context/embed_nl/add_positional_embedding/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
ы
>embed_context/embed_nl/add_positional_embedding/Tile/multiplesPack3embed_context/embed_nl/add_positional_embedding/add@embed_context/embed_nl/add_positional_embedding/Tile/multiples/1*
T0*
N*
_output_shapes
:
ѓ
4embed_context/embed_nl/add_positional_embedding/TileTileCembed_context/embed_nl/add_positional_embedding/Tile/ReadVariableOp>embed_context/embed_nl/add_positional_embedding/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0

Eembed_context/embed_nl/add_positional_embedding/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
М
Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_1Pack=embed_context/embed_nl/add_positional_embedding/strided_slice*
N*
_output_shapes
:*
T0

Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Џ
?embed_context/embed_nl/add_positional_embedding/strided_slice_1StridedSlice4embed_context/embed_nl/add_positional_embedding/TileEembed_context/embed_nl/add_positional_embedding/strided_slice_1/stackGembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_1Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_2*

begin_mask*'
_output_shapes
:џџџџџџџџџ*
T0*
Index0

>embed_context/embed_nl/add_positional_embedding/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
џ
:embed_context/embed_nl/add_positional_embedding/ExpandDims
ExpandDims?embed_context/embed_nl/add_positional_embedding/strided_slice_1>embed_context/embed_nl/add_positional_embedding/ExpandDims/dim*
T0*+
_output_shapes
:џџџџџџџџџ
г
5embed_context/embed_nl/add_positional_embedding/add_1Addembed_context/embed_nl/mul:embed_context/embed_nl/add_positional_embedding/ExpandDims*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ф
:embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
х
(embed_nl/layer_norm_input/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *9
shared_name*(embed_nl/layer_norm_input/LayerNorm/beta*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta
Ё
Iembed_nl/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp(embed_nl/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
ѓ
/embed_nl/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp(embed_nl/layer_norm_input/LayerNorm/beta:embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
dtype0
о
<embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
Х
:embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ш
)embed_nl/layer_norm_input/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *:
shared_name+)embed_nl/layer_norm_input/LayerNorm/gamma*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma
Ѓ
Jembed_nl/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp)embed_nl/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
і
0embed_nl/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma:embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0
с
=embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

Pembed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:

>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/meanMean5embed_context/embed_nl/add_positional_embedding/add_1Pembed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indices*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(*
T0
е
Fembed_context/embed_nl/layer_norm_input/LayerNorm/moments/StopGradientStopGradient>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Kembed_context/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifference5embed_context/embed_nl/add_positional_embedding/add_1Fembed_context/embed_nl/layer_norm_input/LayerNorm/moments/StopGradient*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

Tembed_context/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Н
Bembed_context/embed_nl/layer_norm_input/LayerNorm/moments/varianceMeanKembed_context/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceTembed_context/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(

Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/addAddBembed_context/embed_nl/layer_norm_input/LayerNorm/moments/varianceAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/y*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ъ
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Д
Nembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mulMulAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtNembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
џ
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1Mul5embed_context/embed_nl/add_positional_embedding/add_1?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2Mul>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Џ
Jembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:

?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/subSubJembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1AddAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/sub*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Є
1embed_context/embed_nl/self_attention_head_1/CastCastembed_context/embed_nl/NotEqual*

DstT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

SrcT0

Ѓ
2embed_context/embed_nl/self_attention_head_1/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0

@embed_context/embed_nl/self_attention_head_1/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

:embed_context/embed_nl/self_attention_head_1/strided_sliceStridedSlice2embed_context/embed_nl/self_attention_head_1/Shape@embed_context/embed_nl/self_attention_head_1/strided_slice/stackBembed_context/embed_nl/self_attention_head_1/strided_slice/stack_1Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
Ѕ
4embed_context/embed_nl/self_attention_head_1/Shape_1ShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

Bembed_context/embed_nl/self_attention_head_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<embed_context/embed_nl/self_attention_head_1/strided_slice_1StridedSlice4embed_context/embed_nl/self_attention_head_1/Shape_1Bembed_context/embed_nl/self_attention_head_1/strided_slice_1/stackDembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_1Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
п
Membed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/shapeConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB"      *
dtype0*
_output_shapes
:
б
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/minConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *  П*
dtype0*
_output_shapes
: 
б
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *  ?
Ќ
Uembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/RandomUniformRandomUniformMembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/shape*
_output_shapes

:*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
dtype0
Ю
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/subSubKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/maxKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/min*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
р
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/mulMulUembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/RandomUniformKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/sub*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes

:
в
Gembed_nl/self_attention_head_1/query_weights/Initializer/random_uniformAddKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/mulKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/min*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes

:*
T0
ѕ
,embed_nl/self_attention_head_1/query_weightsVarHandleOp*=
shared_name.,embed_nl/self_attention_head_1/query_weights*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
shape
:*
dtype0*
_output_shapes
: 
Љ
Membed_nl/self_attention_head_1/query_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp,embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 

3embed_nl/self_attention_head_1/query_weights/AssignAssignVariableOp,embed_nl/self_attention_head_1/query_weightsGembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
dtype0
ю
@embed_nl/self_attention_head_1/query_weights/Read/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:
г
Membed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/scaleConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Ъ
]embed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:

Nembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2LossL2Loss]embed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
Я
Gembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizerMulMembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/scaleNembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
В
Eembed_context/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:

;embed_context/embed_nl/self_attention_head_1/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:

;embed_context/embed_nl/self_attention_head_1/Tensordot/freeConst*
valueB"       *
dtype0*
_output_shapes
:
­
<embed_context/embed_nl/self_attention_head_1/Tensordot/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

Dembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Shape;embed_context/embed_nl/self_attention_head_1/Tensordot/freeDembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

Fembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
и
Aembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Shape;embed_context/embed_nl/self_attention_head_1/Tensordot/axesFembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

<embed_context/embed_nl/self_attention_head_1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
у
;embed_context/embed_nl/self_attention_head_1/Tensordot/ProdProd?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Const*
T0*
_output_shapes
: 

>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
щ
=embed_context/embed_nl/self_attention_head_1/Tensordot/Prod_1ProdAembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_1*
T0*
_output_shapes
: 

Bembed_context/embed_nl/self_attention_head_1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
=embed_context/embed_nl/self_attention_head_1/Tensordot/concatConcatV2;embed_context/embed_nl/self_attention_head_1/Tensordot/free;embed_context/embed_nl/self_attention_head_1/Tensordot/axesBembed_context/embed_nl/self_attention_head_1/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
ю
<embed_context/embed_nl/self_attention_head_1/Tensordot/stackPack;embed_context/embed_nl/self_attention_head_1/Tensordot/Prod=embed_context/embed_nl/self_attention_head_1/Tensordot/Prod_1*
N*
_output_shapes
:*
T0

@embed_context/embed_nl/self_attention_head_1/Tensordot/transpose	TransposeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1=embed_context/embed_nl/self_attention_head_1/Tensordot/concat*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

>embed_context/embed_nl/self_attention_head_1/Tensordot/ReshapeReshape@embed_context/embed_nl/self_attention_head_1/Tensordot/transpose<embed_context/embed_nl/self_attention_head_1/Tensordot/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Gembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:

Bembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1	TransposeEembed_context/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpGembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1/perm*
_output_shapes

:*
T0

Fembed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

@embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1ReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1Fembed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shape*
T0*
_output_shapes

:
ћ
=embed_context/embed_nl/self_attention_head_1/Tensordot/MatMulMatMul>embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape@embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ

>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Dembed_context/embed_nl/self_attention_head_1/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Р
?embed_context/embed_nl/self_attention_head_1/Tensordot/concat_1ConcatV2?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_2Dembed_context/embed_nl/self_attention_head_1/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:

6embed_context/embed_nl/self_attention_head_1/TensordotReshape=embed_context/embed_nl/self_attention_head_1/Tensordot/MatMul?embed_context/embed_nl/self_attention_head_1/Tensordot/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
н
Lembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/shapeConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB"      *
dtype0*
_output_shapes
:
Я
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/minConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *  П*
dtype0*
_output_shapes
: 
Я
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *  ?
Љ
Tembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/RandomUniformRandomUniformLembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/shape*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:*
T0
Ъ
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/subSubJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/maxJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/min*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 
м
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/mulMulTembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/RandomUniformJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/sub*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes

:*
T0
Ю
Fembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniformAddJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/mulJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/min*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes

:
ђ
+embed_nl/self_attention_head_1/keys_weightsVarHandleOp*
dtype0*
_output_shapes
: *<
shared_name-+embed_nl/self_attention_head_1/keys_weights*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
shape
:
Ї
Lembed_nl/self_attention_head_1/keys_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 

2embed_nl/self_attention_head_1/keys_weights/AssignAssignVariableOp+embed_nl/self_attention_head_1/keys_weightsFembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0
ы
?embed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:
б
Lembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/scaleConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Ш
\embed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:

Membed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2LossL2Loss\embed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 
Ы
Fembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizerMulLembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/scaleMembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights
Г
Gembed_context/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:

=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesConst*
valueB:*
dtype0*
_output_shapes
:

=embed_context/embed_nl/self_attention_head_1/Tensordot_1/freeConst*
dtype0*
_output_shapes
:*
valueB"       
Џ
>embed_context/embed_nl/self_attention_head_1/Tensordot_1/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
м
Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Shape=embed_context/embed_nl/self_attention_head_1/Tensordot_1/freeFembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:

Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
р
Cembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Shape=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesHembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0

>embed_context/embed_nl/self_attention_head_1/Tensordot_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
щ
=embed_context/embed_nl/self_attention_head_1/Tensordot_1/ProdProdAembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const*
_output_shapes
: *
T0

@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
я
?embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod_1ProdCembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_1*
_output_shapes
: *
T0

Dembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Н
?embed_context/embed_nl/self_attention_head_1/Tensordot_1/concatConcatV2=embed_context/embed_nl/self_attention_head_1/Tensordot_1/free=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesDembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat/axis*
N*
_output_shapes
:*
T0
є
>embed_context/embed_nl/self_attention_head_1/Tensordot_1/stackPack=embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod?embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod_1*
T0*
N*
_output_shapes
:

Bembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose	TransposeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1?embed_context/embed_nl/self_attention_head_1/Tensordot_1/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

@embed_context/embed_nl/self_attention_head_1/Tensordot_1/ReshapeReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose>embed_context/embed_nl/self_attention_head_1/Tensordot_1/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Iembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:

Dembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1	TransposeGembed_context/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpIembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/perm*
T0*
_output_shapes

:

Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

Bembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1ReshapeDembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shape*
T0*
_output_shapes

:

?embed_context/embed_nl/self_attention_head_1/Tensordot_1/MatMulMatMul@embed_context/embed_nl/self_attention_head_1/Tensordot_1/ReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0

@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ш
Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1ConcatV2Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_2Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
:

8embed_context/embed_nl/self_attention_head_1/Tensordot_1Reshape?embed_context/embed_nl/self_attention_head_1/Tensordot_1/MatMulAembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

3embed_context/embed_nl/self_attention_head_1/MatMulBatchMatMulV26embed_context/embed_nl/self_attention_head_1/Tensordot8embed_context/embed_nl/self_attention_head_1/Tensordot_1*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
adj_y(*
T0
}
;embed_context/embed_nl/self_attention_head_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
є
7embed_context/embed_nl/self_attention_head_1/ExpandDims
ExpandDims1embed_context/embed_nl/self_attention_head_1/Cast;embed_context/embed_nl/self_attention_head_1/ExpandDims/dim*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
w
2embed_context/embed_nl/self_attention_head_1/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
0embed_context/embed_nl/self_attention_head_1/subSub2embed_context/embed_nl/self_attention_head_1/sub/x7embed_context/embed_nl/self_attention_head_1/ExpandDims*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
w
2embed_context/embed_nl/self_attention_head_1/mul/xConst*
_output_shapes
: *
valueB
 *(knN*
dtype0
м
0embed_context/embed_nl/self_attention_head_1/mulMul2embed_context/embed_nl/self_attention_head_1/mul/x0embed_context/embed_nl/self_attention_head_1/sub*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
ш
2embed_context/embed_nl/self_attention_head_1/sub_1Sub3embed_context/embed_nl/self_attention_head_1/MatMul0embed_context/embed_nl/self_attention_head_1/mul*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
Л
4embed_context/embed_nl/self_attention_head_1/SoftmaxSoftmax2embed_context/embed_nl/self_attention_head_1/sub_1*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0

Iembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Eembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims
ExpandDims1embed_context/embed_nl/self_attention_head_1/CastIembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dim*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mulMul4embed_context/embed_nl/self_attention_head_1/SoftmaxEembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0

Pembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indicesConst*
valueB :
ўџџџџџџџџ*
dtype0*
_output_shapes
: 
Ї
>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/SumSum>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mulPembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indices*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(*
T0

Rembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1Sum1embed_context/embed_nl/self_attention_head_1/CastRembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Aembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast/xConst*
value	B :*
dtype0*
_output_shapes
: 
К
?embed_context/embed_nl/self_attention_head_1/sqrtn_combine/CastCastAembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast/x*

DstT0*
_output_shapes
: *

SrcT0

Bembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MaximumMaximum?embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1*'
_output_shapes
:џџџџџџџџџ*
T0
П
@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtRsqrtBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Maximum*'
_output_shapes
:џџџџџџџџџ*
T0

Kembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Gembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1
ExpandDims@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtKembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dim*+
_output_shapes
:џџџџџџџџџ*
T0

@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Mul>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/SumGembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

Aembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MatMulBatchMatMulV2@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*+
_output_shapes
:џџџџџџџџџ
й
Bembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeSqueezeAembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MatMul*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

sequence_encodingIdentityAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ъ
Bskip_connection/projection/weights/Initializer/random_normal/shapeConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"      *
dtype0*
_output_shapes
:
Н
Askip_connection/projection/weights/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *    
П
Cskip_connection/projection/weights/Initializer/random_normal/stddevConst*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *  ?*
dtype0

Qskip_connection/projection/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalBskip_connection/projection/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*5
_class+
)'loc:@skip_connection/projection/weights
П
@skip_connection/projection/weights/Initializer/random_normal/mulMulQskip_connection/projection/weights/Initializer/random_normal/RandomStandardNormalCskip_connection/projection/weights/Initializer/random_normal/stddev*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
Ј
<skip_connection/projection/weights/Initializer/random_normalAdd@skip_connection/projection/weights/Initializer/random_normal/mulAskip_connection/projection/weights/Initializer/random_normal/mean*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
п
1skip_connection/projection/weights/Initializer/QrQr<skip_connection/projection/weights/Initializer/random_normal*
T0*5
_class+
)'loc:@skip_connection/projection/weights*(
_output_shapes
::
д
7skip_connection/projection/weights/Initializer/DiagPartDiagPart3skip_connection/projection/weights/Initializer/Qr:1*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes
:
а
3skip_connection/projection/weights/Initializer/SignSign7skip_connection/projection/weights/Initializer/DiagPart*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes
:*
T0

2skip_connection/projection/weights/Initializer/mulMul1skip_connection/projection/weights/Initializer/Qr3skip_connection/projection/weights/Initializer/Sign*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
ж
Nskip_connection/projection/weights/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"       
К
Iskip_connection/projection/weights/Initializer/matrix_transpose/transpose	Transpose2skip_connection/projection/weights/Initializer/mulNskip_connection/projection/weights/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:*
T0*5
_class+
)'loc:@skip_connection/projection/weights
Ф
<skip_connection/projection/weights/Initializer/Reshape/shapeConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"      *
dtype0*
_output_shapes
:
Њ
6skip_connection/projection/weights/Initializer/ReshapeReshapeIskip_connection/projection/weights/Initializer/matrix_transpose/transpose<skip_connection/projection/weights/Initializer/Reshape/shape*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
В
6skip_connection/projection/weights/Initializer/mul_1/xConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 

4skip_connection/projection/weights/Initializer/mul_1Mul6skip_connection/projection/weights/Initializer/mul_1/x6skip_connection/projection/weights/Initializer/Reshape*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
з
"skip_connection/projection/weightsVarHandleOp*
dtype0*
_output_shapes
: *3
shared_name$"skip_connection/projection/weights*5
_class+
)'loc:@skip_connection/projection/weights*
shape
:

Cskip_connection/projection/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp"skip_connection/projection/weights*
_output_shapes
: 
л
)skip_connection/projection/weights/AssignAssignVariableOp"skip_connection/projection/weights4skip_connection/projection/weights/Initializer/mul_1*
dtype0*5
_class+
)'loc:@skip_connection/projection/weights
а
6skip_connection/projection/weights/Read/ReadVariableOpReadVariableOp"skip_connection/projection/weights*5
_class+
)'loc:@skip_connection/projection/weights*
dtype0*
_output_shapes

:
П
Cskip_connection/projection/weights/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *ЭЬЬ=*
dtype0
Ж
Sskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
ћ
Dskip_connection/projection/weights/Regularizer/l2_regularizer/L2LossL2LossSskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes
: 
Ї
=skip_connection/projection/weights/Regularizer/l2_regularizerMulCskip_connection/projection/weights/Regularizer/l2_regularizer/scaleDskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes
: 

0skip_connection/projection/MatMul/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
г
!skip_connection/projection/MatMulMatMulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze0skip_connection/projection/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
р
Hencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

6encode_context_feature/layer_norm_input/LayerNorm/betaVarHandleOp*
_output_shapes
: *G
shared_name86encode_context_feature/layer_norm_input/LayerNorm/beta*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
shape:*
dtype0
Н
Wencode_context_feature/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp6encode_context_feature/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
Ћ
=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp6encode_context_feature/layer_norm_input/LayerNorm/betaHencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0

Jencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp6encode_context_feature/layer_norm_input/LayerNorm/beta*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
с
Hencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

7encode_context_feature/layer_norm_input/LayerNorm/gammaVarHandleOp*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: *H
shared_name97encode_context_feature/layer_norm_input/LayerNorm/gamma
П
Xencode_context_feature/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
Ў
>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gammaHencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0

Kencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
:*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0

Pencode_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

>encode_context_feature/layer_norm_input/LayerNorm/moments/meanMeanBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezePencode_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Fencode_context_feature/layer_norm_input/LayerNorm/moments/StopGradientStopGradient>encode_context_feature/layer_norm_input/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Kencode_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeFencode_context_feature/layer_norm_input/LayerNorm/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ*
T0

Tencode_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
А
Bencode_context_feature/layer_norm_input/LayerNorm/moments/varianceMeanKencode_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceTencode_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
џ
?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/addAddBencode_context_feature/layer_norm_input/LayerNorm/moments/varianceAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
Н
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
Т
Nencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mulMulAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtNencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
џ
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1MulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
ћ
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2Mul>encode_context_feature/layer_norm_input/LayerNorm/moments/mean?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Н
Jencode_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp6encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:

?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/subSubJencode_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0
ў
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1AddAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Oencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
з
Nencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*
_output_shapes
: *B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *    *
dtype0
й
Pencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
^encode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalOencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
ѓ
Mencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulMul^encode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalPencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
м
Iencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normalAddMencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulNencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mean*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:

>encode_context_feature/layer_0/hidden_0/weights/Initializer/QrQrIencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*(
_output_shapes
::
ћ
Dencode_context_feature/layer_0/hidden_0/weights/Initializer/DiagPartDiagPart@encode_context_feature/layer_0/hidden_0/weights/Initializer/Qr:1*
_output_shapes
:*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
ї
@encode_context_feature/layer_0/hidden_0/weights/Initializer/SignSignDencode_context_feature/layer_0/hidden_0/weights/Initializer/DiagPart*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
:
Е
?encode_context_feature/layer_0/hidden_0/weights/Initializer/mulMul>encode_context_feature/layer_0/hidden_0/weights/Initializer/Qr@encode_context_feature/layer_0/hidden_0/weights/Initializer/Sign*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
о
Iencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
Ч
Cencode_context_feature/layer_0/hidden_0/weights/Initializer/ReshapeReshape?encode_context_feature/layer_0/hidden_0/weights/Initializer/mulIencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shape*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
Ь
Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
П
Aencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1MulCencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xCencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
ў
/encode_context_feature/layer_0/hidden_0/weightsVarHandleOp*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
shape
:*
dtype0*
_output_shapes
: *@
shared_name1/encode_context_feature/layer_0/hidden_0/weights
Џ
Pencode_context_feature/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 

6encode_context_feature/layer_0/hidden_0/weights/AssignAssignVariableOp/encode_context_feature/layer_0/hidden_0/weightsAencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
dtype0
ї
Cencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
й
Pencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
а
`encode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:*
dtype0
Ђ
Qencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Loss`encode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
л
Jencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulPencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleQencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
: *
T0
­
=encode_context_feature/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
ь
.encode_context_feature/layer_0/hidden_0/MatMulMatMulAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1=encode_context_feature/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

,encode_context_feature/layer_0/hidden_0/ReluRelu.encode_context_feature/layer_0/hidden_0/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
ф
Jencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*
_output_shapes
:*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
valueB*    *
dtype0

8encode_context_feature/layer_0/layer_norm/LayerNorm/betaVarHandleOp*I
shared_name:8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
С
Yencode_context_feature/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 
Г
?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/betaJencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0

Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
х
Jencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *J
shared_name;9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma
У
Zencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ж
@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaJencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0

Mencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma

Rencode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/meanMean,encode_context_feature/layer_0/hidden_0/ReluRencode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
Ь
Hencode_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradient@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Mencode_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference,encode_context_feature/layer_0/hidden_0/ReluHencode_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ
 
Vencode_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ж
Dencode_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceMeanMencode_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceVencode_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/addAddDencode_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
С
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
Pencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mulMulCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtPencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
э
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul,encode_context_feature/layer_0/hidden_0/ReluAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2Mul@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/meanAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
С
Lencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/subSubLencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0

Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1AddCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Oencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
з
Nencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
й
Pencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
^encode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalOencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shape*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
dtype0
ѓ
Mencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulMul^encode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalPencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
м
Iencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normalAddMencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulNencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:

>encode_context_feature/layer_1/hidden_1/weights/Initializer/QrQrIencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal*(
_output_shapes
::*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
ћ
Dencode_context_feature/layer_1/hidden_1/weights/Initializer/DiagPartDiagPart@encode_context_feature/layer_1/hidden_1/weights/Initializer/Qr:1*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
:
ї
@encode_context_feature/layer_1/hidden_1/weights/Initializer/SignSignDencode_context_feature/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
:
Е
?encode_context_feature/layer_1/hidden_1/weights/Initializer/mulMul>encode_context_feature/layer_1/hidden_1/weights/Initializer/Qr@encode_context_feature/layer_1/hidden_1/weights/Initializer/Sign*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
№
[encode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:
ю
Vencode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	Transpose?encode_context_feature/layer_1/hidden_1/weights/Initializer/mul[encode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
о
Iencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
о
Cencode_context_feature/layer_1/hidden_1/weights/Initializer/ReshapeReshapeVencode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeIencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shape*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
Ь
Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
П
Aencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1MulCencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xCencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
ў
/encode_context_feature/layer_1/hidden_1/weightsVarHandleOp*@
shared_name1/encode_context_feature/layer_1/hidden_1/weights*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
shape
:*
dtype0*
_output_shapes
: 
Џ
Pencode_context_feature/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 

6encode_context_feature/layer_1/hidden_1/weights/AssignAssignVariableOp/encode_context_feature/layer_1/hidden_1/weightsAencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
dtype0
ї
Cencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
dtype0
й
Pencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
а
`encode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
Ђ
Qencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Loss`encode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
л
Jencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulPencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleQencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
: *
T0
­
=encode_context_feature/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
ю
.encode_context_feature/layer_1/hidden_1/MatMulMatMulCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1=encode_context_feature/layer_1/hidden_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

,encode_context_feature/layer_1/hidden_1/ReluRelu.encode_context_feature/layer_1/hidden_1/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Jencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
valueB*    

8encode_context_feature/layer_1/layer_norm/LayerNorm/betaVarHandleOp*I
shared_name:8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
С
Yencode_context_feature/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 
Г
?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/betaJencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0

Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
х
Jencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*J
shared_name;9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: 
У
Zencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ж
@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaJencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0

Mencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
:*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0

Rencode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/meanMean,encode_context_feature/layer_1/hidden_1/ReluRencode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
Ь
Hencode_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradient@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:џџџџџџџџџ*
T0

Mencode_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference,encode_context_feature/layer_1/hidden_1/ReluHencode_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ*
T0
 
Vencode_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ж
Dencode_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceMeanMencode_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceVencode_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/addAddDencode_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
С
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
Ц
Pencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mulMulCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtPencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
э
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul,encode_context_feature/layer_1/hidden_1/ReluAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0

Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2Mul@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/meanAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
С
Lencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/subSubLencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0

Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1AddCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
Dencode_context_feature/final/weights/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"      
С
Cencode_context_feature/final/weights/Initializer/random_normal/meanConst*
_output_shapes
: *7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *    *
dtype0
У
Eencode_context_feature/final/weights/Initializer/random_normal/stddevConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Sencode_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalDencode_context_feature/final/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*7
_class-
+)loc:@encode_context_feature/final/weights
Ч
Bencode_context_feature/final/weights/Initializer/random_normal/mulMulSencode_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalEencode_context_feature/final/weights/Initializer/random_normal/stddev*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:*
T0
А
>encode_context_feature/final/weights/Initializer/random_normalAddBencode_context_feature/final/weights/Initializer/random_normal/mulCencode_context_feature/final/weights/Initializer/random_normal/mean*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
х
3encode_context_feature/final/weights/Initializer/QrQr>encode_context_feature/final/weights/Initializer/random_normal*7
_class-
+)loc:@encode_context_feature/final/weights*(
_output_shapes
::*
T0
к
9encode_context_feature/final/weights/Initializer/DiagPartDiagPart5encode_context_feature/final/weights/Initializer/Qr:1*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes
:
ж
5encode_context_feature/final/weights/Initializer/SignSign9encode_context_feature/final/weights/Initializer/DiagPart*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes
:

4encode_context_feature/final/weights/Initializer/mulMul3encode_context_feature/final/weights/Initializer/Qr5encode_context_feature/final/weights/Initializer/Sign*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
к
Pencode_context_feature/final/weights/Initializer/matrix_transpose/transpose/permConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"       *
dtype0*
_output_shapes
:
Т
Kencode_context_feature/final/weights/Initializer/matrix_transpose/transpose	Transpose4encode_context_feature/final/weights/Initializer/mulPencode_context_feature/final/weights/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:*
T0*7
_class-
+)loc:@encode_context_feature/final/weights
Ш
>encode_context_feature/final/weights/Initializer/Reshape/shapeConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
В
8encode_context_feature/final/weights/Initializer/ReshapeReshapeKencode_context_feature/final/weights/Initializer/matrix_transpose/transpose>encode_context_feature/final/weights/Initializer/Reshape/shape*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
Ж
8encode_context_feature/final/weights/Initializer/mul_1/xConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 

6encode_context_feature/final/weights/Initializer/mul_1Mul8encode_context_feature/final/weights/Initializer/mul_1/x8encode_context_feature/final/weights/Initializer/Reshape*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
н
$encode_context_feature/final/weightsVarHandleOp*
dtype0*
_output_shapes
: *5
shared_name&$encode_context_feature/final/weights*7
_class-
+)loc:@encode_context_feature/final/weights*
shape
:

Eencode_context_feature/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$encode_context_feature/final/weights*
_output_shapes
: 
у
+encode_context_feature/final/weights/AssignAssignVariableOp$encode_context_feature/final/weights6encode_context_feature/final/weights/Initializer/mul_1*7
_class-
+)loc:@encode_context_feature/final/weights*
dtype0
ж
8encode_context_feature/final/weights/Read/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*7
_class-
+)loc:@encode_context_feature/final/weights*
dtype0*
_output_shapes

:
У
Eencode_context_feature/final/weights/Regularizer/l2_regularizer/scaleConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
К
Uencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*
_output_shapes

:*
dtype0

Fencode_context_feature/final/weights/Regularizer/l2_regularizer/L2LossL2LossUencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*7
_class-
+)loc:@encode_context_feature/final/weights
Џ
?encode_context_feature/final/weights/Regularizer/l2_regularizerMulEencode_context_feature/final/weights/Regularizer/l2_regularizer/scaleFencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes
: 

2encode_context_feature/final/MatMul/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*
dtype0*
_output_shapes

:
и
#encode_context_feature/final/MatMulMatMulCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_12encode_context_feature/final/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0

encode_context_feature/addAdd#encode_context_feature/final/MatMul!skip_connection/projection/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
д
Bencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zerosConst*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
§
0encode_context_feature/layer_norm/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *A
shared_name20encode_context_feature/layer_norm/LayerNorm/beta*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
shape:
Б
Qencode_context_feature/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp0encode_context_feature/layer_norm/LayerNorm/beta*
_output_shapes
: 

7encode_context_feature/layer_norm/LayerNorm/beta/AssignAssignVariableOp0encode_context_feature/layer_norm/LayerNorm/betaBencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros*
dtype0*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta
і
Dencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp0encode_context_feature/layer_norm/LayerNorm/beta*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
е
Bencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/onesConst*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

1encode_context_feature/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *B
shared_name31encode_context_feature/layer_norm/LayerNorm/gamma*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
shape:
Г
Rencode_context_feature/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp1encode_context_feature/layer_norm/LayerNorm/gamma*
_output_shapes
: 

8encode_context_feature/layer_norm/LayerNorm/gamma/AssignAssignVariableOp1encode_context_feature/layer_norm/LayerNorm/gammaBencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0
љ
Eencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp1encode_context_feature/layer_norm/LayerNorm/gamma*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Jencode_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ы
8encode_context_feature/layer_norm/LayerNorm/moments/meanMeanencode_context_feature/addJencode_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
М
@encode_context_feature/layer_norm/LayerNorm/moments/StopGradientStopGradient8encode_context_feature/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
Eencode_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifferenceencode_context_feature/add@encode_context_feature/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Nencode_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

<encode_context_feature/layer_norm/LayerNorm/moments/varianceMeanEencode_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceNencode_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

;encode_context_feature/layer_norm/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
э
9encode_context_feature/layer_norm/LayerNorm/batchnorm/addAdd<encode_context_feature/layer_norm/LayerNorm/moments/variance;encode_context_feature/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Б
;encode_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt9encode_context_feature/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
Ж
Hencode_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp1encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
љ
9encode_context_feature/layer_norm/LayerNorm/batchnorm/mulMul;encode_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtHencode_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
Ы
;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_1Mulencode_context_feature/add9encode_context_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
щ
;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_2Mul8encode_context_feature/layer_norm/LayerNorm/moments/mean9encode_context_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
Б
Dencode_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp0encode_context_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ѕ
9encode_context_feature/layer_norm/LayerNorm/batchnorm/subSubDencode_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOp;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0
ь
;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1Add;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_19encode_context_feature/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Й
@encode_context_feature/normalize/context_feature_encoding/SquareSquare;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1*'
_output_shapes
:џџџџџџџџџ*
T0

Oencode_context_feature/normalize/context_feature_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

=encode_context_feature/normalize/context_feature_encoding/SumSum@encode_context_feature/normalize/context_feature_encoding/SquareOencode_context_feature/normalize/context_feature_encoding/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

Cencode_context_feature/normalize/context_feature_encoding/Maximum/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0

Aencode_context_feature/normalize/context_feature_encoding/MaximumMaximum=encode_context_feature/normalize/context_feature_encoding/SumCencode_context_feature/normalize/context_feature_encoding/Maximum/y*
T0*'
_output_shapes
:џџџџџџџџџ
Н
?encode_context_feature/normalize/context_feature_encoding/RsqrtRsqrtAencode_context_feature/normalize/context_feature_encoding/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ
№
9encode_context_feature/normalize/context_feature_encodingMul;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1?encode_context_feature/normalize/context_feature_encoding/Rsqrt*
T0*'
_output_shapes
:џџџџџџџџџ

context_encodingIdentity9encode_context_feature/normalize/context_feature_encoding*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
"normalize_sentence_encoding/SquareSquareBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze*
T0*'
_output_shapes
:џџџџџџџџџ
s
1normalize_sentence_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Р
normalize_sentence_encoding/SumSum"normalize_sentence_encoding/Square1normalize_sentence_encoding/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
j
%normalize_sentence_encoding/Maximum/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
Ј
#normalize_sentence_encoding/MaximumMaximumnormalize_sentence_encoding/Sum%normalize_sentence_encoding/Maximum/y*
T0*'
_output_shapes
:џџџџџџџџџ

!normalize_sentence_encoding/RsqrtRsqrt#normalize_sentence_encoding/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ
Л
normalize_sentence_encodingMulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze!normalize_sentence_encoding/Rsqrt*
T0*'
_output_shapes
:џџџџџџџџџ
l
sentence_encodingIdentitynormalize_sentence_encoding*
T0*'
_output_shapes
:џџџџџџџџџ
u
3embed_response/embed_nl/SparseToDense/default_valueConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 

%embed_response/embed_nl/SparseToDenseSparseToDense#RaggedToSparse/RaggedTensorToSparse%RaggedToSparse/RaggedTensorToSparse:2hash_table_Lookup/Select3embed_response/embed_nl/SparseToDense/default_value*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
d
"embed_response/embed_nl/NotEqual/yConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
В
 embed_response/embed_nl/NotEqualNotEqual%embed_response/embed_nl/SparseToDense"embed_response/embed_nl/NotEqual/y*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0	

3embed_response/embed_nl/EmbeddingLookupUnique/ShapeShape%embed_response/embed_nl/SparseToDense*
T0	*
_output_shapes
:
}
3embed_response/embed_nl/EmbeddingLookupUnique/ConstConst*
valueB: *
dtype0*
_output_shapes
:
к
2embed_response/embed_nl/EmbeddingLookupUnique/ProdProd3embed_response/embed_nl/EmbeddingLookupUnique/Shape3embed_response/embed_nl/EmbeddingLookupUnique/Const*
T0*
_output_shapes
:*
	keep_dims(
Щ
5embed_response/embed_nl/EmbeddingLookupUnique/ReshapeReshape%embed_response/embed_nl/SparseToDense2embed_response/embed_nl/EmbeddingLookupUnique/Prod*
T0	*#
_output_shapes
:џџџџџџџџџ
В
4embed_response/embed_nl/EmbeddingLookupUnique/UniqueUnique5embed_response/embed_nl/EmbeddingLookupUnique/Reshape*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
­
>embed_response/embed_nl/EmbeddingLookupUnique/embedding_lookupResourceGather%embedding_matrices/subword_embeddings4embed_response/embed_nl/EmbeddingLookupUnique/Unique*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
Tindices0	*
dtype0*'
_output_shapes
:џџџџџџџџџ
џ
Gembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/IdentityIdentity>embed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*'
_output_shapes
:џџџџџџџџџ
а
Iembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1IdentityGembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
]embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scaleConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
д
^embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2LossL2LossIembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
: 
О
Wembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizerMul]embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scale^embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ю
Hembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penaltyIdentityWembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer*
_output_shapes
: *
T0
}
;embed_response/embed_nl/EmbeddingLookupUnique/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
з
6embed_response/embed_nl/EmbeddingLookupUnique/GatherV2GatherV2Iembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_16embed_response/embed_nl/EmbeddingLookupUnique/Unique:1;embed_response/embed_nl/EmbeddingLookupUnique/GatherV2/axis*
Tindices0*
Tparams0*'
_output_shapes
:џџџџџџџџџ*
Taxis0
Ў
5embed_response/embed_nl/EmbeddingLookupUnique/Shape_1ShapeIembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
:

Aembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0

Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

;embed_response/embed_nl/EmbeddingLookupUnique/strided_sliceStridedSlice5embed_response/embed_nl/EmbeddingLookupUnique/Shape_1Aembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stackCembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0
{
9embed_response/embed_nl/EmbeddingLookupUnique/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

4embed_response/embed_nl/EmbeddingLookupUnique/concatConcatV23embed_response/embed_nl/EmbeddingLookupUnique/Shape;embed_response/embed_nl/EmbeddingLookupUnique/strided_slice9embed_response/embed_nl/EmbeddingLookupUnique/concat/axis*
T0*
N*
_output_shapes
:
я
7embed_response/embed_nl/EmbeddingLookupUnique/Reshape_1Reshape6embed_response/embed_nl/EmbeddingLookupUnique/GatherV24embed_response/embed_nl/EmbeddingLookupUnique/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
b
embed_response/embed_nl/mul/yConst*
valueB
 *зГн?*
dtype0*
_output_shapes
: 
Й
embed_response/embed_nl/mulMul7embed_response/embed_nl/EmbeddingLookupUnique/Reshape_1embed_response/embed_nl/mul/y*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

6embed_response/embed_nl/add_positional_embedding/ShapeShapeembed_response/embed_nl/mul*
_output_shapes
:*
T0

Dembed_response/embed_nl/add_positional_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0

Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
>embed_response/embed_nl/add_positional_embedding/strided_sliceStridedSlice6embed_response/embed_nl/add_positional_embedding/ShapeDembed_response/embed_nl/add_positional_embedding/strided_slice/stackFembed_response/embed_nl/add_positional_embedding/strided_slice/stack_1Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
}
;embed_response/embed_nl/add_positional_embedding/floordiv/yConst*
dtype0*
_output_shapes
: *
value	B :
у
9embed_response/embed_nl/add_positional_embedding/floordivFloorDiv>embed_response/embed_nl/add_positional_embedding/strided_slice;embed_response/embed_nl/add_positional_embedding/floordiv/y*
_output_shapes
: *
T0
x
6embed_response/embed_nl/add_positional_embedding/add/xConst*
value	B :*
dtype0*
_output_shapes
: 
Я
4embed_response/embed_nl/add_positional_embedding/addAdd6embed_response/embed_nl/add_positional_embedding/add/x9embed_response/embed_nl/add_positional_embedding/floordiv*
T0*
_output_shapes
: 
Ѕ
Dembed_response/embed_nl/add_positional_embedding/Tile/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:

Aembed_response/embed_nl/add_positional_embedding/Tile/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
ю
?embed_response/embed_nl/add_positional_embedding/Tile/multiplesPack4embed_response/embed_nl/add_positional_embedding/addAembed_response/embed_nl/add_positional_embedding/Tile/multiples/1*
N*
_output_shapes
:*
T0
і
5embed_response/embed_nl/add_positional_embedding/TileTileDembed_response/embed_nl/add_positional_embedding/Tile/ReadVariableOp?embed_response/embed_nl/add_positional_embedding/Tile/multiples*'
_output_shapes
:џџџџџџџџџ*
T0

Fembed_response/embed_nl/add_positional_embedding/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
О
Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_1Pack>embed_response/embed_nl/add_positional_embedding/strided_slice*
T0*
N*
_output_shapes
:

Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
@embed_response/embed_nl/add_positional_embedding/strided_slice_1StridedSlice5embed_response/embed_nl/add_positional_embedding/TileFembed_response/embed_nl/add_positional_embedding/strided_slice_1/stackHembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_1Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_2*'
_output_shapes
:џџџџџџџџџ*
T0*
Index0*

begin_mask

?embed_response/embed_nl/add_positional_embedding/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

;embed_response/embed_nl/add_positional_embedding/ExpandDims
ExpandDims@embed_response/embed_nl/add_positional_embedding/strided_slice_1?embed_response/embed_nl/add_positional_embedding/ExpandDims/dim*
T0*+
_output_shapes
:џџџџџџџџџ
ж
6embed_response/embed_nl/add_positional_embedding/add_1Addembed_response/embed_nl/mul;embed_response/embed_nl/add_positional_embedding/ExpandDims*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Qembed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
Ђ
?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/meanMean6embed_response/embed_nl/add_positional_embedding/add_1Qembed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indices*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(*
T0
з
Gembed_response/embed_nl/layer_norm_input/LayerNorm/moments/StopGradientStopGradient?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ё
Lembed_response/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifference6embed_response/embed_nl/add_positional_embedding/add_1Gembed_response/embed_nl/layer_norm_input/LayerNorm/moments/StopGradient*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Uembed_response/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Р
Cembed_response/embed_nl/layer_norm_input/LayerNorm/moments/varianceMeanLembed_response/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceUembed_response/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/addAddCembed_response/embed_nl/layer_norm_input/LayerNorm/moments/varianceBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/y*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ь
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Е
Oembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mulMulBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtOembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1Mul6embed_response/embed_nl/add_positional_embedding/add_1@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2Mul?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
А
Kembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:

@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/subSubKembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1AddBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/sub*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
І
2embed_response/embed_nl/self_attention_head_1/CastCast embed_response/embed_nl/NotEqual*

SrcT0
*

DstT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ѕ
3embed_response/embed_nl/self_attention_head_1/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

Aembed_response/embed_nl/self_attention_head_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

;embed_response/embed_nl/self_attention_head_1/strided_sliceStridedSlice3embed_response/embed_nl/self_attention_head_1/ShapeAembed_response/embed_nl/self_attention_head_1/strided_slice/stackCembed_response/embed_nl/self_attention_head_1/strided_slice/stack_1Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
Ї
5embed_response/embed_nl/self_attention_head_1/Shape_1ShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0

Cembed_response/embed_nl/self_attention_head_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:

Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

=embed_response/embed_nl/self_attention_head_1/strided_slice_1StridedSlice5embed_response/embed_nl/self_attention_head_1/Shape_1Cembed_response/embed_nl/self_attention_head_1/strided_slice_1/stackEembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_1Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
Г
Fembed_response/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:

<embed_response/embed_nl/self_attention_head_1/Tensordot/axesConst*
_output_shapes
:*
valueB:*
dtype0

<embed_response/embed_nl/self_attention_head_1/Tensordot/freeConst*
_output_shapes
:*
valueB"       *
dtype0
Џ
=embed_response/embed_nl/self_attention_head_1/Tensordot/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0

Eembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
и
@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Shape<embed_response/embed_nl/self_attention_head_1/Tensordot/freeEembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

Gembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
м
Bembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Shape<embed_response/embed_nl/self_attention_head_1/Tensordot/axesGembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:

=embed_response/embed_nl/self_attention_head_1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ц
<embed_response/embed_nl/self_attention_head_1/Tensordot/ProdProd@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Const*
_output_shapes
: *
T0

?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
ь
>embed_response/embed_nl/self_attention_head_1/Tensordot/Prod_1ProdBembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_1*
T0*
_output_shapes
: 

Cembed_response/embed_nl/self_attention_head_1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Й
>embed_response/embed_nl/self_attention_head_1/Tensordot/concatConcatV2<embed_response/embed_nl/self_attention_head_1/Tensordot/free<embed_response/embed_nl/self_attention_head_1/Tensordot/axesCembed_response/embed_nl/self_attention_head_1/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
ё
=embed_response/embed_nl/self_attention_head_1/Tensordot/stackPack<embed_response/embed_nl/self_attention_head_1/Tensordot/Prod>embed_response/embed_nl/self_attention_head_1/Tensordot/Prod_1*
T0*
N*
_output_shapes
:

Aembed_response/embed_nl/self_attention_head_1/Tensordot/transpose	TransposeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1>embed_response/embed_nl/self_attention_head_1/Tensordot/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

?embed_response/embed_nl/self_attention_head_1/Tensordot/ReshapeReshapeAembed_response/embed_nl/self_attention_head_1/Tensordot/transpose=embed_response/embed_nl/self_attention_head_1/Tensordot/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

Hembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:

Cembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1	TransposeFembed_response/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpHembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1/perm*
T0*
_output_shapes

:

Gembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"      

Aembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1ReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1Gembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shape*
T0*
_output_shapes

:
ў
>embed_response/embed_nl/self_attention_head_1/Tensordot/MatMulMatMul?embed_response/embed_nl/self_attention_head_1/Tensordot/ReshapeAembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ

?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Eembed_response/embed_nl/self_attention_head_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ф
@embed_response/embed_nl/self_attention_head_1/Tensordot/concat_1ConcatV2@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_2Eembed_response/embed_nl/self_attention_head_1/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:

7embed_response/embed_nl/self_attention_head_1/TensordotReshape>embed_response/embed_nl/self_attention_head_1/Tensordot/MatMul@embed_response/embed_nl/self_attention_head_1/Tensordot/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Д
Hembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:

>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesConst*
dtype0*
_output_shapes
:*
valueB:

>embed_response/embed_nl/self_attention_head_1/Tensordot_1/freeConst*
valueB"       *
dtype0*
_output_shapes
:
Б
?embed_response/embed_nl/self_attention_head_1/Tensordot_1/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0

Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
р
Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Shape>embed_response/embed_nl/self_attention_head_1/Tensordot_1/freeGembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ф
Dembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Shape>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesIembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0

?embed_response/embed_nl/self_attention_head_1/Tensordot_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ь
>embed_response/embed_nl/self_attention_head_1/Tensordot_1/ProdProdBembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Const*
_output_shapes
: *
T0

Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ђ
@embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod_1ProdDembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_1*
_output_shapes
: *
T0

Eembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
С
@embed_response/embed_nl/self_attention_head_1/Tensordot_1/concatConcatV2>embed_response/embed_nl/self_attention_head_1/Tensordot_1/free>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesEembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat/axis*
T0*
N*
_output_shapes
:
ї
?embed_response/embed_nl/self_attention_head_1/Tensordot_1/stackPack>embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod@embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod_1*
T0*
N*
_output_shapes
:

Cembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose	TransposeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1@embed_response/embed_nl/self_attention_head_1/Tensordot_1/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReshapeReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose?embed_response/embed_nl/self_attention_head_1/Tensordot_1/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Jembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:

Eembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1	TransposeHembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpJembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/perm*
T0*
_output_shapes

:

Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

Cembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1ReshapeEembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shape*
T0*
_output_shapes

:

@embed_response/embed_nl/self_attention_head_1/Tensordot_1/MatMulMatMulAembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ

Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1ConcatV2Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_2Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
:

9embed_response/embed_nl/self_attention_head_1/Tensordot_1Reshape@embed_response/embed_nl/self_attention_head_1/Tensordot_1/MatMulBembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

4embed_response/embed_nl/self_attention_head_1/MatMulBatchMatMulV27embed_response/embed_nl/self_attention_head_1/Tensordot9embed_response/embed_nl/self_attention_head_1/Tensordot_1*
adj_y(*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
~
<embed_response/embed_nl/self_attention_head_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ї
8embed_response/embed_nl/self_attention_head_1/ExpandDims
ExpandDims2embed_response/embed_nl/self_attention_head_1/Cast<embed_response/embed_nl/self_attention_head_1/ExpandDims/dim*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
x
3embed_response/embed_nl/self_attention_head_1/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ц
1embed_response/embed_nl/self_attention_head_1/subSub3embed_response/embed_nl/self_attention_head_1/sub/x8embed_response/embed_nl/self_attention_head_1/ExpandDims*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
x
3embed_response/embed_nl/self_attention_head_1/mul/xConst*
valueB
 *(knN*
dtype0*
_output_shapes
: 
п
1embed_response/embed_nl/self_attention_head_1/mulMul3embed_response/embed_nl/self_attention_head_1/mul/x1embed_response/embed_nl/self_attention_head_1/sub*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
ы
3embed_response/embed_nl/self_attention_head_1/sub_1Sub4embed_response/embed_nl/self_attention_head_1/MatMul1embed_response/embed_nl/self_attention_head_1/mul*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
Н
5embed_response/embed_nl/self_attention_head_1/SoftmaxSoftmax3embed_response/embed_nl/self_attention_head_1/sub_1*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

Jembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Fembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims
ExpandDims2embed_response/embed_nl/self_attention_head_1/CastJembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dim*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0

?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/mulMul5embed_response/embed_nl/self_attention_head_1/SoftmaxFembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0

Qembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indicesConst*
valueB :
ўџџџџџџџџ*
dtype0*
_output_shapes
: 
Њ
?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/SumSum?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/mulQembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indices*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(

Sembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1Sum2embed_response/embed_nl/self_attention_head_1/CastSembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Bembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Cast/xConst*
dtype0*
_output_shapes
: *
value	B :
М
@embed_response/embed_nl/self_attention_head_1/sqrtn_combine/CastCastBembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Cast/x*

SrcT0*

DstT0*
_output_shapes
: 

Cembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MaximumMaximum@embed_response/embed_nl/self_attention_head_1/sqrtn_combine/CastAembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1*
T0*'
_output_shapes
:џџџџџџџџџ
С
Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtRsqrtCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ

Lembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Hembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1
ExpandDimsAembed_response/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtLembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dim*
T0*+
_output_shapes
:џџџџџџџџџ

Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Mul?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/SumHembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Bembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MatMulBatchMatMulV2Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*+
_output_shapes
:џџџџџџџџџ
л
Cembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeSqueezeBembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MatMul*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0

2skip_connection_1/projection/MatMul/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
и
#skip_connection_1/projection/MatMulMatMulCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze2skip_connection_1/projection/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
ж
Cencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

1encode_nl_feature/layer_norm_input/LayerNorm/betaVarHandleOp*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: *B
shared_name31encode_nl_feature/layer_norm_input/LayerNorm/beta
Г
Rencode_nl_feature/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*
_output_shapes
: 

8encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/betaCencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0
љ
Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
з
Cencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*
_output_shapes
:*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma*
valueB*  ?*
dtype0

2encode_nl_feature/layer_norm_input/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *C
shared_name42encode_nl_feature/layer_norm_input/LayerNorm/gamma*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma
Е
Sencode_nl_feature/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 

9encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gammaCencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma*
dtype0
ќ
Fencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

Kencode_nl_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

9encode_nl_feature/layer_norm_input/LayerNorm/moments/meanMeanCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeKencode_nl_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
О
Aencode_nl_feature/layer_norm_input/LayerNorm/moments/StopGradientStopGradient9encode_nl_feature/layer_norm_input/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Fencode_nl_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeAencode_nl_feature/layer_norm_input/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Oencode_nl_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ё
=encode_nl_feature/layer_norm_input/LayerNorm/moments/varianceMeanFencode_nl_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceOencode_nl_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
№
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/addAdd=encode_nl_feature/layer_norm_input/LayerNorm/moments/variance<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Г
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
И
Iencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
ќ
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mulMul<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtIencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
і
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_1MulCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
ь
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_2Mul9encode_nl_feature/layer_norm_input/LayerNorm/moments/mean:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
Г
Eencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
ј
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/subSubEencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOp<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
я
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add_1Add<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_1:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
к
Jencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
Э
Iencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
Kencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
В
Yencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalJencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
п
Hencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulMulYencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalKencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:
Ш
Dencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normalAddHencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulIencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mean*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
ї
9encode_nl_feature/layer_0/hidden_0/weights/Initializer/QrQrDencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*(
_output_shapes
::
ь
?encode_nl_feature/layer_0/hidden_0/weights/Initializer/DiagPartDiagPart;encode_nl_feature/layer_0/hidden_0/weights/Initializer/Qr:1*
_output_shapes
:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
ш
;encode_nl_feature/layer_0/hidden_0/weights/Initializer/SignSign?encode_nl_feature/layer_0/hidden_0/weights/Initializer/DiagPart*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
:
Ё
:encode_nl_feature/layer_0/hidden_0/weights/Initializer/mulMul9encode_nl_feature/layer_0/hidden_0/weights/Initializer/Qr;encode_nl_feature/layer_0/hidden_0/weights/Initializer/Sign*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:
д
Dencode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
Г
>encode_nl_feature/layer_0/hidden_0/weights/Initializer/ReshapeReshape:encode_nl_feature/layer_0/hidden_0/weights/Initializer/mulDencode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape/shape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
Т
>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1/xConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ћ
<encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1Mul>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1/x>encode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
я
*encode_nl_feature/layer_0/hidden_0/weightsVarHandleOp*
dtype0*
_output_shapes
: *;
shared_name,*encode_nl_feature/layer_0/hidden_0/weights*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
shape
:
Ѕ
Kencode_nl_feature/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp*encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
: 
ћ
1encode_nl_feature/layer_0/hidden_0/weights/AssignAssignVariableOp*encode_nl_feature/layer_0/hidden_0/weights<encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
dtype0
ш
>encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
dtype0
Я
Kencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Ц
[encode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:

Lencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Loss[encode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
: 
Ч
Eencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulKencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleLencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
: *
T0
Ѓ
8encode_nl_feature/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
н
)encode_nl_feature/layer_0/hidden_0/MatMulMatMul<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add_18encode_nl_feature/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

'encode_nl_feature/layer_0/hidden_0/ReluRelu)encode_nl_feature/layer_0/hidden_0/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
к
Eencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *D
shared_name53encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
shape:
З
Tencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 

:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaEencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0
џ
Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
л
Eencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *E
shared_name64encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
shape:
Й
Uencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ђ
;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaEencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0

Hencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Mencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ў
;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/meanMean'encode_nl_feature/layer_0/hidden_0/ReluMencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
Т
Cencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradient;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ
§
Hencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference'encode_nl_feature/layer_0/hidden_0/ReluCencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Qencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ї
?encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/varianceMeanHencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceQencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
і
<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/addAdd?encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
З
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
М
Kencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mulMul>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtKencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
о
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul'encode_nl_feature/layer_0/hidden_0/Relu<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2Mul;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
З
Gencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
:*
dtype0
ў
<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/subSubGencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOp>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
ѕ
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1Add>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
к
Jencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
Э
Iencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *    
Я
Kencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*
_output_shapes
: *=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0
В
Yencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalJencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/shape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
п
Hencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulMulYencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalKencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
Ш
Dencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normalAddHencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulIencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
ї
9encode_nl_feature/layer_1/hidden_1/weights/Initializer/QrQrDencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*(
_output_shapes
::
ь
?encode_nl_feature/layer_1/hidden_1/weights/Initializer/DiagPartDiagPart;encode_nl_feature/layer_1/hidden_1/weights/Initializer/Qr:1*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
:
ш
;encode_nl_feature/layer_1/hidden_1/weights/Initializer/SignSign?encode_nl_feature/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
:
Ё
:encode_nl_feature/layer_1/hidden_1/weights/Initializer/mulMul9encode_nl_feature/layer_1/hidden_1/weights/Initializer/Qr;encode_nl_feature/layer_1/hidden_1/weights/Initializer/Sign*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
ц
Vencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:
к
Qencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	Transpose:encode_nl_feature/layer_1/hidden_1/weights/Initializer/mulVencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
д
Dencode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
Ъ
>encode_nl_feature/layer_1/hidden_1/weights/Initializer/ReshapeReshapeQencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeDencode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape/shape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
Т
>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *  ?
Ћ
<encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1Mul>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1/x>encode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
я
*encode_nl_feature/layer_1/hidden_1/weightsVarHandleOp*
_output_shapes
: *;
shared_name,*encode_nl_feature/layer_1/hidden_1/weights*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
shape
:*
dtype0
Ѕ
Kencode_nl_feature/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp*encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
: 
ћ
1encode_nl_feature/layer_1/hidden_1/weights/AssignAssignVariableOp*encode_nl_feature/layer_1/hidden_1/weights<encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1*
dtype0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
ш
>encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
Я
Kencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Ц
[encode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:

Lencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Loss[encode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
: 
Ч
Eencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulKencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleLencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
: 
Ѓ
8encode_nl_feature/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
п
)encode_nl_feature/layer_1/hidden_1/MatMulMatMul>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_18encode_nl_feature/layer_1/hidden_1/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0

'encode_nl_feature/layer_1/hidden_1/ReluRelu)encode_nl_feature/layer_1/hidden_1/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
к
Eencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *D
shared_name53encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
shape:
З
Tencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 

:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaEencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0
џ
Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
л
Eencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *E
shared_name64encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma
Й
Uencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ђ
;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaEencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0

Hencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
:*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0

Mencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
ў
;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/meanMean'encode_nl_feature/layer_1/hidden_1/ReluMencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
Т
Cencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradient;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:џџџџџџџџџ*
T0
§
Hencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference'encode_nl_feature/layer_1/hidden_1/ReluCencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Qencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ї
?encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/varianceMeanHencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceQencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
і
<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/addAdd?encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
З
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
М
Kencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mulMul>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtKencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
о
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul'encode_nl_feature/layer_1/hidden_1/Relu<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2Mul;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
З
Gencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ў
<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/subSubGencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOp>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
ѕ
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1Add>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Ф
?encode_nl_feature/final/weights/Initializer/random_normal/shapeConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
З
>encode_nl_feature/final/weights/Initializer/random_normal/meanConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Й
@encode_nl_feature/final/weights/Initializer/random_normal/stddevConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Nencode_nl_feature/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?encode_nl_feature/final/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights
Г
=encode_nl_feature/final/weights/Initializer/random_normal/mulMulNencode_nl_feature/final/weights/Initializer/random_normal/RandomStandardNormal@encode_nl_feature/final/weights/Initializer/random_normal/stddev*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:

9encode_nl_feature/final/weights/Initializer/random_normalAdd=encode_nl_feature/final/weights/Initializer/random_normal/mul>encode_nl_feature/final/weights/Initializer/random_normal/mean*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:*
T0
ж
.encode_nl_feature/final/weights/Initializer/QrQr9encode_nl_feature/final/weights/Initializer/random_normal*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*(
_output_shapes
::
Ы
4encode_nl_feature/final/weights/Initializer/DiagPartDiagPart0encode_nl_feature/final/weights/Initializer/Qr:1*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
:
Ч
0encode_nl_feature/final/weights/Initializer/SignSign4encode_nl_feature/final/weights/Initializer/DiagPart*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
:
ѕ
/encode_nl_feature/final/weights/Initializer/mulMul.encode_nl_feature/final/weights/Initializer/Qr0encode_nl_feature/final/weights/Initializer/Sign*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
а
Kencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"       
Ў
Fencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose	Transpose/encode_nl_feature/final/weights/Initializer/mulKencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose/perm*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
О
9encode_nl_feature/final/weights/Initializer/Reshape/shapeConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:

3encode_nl_feature/final/weights/Initializer/ReshapeReshapeFencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose9encode_nl_feature/final/weights/Initializer/Reshape/shape*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
Ќ
3encode_nl_feature/final/weights/Initializer/mul_1/xConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
џ
1encode_nl_feature/final/weights/Initializer/mul_1Mul3encode_nl_feature/final/weights/Initializer/mul_1/x3encode_nl_feature/final/weights/Initializer/Reshape*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
Ю
encode_nl_feature/final/weightsVarHandleOp*
dtype0*
_output_shapes
: *0
shared_name!encode_nl_feature/final/weights*2
_class(
&$loc:@encode_nl_feature/final/weights*
shape
:

@encode_nl_feature/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpencode_nl_feature/final/weights*
_output_shapes
: 
Я
&encode_nl_feature/final/weights/AssignAssignVariableOpencode_nl_feature/final/weights1encode_nl_feature/final/weights/Initializer/mul_1*2
_class(
&$loc:@encode_nl_feature/final/weights*
dtype0
Ч
3encode_nl_feature/final/weights/Read/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*2
_class(
&$loc:@encode_nl_feature/final/weights*
dtype0*
_output_shapes

:
Й
@encode_nl_feature/final/weights/Regularizer/l2_regularizer/scaleConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
А
Pencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*
dtype0*
_output_shapes

:
ђ
Aencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2LossL2LossPencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
: 

:encode_nl_feature/final/weights/Regularizer/l2_regularizerMul@encode_nl_feature/final/weights/Regularizer/l2_regularizer/scaleAencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*2
_class(
&$loc:@encode_nl_feature/final/weights

-encode_nl_feature/final/MatMul/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*
dtype0*
_output_shapes

:
Щ
encode_nl_feature/final/MatMulMatMul>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1-encode_nl_feature/final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

encode_nl_feature/addAddencode_nl_feature/final/MatMul#skip_connection_1/projection/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
=encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zerosConst*
_output_shapes
:*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
valueB*    *
dtype0
ю
+encode_nl_feature/layer_norm/LayerNorm/betaVarHandleOp*<
shared_name-+encode_nl_feature/layer_norm/LayerNorm/beta*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
Ї
Lencode_nl_feature/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp+encode_nl_feature/layer_norm/LayerNorm/beta*
_output_shapes
: 
џ
2encode_nl_feature/layer_norm/LayerNorm/beta/AssignAssignVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta=encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0
ч
?encode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
Ы
=encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/onesConst*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
ё
,encode_nl_feature/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *=
shared_name.,encode_nl_feature/layer_norm/LayerNorm/gamma*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma
Љ
Mencode_nl_feature/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp,encode_nl_feature/layer_norm/LayerNorm/gamma*
_output_shapes
: 

3encode_nl_feature/layer_norm/LayerNorm/gamma/AssignAssignVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma=encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0
ъ
@encode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma

Eencode_nl_feature/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
м
3encode_nl_feature/layer_norm/LayerNorm/moments/meanMeanencode_nl_feature/addEencode_nl_feature/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
В
;encode_nl_feature/layer_norm/LayerNorm/moments/StopGradientStopGradient3encode_nl_feature/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:џџџџџџџџџ*
T0
л
@encode_nl_feature/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifferenceencode_nl_feature/add;encode_nl_feature/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Iencode_nl_feature/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

7encode_nl_feature/layer_norm/LayerNorm/moments/varianceMean@encode_nl_feature/layer_norm/LayerNorm/moments/SquaredDifferenceIencode_nl_feature/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
{
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
о
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/addAdd7encode_nl_feature/layer_norm/LayerNorm/moments/variance6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt4encode_nl_feature/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
Ќ
Cencode_nl_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
ъ
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mulMul6encode_nl_feature/layer_norm/LayerNorm/batchnorm/RsqrtCencode_nl_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
М
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_1Mulencode_nl_feature/add4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
к
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_2Mul3encode_nl_feature/layer_norm/LayerNorm/moments/mean4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
Ї
?encode_nl_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ц
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/subSub?encode_nl_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOp6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
н
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_1Add6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_14encode_nl_feature/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
6encode_nl_feature/normalize/nl_feature_encoding/SquareSquare6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_1*'
_output_shapes
:џџџџџџџџџ*
T0

Eencode_nl_feature/normalize/nl_feature_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ќ
3encode_nl_feature/normalize/nl_feature_encoding/SumSum6encode_nl_feature/normalize/nl_feature_encoding/SquareEencode_nl_feature/normalize/nl_feature_encoding/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
~
9encode_nl_feature/normalize/nl_feature_encoding/Maximum/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
ф
7encode_nl_feature/normalize/nl_feature_encoding/MaximumMaximum3encode_nl_feature/normalize/nl_feature_encoding/Sum9encode_nl_feature/normalize/nl_feature_encoding/Maximum/y*'
_output_shapes
:џџџџџџџџџ*
T0
Љ
5encode_nl_feature/normalize/nl_feature_encoding/RsqrtRsqrt7encode_nl_feature/normalize/nl_feature_encoding/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ
з
/encode_nl_feature/normalize/nl_feature_encodingMul6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_15encode_nl_feature/normalize/nl_feature_encoding/Rsqrt*'
_output_shapes
:џџџџџџџџџ*
T0
z
nl_encodingIdentity/encode_nl_feature/normalize/nl_feature_encoding*
T0*'
_output_shapes
:џџџџџџџџџ
G
ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
F
num_extra_contextsIdentityConst*
_output_shapes
: *
T0	

Gembed_extra_context_feature/concat/embed_nl/SparseToDense/default_valueConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
Ъ
9embed_extra_context_feature/concat/embed_nl/SparseToDenseSparseToDense%RaggedToSparse_2/RaggedTensorToSparse'RaggedToSparse_2/RaggedTensorToSparse:2hash_table_Lookup_2/SelectGembed_extra_context_feature/concat/embed_nl/SparseToDense/default_value*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
x
6embed_extra_context_feature/concat/embed_nl/NotEqual/yConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
ю
4embed_extra_context_feature/concat/embed_nl/NotEqualNotEqual9embed_extra_context_feature/concat/embed_nl/SparseToDense6embed_extra_context_feature/concat/embed_nl/NotEqual/y*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
А
Gembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ShapeShape9embed_extra_context_feature/concat/embed_nl/SparseToDense*
T0	*
_output_shapes
:

Gembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ConstConst*
_output_shapes
:*
valueB: *
dtype0

Fembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ProdProdGembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ShapeGembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Const*
_output_shapes
:*
	keep_dims(*
T0

Iembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ReshapeReshape9embed_extra_context_feature/concat/embed_nl/SparseToDenseFembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Prod*
T0	*#
_output_shapes
:џџџџџџџџџ
к
Hembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/UniqueUniqueIembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Reshape*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
е
Rembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookupResourceGather%embedding_matrices/subword_embeddingsHembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Unique*
Tindices0	*
dtype0*'
_output_shapes
:џџџџџџџџџ*8
_class.
,*loc:@embedding_matrices/subword_embeddings
Ї
[embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/IdentityIdentityRembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*'
_output_shapes
:џџџџџџџџџ
ј
]embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1Identity[embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
qembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scaleConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
ќ
rembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2LossL2Loss]embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
: 
њ
kembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizerMulqembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scalerembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
і
\embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penaltyIdentitykembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer*
T0*
_output_shapes
: 

Oembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ї
Jembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/GatherV2GatherV2]embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1Jembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Unique:1Oembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/GatherV2/axis*'
_output_shapes
:џџџџџџџџџ*
Taxis0*
Tindices0*
Tparams0
ж
Iembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Shape_1Shape]embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
_output_shapes
:*
T0

Uembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Wembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ё
Wembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѕ
Oembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_sliceStridedSliceIembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Shape_1Uembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stackWembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Wembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2*
end_mask*
_output_shapes
:*
Index0*
T0

Membed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
Hembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/concatConcatV2Gembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/ShapeOembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/strided_sliceMembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/concat/axis*
N*
_output_shapes
:*
T0
Ћ
Kembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Reshape_1ReshapeJembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/GatherV2Hembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/concat*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
v
1embed_extra_context_feature/concat/embed_nl/mul/yConst*
valueB
 *зГн?*
dtype0*
_output_shapes
: 
ѕ
/embed_extra_context_feature/concat/embed_nl/mulMulKembed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/Reshape_11embed_extra_context_feature/concat/embed_nl/mul/y*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Љ
Jembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ShapeShape/embed_extra_context_feature/concat/embed_nl/mul*
T0*
_output_shapes
:
Ђ
Xembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Є
Zembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Є
Zembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Rembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_sliceStridedSliceJembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ShapeXembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stackZembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stack_1Zembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0

Oembed_extra_context_feature/concat/embed_nl/add_positional_embedding/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 

Membed_extra_context_feature/concat/embed_nl/add_positional_embedding/floordivFloorDivRembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_sliceOembed_extra_context_feature/concat/embed_nl/add_positional_embedding/floordiv/y*
T0*
_output_shapes
: 

Jembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add/xConst*
dtype0*
_output_shapes
: *
value	B :

Hembed_extra_context_feature/concat/embed_nl/add_positional_embedding/addAddJembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add/xMembed_extra_context_feature/concat/embed_nl/add_positional_embedding/floordiv*
_output_shapes
: *
T0
Й
Xembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:

Uembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/multiples/1Const*
_output_shapes
: *
value	B :*
dtype0
Њ
Sembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/multiplesPackHembed_extra_context_feature/concat/embed_nl/add_positional_embedding/addUembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/multiples/1*
T0*
N*
_output_shapes
:
В
Iembed_extra_context_feature/concat/embed_nl/add_positional_embedding/TileTileXembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/ReadVariableOpSembed_extra_context_feature/concat/embed_nl/add_positional_embedding/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
Є
Zembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
ц
\embed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stack_1PackRembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice*
T0*
N*
_output_shapes
:
І
\embed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Tembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1StridedSliceIembed_extra_context_feature/concat/embed_nl/add_positional_embedding/TileZembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stack\embed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stack_1\embed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1/stack_2*'
_output_shapes
:џџџџџџџџџ*
T0*
Index0*

begin_mask

Sembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
О
Oembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ExpandDims
ExpandDimsTembed_extra_context_feature/concat/embed_nl/add_positional_embedding/strided_slice_1Sembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ExpandDims/dim*
T0*+
_output_shapes
:џџџџџџџџџ

Jembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add_1Add/embed_extra_context_feature/concat/embed_nl/mulOembed_extra_context_feature/concat/embed_nl/add_positional_embedding/ExpandDims*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Џ
eembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
о
Sembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/meanMeanJembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add_1eembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indices*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(*
T0
џ
[embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/StopGradientStopGradientSembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/mean*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
н
`embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceJembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add_1[embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/StopGradient*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Г
iembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ќ
Wembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/varianceMean`embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceiembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indices*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
	keep_dims(*
T0

Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
Ы
Tembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/addAddWembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/varianceVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/y*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
є
Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrtTembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Щ
cembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
з
Tembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mulMulVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/Rsqrtcembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
О
Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1MulJembed_extra_context_feature/concat/embed_nl/add_positional_embedding/add_1Tembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ч
Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2MulSembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/moments/meanTembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ф
_embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
г
Tembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/subSub_embed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ъ
Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1AddVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1Tembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/sub*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ю
Fembed_extra_context_feature/concat/embed_nl/self_attention_head_1/CastCast4embed_extra_context_feature/concat/embed_nl/NotEqual*

SrcT0
*

DstT0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Э
Gembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ShapeShapeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ё
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ё
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ї
Oembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_sliceStridedSliceGembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ShapeUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stackWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stack_1Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
Я
Iembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Shape_1ShapeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0
Ё
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ѓ
Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ѓ
Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1StridedSliceIembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Shape_1Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stackYembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stack_1Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/strided_slice_1/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
Ч
Zembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:

Pembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
Ё
Pembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/freeConst*
valueB"       *
dtype0*
_output_shapes
:
з
Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ShapeShapeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0

Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ј
Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2GatherV2Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ShapePembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/freeYembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0

[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ќ
Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2_1GatherV2Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ShapePembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/axes[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
Pembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ProdProdTembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Const*
T0*
_output_shapes
: 

Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ј
Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Prod_1ProdVembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2_1Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Const_1*
_output_shapes
: *
T0

Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concatConcatV2Pembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/freePembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/axesWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
­
Qembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/stackPackPembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ProdRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Prod_1*
N*
_output_shapes
:*
T0
Э
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transpose	TransposeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
У
Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ReshapeReshapeUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transposeQembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
­
\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ч
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transpose_1	TransposeZembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ReadVariableOp\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transpose_1/perm*
T0*
_output_shapes

:
Ќ
[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
П
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Reshape_1ReshapeWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/transpose_1[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shape*
_output_shapes

:*
T0
К
Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/MatMulMatMulSembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/ReshapeUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ

Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat_1ConcatV2Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/GatherV2Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/Const_2Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:
П
Kembed_extra_context_feature/concat/embed_nl/self_attention_head_1/TensordotReshapeRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/MatMulTembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ш
\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:

Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/axesConst*
valueB:*
dtype0*
_output_shapes
:
Ѓ
Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/freeConst*
dtype0*
_output_shapes
:*
valueB"       
й
Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ShapeShapeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2GatherV2Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ShapeRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/free[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0

]embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Д
Xembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1GatherV2Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ShapeRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/axes]embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:

Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ј
Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ProdProdVembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Const*
T0*
_output_shapes
: 

Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ў
Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Prod_1ProdXembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Const_1*
_output_shapes
: *
T0

Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concatConcatV2Rembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/freeRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/axesYembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat/axis*
T0*
N*
_output_shapes
:
Г
Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/stackPackRembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ProdTembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Prod_1*
_output_shapes
:*
T0*
N
б
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transpose	TransposeVembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Щ
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ReshapeReshapeWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transposeSembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/stack*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Џ
^embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Э
Yembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transpose_1	Transpose\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOp^embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/perm*
T0*
_output_shapes

:
Ў
]embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Х
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1ReshapeYembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/transpose_1]embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shape*
_output_shapes

:*
T0
Р
Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/MatMulMatMulUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/ReshapeWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0

Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat_1ConcatV2Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/GatherV2Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/Const_2[embed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
:
Х
Membed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1ReshapeTembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/MatMulVembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1/concat_1*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Ъ
Hembed_extra_context_feature/concat/embed_nl/self_attention_head_1/MatMulBatchMatMulV2Kembed_extra_context_feature/concat/embed_nl/self_attention_head_1/TensordotMembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Tensordot_1*
adj_y(*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

Pembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Г
Lembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ExpandDims
ExpandDimsFembed_extra_context_feature/concat/embed_nl/self_attention_head_1/CastPembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ExpandDims/dim*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Gembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ђ
Eembed_extra_context_feature/concat/embed_nl/self_attention_head_1/subSubGembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sub/xLembed_extra_context_feature/concat/embed_nl/self_attention_head_1/ExpandDims*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ

Gembed_extra_context_feature/concat/embed_nl/self_attention_head_1/mul/xConst*
valueB
 *(knN*
dtype0*
_output_shapes
: 

Eembed_extra_context_feature/concat/embed_nl/self_attention_head_1/mulMulGembed_extra_context_feature/concat/embed_nl/self_attention_head_1/mul/xEembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sub*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ї
Gembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sub_1SubHembed_extra_context_feature/concat/embed_nl/self_attention_head_1/MatMulEembed_extra_context_feature/concat/embed_nl/self_attention_head_1/mul*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0
х
Iembed_extra_context_feature/concat/embed_nl/self_attention_head_1/SoftmaxSoftmaxGembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sub_1*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ
^embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Я
Zembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims
ExpandDimsFembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Cast^embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dim*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Щ
Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/mulMulIembed_extra_context_feature/concat/embed_nl/self_attention_head_1/SoftmaxZembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
А
eembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indicesConst*
valueB :
ўџџџџџџџџ*
dtype0*
_output_shapes
: 
ц
Sembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/SumSumSembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/muleembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indices*
	keep_dims(*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
Љ
gembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
а
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1SumFembed_extra_context_feature/concat/embed_nl/self_attention_head_1/Castgembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Cast/xConst*
value	B :*
dtype0*
_output_shapes
: 
ф
Tembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/CastCastVembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Cast/x*

SrcT0*

DstT0*
_output_shapes
: 
С
Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/MaximumMaximumTembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/CastUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1*
T0*'
_output_shapes
:џџџџџџџџџ
щ
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtRsqrtWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Maximum*'
_output_shapes
:џџџџџџџџџ*
T0
Ћ
`embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
й
\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1
ExpandDimsUembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Rsqrt`embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dim*+
_output_shapes
:џџџџџџџџџ*
T0
Ю
Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/mul_1MulSembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Sum\embed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
T0
Ь
Vembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/MatMulBatchMatMulV2Uembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Vembed_extra_context_feature/concat/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*+
_output_shapes
:џџџџџџџџџ

Wembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeSqueezeVembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/MatMul*
squeeze_dims
*
T0*'
_output_shapes
:џџџџџџџџџ

2skip_connection_2/projection/MatMul/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
ь
#skip_connection_2/projection/MatMulMatMulWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze2skip_connection_2/projection/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
ь
Nencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*O
_classE
CAloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Ё
<encode_extra_context_feature/layer_norm_input/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *M
shared_name><encode_extra_context_feature/layer_norm_input/LayerNorm/beta*O
_classE
CAloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
shape:
Щ
]encode_extra_context_feature/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp<encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
У
Cencode_extra_context_feature/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp<encode_extra_context_feature/layer_norm_input/LayerNorm/betaNencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros*O
_classE
CAloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
dtype0

Pencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp<encode_extra_context_feature/layer_norm_input/LayerNorm/beta*O
_classE
CAloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
э
Nencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*P
_classF
DBloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*
valueB*  ?
Є
=encode_extra_context_feature/layer_norm_input/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *N
shared_name?=encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*P
_classF
DBloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/gamma
Ы
^encode_extra_context_feature/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp=encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
Ц
Dencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp=encode_extra_context_feature/layer_norm_input/LayerNorm/gammaNencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones*P
_classF
DBloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0

Qencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp=encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*P
_classF
DBloc:@encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
 
Vencode_extra_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Р
Dencode_extra_context_feature/layer_norm_input/LayerNorm/moments/meanMeanWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeVencode_extra_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
д
Lencode_extra_context_feature/layer_norm_input/LayerNorm/moments/StopGradientStopGradientDencode_extra_context_feature/layer_norm_input/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ
П
Qencode_extra_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeLencode_extra_context_feature/layer_norm_input/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ
Є
Zencode_extra_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Т
Hencode_extra_context_feature/layer_norm_input/LayerNorm/moments/varianceMeanQencode_extra_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceZencode_extra_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Gencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0

Eencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/addAddHencode_extra_context_feature/layer_norm_input/LayerNorm/moments/varianceGencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
Щ
Gencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrtEencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
Tencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp=encode_extra_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

Eencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mulMulGencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtTencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
 
Gencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1MulWembed_extra_context_feature/concat/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeEencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Gencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2MulDencode_extra_context_feature/layer_norm_input/LayerNorm/moments/meanEencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Щ
Pencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp<encode_extra_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:

Eencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/subSubPencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpGencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ

Gencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1AddGencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1Eencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ*
T0
№
Uencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB"      
у
Tencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
х
Vencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
г
dencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalUencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shape*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:

Sencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulMuldencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalVencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
є
Oencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normalAddSencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulTencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mean*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes

:

Dencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/QrQrOencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/random_normal*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*(
_output_shapes
::

Jencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/DiagPartDiagPartFencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/Qr:1*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes
:*
T0

Fencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/SignSignJencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/DiagPart*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes
:
Э
Eencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mulMulDencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/QrFencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/Sign*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
ъ
Oencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
п
Iencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/ReshapeReshapeEencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mulOencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shape*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
и
Iencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xConst*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
з
Gencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1MulIencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xIencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/Reshape*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes

:*
T0

5encode_extra_context_feature/layer_0/hidden_0/weightsVarHandleOp*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
shape
:*
dtype0*
_output_shapes
: *F
shared_name75encode_extra_context_feature/layer_0/hidden_0/weights
Л
Vencode_extra_context_feature/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp5encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 
Ї
<encode_extra_context_feature/layer_0/hidden_0/weights/AssignAssignVariableOp5encode_extra_context_feature/layer_0/hidden_0/weightsGencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
dtype0

Iencode_extra_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_0/hidden_0/weights*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
х
Vencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
м
fencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
Д
Wencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Lossfencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights
ѓ
Pencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulVencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleWencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 
Й
Cencode_extra_context_feature/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
ў
4encode_extra_context_feature/layer_0/hidden_0/MatMulMatMulGencode_extra_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1Cencode_extra_context_feature/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
2encode_extra_context_feature/layer_0/hidden_0/ReluRelu4encode_extra_context_feature/layer_0/hidden_0/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
№
Pencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*Q
_classG
ECloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Ї
>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/betaVarHandleOp*Q
_classG
ECloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: *O
shared_name@>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta
Э
_encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 
Ы
Eencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/betaPencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*
dtype0*Q
_classG
ECloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta
 
Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*Q
_classG
ECloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ё
Pencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*R
_classH
FDloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:
Њ
?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*P
shared_nameA?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*R
_classH
FDloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: 
Я
`encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ю
Fencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gammaPencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*R
_classH
FDloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0
Ѓ
Sencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*R
_classH
FDloc:@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ђ
Xencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

Fencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/meanMean2encode_extra_context_feature/layer_0/hidden_0/ReluXencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
и
Nencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradientFencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:џџџџџџџџџ*
T0

Sencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference2encode_extra_context_feature/layer_0/hidden_0/ReluNencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ
І
\encode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
Ш
Jencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceMeanSencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifference\encode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Iencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Gencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/addAddJencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceIencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Э
Iencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtGencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
в
Vencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ѓ
Gencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mulMulIencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtVencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
џ
Iencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul2encode_extra_context_feature/layer_0/hidden_0/ReluGencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Iencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2MulFencode_extra_context_feature/layer_0/layer_norm/LayerNorm/moments/meanGencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Э
Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Gencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/subSubRencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpIencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0

Iencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1AddIencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Gencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ*
T0
№
Uencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
у
Tencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
х
Vencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
г
dencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalUencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights

Sencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulMuldencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalVencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
є
Oencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normalAddSencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulTencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:

Dencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/QrQrOencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/random_normal*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*(
_output_shapes
::

Jencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/DiagPartDiagPartFencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/Qr:1*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes
:*
T0

Fencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/SignSignJencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes
:
Э
Eencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mulMulDencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/QrFencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/Sign*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
ќ
aencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:

\encode_extra_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	TransposeEencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mulaencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:*
T0
ъ
Oencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
і
Iencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/ReshapeReshape\encode_extra_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeOencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shape*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
и
Iencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xConst*
_output_shapes
: *H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0
з
Gencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1MulIencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xIencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/Reshape*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:

5encode_extra_context_feature/layer_1/hidden_1/weightsVarHandleOp*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
shape
:*
dtype0*
_output_shapes
: *F
shared_name75encode_extra_context_feature/layer_1/hidden_1/weights
Л
Vencode_extra_context_feature/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp5encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 
Ї
<encode_extra_context_feature/layer_1/hidden_1/weights/AssignAssignVariableOp5encode_extra_context_feature/layer_1/hidden_1/weightsGencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
dtype0

Iencode_extra_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_1/hidden_1/weights*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
х
Vencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
м
fencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
Д
Wencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Lossfencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 
ѓ
Pencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulVencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleWencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*H
_class>
<:loc:@encode_extra_context_feature/layer_1/hidden_1/weights
Й
Cencode_extra_context_feature/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp5encode_extra_context_feature/layer_1/hidden_1/weights*
_output_shapes

:*
dtype0

4encode_extra_context_feature/layer_1/hidden_1/MatMulMatMulIencode_extra_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1Cencode_extra_context_feature/layer_1/hidden_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
2encode_extra_context_feature/layer_1/hidden_1/ReluRelu4encode_extra_context_feature/layer_1/hidden_1/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
№
Pencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*Q
_classG
ECloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Ї
>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/betaVarHandleOp*O
shared_name@>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*Q
_classG
ECloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
Э
_encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 
Ы
Eencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/betaPencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*Q
_classG
ECloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0
 
Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*Q
_classG
ECloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ё
Pencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*
_output_shapes
:*R
_classH
FDloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0
Њ
?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*P
shared_nameA?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*R
_classH
FDloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: 
Я
`encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ю
Fencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gammaPencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*
dtype0*R
_classH
FDloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma
Ѓ
Sencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
:*R
_classH
FDloc:@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0
Ђ
Xencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0

Fencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/meanMean2encode_extra_context_feature/layer_1/hidden_1/ReluXencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
и
Nencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradientFencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Sencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference2encode_extra_context_feature/layer_1/hidden_1/ReluNencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ
І
\encode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ш
Jencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceMeanSencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifference\encode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

Iencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Gencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/addAddJencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceIencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Э
Iencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtGencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
в
Vencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ѓ
Gencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mulMulIencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtVencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
џ
Iencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul2encode_extra_context_feature/layer_1/hidden_1/ReluGencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Iencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2MulFencode_extra_context_feature/layer_1/layer_norm/LayerNorm/moments/meanGencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
Э
Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Gencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/subSubRencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpIencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ

Iencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1AddIencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Gencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
к
Jencode_extra_context_feature/final/weights/Initializer/random_normal/shapeConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
Э
Iencode_extra_context_feature/final/weights/Initializer/random_normal/meanConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
Kencode_extra_context_feature/final/weights/Initializer/random_normal/stddevConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
В
Yencode_extra_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalJencode_extra_context_feature/final/weights/Initializer/random_normal/shape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
dtype0
п
Hencode_extra_context_feature/final/weights/Initializer/random_normal/mulMulYencode_extra_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalKencode_extra_context_feature/final/weights/Initializer/random_normal/stddev*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes

:
Ш
Dencode_extra_context_feature/final/weights/Initializer/random_normalAddHencode_extra_context_feature/final/weights/Initializer/random_normal/mulIencode_extra_context_feature/final/weights/Initializer/random_normal/mean*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes

:
ї
9encode_extra_context_feature/final/weights/Initializer/QrQrDencode_extra_context_feature/final/weights/Initializer/random_normal*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*(
_output_shapes
::
ь
?encode_extra_context_feature/final/weights/Initializer/DiagPartDiagPart;encode_extra_context_feature/final/weights/Initializer/Qr:1*
_output_shapes
:*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights
ш
;encode_extra_context_feature/final/weights/Initializer/SignSign?encode_extra_context_feature/final/weights/Initializer/DiagPart*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes
:*
T0
Ё
:encode_extra_context_feature/final/weights/Initializer/mulMul9encode_extra_context_feature/final/weights/Initializer/Qr;encode_extra_context_feature/final/weights/Initializer/Sign*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights
ц
Vencode_extra_context_feature/final/weights/Initializer/matrix_transpose/transpose/permConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB"       *
dtype0*
_output_shapes
:
к
Qencode_extra_context_feature/final/weights/Initializer/matrix_transpose/transpose	Transpose:encode_extra_context_feature/final/weights/Initializer/mulVencode_extra_context_feature/final/weights/Initializer/matrix_transpose/transpose/perm*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes

:
д
Dencode_extra_context_feature/final/weights/Initializer/Reshape/shapeConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
Ъ
>encode_extra_context_feature/final/weights/Initializer/ReshapeReshapeQencode_extra_context_feature/final/weights/Initializer/matrix_transpose/transposeDencode_extra_context_feature/final/weights/Initializer/Reshape/shape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights
Т
>encode_extra_context_feature/final/weights/Initializer/mul_1/xConst*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ћ
<encode_extra_context_feature/final/weights/Initializer/mul_1Mul>encode_extra_context_feature/final/weights/Initializer/mul_1/x>encode_extra_context_feature/final/weights/Initializer/Reshape*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes

:
я
*encode_extra_context_feature/final/weightsVarHandleOp*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
shape
:*
dtype0*
_output_shapes
: *;
shared_name,*encode_extra_context_feature/final/weights
Ѕ
Kencode_extra_context_feature/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp*encode_extra_context_feature/final/weights*
_output_shapes
: 
ћ
1encode_extra_context_feature/final/weights/AssignAssignVariableOp*encode_extra_context_feature/final/weights<encode_extra_context_feature/final/weights/Initializer/mul_1*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
dtype0
ш
>encode_extra_context_feature/final/weights/Read/ReadVariableOpReadVariableOp*encode_extra_context_feature/final/weights*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
dtype0*
_output_shapes

:
Я
Kencode_extra_context_feature/final/weights/Regularizer/l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@encode_extra_context_feature/final/weights*
valueB
 *ЭЬЬ=
Ц
[encode_extra_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp*encode_extra_context_feature/final/weights*
dtype0*
_output_shapes

:

Lencode_extra_context_feature/final/weights/Regularizer/l2_regularizer/L2LossL2Loss[encode_extra_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights*
_output_shapes
: 
Ч
Eencode_extra_context_feature/final/weights/Regularizer/l2_regularizerMulKencode_extra_context_feature/final/weights/Regularizer/l2_regularizer/scaleLencode_extra_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*=
_class3
1/loc:@encode_extra_context_feature/final/weights
Ѓ
8encode_extra_context_feature/final/MatMul/ReadVariableOpReadVariableOp*encode_extra_context_feature/final/weights*
dtype0*
_output_shapes

:
ъ
)encode_extra_context_feature/final/MatMulMatMulIencode_extra_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_18encode_extra_context_feature/final/MatMul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
Љ
 encode_extra_context_feature/addAdd)encode_extra_context_feature/final/MatMul#skip_connection_2/projection/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
р
Hencode_extra_context_feature/layer_norm/LayerNorm/beta/Initializer/zerosConst*I
_class?
=;loc:@encode_extra_context_feature/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

6encode_extra_context_feature/layer_norm/LayerNorm/betaVarHandleOp*G
shared_name86encode_extra_context_feature/layer_norm/LayerNorm/beta*I
_class?
=;loc:@encode_extra_context_feature/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
Н
Wencode_extra_context_feature/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp6encode_extra_context_feature/layer_norm/LayerNorm/beta*
_output_shapes
: 
Ћ
=encode_extra_context_feature/layer_norm/LayerNorm/beta/AssignAssignVariableOp6encode_extra_context_feature/layer_norm/LayerNorm/betaHencode_extra_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros*I
_class?
=;loc:@encode_extra_context_feature/layer_norm/LayerNorm/beta*
dtype0

Jencode_extra_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp6encode_extra_context_feature/layer_norm/LayerNorm/beta*
_output_shapes
:*I
_class?
=;loc:@encode_extra_context_feature/layer_norm/LayerNorm/beta*
dtype0
с
Hencode_extra_context_feature/layer_norm/LayerNorm/gamma/Initializer/onesConst*J
_class@
><loc:@encode_extra_context_feature/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

7encode_extra_context_feature/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *H
shared_name97encode_extra_context_feature/layer_norm/LayerNorm/gamma*J
_class@
><loc:@encode_extra_context_feature/layer_norm/LayerNorm/gamma
П
Xencode_extra_context_feature/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp7encode_extra_context_feature/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ў
>encode_extra_context_feature/layer_norm/LayerNorm/gamma/AssignAssignVariableOp7encode_extra_context_feature/layer_norm/LayerNorm/gammaHencode_extra_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones*J
_class@
><loc:@encode_extra_context_feature/layer_norm/LayerNorm/gamma*
dtype0

Kencode_extra_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp7encode_extra_context_feature/layer_norm/LayerNorm/gamma*J
_class@
><loc:@encode_extra_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Pencode_extra_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
§
>encode_extra_context_feature/layer_norm/LayerNorm/moments/meanMean encode_extra_context_feature/addPencode_extra_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(
Ш
Fencode_extra_context_feature/layer_norm/LayerNorm/moments/StopGradientStopGradient>encode_extra_context_feature/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ
ќ
Kencode_extra_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference encode_extra_context_feature/addFencode_extra_context_feature/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Tencode_extra_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
А
Bencode_extra_context_feature/layer_norm/LayerNorm/moments/varianceMeanKencode_extra_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceTencode_extra_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Aencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
џ
?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/addAddBencode_extra_context_feature/layer_norm/LayerNorm/moments/varianceAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
Н
Aencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
Т
Nencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp7encode_extra_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mulMulAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtNencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
н
Aencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul_1Mul encode_extra_context_feature/add?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
ћ
Aencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul_2Mul>encode_extra_context_feature/layer_norm/LayerNorm/moments/mean?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Н
Jencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp6encode_extra_context_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/subSubJencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
ў
Aencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add_1AddAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/mul_1?encode_extra_context_feature/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ы
Lencode_extra_context_feature/normalize/extra_context_feature_encoding/SquareSquareAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add_1*'
_output_shapes
:џџџџџџџџџ*
T0

[encode_extra_context_feature/normalize/extra_context_feature_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
О
Iencode_extra_context_feature/normalize/extra_context_feature_encoding/SumSumLencode_extra_context_feature/normalize/extra_context_feature_encoding/Square[encode_extra_context_feature/normalize/extra_context_feature_encoding/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

Oencode_extra_context_feature/normalize/extra_context_feature_encoding/Maximum/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
І
Mencode_extra_context_feature/normalize/extra_context_feature_encoding/MaximumMaximumIencode_extra_context_feature/normalize/extra_context_feature_encoding/SumOencode_extra_context_feature/normalize/extra_context_feature_encoding/Maximum/y*'
_output_shapes
:џџџџџџџџџ*
T0
е
Kencode_extra_context_feature/normalize/extra_context_feature_encoding/RsqrtRsqrtMencode_extra_context_feature/normalize/extra_context_feature_encoding/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ

Eencode_extra_context_feature/normalize/extra_context_feature_encodingMulAencode_extra_context_feature/layer_norm/LayerNorm/batchnorm/add_1Kencode_extra_context_feature/normalize/extra_context_feature_encoding/Rsqrt*
T0*'
_output_shapes
:џџџџџџџџџ
T
CastCastWhere*

DstT0*'
_output_shapes
:џџџџџџџџџ*

SrcT0	
p
Shape_1Shape9encode_context_feature/normalize/context_feature_encoding*
T0*
_output_shapes
:
Ў
	ScatterNd	ScatterNdCastEencode_extra_context_feature/normalize/extra_context_feature_encodingShape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tindices0

addAdd	ScatterNd9encode_context_feature/normalize/context_feature_encoding*
T0*'
_output_shapes
:џџџџџџџџџ
N
	truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
T
truedivRealDivadd	truediv/y*
T0*'
_output_shapes
:џџџџџџџџџ
ь
Sskip_connection/combined_context/projection/weights/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB"      
п
Rskip_connection/combined_context/projection/weights/Initializer/random_normal/meanConst*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
с
Tskip_connection/combined_context/projection/weights/Initializer/random_normal/stddevConst*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Э
bskip_connection/combined_context/projection/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalSskip_connection/combined_context/projection/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights

Qskip_connection/combined_context/projection/weights/Initializer/random_normal/mulMulbskip_connection/combined_context/projection/weights/Initializer/random_normal/RandomStandardNormalTskip_connection/combined_context/projection/weights/Initializer/random_normal/stddev*
_output_shapes

:*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights
ь
Mskip_connection/combined_context/projection/weights/Initializer/random_normalAddQskip_connection/combined_context/projection/weights/Initializer/random_normal/mulRskip_connection/combined_context/projection/weights/Initializer/random_normal/mean*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes

:

Bskip_connection/combined_context/projection/weights/Initializer/QrQrMskip_connection/combined_context/projection/weights/Initializer/random_normal*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*(
_output_shapes
::

Hskip_connection/combined_context/projection/weights/Initializer/DiagPartDiagPartDskip_connection/combined_context/projection/weights/Initializer/Qr:1*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes
:

Dskip_connection/combined_context/projection/weights/Initializer/SignSignHskip_connection/combined_context/projection/weights/Initializer/DiagPart*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes
:
Х
Cskip_connection/combined_context/projection/weights/Initializer/mulMulBskip_connection/combined_context/projection/weights/Initializer/QrDskip_connection/combined_context/projection/weights/Initializer/Sign*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes

:
ц
Mskip_connection/combined_context/projection/weights/Initializer/Reshape/shapeConst*
_output_shapes
:*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB"      *
dtype0
з
Gskip_connection/combined_context/projection/weights/Initializer/ReshapeReshapeCskip_connection/combined_context/projection/weights/Initializer/mulMskip_connection/combined_context/projection/weights/Initializer/Reshape/shape*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes

:
д
Gskip_connection/combined_context/projection/weights/Initializer/mul_1/xConst*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Я
Eskip_connection/combined_context/projection/weights/Initializer/mul_1MulGskip_connection/combined_context/projection/weights/Initializer/mul_1/xGskip_connection/combined_context/projection/weights/Initializer/Reshape*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes

:

3skip_connection/combined_context/projection/weightsVarHandleOp*D
shared_name53skip_connection/combined_context/projection/weights*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
shape
:*
dtype0*
_output_shapes
: 
З
Tskip_connection/combined_context/projection/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp3skip_connection/combined_context/projection/weights*
_output_shapes
: 

:skip_connection/combined_context/projection/weights/AssignAssignVariableOp3skip_connection/combined_context/projection/weightsEskip_connection/combined_context/projection/weights/Initializer/mul_1*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
dtype0

Gskip_connection/combined_context/projection/weights/Read/ReadVariableOpReadVariableOp3skip_connection/combined_context/projection/weights*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
dtype0*
_output_shapes

:
с
Tskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/scaleConst*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
и
dskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp3skip_connection/combined_context/projection/weights*
dtype0*
_output_shapes

:
Ў
Uskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/L2LossL2Lossdskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights*
_output_shapes
: 
ы
Nskip_connection/combined_context/projection/weights/Regularizer/l2_regularizerMulTskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/scaleUskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*F
_class<
:8loc:@skip_connection/combined_context/projection/weights
Е
Askip_connection/combined_context/projection/MatMul/ReadVariableOpReadVariableOp3skip_connection/combined_context/projection/weights*
dtype0*
_output_shapes

:
К
2skip_connection/combined_context/projection/MatMulMatMultruedivAskip_connection/combined_context/projection/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
т
Iencode_combined_context/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*J
_class@
><loc:@encode_combined_context/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

7encode_combined_context/layer_norm_input/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *H
shared_name97encode_combined_context/layer_norm_input/LayerNorm/beta*J
_class@
><loc:@encode_combined_context/layer_norm_input/LayerNorm/beta
П
Xencode_combined_context/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp7encode_combined_context/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
Џ
>encode_combined_context/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp7encode_combined_context/layer_norm_input/LayerNorm/betaIencode_combined_context/layer_norm_input/LayerNorm/beta/Initializer/zeros*J
_class@
><loc:@encode_combined_context/layer_norm_input/LayerNorm/beta*
dtype0

Kencode_combined_context/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp7encode_combined_context/layer_norm_input/LayerNorm/beta*J
_class@
><loc:@encode_combined_context/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
у
Iencode_combined_context/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*K
_classA
?=loc:@encode_combined_context/layer_norm_input/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

8encode_combined_context/layer_norm_input/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *I
shared_name:8encode_combined_context/layer_norm_input/LayerNorm/gamma*K
_classA
?=loc:@encode_combined_context/layer_norm_input/LayerNorm/gamma*
shape:
С
Yencode_combined_context/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp8encode_combined_context/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
В
?encode_combined_context/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp8encode_combined_context/layer_norm_input/LayerNorm/gammaIencode_combined_context/layer_norm_input/LayerNorm/gamma/Initializer/ones*K
_classA
?=loc:@encode_combined_context/layer_norm_input/LayerNorm/gamma*
dtype0

Lencode_combined_context/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp8encode_combined_context/layer_norm_input/LayerNorm/gamma*K
_classA
?=loc:@encode_combined_context/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

Qencode_combined_context/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ц
?encode_combined_context/layer_norm_input/LayerNorm/moments/meanMeantruedivQencode_combined_context/layer_norm_input/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
Ъ
Gencode_combined_context/layer_norm_input/LayerNorm/moments/StopGradientStopGradient?encode_combined_context/layer_norm_input/LayerNorm/moments/mean*'
_output_shapes
:џџџџџџџџџ*
T0
х
Lencode_combined_context/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferencetruedivGencode_combined_context/layer_norm_input/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ

Uencode_combined_context/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Г
Cencode_combined_context/layer_norm_input/LayerNorm/moments/varianceMeanLencode_combined_context/layer_norm_input/LayerNorm/moments/SquaredDifferenceUencode_combined_context/layer_norm_input/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

Bencode_combined_context/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/addAddCencode_combined_context/layer_norm_input/LayerNorm/moments/varianceBencode_combined_context/layer_norm_input/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
П
Bencode_combined_context/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
Ф
Oencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp8encode_combined_context/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:

@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/mulMulBencode_combined_context/layer_norm_input/LayerNorm/batchnorm/RsqrtOencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
Ц
Bencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul_1Multruediv@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
ў
Bencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul_2Mul?encode_combined_context/layer_norm_input/LayerNorm/moments/mean@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
П
Kencode_combined_context/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp7encode_combined_context/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:

@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/subSubKencode_combined_context/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpBencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0

Bencode_combined_context/layer_norm_input/LayerNorm/batchnorm/add_1AddBencode_combined_context/layer_norm_input/LayerNorm/batchnorm/mul_1@encode_combined_context/layer_norm_input/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Pencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
й
Oencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
л
Qencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ф
_encode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalPencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/shape*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
ї
Nencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/mulMul_encode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalQencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
_output_shapes

:
р
Jencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normalAddNencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/mulOencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal/mean*
_output_shapes

:*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights

?encode_combined_context/layer_0/hidden_0/weights/Initializer/QrQrJencode_combined_context/layer_0/hidden_0/weights/Initializer/random_normal*(
_output_shapes
::*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights
ў
Eencode_combined_context/layer_0/hidden_0/weights/Initializer/DiagPartDiagPartAencode_combined_context/layer_0/hidden_0/weights/Initializer/Qr:1*
_output_shapes
:*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights
њ
Aencode_combined_context/layer_0/hidden_0/weights/Initializer/SignSignEencode_combined_context/layer_0/hidden_0/weights/Initializer/DiagPart*
_output_shapes
:*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights
Й
@encode_combined_context/layer_0/hidden_0/weights/Initializer/mulMul?encode_combined_context/layer_0/hidden_0/weights/Initializer/QrAencode_combined_context/layer_0/hidden_0/weights/Initializer/Sign*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
_output_shapes

:
р
Jencode_combined_context/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
Ы
Dencode_combined_context/layer_0/hidden_0/weights/Initializer/ReshapeReshape@encode_combined_context/layer_0/hidden_0/weights/Initializer/mulJencode_combined_context/layer_0/hidden_0/weights/Initializer/Reshape/shape*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
_output_shapes

:
Ю
Dencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1/xConst*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
У
Bencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1MulDencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1/xDencode_combined_context/layer_0/hidden_0/weights/Initializer/Reshape*
_output_shapes

:*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights

0encode_combined_context/layer_0/hidden_0/weightsVarHandleOp*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
shape
:*
dtype0*
_output_shapes
: *A
shared_name20encode_combined_context/layer_0/hidden_0/weights
Б
Qencode_combined_context/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0encode_combined_context/layer_0/hidden_0/weights*
_output_shapes
: 

7encode_combined_context/layer_0/hidden_0/weights/AssignAssignVariableOp0encode_combined_context/layer_0/hidden_0/weightsBencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
dtype0
њ
Dencode_combined_context/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp0encode_combined_context/layer_0/hidden_0/weights*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
л
Qencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
valueB
 *ЭЬЬ=*
dtype0
в
aencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp0encode_combined_context/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
Ѕ
Rencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Lossaencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights
п
Kencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulQencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleRencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*
T0*C
_class9
75loc:@encode_combined_context/layer_0/hidden_0/weights*
_output_shapes
: 
Џ
>encode_combined_context/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp0encode_combined_context/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
я
/encode_combined_context/layer_0/hidden_0/MatMulMatMulBencode_combined_context/layer_norm_input/LayerNorm/batchnorm/add_1>encode_combined_context/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

-encode_combined_context/layer_0/hidden_0/ReluRelu/encode_combined_context/layer_0/hidden_0/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
ц
Kencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*L
_classB
@>loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

9encode_combined_context/layer_0/layer_norm/LayerNorm/betaVarHandleOp*J
shared_name;9encode_combined_context/layer_0/layer_norm/LayerNorm/beta*L
_classB
@>loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
У
Zencode_combined_context/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 
З
@encode_combined_context/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp9encode_combined_context/layer_0/layer_norm/LayerNorm/betaKencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*L
_classB
@>loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
dtype0

Mencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp9encode_combined_context/layer_0/layer_norm/LayerNorm/beta*L
_classB
@>loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ч
Kencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*M
_classC
A?loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

:encode_combined_context/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *K
shared_name<:encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*M
_classC
A?loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
shape:
Х
[encode_combined_context/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp:encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
К
Aencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp:encode_combined_context/layer_0/layer_norm/LayerNorm/gammaKencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*M
_classC
A?loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
dtype0

Nencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp:encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*M
_classC
A?loc:@encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Sencode_combined_context/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

Aencode_combined_context/layer_0/layer_norm/LayerNorm/moments/meanMean-encode_combined_context/layer_0/hidden_0/ReluSencode_combined_context/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
Ю
Iencode_combined_context/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradientAencode_combined_context/layer_0/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Nencode_combined_context/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference-encode_combined_context/layer_0/hidden_0/ReluIencode_combined_context/layer_0/layer_norm/LayerNorm/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ*
T0
Ё
Wencode_combined_context/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Й
Eencode_combined_context/layer_0/layer_norm/LayerNorm/moments/varianceMeanNencode_combined_context/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceWencode_combined_context/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

Dencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+

Bencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/addAddEencode_combined_context/layer_0/layer_norm/LayerNorm/moments/varianceDencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
У
Dencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtBencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Qencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp:encode_combined_context/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Bencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mulMulDencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtQencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
№
Dencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul-encode_combined_context/layer_0/hidden_0/ReluBencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Dencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul_2MulAencode_combined_context/layer_0/layer_norm/LayerNorm/moments/meanBencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
У
Mencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp9encode_combined_context/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Bencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/subSubMencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpDencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ

Dencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/add_1AddDencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Bencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ*
T0
ц
Pencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
й
Oencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
л
Qencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ф
_encode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalPencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/shape*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
ї
Nencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/mulMul_encode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalQencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:
р
Jencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normalAddNencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/mulOencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:

?encode_combined_context/layer_1/hidden_1/weights/Initializer/QrQrJencode_combined_context/layer_1/hidden_1/weights/Initializer/random_normal*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*(
_output_shapes
::
ў
Eencode_combined_context/layer_1/hidden_1/weights/Initializer/DiagPartDiagPartAencode_combined_context/layer_1/hidden_1/weights/Initializer/Qr:1*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes
:
њ
Aencode_combined_context/layer_1/hidden_1/weights/Initializer/SignSignEencode_combined_context/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes
:
Й
@encode_combined_context/layer_1/hidden_1/weights/Initializer/mulMul?encode_combined_context/layer_1/hidden_1/weights/Initializer/QrAencode_combined_context/layer_1/hidden_1/weights/Initializer/Sign*
_output_shapes

:*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights
ђ
\encode_combined_context/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:
ђ
Wencode_combined_context/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	Transpose@encode_combined_context/layer_1/hidden_1/weights/Initializer/mul\encode_combined_context/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:
р
Jencode_combined_context/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB"      
т
Dencode_combined_context/layer_1/hidden_1/weights/Initializer/ReshapeReshapeWencode_combined_context/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeJencode_combined_context/layer_1/hidden_1/weights/Initializer/Reshape/shape*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:*
T0
Ю
Dencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1/xConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
У
Bencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1MulDencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1/xDencode_combined_context/layer_1/hidden_1/weights/Initializer/Reshape*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:*
T0

0encode_combined_context/layer_1/hidden_1/weightsVarHandleOp*
_output_shapes
: *A
shared_name20encode_combined_context/layer_1/hidden_1/weights*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
shape
:*
dtype0
Б
Qencode_combined_context/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp0encode_combined_context/layer_1/hidden_1/weights*
_output_shapes
: 

7encode_combined_context/layer_1/hidden_1/weights/AssignAssignVariableOp0encode_combined_context/layer_1/hidden_1/weightsBencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
dtype0
њ
Dencode_combined_context/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp0encode_combined_context/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights
л
Qencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
в
aencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp0encode_combined_context/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
Ѕ
Rencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Lossaencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights
п
Kencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulQencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleRencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*C
_class9
75loc:@encode_combined_context/layer_1/hidden_1/weights*
_output_shapes
: *
T0
Џ
>encode_combined_context/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp0encode_combined_context/layer_1/hidden_1/weights*
_output_shapes

:*
dtype0
ё
/encode_combined_context/layer_1/hidden_1/MatMulMatMulDencode_combined_context/layer_0/layer_norm/LayerNorm/batchnorm/add_1>encode_combined_context/layer_1/hidden_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ

-encode_combined_context/layer_1/hidden_1/ReluRelu/encode_combined_context/layer_1/hidden_1/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Kencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*L
_classB
@>loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

9encode_combined_context/layer_1/layer_norm/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *J
shared_name;9encode_combined_context/layer_1/layer_norm/LayerNorm/beta*L
_classB
@>loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
shape:
У
Zencode_combined_context/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 
З
@encode_combined_context/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp9encode_combined_context/layer_1/layer_norm/LayerNorm/betaKencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*L
_classB
@>loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
dtype0

Mencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp9encode_combined_context/layer_1/layer_norm/LayerNorm/beta*L
_classB
@>loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ч
Kencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*M
_classC
A?loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

:encode_combined_context/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *K
shared_name<:encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*M
_classC
A?loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
shape:
Х
[encode_combined_context/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp:encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
К
Aencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp:encode_combined_context/layer_1/layer_norm/LayerNorm/gammaKencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*M
_classC
A?loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
dtype0

Nencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp:encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*M
_classC
A?loc:@encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Sencode_combined_context/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:

Aencode_combined_context/layer_1/layer_norm/LayerNorm/moments/meanMean-encode_combined_context/layer_1/hidden_1/ReluSencode_combined_context/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0
Ю
Iencode_combined_context/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradientAencode_combined_context/layer_1/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ

Nencode_combined_context/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference-encode_combined_context/layer_1/hidden_1/ReluIencode_combined_context/layer_1/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Wencode_combined_context/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Й
Eencode_combined_context/layer_1/layer_norm/LayerNorm/moments/varianceMeanNencode_combined_context/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceWencode_combined_context/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(

Dencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Bencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/addAddEencode_combined_context/layer_1/layer_norm/LayerNorm/moments/varianceDencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:џџџџџџџџџ*
T0
У
Dencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtBencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:џџџџџџџџџ*
T0
Ш
Qencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp:encode_combined_context/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Bencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mulMulDencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtQencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:џџџџџџџџџ*
T0
№
Dencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul-encode_combined_context/layer_1/hidden_1/ReluBencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ

Dencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul_2MulAencode_combined_context/layer_1/layer_norm/LayerNorm/moments/meanBencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
У
Mencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp9encode_combined_context/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:

Bencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/subSubMencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpDencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:џџџџџџџџџ*
T0

Dencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/add_1AddDencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Bencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ*
T0
а
Eencode_combined_context/final/weights/Initializer/random_normal/shapeConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB"      *
dtype0*
_output_shapes
:
У
Dencode_combined_context/final/weights/Initializer/random_normal/meanConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Х
Fencode_combined_context/final/weights/Initializer/random_normal/stddevConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ѓ
Tencode_combined_context/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalEencode_combined_context/final/weights/Initializer/random_normal/shape*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
dtype0*
_output_shapes

:
Ы
Cencode_combined_context/final/weights/Initializer/random_normal/mulMulTencode_combined_context/final/weights/Initializer/random_normal/RandomStandardNormalFencode_combined_context/final/weights/Initializer/random_normal/stddev*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes

:
Д
?encode_combined_context/final/weights/Initializer/random_normalAddCencode_combined_context/final/weights/Initializer/random_normal/mulDencode_combined_context/final/weights/Initializer/random_normal/mean*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes

:
ш
4encode_combined_context/final/weights/Initializer/QrQr?encode_combined_context/final/weights/Initializer/random_normal*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*(
_output_shapes
::
н
:encode_combined_context/final/weights/Initializer/DiagPartDiagPart6encode_combined_context/final/weights/Initializer/Qr:1*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes
:
й
6encode_combined_context/final/weights/Initializer/SignSign:encode_combined_context/final/weights/Initializer/DiagPart*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes
:

5encode_combined_context/final/weights/Initializer/mulMul4encode_combined_context/final/weights/Initializer/Qr6encode_combined_context/final/weights/Initializer/Sign*
_output_shapes

:*
T0*8
_class.
,*loc:@encode_combined_context/final/weights
м
Qencode_combined_context/final/weights/Initializer/matrix_transpose/transpose/permConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB"       *
dtype0*
_output_shapes
:
Ц
Lencode_combined_context/final/weights/Initializer/matrix_transpose/transpose	Transpose5encode_combined_context/final/weights/Initializer/mulQencode_combined_context/final/weights/Initializer/matrix_transpose/transpose/perm*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes

:
Ъ
?encode_combined_context/final/weights/Initializer/Reshape/shapeConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB"      *
dtype0*
_output_shapes
:
Ж
9encode_combined_context/final/weights/Initializer/ReshapeReshapeLencode_combined_context/final/weights/Initializer/matrix_transpose/transpose?encode_combined_context/final/weights/Initializer/Reshape/shape*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes

:*
T0
И
9encode_combined_context/final/weights/Initializer/mul_1/xConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB
 *  ?*
dtype0*
_output_shapes
: 

7encode_combined_context/final/weights/Initializer/mul_1Mul9encode_combined_context/final/weights/Initializer/mul_1/x9encode_combined_context/final/weights/Initializer/Reshape*
T0*8
_class.
,*loc:@encode_combined_context/final/weights*
_output_shapes

:
р
%encode_combined_context/final/weightsVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *6
shared_name'%encode_combined_context/final/weights*8
_class.
,*loc:@encode_combined_context/final/weights

Fencode_combined_context/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp%encode_combined_context/final/weights*
_output_shapes
: 
ч
,encode_combined_context/final/weights/AssignAssignVariableOp%encode_combined_context/final/weights7encode_combined_context/final/weights/Initializer/mul_1*8
_class.
,*loc:@encode_combined_context/final/weights*
dtype0
й
9encode_combined_context/final/weights/Read/ReadVariableOpReadVariableOp%encode_combined_context/final/weights*
dtype0*
_output_shapes

:*8
_class.
,*loc:@encode_combined_context/final/weights
Х
Fencode_combined_context/final/weights/Regularizer/l2_regularizer/scaleConst*8
_class.
,*loc:@encode_combined_context/final/weights*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
М
Vencode_combined_context/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp%encode_combined_context/final/weights*
dtype0*
_output_shapes

:

Gencode_combined_context/final/weights/Regularizer/l2_regularizer/L2LossL2LossVencode_combined_context/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*8
_class.
,*loc:@encode_combined_context/final/weights
Г
@encode_combined_context/final/weights/Regularizer/l2_regularizerMulFencode_combined_context/final/weights/Regularizer/l2_regularizer/scaleGencode_combined_context/final/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*8
_class.
,*loc:@encode_combined_context/final/weights

3encode_combined_context/final/MatMul/ReadVariableOpReadVariableOp%encode_combined_context/final/weights*
_output_shapes

:*
dtype0
л
$encode_combined_context/final/MatMulMatMulDencode_combined_context/layer_1/layer_norm/LayerNorm/batchnorm/add_13encode_combined_context/final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
encode_combined_context/addAdd$encode_combined_context/final/MatMul2skip_connection/combined_context/projection/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0
ж
Cencode_combined_context/layer_norm/LayerNorm/beta/Initializer/zerosConst*D
_class:
86loc:@encode_combined_context/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:

1encode_combined_context/layer_norm/LayerNorm/betaVarHandleOp*B
shared_name31encode_combined_context/layer_norm/LayerNorm/beta*D
_class:
86loc:@encode_combined_context/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
Г
Rencode_combined_context/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp1encode_combined_context/layer_norm/LayerNorm/beta*
_output_shapes
: 

8encode_combined_context/layer_norm/LayerNorm/beta/AssignAssignVariableOp1encode_combined_context/layer_norm/LayerNorm/betaCencode_combined_context/layer_norm/LayerNorm/beta/Initializer/zeros*
dtype0*D
_class:
86loc:@encode_combined_context/layer_norm/LayerNorm/beta
љ
Eencode_combined_context/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1encode_combined_context/layer_norm/LayerNorm/beta*D
_class:
86loc:@encode_combined_context/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
з
Cencode_combined_context/layer_norm/LayerNorm/gamma/Initializer/onesConst*E
_class;
97loc:@encode_combined_context/layer_norm/LayerNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes
:

2encode_combined_context/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *C
shared_name42encode_combined_context/layer_norm/LayerNorm/gamma*E
_class;
97loc:@encode_combined_context/layer_norm/LayerNorm/gamma*
shape:
Е
Sencode_combined_context/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp2encode_combined_context/layer_norm/LayerNorm/gamma*
_output_shapes
: 

9encode_combined_context/layer_norm/LayerNorm/gamma/AssignAssignVariableOp2encode_combined_context/layer_norm/LayerNorm/gammaCencode_combined_context/layer_norm/LayerNorm/gamma/Initializer/ones*E
_class;
97loc:@encode_combined_context/layer_norm/LayerNorm/gamma*
dtype0
ќ
Fencode_combined_context/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2encode_combined_context/layer_norm/LayerNorm/gamma*E
_class;
97loc:@encode_combined_context/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:

Kencode_combined_context/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ю
9encode_combined_context/layer_norm/LayerNorm/moments/meanMeanencode_combined_context/addKencode_combined_context/layer_norm/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ
О
Aencode_combined_context/layer_norm/LayerNorm/moments/StopGradientStopGradient9encode_combined_context/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:џџџџџџџџџ
э
Fencode_combined_context/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifferenceencode_combined_context/addAencode_combined_context/layer_norm/LayerNorm/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ*
T0

Oencode_combined_context/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
Ё
=encode_combined_context/layer_norm/LayerNorm/moments/varianceMeanFencode_combined_context/layer_norm/LayerNorm/moments/SquaredDifferenceOencode_combined_context/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*
T0

<encode_combined_context/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
№
:encode_combined_context/layer_norm/LayerNorm/batchnorm/addAdd=encode_combined_context/layer_norm/LayerNorm/moments/variance<encode_combined_context/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:џџџџџџџџџ
Г
<encode_combined_context/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt:encode_combined_context/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:џџџџџџџџџ
И
Iencode_combined_context/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp2encode_combined_context/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
ќ
:encode_combined_context/layer_norm/LayerNorm/batchnorm/mulMul<encode_combined_context/layer_norm/LayerNorm/batchnorm/RsqrtIencode_combined_context/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
<encode_combined_context/layer_norm/LayerNorm/batchnorm/mul_1Mulencode_combined_context/add:encode_combined_context/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ*
T0
ь
<encode_combined_context/layer_norm/LayerNorm/batchnorm/mul_2Mul9encode_combined_context/layer_norm/LayerNorm/moments/mean:encode_combined_context/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Г
Eencode_combined_context/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp1encode_combined_context/layer_norm/LayerNorm/beta*
_output_shapes
:*
dtype0
ј
:encode_combined_context/layer_norm/LayerNorm/batchnorm/subSubEencode_combined_context/layer_norm/LayerNorm/batchnorm/ReadVariableOp<encode_combined_context/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ
я
<encode_combined_context/layer_norm/LayerNorm/batchnorm/add_1Add<encode_combined_context/layer_norm/LayerNorm/batchnorm/mul_1:encode_combined_context/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ
М
Bencode_combined_context/normalize/combined_context_encoding/SquareSquare<encode_combined_context/layer_norm/LayerNorm/batchnorm/add_1*
T0*'
_output_shapes
:џџџџџџџџџ

Qencode_combined_context/normalize/combined_context_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
 
?encode_combined_context/normalize/combined_context_encoding/SumSumBencode_combined_context/normalize/combined_context_encoding/SquareQencode_combined_context/normalize/combined_context_encoding/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:џџџџџџџџџ

Eencode_combined_context/normalize/combined_context_encoding/Maximum/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 

Cencode_combined_context/normalize/combined_context_encoding/MaximumMaximum?encode_combined_context/normalize/combined_context_encoding/SumEencode_combined_context/normalize/combined_context_encoding/Maximum/y*
T0*'
_output_shapes
:џџџџџџџџџ
С
Aencode_combined_context/normalize/combined_context_encoding/RsqrtRsqrtCencode_combined_context/normalize/combined_context_encoding/Maximum*
T0*'
_output_shapes
:џџџџџџџџџ
ѕ
;encode_combined_context/normalize/combined_context_encodingMul<encode_combined_context/layer_norm/LayerNorm/batchnorm/add_1Aencode_combined_context/normalize/combined_context_encoding/Rsqrt*
T0*'
_output_shapes
:џџџџџџџџџ

combined_context_encodingIdentity;encode_combined_context/normalize/combined_context_encoding*'
_output_shapes
:џџџџџџџџџ*
T0
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
ъ
save/SaveV2/tensor_namesConst*
valueB4B(embed_nl/layer_norm_input/LayerNorm/betaB)embed_nl/layer_norm_input/LayerNorm/gammaB embed_nl/positional_embeddings/0B+embed_nl/self_attention_head_1/keys_weightsB,embed_nl/self_attention_head_1/query_weightsB%embedding_matrices/subword_embeddingsB%encode_combined_context/final/weightsB0encode_combined_context/layer_0/hidden_0/weightsB9encode_combined_context/layer_0/layer_norm/LayerNorm/betaB:encode_combined_context/layer_0/layer_norm/LayerNorm/gammaB0encode_combined_context/layer_1/hidden_1/weightsB9encode_combined_context/layer_1/layer_norm/LayerNorm/betaB:encode_combined_context/layer_1/layer_norm/LayerNorm/gammaB1encode_combined_context/layer_norm/LayerNorm/betaB2encode_combined_context/layer_norm/LayerNorm/gammaB7encode_combined_context/layer_norm_input/LayerNorm/betaB8encode_combined_context/layer_norm_input/LayerNorm/gammaB$encode_context_feature/final/weightsB/encode_context_feature/layer_0/hidden_0/weightsB8encode_context_feature/layer_0/layer_norm/LayerNorm/betaB9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaB/encode_context_feature/layer_1/hidden_1/weightsB8encode_context_feature/layer_1/layer_norm/LayerNorm/betaB9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaB0encode_context_feature/layer_norm/LayerNorm/betaB1encode_context_feature/layer_norm/LayerNorm/gammaB6encode_context_feature/layer_norm_input/LayerNorm/betaB7encode_context_feature/layer_norm_input/LayerNorm/gammaB*encode_extra_context_feature/final/weightsB5encode_extra_context_feature/layer_0/hidden_0/weightsB>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/betaB?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gammaB5encode_extra_context_feature/layer_1/hidden_1/weightsB>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/betaB?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gammaB6encode_extra_context_feature/layer_norm/LayerNorm/betaB7encode_extra_context_feature/layer_norm/LayerNorm/gammaB<encode_extra_context_feature/layer_norm_input/LayerNorm/betaB=encode_extra_context_feature/layer_norm_input/LayerNorm/gammaBencode_nl_feature/final/weightsB*encode_nl_feature/layer_0/hidden_0/weightsB3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaB*encode_nl_feature/layer_1/hidden_1/weightsB3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaB+encode_nl_feature/layer_norm/LayerNorm/betaB,encode_nl_feature/layer_norm/LayerNorm/gammaB1encode_nl_feature/layer_norm_input/LayerNorm/betaB2encode_nl_feature/layer_norm_input/LayerNorm/gammaB3skip_connection/combined_context/projection/weightsB"skip_connection/projection/weights*
dtype0*
_output_shapes
:4
Ы
save/SaveV2/shape_and_slicesConst*
_output_shapes
:4*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Е
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices<embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp=embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp4embed_nl/positional_embeddings/0/Read/ReadVariableOp?embed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp@embed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp9embedding_matrices/subword_embeddings/Read/ReadVariableOp9encode_combined_context/final/weights/Read/ReadVariableOpDencode_combined_context/layer_0/hidden_0/weights/Read/ReadVariableOpMencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpNencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpDencode_combined_context/layer_1/hidden_1/weights/Read/ReadVariableOpMencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpNencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpEencode_combined_context/layer_norm/LayerNorm/beta/Read/ReadVariableOpFencode_combined_context/layer_norm/LayerNorm/gamma/Read/ReadVariableOpKencode_combined_context/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpLencode_combined_context/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp8encode_context_feature/final/weights/Read/ReadVariableOpCencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpLencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpMencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpCencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpLencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpMencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpDencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpEencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpJencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpKencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp>encode_extra_context_feature/final/weights/Read/ReadVariableOpIencode_extra_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpRencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpSencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpIencode_extra_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpRencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpSencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpJencode_extra_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpKencode_extra_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpPencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpQencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp3encode_nl_feature/final/weights/Read/ReadVariableOp>encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOpGencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpHencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp>encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOpGencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpHencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp?encode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp@encode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpEencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpFencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpGskip_connection/combined_context/projection/weights/Read/ReadVariableOp6skip_connection/projection/weights/Read/ReadVariableOp*B
dtypes8
624
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ќ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB4B(embed_nl/layer_norm_input/LayerNorm/betaB)embed_nl/layer_norm_input/LayerNorm/gammaB embed_nl/positional_embeddings/0B+embed_nl/self_attention_head_1/keys_weightsB,embed_nl/self_attention_head_1/query_weightsB%embedding_matrices/subword_embeddingsB%encode_combined_context/final/weightsB0encode_combined_context/layer_0/hidden_0/weightsB9encode_combined_context/layer_0/layer_norm/LayerNorm/betaB:encode_combined_context/layer_0/layer_norm/LayerNorm/gammaB0encode_combined_context/layer_1/hidden_1/weightsB9encode_combined_context/layer_1/layer_norm/LayerNorm/betaB:encode_combined_context/layer_1/layer_norm/LayerNorm/gammaB1encode_combined_context/layer_norm/LayerNorm/betaB2encode_combined_context/layer_norm/LayerNorm/gammaB7encode_combined_context/layer_norm_input/LayerNorm/betaB8encode_combined_context/layer_norm_input/LayerNorm/gammaB$encode_context_feature/final/weightsB/encode_context_feature/layer_0/hidden_0/weightsB8encode_context_feature/layer_0/layer_norm/LayerNorm/betaB9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaB/encode_context_feature/layer_1/hidden_1/weightsB8encode_context_feature/layer_1/layer_norm/LayerNorm/betaB9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaB0encode_context_feature/layer_norm/LayerNorm/betaB1encode_context_feature/layer_norm/LayerNorm/gammaB6encode_context_feature/layer_norm_input/LayerNorm/betaB7encode_context_feature/layer_norm_input/LayerNorm/gammaB*encode_extra_context_feature/final/weightsB5encode_extra_context_feature/layer_0/hidden_0/weightsB>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/betaB?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gammaB5encode_extra_context_feature/layer_1/hidden_1/weightsB>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/betaB?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gammaB6encode_extra_context_feature/layer_norm/LayerNorm/betaB7encode_extra_context_feature/layer_norm/LayerNorm/gammaB<encode_extra_context_feature/layer_norm_input/LayerNorm/betaB=encode_extra_context_feature/layer_norm_input/LayerNorm/gammaBencode_nl_feature/final/weightsB*encode_nl_feature/layer_0/hidden_0/weightsB3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaB*encode_nl_feature/layer_1/hidden_1/weightsB3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaB+encode_nl_feature/layer_norm/LayerNorm/betaB,encode_nl_feature/layer_norm/LayerNorm/gammaB1encode_nl_feature/layer_norm_input/LayerNorm/betaB2encode_nl_feature/layer_norm_input/LayerNorm/gammaB3skip_connection/combined_context/projection/weightsB"skip_connection/projection/weights*
dtype0*
_output_shapes
:4
н
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
Ё
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*B
dtypes8
624*ц
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
o
save/AssignVariableOpAssignVariableOp(embed_nl/layer_norm_input/LayerNorm/betasave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
t
save/AssignVariableOp_1AssignVariableOp)embed_nl/layer_norm_input/LayerNorm/gammasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
k
save/AssignVariableOp_2AssignVariableOp embed_nl/positional_embeddings/0save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
v
save/AssignVariableOp_3AssignVariableOp+embed_nl/self_attention_head_1/keys_weightssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
w
save/AssignVariableOp_4AssignVariableOp,embed_nl/self_attention_head_1/query_weightssave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
p
save/AssignVariableOp_5AssignVariableOp%embedding_matrices/subword_embeddingssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
p
save/AssignVariableOp_6AssignVariableOp%encode_combined_context/final/weightssave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
{
save/AssignVariableOp_7AssignVariableOp0encode_combined_context/layer_0/hidden_0/weightssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:

save/AssignVariableOp_8AssignVariableOp9encode_combined_context/layer_0/layer_norm/LayerNorm/betasave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
_output_shapes
:*
T0

save/AssignVariableOp_9AssignVariableOp:encode_combined_context/layer_0/layer_norm/LayerNorm/gammasave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
}
save/AssignVariableOp_10AssignVariableOp0encode_combined_context/layer_1/hidden_1/weightssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:

save/AssignVariableOp_11AssignVariableOp9encode_combined_context/layer_1/layer_norm/LayerNorm/betasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
_output_shapes
:*
T0

save/AssignVariableOp_12AssignVariableOp:encode_combined_context/layer_1/layer_norm/LayerNorm/gammasave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
_output_shapes
:*
T0
~
save/AssignVariableOp_13AssignVariableOp1encode_combined_context/layer_norm/LayerNorm/betasave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:

save/AssignVariableOp_14AssignVariableOp2encode_combined_context/layer_norm/LayerNorm/gammasave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
_output_shapes
:*
T0

save/AssignVariableOp_15AssignVariableOp7encode_combined_context/layer_norm_input/LayerNorm/betasave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:

save/AssignVariableOp_16AssignVariableOp8encode_combined_context/layer_norm_input/LayerNorm/gammasave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
_output_shapes
:*
T0
q
save/AssignVariableOp_17AssignVariableOp$encode_context_feature/final/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
|
save/AssignVariableOp_18AssignVariableOp/encode_context_feature/layer_0/hidden_0/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
_output_shapes
:*
T0

save/AssignVariableOp_19AssignVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/betasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:

save/AssignVariableOp_20AssignVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gammasave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
_output_shapes
:*
T0
|
save/AssignVariableOp_21AssignVariableOp/encode_context_feature/layer_1/hidden_1/weightssave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:

save/AssignVariableOp_22AssignVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/betasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
_output_shapes
:*
T0

save/AssignVariableOp_23AssignVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gammasave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
}
save/AssignVariableOp_24AssignVariableOp0encode_context_feature/layer_norm/LayerNorm/betasave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
_output_shapes
:*
T0
~
save/AssignVariableOp_25AssignVariableOp1encode_context_feature/layer_norm/LayerNorm/gammasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:

save/AssignVariableOp_26AssignVariableOp6encode_context_feature/layer_norm_input/LayerNorm/betasave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
_output_shapes
:*
T0

save/AssignVariableOp_27AssignVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gammasave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
w
save/AssignVariableOp_28AssignVariableOp*encode_extra_context_feature/final/weightssave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:29*
T0*
_output_shapes
:

save/AssignVariableOp_29AssignVariableOp5encode_extra_context_feature/layer_0/hidden_0/weightssave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:30*
T0*
_output_shapes
:

save/AssignVariableOp_30AssignVariableOp>encode_extra_context_feature/layer_0/layer_norm/LayerNorm/betasave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:31*
_output_shapes
:*
T0

save/AssignVariableOp_31AssignVariableOp?encode_extra_context_feature/layer_0/layer_norm/LayerNorm/gammasave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:32*
_output_shapes
:*
T0

save/AssignVariableOp_32AssignVariableOp5encode_extra_context_feature/layer_1/hidden_1/weightssave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:33*
T0*
_output_shapes
:

save/AssignVariableOp_33AssignVariableOp>encode_extra_context_feature/layer_1/layer_norm/LayerNorm/betasave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:34*
T0*
_output_shapes
:

save/AssignVariableOp_34AssignVariableOp?encode_extra_context_feature/layer_1/layer_norm/LayerNorm/gammasave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:35*
_output_shapes
:*
T0

save/AssignVariableOp_35AssignVariableOp6encode_extra_context_feature/layer_norm/LayerNorm/betasave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:36*
T0*
_output_shapes
:

save/AssignVariableOp_36AssignVariableOp7encode_extra_context_feature/layer_norm/LayerNorm/gammasave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:37*
_output_shapes
:*
T0

save/AssignVariableOp_37AssignVariableOp<encode_extra_context_feature/layer_norm_input/LayerNorm/betasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:38*
_output_shapes
:*
T0

save/AssignVariableOp_38AssignVariableOp=encode_extra_context_feature/layer_norm_input/LayerNorm/gammasave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:39*
T0*
_output_shapes
:
l
save/AssignVariableOp_39AssignVariableOpencode_nl_feature/final/weightssave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:40*
_output_shapes
:*
T0
w
save/AssignVariableOp_40AssignVariableOp*encode_nl_feature/layer_0/hidden_0/weightssave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:41*
T0*
_output_shapes
:

save/AssignVariableOp_41AssignVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/betasave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:42*
T0*
_output_shapes
:

save/AssignVariableOp_42AssignVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammasave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:43*
T0*
_output_shapes
:
w
save/AssignVariableOp_43AssignVariableOp*encode_nl_feature/layer_1/hidden_1/weightssave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:44*
T0*
_output_shapes
:

save/AssignVariableOp_44AssignVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/betasave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:45*
_output_shapes
:*
T0

save/AssignVariableOp_45AssignVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammasave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:46*
_output_shapes
:*
T0
x
save/AssignVariableOp_46AssignVariableOp+encode_nl_feature/layer_norm/LayerNorm/betasave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:47*
T0*
_output_shapes
:
y
save/AssignVariableOp_47AssignVariableOp,encode_nl_feature/layer_norm/LayerNorm/gammasave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:48*
T0*
_output_shapes
:
~
save/AssignVariableOp_48AssignVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/betasave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:49*
_output_shapes
:*
T0

save/AssignVariableOp_49AssignVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gammasave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:50*
_output_shapes
:*
T0

save/AssignVariableOp_50AssignVariableOp3skip_connection/combined_context/projection/weightssave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:51*
_output_shapes
:*
T0
o
save/AssignVariableOp_51AssignVariableOp"skip_connection/projection/weightssave/Identity_51*
dtype0

save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
h
Const_1Const*1
value(B& B 7f0e8c7f52e24177a19e8ec29dfebc8a*
dtype0*
_output_shapes
: 
8
idIdentityConst_1*
_output_shapes
: *
T0"&"§
regularization_lossesу
р
Iembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty:0
=embed_nl/positional_embeddings/0/Regularizer/l2_regularizer:0
Iembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer:0
Hembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer:0
?skip_connection/projection/weights/Regularizer/l2_regularizer:0
Lencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Lencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
Aencode_context_feature/final/weights/Regularizer/l2_regularizer:0
Jembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty:0
Gencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Gencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
<encode_nl_feature/final/weights/Regularizer/l2_regularizer:0
^embed_extra_context_feature/concat/embed_nl/EmbeddingLookupUnique/get_regularization_penalty:0
Rencode_extra_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Rencode_extra_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
Gencode_extra_context_feature/final/weights/Regularizer/l2_regularizer:0
Pskip_connection/combined_context/projection/weights/Regularizer/l2_regularizer:0
Mencode_combined_context/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Mencode_combined_context/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
Bencode_combined_context/final/weights/Regularizer/l2_regularizer:0"ЮJ
model_variablesКJЗJ
п
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08

8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08

:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08

:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
џ
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08

5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08

5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Џ
>encode_extra_context_feature/layer_norm_input/LayerNorm/beta:0Cencode_extra_context_feature/layer_norm_input/LayerNorm/beta/AssignRencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
В
?encode_extra_context_feature/layer_norm_input/LayerNorm/gamma:0Dencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/AssignSencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
З
@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
З
@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08

8encode_extra_context_feature/layer_norm/LayerNorm/beta:0=encode_extra_context_feature/layer_norm/LayerNorm/beta/AssignLencode_extra_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

9encode_extra_context_feature/layer_norm/LayerNorm/gamma:0>encode_extra_context_feature/layer_norm/LayerNorm/gamma/AssignMencode_extra_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

9encode_combined_context/layer_norm_input/LayerNorm/beta:0>encode_combined_context/layer_norm_input/LayerNorm/beta/AssignMencode_combined_context/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

:encode_combined_context/layer_norm_input/LayerNorm/gamma:0?encode_combined_context/layer_norm_input/LayerNorm/gamma/AssignNencode_combined_context/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
Ѓ
;encode_combined_context/layer_0/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_0/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_0/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
Ѓ
;encode_combined_context/layer_1/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_1/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_1/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08

3encode_combined_context/layer_norm/LayerNorm/beta:08encode_combined_context/layer_norm/LayerNorm/beta/AssignGencode_combined_context/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/beta/Initializer/zeros:08

4encode_combined_context/layer_norm/LayerNorm/gamma:09encode_combined_context/layer_norm/LayerNorm/gamma/AssignHencode_combined_context/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/gamma/Initializer/ones:08"l
trainable_variablesўkћk
м
'embedding_matrices/subword_embeddings:0,embedding_matrices/subword_embeddings/Assign;embedding_matrices/subword_embeddings/Read/ReadVariableOp:0(2Bembedding_matrices/subword_embeddings/Initializer/random_uniform:08
Ш
"embed_nl/positional_embeddings/0:0'embed_nl/positional_embeddings/0/Assign6embed_nl/positional_embeddings/0/Read/ReadVariableOp:0(2=embed_nl/positional_embeddings/0/Initializer/random_uniform:08
п
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ј
.embed_nl/self_attention_head_1/query_weights:03embed_nl/self_attention_head_1/query_weights/AssignBembed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp:0(2Iembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform:08
є
-embed_nl/self_attention_head_1/keys_weights:02embed_nl/self_attention_head_1/keys_weights/AssignAembed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp:0(2Hembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform:08
Ч
$skip_connection/projection/weights:0)skip_connection/projection/weights/Assign8skip_connection/projection/weights/Read/ReadVariableOp:0(26skip_connection/projection/weights/Initializer/mul_1:08

8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ћ
1encode_context_feature/layer_0/hidden_0/weights:06encode_context_feature/layer_0/hidden_0/weights/AssignEencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08

:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ћ
1encode_context_feature/layer_1/hidden_1/weights:06encode_context_feature/layer_1/hidden_1/weights/AssignEencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08

:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
Я
&encode_context_feature/final/weights:0+encode_context_feature/final/weights/Assign:encode_context_feature/final/weights/Read/ReadVariableOp:0(28encode_context_feature/final/weights/Initializer/mul_1:08
џ
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_0/hidden_0/weights:01encode_nl_feature/layer_0/hidden_0/weights/Assign@encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1:08

5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_1/hidden_1/weights:01encode_nl_feature/layer_1/hidden_1/weights/Assign@encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1:08

5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
Л
!encode_nl_feature/final/weights:0&encode_nl_feature/final/weights/Assign5encode_nl_feature/final/weights/Read/ReadVariableOp:0(23encode_nl_feature/final/weights/Initializer/mul_1:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Џ
>encode_extra_context_feature/layer_norm_input/LayerNorm/beta:0Cencode_extra_context_feature/layer_norm_input/LayerNorm/beta/AssignRencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
В
?encode_extra_context_feature/layer_norm_input/LayerNorm/gamma:0Dencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/AssignSencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08

7encode_extra_context_feature/layer_0/hidden_0/weights:0<encode_extra_context_feature/layer_0/hidden_0/weights/AssignKencode_extra_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Iencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
З
@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08

7encode_extra_context_feature/layer_1/hidden_1/weights:0<encode_extra_context_feature/layer_1/hidden_1/weights/AssignKencode_extra_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Iencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
З
@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_extra_context_feature/final/weights:01encode_extra_context_feature/final/weights/Assign@encode_extra_context_feature/final/weights/Read/ReadVariableOp:0(2>encode_extra_context_feature/final/weights/Initializer/mul_1:08

8encode_extra_context_feature/layer_norm/LayerNorm/beta:0=encode_extra_context_feature/layer_norm/LayerNorm/beta/AssignLencode_extra_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

9encode_extra_context_feature/layer_norm/LayerNorm/gamma:0>encode_extra_context_feature/layer_norm/LayerNorm/gamma/AssignMencode_extra_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

5skip_connection/combined_context/projection/weights:0:skip_connection/combined_context/projection/weights/AssignIskip_connection/combined_context/projection/weights/Read/ReadVariableOp:0(2Gskip_connection/combined_context/projection/weights/Initializer/mul_1:08

9encode_combined_context/layer_norm_input/LayerNorm/beta:0>encode_combined_context/layer_norm_input/LayerNorm/beta/AssignMencode_combined_context/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

:encode_combined_context/layer_norm_input/LayerNorm/gamma:0?encode_combined_context/layer_norm_input/LayerNorm/gamma/AssignNencode_combined_context/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
џ
2encode_combined_context/layer_0/hidden_0/weights:07encode_combined_context/layer_0/hidden_0/weights/AssignFencode_combined_context/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Dencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1:08
Ѓ
;encode_combined_context/layer_0/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_0/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_0/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
џ
2encode_combined_context/layer_1/hidden_1/weights:07encode_combined_context/layer_1/hidden_1/weights/AssignFencode_combined_context/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Dencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1:08
Ѓ
;encode_combined_context/layer_1/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_1/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_1/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
г
'encode_combined_context/final/weights:0,encode_combined_context/final/weights/Assign;encode_combined_context/final/weights/Read/ReadVariableOp:0(29encode_combined_context/final/weights/Initializer/mul_1:08

3encode_combined_context/layer_norm/LayerNorm/beta:08encode_combined_context/layer_norm/LayerNorm/beta/AssignGencode_combined_context/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/beta/Initializer/zeros:08

4encode_combined_context/layer_norm/LayerNorm/gamma:09encode_combined_context/layer_norm/LayerNorm/gamma/AssignHencode_combined_context/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/gamma/Initializer/ones:08"l
	variablesўkћk
м
'embedding_matrices/subword_embeddings:0,embedding_matrices/subword_embeddings/Assign;embedding_matrices/subword_embeddings/Read/ReadVariableOp:0(2Bembedding_matrices/subword_embeddings/Initializer/random_uniform:08
Ш
"embed_nl/positional_embeddings/0:0'embed_nl/positional_embeddings/0/Assign6embed_nl/positional_embeddings/0/Read/ReadVariableOp:0(2=embed_nl/positional_embeddings/0/Initializer/random_uniform:08
п
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ј
.embed_nl/self_attention_head_1/query_weights:03embed_nl/self_attention_head_1/query_weights/AssignBembed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp:0(2Iembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform:08
є
-embed_nl/self_attention_head_1/keys_weights:02embed_nl/self_attention_head_1/keys_weights/AssignAembed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp:0(2Hembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform:08
Ч
$skip_connection/projection/weights:0)skip_connection/projection/weights/Assign8skip_connection/projection/weights/Read/ReadVariableOp:0(26skip_connection/projection/weights/Initializer/mul_1:08

8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ћ
1encode_context_feature/layer_0/hidden_0/weights:06encode_context_feature/layer_0/hidden_0/weights/AssignEencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08

:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ћ
1encode_context_feature/layer_1/hidden_1/weights:06encode_context_feature/layer_1/hidden_1/weights/AssignEencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08

:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
Ђ
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
Я
&encode_context_feature/final/weights:0+encode_context_feature/final/weights/Assign:encode_context_feature/final/weights/Read/ReadVariableOp:0(28encode_context_feature/final/weights/Initializer/mul_1:08
џ
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_0/hidden_0/weights:01encode_nl_feature/layer_0/hidden_0/weights/Assign@encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1:08

5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_1/hidden_1/weights:01encode_nl_feature/layer_1/hidden_1/weights/Assign@encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1:08

5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08

6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
Л
!encode_nl_feature/final/weights:0&encode_nl_feature/final/weights/Assign5encode_nl_feature/final/weights/Read/ReadVariableOp:0(23encode_nl_feature/final/weights/Initializer/mul_1:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Џ
>encode_extra_context_feature/layer_norm_input/LayerNorm/beta:0Cencode_extra_context_feature/layer_norm_input/LayerNorm/beta/AssignRencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
В
?encode_extra_context_feature/layer_norm_input/LayerNorm/gamma:0Dencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/AssignSencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Pencode_extra_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08

7encode_extra_context_feature/layer_0/hidden_0/weights:0<encode_extra_context_feature/layer_0/hidden_0/weights/AssignKencode_extra_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Iencode_extra_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
З
@encode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08

7encode_extra_context_feature/layer_1/hidden_1/weights:0<encode_extra_context_feature/layer_1/hidden_1/weights/AssignKencode_extra_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Iencode_extra_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
З
@encode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta:0Eencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignTencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
К
Aencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma:0Fencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignUencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Rencode_extra_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_extra_context_feature/final/weights:01encode_extra_context_feature/final/weights/Assign@encode_extra_context_feature/final/weights/Read/ReadVariableOp:0(2>encode_extra_context_feature/final/weights/Initializer/mul_1:08

8encode_extra_context_feature/layer_norm/LayerNorm/beta:0=encode_extra_context_feature/layer_norm/LayerNorm/beta/AssignLencode_extra_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08

9encode_extra_context_feature/layer_norm/LayerNorm/gamma:0>encode_extra_context_feature/layer_norm/LayerNorm/gamma/AssignMencode_extra_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_extra_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08

5skip_connection/combined_context/projection/weights:0:skip_connection/combined_context/projection/weights/AssignIskip_connection/combined_context/projection/weights/Read/ReadVariableOp:0(2Gskip_connection/combined_context/projection/weights/Initializer/mul_1:08

9encode_combined_context/layer_norm_input/LayerNorm/beta:0>encode_combined_context/layer_norm_input/LayerNorm/beta/AssignMencode_combined_context/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/beta/Initializer/zeros:08

:encode_combined_context/layer_norm_input/LayerNorm/gamma:0?encode_combined_context/layer_norm_input/LayerNorm/gamma/AssignNencode_combined_context/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Kencode_combined_context/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
џ
2encode_combined_context/layer_0/hidden_0/weights:07encode_combined_context/layer_0/hidden_0/weights/AssignFencode_combined_context/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Dencode_combined_context/layer_0/hidden_0/weights/Initializer/mul_1:08
Ѓ
;encode_combined_context/layer_0/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_0/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_0/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
џ
2encode_combined_context/layer_1/hidden_1/weights:07encode_combined_context/layer_1/hidden_1/weights/AssignFencode_combined_context/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Dencode_combined_context/layer_1/hidden_1/weights/Initializer/mul_1:08
Ѓ
;encode_combined_context/layer_1/layer_norm/LayerNorm/beta:0@encode_combined_context/layer_1/layer_norm/LayerNorm/beta/AssignOencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
І
<encode_combined_context/layer_1/layer_norm/LayerNorm/gamma:0Aencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/AssignPencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Mencode_combined_context/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
г
'encode_combined_context/final/weights:0,encode_combined_context/final/weights/Assign;encode_combined_context/final/weights/Read/ReadVariableOp:0(29encode_combined_context/final/weights/Initializer/mul_1:08

3encode_combined_context/layer_norm/LayerNorm/beta:08encode_combined_context/layer_norm/LayerNorm/beta/AssignGencode_combined_context/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/beta/Initializer/zeros:08

4encode_combined_context/layer_norm/LayerNorm/gamma:09encode_combined_context/layer_norm/LayerNorm/gamma/AssignHencode_combined_context/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_combined_context/layer_norm/LayerNorm/gamma/Initializer/ones:08"И
table_initializerЂ

[SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2
@SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2"Ъж
cond_contextИжДж
Е
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_textrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *г
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0ш
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
з
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*ѕ
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0П
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0ш
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0з
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Х
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_texttSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *н
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0ь
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
т
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_text_1tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0*њ
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
|SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0ь
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0л
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0Е
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0|SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
х
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_textXSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0 *б
cSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency:0
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0Д
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0

ZSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_text_1XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0*
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0
`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4:0
eSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1:0
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0
+SubwordTokenizer/tokenize/strided_slice_1:0
+SubwordTokenizer/tokenize/strided_slice_1:0`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0Ѕ
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0Д
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0Ѓ
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All:0^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
Х
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_texttSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *н
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0ь
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ў
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0У
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0ь
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0л
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
ж
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_textvSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *ш
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0№
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0

xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_text_1vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0*
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
~SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0№
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0п
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0Й
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0~SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
ѕ
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_textZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0 *л
eSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency:0
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0И
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
Ю
\SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_text_1ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0*Д
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0
bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4:0
gSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1:0
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0
-SubwordTokenizer/tokenize_1/strided_slice_1:0
-SubwordTokenizer/tokenize_1/strided_slice_1:0bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0Љ
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0И
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0Ї
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All:0`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
Х
tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_texttSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *н
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0ь
tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ў
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*
]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2:0л
]SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0zSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0У
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_2:0|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0ь
tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ж
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_textvSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *ш
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0№
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0

xSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_text_1vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0*
_SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
~SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0
7SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub:0п
_SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0|SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0Й
7SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/sub:0~SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0№
vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
ѕ
ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_textZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0 *л
eSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency:0
ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0И
ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
Ю
\SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_text_1ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0*Д
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/All:0
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
bSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0
bSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0:0
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1:0
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2:0
`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4:0
gSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1:0
ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5:0
-SubwordTokenizer/tokenize_2/strided_slice_1:0Љ
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/strided_slice_5:0bSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0Ї
CSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/All:0`SubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0И
ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
-SubwordTokenizer/tokenize_2/strided_slice_1:0bSubwordTokenizer/tokenize_2/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0*
encode_response
*
default
nl_feature:0џџџџџџџџџS
defaultH
1encode_nl_feature/normalize/nl_feature_encoding:0џџџџџџџџџ*и
encode_contextХ
1
extra_context 
StringStrip:0џџџџџџџџџ
/
context$
context_feature:0џџџџџџџџџ_
defaultT
=encode_combined_context/normalize/combined_context_encoding:0џџџџџџџџџ*њ
encode_context_and_responseк
+
response
nl_feature:0џџџџџџџџџ
1
extra_context 
StringStrip:0џџџџџџџџџ
/
context$
context_feature:0џџџџџџџџџh
context_encodingT
=encode_combined_context/normalize/combined_context_encoding:0џџџџџџџџџ]
response_encodingH
1encode_nl_feature/normalize/nl_feature_encoding:0џџџџџџџџџ*y
tokenizem
/
default$
context_feature:0џџџџџџџџџ:
default/
SparseToDense:0џџџџџџџџџџџџџџџџџџ*ў
encode_sequenceъ
/
default$
context_feature:0џџџџџџџџџ9
tokens/
SparseToDense:0џџџџџџџџџџџџџџџџџџ|
sequence_encodingg
Cembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1:0џџџџџџџџџџџџџџџџџџ*Ѕ
default
/
default$
context_feature:0џџџџџџџџџf
default[
Dembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze:0џџџџџџџџџ