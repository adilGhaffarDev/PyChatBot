Žą
˙Ő
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
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
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
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
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ť
ResourceApplyKerasMomentum
var	
accum
lr"T	
grad"T
momentum"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
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
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.22v1.15.0-92-g5d80e1e8e6§ő
p
dense_1_inputPlaceholder*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ÍUž*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ÍU>*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ě
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	
*

seed *
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
é
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	

Ű
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	

­
dense_1/kernelVarHandleOp*
	container *
shape:	
*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	


dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:
Ł
dense_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	


dense_1/MatMulMatMuldense_1_inputdense_1/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
h
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
X
dense_1/ReluReludense_1/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
dropout_1/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *ó5ž*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ó5>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ě
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	@*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
_output_shapes
:	@*
T0
Ű
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	@
­
dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	@

dense_2/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:@
˘
dense_2/biasVarHandleOp*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:@*
dtype0
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:@
m
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
dtype0
Ł
dense_2/MatMulMatMuldropout_1/Identitydense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:@

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
W
dense_2/ReluReludense_2/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
^
dropout_2/IdentityIdentitydense_2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ł
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *Ş7ž*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ş7>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
ë
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_3/kernel*
seed2 *
dtype0*
_output_shapes

:@*

seed 
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@
Ú
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*!
_class
loc:@dense_3/kernel
Ź
dense_3/kernelVarHandleOp*
shared_namedense_3/kernel*!
_class
loc:@dense_3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 
q
dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*
dtype0
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:@

dense_3/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
˘
dense_3/biasVarHandleOp*
shared_namedense_3/bias*
_class
loc:@dense_3/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 
b
dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
dtype0
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:
l
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:@
Ł
dense_3/MatMulMatMuldropout_2/Identitydense_3/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
dense_3/SoftmaxSoftmaxdense_3/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

PlaceholderPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
N
AssignVariableOpAssignVariableOpdense_1/kernelPlaceholder*
dtype0
q
ReadVariableOpReadVariableOpdense_1/kernel^AssignVariableOp*
dtype0*
_output_shapes
:	

h
Placeholder_1Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
P
AssignVariableOp_1AssignVariableOpdense_1/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpdense_1/bias^AssignVariableOp_1*
dtype0*
_output_shapes	
:

Placeholder_2Placeholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
AssignVariableOp_2AssignVariableOpdense_2/kernelPlaceholder_2*
dtype0
u
ReadVariableOp_2ReadVariableOpdense_2/kernel^AssignVariableOp_2*
dtype0*
_output_shapes
:	@
h
Placeholder_3Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
P
AssignVariableOp_3AssignVariableOpdense_2/biasPlaceholder_3*
dtype0
n
ReadVariableOp_3ReadVariableOpdense_2/bias^AssignVariableOp_3*
_output_shapes
:@*
dtype0

Placeholder_4Placeholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
AssignVariableOp_4AssignVariableOpdense_3/kernelPlaceholder_4*
dtype0
t
ReadVariableOp_4ReadVariableOpdense_3/kernel^AssignVariableOp_4*
dtype0*
_output_shapes

:@
h
Placeholder_5Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
P
AssignVariableOp_5AssignVariableOpdense_3/biasPlaceholder_5*
dtype0
n
ReadVariableOp_5ReadVariableOpdense_3/bias^AssignVariableOp_5*
dtype0*
_output_shapes
:
P
VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_4VarIsInitializedOpdense_2/bias*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpdense_3/bias*
_output_shapes
: 

initNoOp^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign

dense_3_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 

totalVarHandleOp*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_3_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_3/Softmaxmetrics/acc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
incompatible_shape_error(
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
metrics/acc/SumSummetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
[
metrics/acc/SizeSizemetrics/acc/Cast*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_1Castmetrics/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_1 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_3_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
8loss/dense_3_loss/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 

9loss/dense_3_loss/softmax_cross_entropy_with_logits/ShapeShapedense_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
|
:loss/dense_3_loss/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
value	B :*
dtype0

;loss/dense_3_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
{
9loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ö
7loss/dense_3_loss/softmax_cross_entropy_with_logits/SubSub:loss/dense_3_loss/softmax_cross_entropy_with_logits/Rank_19loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
ş
?loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice/beginPack7loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:

>loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
˛
9loss/dense_3_loss/softmax_cross_entropy_with_logits/SliceSlice;loss/dense_3_loss/softmax_cross_entropy_with_logits/Shape_1?loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice/begin>loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice/size*
_output_shapes
:*
Index0*
T0

Closs/dense_3_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

?loss/dense_3_loss/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Á
:loss/dense_3_loss/softmax_cross_entropy_with_logits/concatConcatV2Closs/dense_3_loss/softmax_cross_entropy_with_logits/concat/values_09loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice?loss/dense_3_loss/softmax_cross_entropy_with_logits/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ü
;loss/dense_3_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense_3/BiasAdd:loss/dense_3_loss/softmax_cross_entropy_with_logits/concat*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
|
:loss/dense_3_loss/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 

;loss/dense_3_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_3_target*
T0*
out_type0*
_output_shapes
:
}
;loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ú
9loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_1Sub:loss/dense_3_loss/softmax_cross_entropy_with_logits/Rank_2;loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
ž
Aloss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack9loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_1*
_output_shapes
:*
T0*

axis *
N

@loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
¸
;loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1Slice;loss/dense_3_loss/softmax_cross_entropy_with_logits/Shape_2Aloss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1/begin@loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

Eloss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

Aloss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
É
<loss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Eloss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1/values_0;loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_1Aloss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
ß
=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_3_target<loss/dense_3_loss/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

3loss/dense_3_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits;loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
}
;loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
value	B :*
dtype0
Ř
9loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_2Sub8loss/dense_3_loss/softmax_cross_entropy_with_logits/Rank;loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 

Aloss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
˝
@loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack9loss/dense_3_loss/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
ś
;loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2Slice9loss/dense_3_loss/softmax_cross_entropy_with_logits/ShapeAloss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2/begin@loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2/size*
_output_shapes
:*
Index0*
T0
ö
=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape3loss/dense_3_loss/softmax_cross_entropy_with_logits;loss/dense_3_loss/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
&loss/dense_3_loss/weighted_loss/Cast/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

Tloss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Sloss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Đ
Sloss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0

Rloss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
j
bloss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ł
Aloss/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2c^loss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
ë
Aloss/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_3_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

;loss/dense_3_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_3_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_3_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
1loss/dense_3_loss/weighted_loss/broadcast_weightsMul&loss/dense_3_loss/weighted_loss/Cast/x;loss/dense_3_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
#loss/dense_3_loss/weighted_loss/MulMul=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_21loss/dense_3_loss/weighted_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
c
loss/dense_3_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_3_loss/SumSum#loss/dense_3_loss/weighted_loss/Mulloss/dense_3_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
|
loss/dense_3_loss/num_elementsSize#loss/dense_3_loss/weighted_loss/Mul*
out_type0*
_output_shapes
: *
T0

#loss/dense_3_loss/num_elements/CastCastloss/dense_3_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
\
loss/dense_3_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_3_loss/Sum_1Sumloss/dense_3_loss/Sumloss/dense_3_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

loss/dense_3_loss/valueDivNoNanloss/dense_3_loss/Sum_1#loss/dense_3_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
U
loss/mulMul
loss/mul/xloss/dense_3_loss/value*
T0*
_output_shapes
: 
i
&training/SGD/gradients/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
o
*training/SGD/gradients/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
´
%training/SGD/gradients/gradients/FillFill&training/SGD/gradients/gradients/Shape*training/SGD/gradients/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

2training/SGD/gradients/gradients/loss/mul_grad/MulMul%training/SGD/gradients/gradients/Fillloss/dense_3_loss/value*
T0*
_output_shapes
: 

4training/SGD/gradients/gradients/loss/mul_grad/Mul_1Mul%training/SGD/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 

Ctraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Etraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
ľ
Straining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/ShapeEtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Đ
Htraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nanDivNoNan4training/SGD/gradients/gradients/loss/mul_grad/Mul_1#loss/dense_3_loss/num_elements/Cast*
T0*
_output_shapes
: 
Ľ
Atraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/SumSumHtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nanStraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

Etraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/ReshapeReshapeAtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/SumCtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0

Atraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/NegNegloss/dense_3_loss/Sum_1*
T0*
_output_shapes
: 
ß
Jtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nan_1DivNoNanAtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Neg#loss/dense_3_loss/num_elements/Cast*
T0*
_output_shapes
: 
č
Jtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nan_2DivNoNanJtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nan_1#loss/dense_3_loss/num_elements/Cast*
T0*
_output_shapes
: 
ë
Atraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/mulMul4training/SGD/gradients/gradients/loss/mul_grad/Mul_1Jtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
˘
Ctraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Sum_1SumAtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/mulUtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

Gtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Reshape_1ReshapeCtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Sum_1Etraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

Ktraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Etraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/ReshapeReshapeEtraining/SGD/gradients/gradients/loss/dense_3_loss/value_grad/ReshapeKtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

Ctraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 

Btraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/TileTileEtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/ReshapeCtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 

Itraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

Ctraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/ReshapeReshapeBtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_1_grad/TileItraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
¤
Atraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/ShapeShape#loss/dense_3_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
:

@training/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/TileTileCtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/ReshapeAtraining/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
Otraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/ShapeShape=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0
Â
Qtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_3_loss/weighted_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
Ů
_training/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsOtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/ShapeQtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
÷
Mtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/MulMul@training/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/Tile1loss/dense_3_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Mtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/SumSumMtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Mul_training/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¸
Qtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/ReshapeReshapeMtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/SumOtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Otraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Mul_1Mul=loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2@training/SGD/gradients/gradients/loss/dense_3_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
Otraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Sum_1SumOtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Mul_1atraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ž
Straining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Reshape_1ReshapeOtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Sum_1Qtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ü
itraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape3loss/dense_3_loss/softmax_cross_entropy_with_logits*
_output_shapes
:*
T0*
out_type0
đ
ktraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapeQtraining/SGD/gradients/gradients/loss/dense_3_loss/weighted_loss/Mul_grad/Reshapeitraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
+training/SGD/gradients/gradients/zeros_like	ZerosLike5loss/dense_3_loss/softmax_cross_entropy_with_logits:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ł
htraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

dtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsktraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapehtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
ź
]training/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/mulMuldtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims5loss/dense_3_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ę
dtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax;loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

]training/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/NegNegdtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ľ
jtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

ftraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsktraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapejtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
č
_training/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/mul_1Mulftraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1]training/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ś
gtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapedense_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
ü
itraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape]training/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits_grad/mulgtraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
Atraining/SGD/gradients/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGraditraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
§
;training/SGD/gradients/gradients/dense_3/MatMul_grad/MatMulMatMulitraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshapedense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b(

=training/SGD/gradients/gradients/dense_3/MatMul_grad/MatMul_1MatMuldropout_2/Identityitraining/SGD/gradients/gradients/loss/dense_3_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
Ä
;training/SGD/gradients/gradients/dense_2/Relu_grad/ReluGradReluGrad;training/SGD/gradients/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
É
Atraining/SGD/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad;training/SGD/gradients/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
ú
;training/SGD/gradients/gradients/dense_2/MatMul_grad/MatMulMatMul;training/SGD/gradients/gradients/dense_2/Relu_grad/ReluGraddense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
č
=training/SGD/gradients/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/Identity;training/SGD/gradients/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0
Ĺ
;training/SGD/gradients/gradients/dense_1/Relu_grad/ReluGradReluGrad;training/SGD/gradients/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ę
Atraining/SGD/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad;training/SGD/gradients/gradients/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
ů
;training/SGD/gradients/gradients/dense_1/MatMul_grad/MatMulMatMul;training/SGD/gradients/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b(
ă
=training/SGD/gradients/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input;training/SGD/gradients/gradients/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes
:	
*
transpose_a(*
transpose_b( 

#training/SGD/iter/Initializer/zerosConst*
value	B	 R *$
_class
loc:@training/SGD/iter*
dtype0	*
_output_shapes
: 
­
training/SGD/iterVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nametraining/SGD/iter*$
_class
loc:@training/SGD/iter*
	container *
shape: 
s
2training/SGD/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/iter*
_output_shapes
: 
q
training/SGD/iter/AssignAssignVariableOptraining/SGD/iter#training/SGD/iter/Initializer/zeros*
dtype0	
o
%training/SGD/iter/Read/ReadVariableOpReadVariableOptraining/SGD/iter*
dtype0	*
_output_shapes
: 

,training/SGD/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *˝75*%
_class
loc:@training/SGD/decay*
dtype0
°
training/SGD/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *#
shared_nametraining/SGD/decay*%
_class
loc:@training/SGD/decay
u
3training/SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/decay*
_output_shapes
: 
|
training/SGD/decay/AssignAssignVariableOptraining/SGD/decay,training/SGD/decay/Initializer/initial_value*
dtype0
q
&training/SGD/decay/Read/ReadVariableOpReadVariableOptraining/SGD/decay*
dtype0*
_output_shapes
: 
¨
4training/SGD/learning_rate/Initializer/initial_valueConst*
valueB
 *
×#<*-
_class#
!loc:@training/SGD/learning_rate*
dtype0*
_output_shapes
: 
Č
training/SGD/learning_rateVarHandleOp*+
shared_nametraining/SGD/learning_rate*-
_class#
!loc:@training/SGD/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 

;training/SGD/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/learning_rate*
_output_shapes
: 

!training/SGD/learning_rate/AssignAssignVariableOptraining/SGD/learning_rate4training/SGD/learning_rate/Initializer/initial_value*
dtype0

.training/SGD/learning_rate/Read/ReadVariableOpReadVariableOptraining/SGD/learning_rate*
dtype0*
_output_shapes
: 

/training/SGD/momentum/Initializer/initial_valueConst*
valueB
 *fff?*(
_class
loc:@training/SGD/momentum*
dtype0*
_output_shapes
: 
š
training/SGD/momentumVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining/SGD/momentum*(
_class
loc:@training/SGD/momentum*
	container *
shape: 
{
6training/SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/momentum*
_output_shapes
: 

training/SGD/momentum/AssignAssignVariableOptraining/SGD/momentum/training/SGD/momentum/Initializer/initial_value*
dtype0
w
)training/SGD/momentum/Read/ReadVariableOpReadVariableOptraining/SGD/momentum*
dtype0*
_output_shapes
: 
ş
Ftraining/SGD/dense_1/kernel/momentum/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"
      
¤
<training/SGD/dense_1/kernel/momentum/Initializer/zeros/ConstConst*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Ł
6training/SGD/dense_1/kernel/momentum/Initializer/zerosFillFtraining/SGD/dense_1/kernel/momentum/Initializer/zeros/shape_as_tensor<training/SGD/dense_1/kernel/momentum/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0*
_output_shapes
:	

Ů
$training/SGD/dense_1/kernel/momentumVarHandleOp*
dtype0*
_output_shapes
: *5
shared_name&$training/SGD/dense_1/kernel/momentum*!
_class
loc:@dense_1/kernel*
	container *
shape:	

ź
Etraining/SGD/dense_1/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/SGD/dense_1/kernel/momentum*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
Ş
+training/SGD/dense_1/kernel/momentum/AssignAssignVariableOp$training/SGD/dense_1/kernel/momentum6training/SGD/dense_1/kernel/momentum/Initializer/zeros*
dtype0
Á
8training/SGD/dense_1/kernel/momentum/Read/ReadVariableOpReadVariableOp$training/SGD/dense_1/kernel/momentum*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	

¤
4training/SGD/dense_1/bias/momentum/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ď
"training/SGD/dense_1/bias/momentumVarHandleOp*
shape:*
dtype0*
_output_shapes
: *3
shared_name$"training/SGD/dense_1/bias/momentum*
_class
loc:@dense_1/bias*
	container 
ś
Ctraining/SGD/dense_1/bias/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/SGD/dense_1/bias/momentum*
_class
loc:@dense_1/bias*
_output_shapes
: 
¤
)training/SGD/dense_1/bias/momentum/AssignAssignVariableOp"training/SGD/dense_1/bias/momentum4training/SGD/dense_1/bias/momentum/Initializer/zeros*
dtype0
ˇ
6training/SGD/dense_1/bias/momentum/Read/ReadVariableOpReadVariableOp"training/SGD/dense_1/bias/momentum*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:
ş
Ftraining/SGD/dense_2/kernel/momentum/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
¤
<training/SGD/dense_2/kernel/momentum/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
valueB
 *    
Ł
6training/SGD/dense_2/kernel/momentum/Initializer/zerosFillFtraining/SGD/dense_2/kernel/momentum/Initializer/zeros/shape_as_tensor<training/SGD/dense_2/kernel/momentum/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0*
_output_shapes
:	@
Ů
$training/SGD/dense_2/kernel/momentumVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: *5
shared_name&$training/SGD/dense_2/kernel/momentum
ź
Etraining/SGD/dense_2/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/SGD/dense_2/kernel/momentum*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
Ş
+training/SGD/dense_2/kernel/momentum/AssignAssignVariableOp$training/SGD/dense_2/kernel/momentum6training/SGD/dense_2/kernel/momentum/Initializer/zeros*
dtype0
Á
8training/SGD/dense_2/kernel/momentum/Read/ReadVariableOpReadVariableOp$training/SGD/dense_2/kernel/momentum*
dtype0*
_output_shapes
:	@*!
_class
loc:@dense_2/kernel
˘
4training/SGD/dense_2/bias/momentum/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Î
"training/SGD/dense_2/bias/momentumVarHandleOp*
dtype0*
_output_shapes
: *3
shared_name$"training/SGD/dense_2/bias/momentum*
_class
loc:@dense_2/bias*
	container *
shape:@
ś
Ctraining/SGD/dense_2/bias/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/SGD/dense_2/bias/momentum*
_class
loc:@dense_2/bias*
_output_shapes
: 
¤
)training/SGD/dense_2/bias/momentum/AssignAssignVariableOp"training/SGD/dense_2/bias/momentum4training/SGD/dense_2/bias/momentum/Initializer/zeros*
dtype0
ś
6training/SGD/dense_2/bias/momentum/Read/ReadVariableOpReadVariableOp"training/SGD/dense_2/bias/momentum*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:@
Ž
6training/SGD/dense_3/kernel/momentum/Initializer/zerosConst*!
_class
loc:@dense_3/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
Ř
$training/SGD/dense_3/kernel/momentumVarHandleOp*5
shared_name&$training/SGD/dense_3/kernel/momentum*!
_class
loc:@dense_3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
ź
Etraining/SGD/dense_3/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/SGD/dense_3/kernel/momentum*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
Ş
+training/SGD/dense_3/kernel/momentum/AssignAssignVariableOp$training/SGD/dense_3/kernel/momentum6training/SGD/dense_3/kernel/momentum/Initializer/zeros*
dtype0
Ŕ
8training/SGD/dense_3/kernel/momentum/Read/ReadVariableOpReadVariableOp$training/SGD/dense_3/kernel/momentum*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:@
˘
4training/SGD/dense_3/bias/momentum/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
Î
"training/SGD/dense_3/bias/momentumVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *3
shared_name$"training/SGD/dense_3/bias/momentum*
_class
loc:@dense_3/bias
ś
Ctraining/SGD/dense_3/bias/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/SGD/dense_3/bias/momentum*
_output_shapes
: *
_class
loc:@dense_3/bias
¤
)training/SGD/dense_3/bias/momentum/AssignAssignVariableOp"training/SGD/dense_3/bias/momentum4training/SGD/dense_3/bias/momentum/Initializer/zeros*
dtype0
ś
6training/SGD/dense_3/bias/momentum/Read/ReadVariableOpReadVariableOp"training/SGD/dense_3/bias/momentum*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
j
 training/SGD/Cast/ReadVariableOpReadVariableOptraining/SGD/iter*
dtype0	*
_output_shapes
: 
{
training/SGD/CastCast training/SGD/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
f
training/SGD/ReadVariableOpReadVariableOptraining/SGD/decay*
dtype0*
_output_shapes
: 
h
training/SGD/mulMultraining/SGD/ReadVariableOptraining/SGD/Cast*
T0*
_output_shapes
: 
W
training/SGD/add/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
`
training/SGD/addAddV2training/SGD/add/xtraining/SGD/mul*
T0*
_output_shapes
: 
p
training/SGD/ReadVariableOp_1ReadVariableOptraining/SGD/learning_rate*
dtype0*
_output_shapes
: 
q
training/SGD/truedivRealDivtraining/SGD/ReadVariableOp_1training/SGD/add*
T0*
_output_shapes
: 
X
training/SGD/IdentityIdentitytraining/SGD/truediv*
T0*
_output_shapes
: 
t
&training/SGD/Identity_1/ReadVariableOpReadVariableOptraining/SGD/momentum*
dtype0*
_output_shapes
: 
l
training/SGD/Identity_1Identity&training/SGD/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
×
Atraining/SGD/SGD/update_dense_1/kernel/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_1/kernel$training/SGD/dense_1/kernel/momentumtraining/SGD/Identity=training/SGD/gradients/gradients/dense_1/MatMul_grad/MatMul_1training/SGD/Identity_1*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
use_nesterov(
Ó
?training/SGD/SGD/update_dense_1/bias/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_1/bias"training/SGD/dense_1/bias/momentumtraining/SGD/IdentityAtraining/SGD/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradtraining/SGD/Identity_1*
_class
loc:@dense_1/bias*
use_nesterov(*
use_locking(*
T0
×
Atraining/SGD/SGD/update_dense_2/kernel/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_2/kernel$training/SGD/dense_2/kernel/momentumtraining/SGD/Identity=training/SGD/gradients/gradients/dense_2/MatMul_grad/MatMul_1training/SGD/Identity_1*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
use_nesterov(
Ó
?training/SGD/SGD/update_dense_2/bias/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_2/bias"training/SGD/dense_2/bias/momentumtraining/SGD/IdentityAtraining/SGD/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGradtraining/SGD/Identity_1*
use_locking(*
T0*
_class
loc:@dense_2/bias*
use_nesterov(
×
Atraining/SGD/SGD/update_dense_3/kernel/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_3/kernel$training/SGD/dense_3/kernel/momentumtraining/SGD/Identity=training/SGD/gradients/gradients/dense_3/MatMul_grad/MatMul_1training/SGD/Identity_1*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
use_nesterov(
Ó
?training/SGD/SGD/update_dense_3/bias/ResourceApplyKerasMomentumResourceApplyKerasMomentumdense_3/bias"training/SGD/dense_3/bias/momentumtraining/SGD/IdentityAtraining/SGD/gradients/gradients/dense_3/BiasAdd_grad/BiasAddGradtraining/SGD/Identity_1*
T0*
_class
loc:@dense_3/bias*
use_nesterov(*
use_locking(
ę
training/SGD/SGD/ConstConst@^training/SGD/SGD/update_dense_1/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_1/kernel/ResourceApplyKerasMomentum@^training/SGD/SGD/update_dense_2/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_2/kernel/ResourceApplyKerasMomentum@^training/SGD/SGD/update_dense_3/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_3/kernel/ResourceApplyKerasMomentum*
value	B	 R*
dtype0	*
_output_shapes
: 
s
$training/SGD/SGD/AssignAddVariableOpAssignAddVariableOptraining/SGD/itertraining/SGD/SGD/Const*
dtype0	
˘
training/SGD/SGD/ReadVariableOpReadVariableOptraining/SGD/iter%^training/SGD/SGD/AssignAddVariableOp@^training/SGD/SGD/update_dense_1/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_1/kernel/ResourceApplyKerasMomentum@^training/SGD/SGD/update_dense_2/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_2/kernel/ResourceApplyKerasMomentum@^training/SGD/SGD/update_dense_3/bias/ResourceApplyKerasMomentumB^training/SGD/SGD/update_dense_3/kernel/ResourceApplyKerasMomentum*
dtype0	*
_output_shapes
: 
O
training_1/group_depsNoOp	^loss/mul%^training/SGD/SGD/AssignAddVariableOp
h
VarIsInitializedOp_6VarIsInitializedOp$training/SGD/dense_1/kernel/momentum*
_output_shapes
: 
h
VarIsInitializedOp_7VarIsInitializedOp$training/SGD/dense_2/kernel/momentum*
_output_shapes
: 
^
VarIsInitializedOp_8VarIsInitializedOptraining/SGD/learning_rate*
_output_shapes
: 
Y
VarIsInitializedOp_9VarIsInitializedOptraining/SGD/momentum*
_output_shapes
: 
g
VarIsInitializedOp_10VarIsInitializedOp"training/SGD/dense_2/bias/momentum*
_output_shapes
: 
i
VarIsInitializedOp_11VarIsInitializedOp$training/SGD/dense_3/kernel/momentum*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOptotal*
_output_shapes
: 
J
VarIsInitializedOp_13VarIsInitializedOpcount*
_output_shapes
: 
V
VarIsInitializedOp_14VarIsInitializedOptraining/SGD/iter*
_output_shapes
: 
W
VarIsInitializedOp_15VarIsInitializedOptraining/SGD/decay*
_output_shapes
: 
g
VarIsInitializedOp_16VarIsInitializedOp"training/SGD/dense_1/bias/momentum*
_output_shapes
: 
g
VarIsInitializedOp_17VarIsInitializedOp"training/SGD/dense_3/bias/momentum*
_output_shapes
: 
´
init_1NoOp^count/Assign^total/Assign^training/SGD/decay/Assign*^training/SGD/dense_1/bias/momentum/Assign,^training/SGD/dense_1/kernel/momentum/Assign*^training/SGD/dense_2/bias/momentum/Assign,^training/SGD/dense_2/kernel/momentum/Assign*^training/SGD/dense_3/bias/momentum/Assign,^training/SGD/dense_3/kernel/momentum/Assign^training/SGD/iter/Assign"^training/SGD/learning_rate/Assign^training/SGD/momentum/Assign
N
Placeholder_6Placeholder*
dtype0	*
_output_shapes
: *
shape: 
U
AssignVariableOp_6AssignVariableOptraining/SGD/iterPlaceholder_6*
dtype0	
o
ReadVariableOp_6ReadVariableOptraining/SGD/iter^AssignVariableOp_6*
dtype0	*
_output_shapes
: 

Placeholder_7Placeholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
h
AssignVariableOp_7AssignVariableOp$training/SGD/dense_1/kernel/momentumPlaceholder_7*
dtype0

ReadVariableOp_7ReadVariableOp$training/SGD/dense_1/kernel/momentum^AssignVariableOp_7*
dtype0*
_output_shapes
:	

h
Placeholder_8Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
AssignVariableOp_8AssignVariableOp"training/SGD/dense_1/bias/momentumPlaceholder_8*
dtype0

ReadVariableOp_8ReadVariableOp"training/SGD/dense_1/bias/momentum^AssignVariableOp_8*
dtype0*
_output_shapes	
:

Placeholder_9Placeholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
h
AssignVariableOp_9AssignVariableOp$training/SGD/dense_2/kernel/momentumPlaceholder_9*
dtype0

ReadVariableOp_9ReadVariableOp$training/SGD/dense_2/kernel/momentum^AssignVariableOp_9*
dtype0*
_output_shapes
:	@
i
Placeholder_10Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
h
AssignVariableOp_10AssignVariableOp"training/SGD/dense_2/bias/momentumPlaceholder_10*
dtype0

ReadVariableOp_10ReadVariableOp"training/SGD/dense_2/bias/momentum^AssignVariableOp_10*
dtype0*
_output_shapes
:@

Placeholder_11Placeholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
j
AssignVariableOp_11AssignVariableOp$training/SGD/dense_3/kernel/momentumPlaceholder_11*
dtype0

ReadVariableOp_11ReadVariableOp$training/SGD/dense_3/kernel/momentum^AssignVariableOp_11*
dtype0*
_output_shapes

:@
i
Placeholder_12Placeholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
AssignVariableOp_12AssignVariableOp"training/SGD/dense_3/bias/momentumPlaceholder_12*
dtype0

ReadVariableOp_12ReadVariableOp"training/SGD/dense_3/bias/momentum^AssignVariableOp_12*
dtype0*
_output_shapes
:
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_e2e4a39f152445758eb37bc915d139aa/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ô
save/SaveV2/tensor_namesConst*§
valueBBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBtraining/SGD/decayB"training/SGD/dense_1/bias/momentumB$training/SGD/dense_1/kernel/momentumB"training/SGD/dense_2/bias/momentumB$training/SGD/dense_2/kernel/momentumB"training/SGD/dense_3/bias/momentumB$training/SGD/dense_3/kernel/momentumBtraining/SGD/iterBtraining/SGD/learning_rateBtraining/SGD/momentum*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ő
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp&training/SGD/decay/Read/ReadVariableOp6training/SGD/dense_1/bias/momentum/Read/ReadVariableOp8training/SGD/dense_1/kernel/momentum/Read/ReadVariableOp6training/SGD/dense_2/bias/momentum/Read/ReadVariableOp8training/SGD/dense_2/kernel/momentum/Read/ReadVariableOp6training/SGD/dense_3/bias/momentum/Read/ReadVariableOp8training/SGD/dense_3/kernel/momentum/Read/ReadVariableOp%training/SGD/iter/Read/ReadVariableOp.training/SGD/learning_rate/Read/ReadVariableOp)training/SGD/momentum/Read/ReadVariableOp*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
÷
save/RestoreV2/tensor_namesConst*§
valueBBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBtraining/SGD/decayB"training/SGD/dense_1/bias/momentumB$training/SGD/dense_1/kernel/momentumB"training/SGD/dense_2/bias/momentumB$training/SGD/dense_2/kernel/momentumB"training/SGD/dense_3/bias/momentumB$training/SGD/dense_3/kernel/momentumBtraining/SGD/iterBtraining/SGD/learning_rateBtraining/SGD/momentum*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ű
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2	*T
_output_shapesB
@::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
U
save/AssignVariableOpAssignVariableOpdense_1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Y
save/AssignVariableOp_1AssignVariableOpdense_1/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
W
save/AssignVariableOp_2AssignVariableOpdense_2/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Y
save/AssignVariableOp_3AssignVariableOpdense_2/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
W
save/AssignVariableOp_4AssignVariableOpdense_3/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpdense_3/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
]
save/AssignVariableOp_6AssignVariableOptraining/SGD/decaysave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
m
save/AssignVariableOp_7AssignVariableOp"training/SGD/dense_1/bias/momentumsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
o
save/AssignVariableOp_8AssignVariableOp$training/SGD/dense_1/kernel/momentumsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
n
save/AssignVariableOp_9AssignVariableOp"training/SGD/dense_2/bias/momentumsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
q
save/AssignVariableOp_10AssignVariableOp$training/SGD/dense_2/kernel/momentumsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
o
save/AssignVariableOp_11AssignVariableOp"training/SGD/dense_3/bias/momentumsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
q
save/AssignVariableOp_12AssignVariableOp$training/SGD/dense_3/kernel/momentumsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
_output_shapes
:*
T0	
^
save/AssignVariableOp_13AssignVariableOptraining/SGD/itersave/Identity_14*
dtype0	
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
g
save/AssignVariableOp_14AssignVariableOptraining/SGD/learning_ratesave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
b
save/AssignVariableOp_15AssignVariableOptraining/SGD/momentumsave/Identity_16*
dtype0
ž
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"÷
trainable_variablesßÜ

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08"
	variables

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

training/SGD/iter:0training/SGD/iter/Assign'training/SGD/iter/Read/ReadVariableOp:0(2%training/SGD/iter/Initializer/zeros:0H

training/SGD/decay:0training/SGD/decay/Assign(training/SGD/decay/Read/ReadVariableOp:0(2.training/SGD/decay/Initializer/initial_value:0H
Ż
training/SGD/learning_rate:0!training/SGD/learning_rate/Assign0training/SGD/learning_rate/Read/ReadVariableOp:0(26training/SGD/learning_rate/Initializer/initial_value:0H

training/SGD/momentum:0training/SGD/momentum/Assign+training/SGD/momentum/Read/ReadVariableOp:0(21training/SGD/momentum/Initializer/initial_value:0H
Í
&training/SGD/dense_1/kernel/momentum:0+training/SGD/dense_1/kernel/momentum/Assign:training/SGD/dense_1/kernel/momentum/Read/ReadVariableOp:0(28training/SGD/dense_1/kernel/momentum/Initializer/zeros:0
Ĺ
$training/SGD/dense_1/bias/momentum:0)training/SGD/dense_1/bias/momentum/Assign8training/SGD/dense_1/bias/momentum/Read/ReadVariableOp:0(26training/SGD/dense_1/bias/momentum/Initializer/zeros:0
Í
&training/SGD/dense_2/kernel/momentum:0+training/SGD/dense_2/kernel/momentum/Assign:training/SGD/dense_2/kernel/momentum/Read/ReadVariableOp:0(28training/SGD/dense_2/kernel/momentum/Initializer/zeros:0
Ĺ
$training/SGD/dense_2/bias/momentum:0)training/SGD/dense_2/bias/momentum/Assign8training/SGD/dense_2/bias/momentum/Read/ReadVariableOp:0(26training/SGD/dense_2/bias/momentum/Initializer/zeros:0
Í
&training/SGD/dense_3/kernel/momentum:0+training/SGD/dense_3/kernel/momentum/Assign:training/SGD/dense_3/kernel/momentum/Read/ReadVariableOp:0(28training/SGD/dense_3/kernel/momentum/Initializer/zeros:0
Ĺ
$training/SGD/dense_3/bias/momentum:0)training/SGD/dense_3/bias/momentum/Assign8training/SGD/dense_3/bias/momentum/Read/ReadVariableOp:0(26training/SGD/dense_3/bias/momentum/Initializer/zeros:0*Ś
serving_default
5
input_image&
dense_1_input:0˙˙˙˙˙˙˙˙˙
=
dense_3/Softmax:0(
dense_3/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict