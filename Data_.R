#----------------------------------------------------------
objects() #현재 오브젝트들 
rm()#삭제

#데이터 처리 객체
# 동일 데이터 타입
# 스칼라 : 단일 데이터 처리
# 벡터 : 1차원배열(스칼라 여러개 합친것)
# matrix : 2차원 배열(백터를 여러개 합친것)
# array : 3차원 배열(matrix를 여러개 쌇아 올린것)

# 다른 데이터 타입 
# list L 백터와 비슷(키, 값 형태로 저장) 
# dataframe : 엑셀의 표나 db의 테이블과 같음 

# 백터 : 1차원 배열 
# 1. c()함수로 작성 
# 2. 인덱스는 1부터 시작 
# 3. 하나의 자료형만 사용
# 4. 결측값은 NA로 사용
# 5. NULL은 어떤 형식도 취하지 않는 특별한 객체 

# 벡터 : 1차원배열(스칼라 여러개 합친것)
vc1 = c(1,2,3,4,5)
c('a','b','c')
vc1[1]
vc1[2:4] # 2부터 4까지 출력 
vc1[-2:-4]
vc1[-3]
vc1[1:(length(vc1)-2)]
vc1[2] = 6 #변경 가능 
vc1 = c(vc1,7) # 마지막에 추가됨 
vc1[9] = 9 # 특정 인텍스에 추가 빈공간은 NA로 
append(vc1,10,after=3)# 데이터가 저장이 안됨 ! -> 꼭 변수에 저장 ! 
vc1 = append(vc1,10,after=3)#3뒤에 10을 붙여라 
vc2 = c(1,2,3) + c(3,4,5)
# vc2 += 1 이런거 안됨 
vc2 = vc2+1
vc3 = c('3','4','5')
vc2 + vc3
var4 = union(vc2,vc3) # 다 스트링으로 변환됨 
var1 = vc1 + c(1,2,3,4) # 크기가 다르면 리핏됨 
var1

intvar1 = c(1,2,3)
intvar2 = c(2,3,4)
intvar2 - intvar1

setdiff(intvar1,intvar2)#차집합 첫번쨰 변수 기준 
intersect(intvar1,intvar2)#교집합 

fruits = c(10,20,30)
names(fruits)=c('apple','banana','peach') # 각 컬럼에 이름을 넣어준다.
fruits

Seq_Var = seq(1,5)  #1~5
Seq_Var
Seq_Var1 = seq(1,10,2) # 증가폭을 2로 증가 
Seq_Var1

rep_var = rep(1:3,2) # 1 ~ 3 2번 반복 
rep_var

rep_var1 = rep(1:3,each=2) # 각각 2번씪 11 22 33 
rep_var1
length((rep_var)) # NROW와 값이 같다. 행의 갯수 
NROW(rep_var)

# 원소아닌에 뭔가 있냐? %in% 변수
3%in% rep_var1
# 백터는 행으로 생성 

#---------------------------------------------------------------------
# matrix 
# 1. 백터를 여러개 합친 형태 : 행렬 
# 2. 모든 컬럼과 행은 데이터형이 동일
# 3. 기본적으로 열로 생성
# 4. 다른 데이터 타입의 데이터를 저장할 경우 데이터 프레임 사용 

mat1 = matrix(c(1,2,3,4))   # 열로 생성된다. 
mat2 = matrix(c(1,2,3,4),nrow=2) #nrow 는 행의 갯수 2행으로 만들라 
# nrow=3은 에러 (3개로 쪼개면 안됨)
mat2
mat2[,1] # 모든 행의 1열을 가지와라 
mat2[1,] # 모든 열의 1행행을 가지와라 

#새로운 행과 열을 추가 - rbind() cbind()
mat4 = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3) # 열기준으로 들어가서 147 ... 
mat4

mat5 = matrix(c(1,2,3,4,5,6,7,8,9),nrow =3 , byrow = T)# 행우선 
mat5

mat5 = rbind(mat5, c(11,12,13)) # 행으로 추가해라 
mat5 = rbind(mat5, c(14,15,16,17)) # 17이 짤려서 들어간다.
mat5 = cbind(mat5,c(18,19,20)) # 빈곳은 반복되서 들어간다. 

colnames(mat5) = c("first","second","third","fourth") #컬럼명 만들기 
#컬럼명 크기에 맞게 잘 써야 된다.
mat5


#-------------------------------------------------------------------------
# array
# 3차원 배열 ( 가로, 세로, 높이)
arr1 =array(c(1:12),dim = c(4,3))# 4행 3열 
arr1 =array(c(1:12),dim = c(2,2,3)) # 2행 2열 3층 
arr1[1,1,3] # 3층에 1행 1열 


#-------------------------------------------------------------------------
# list 
# 백터와 비스한 형태로 (키, 값)
list1 = list(name="kim",arr="서울",tel= "010",pay = 500)
list1
list1$name #특정 키를 가지고 값을 가지고 올수 있다. $을 붙는다. 

list1$birth="2019-07-17"
list1
list1$name=c("lee","park") # 기존건 사라지고 리 박으로 초기화 됨 
list1$birth = NULL #요소 삭제 위랑 같은 원리 



#--------------------------------------------------------------------------
#데이터 프레임 
# 1. 백터로 부터 데이터 프레임 생성 
# 2. 각 컬럼 (라벨)별로 먼저 생성후 data.frame명령어로 모든 컬럼을 합친다. 

# 각 벡터를 이용하여 만들기 
no=c(1,2,3,4)
name = c('apple','peach','banana','grape')
price = c(200,500,100,20)
qty=c(5,6,2,7)
sales = data.frame(NO=no,Name=name,Price=price,Qty=qty) 
sales

# 행렬로 부터 데이터 프레임 생성 가능 
sales2 = matrix(c(1,'apple',500,5,
                  2,'peach',200,3,
                  3,'banana',100,2,
                  4,'grape',20,7),nrow=4,byrow = T) 
# 동일한 타입으로 바뀐다 -> 이걸 데이터 프레임으로 바꿈 
sales2
df1
df1=data.frame(sales2)
colnames(df1)=c('NO','name','price','Qty')
#Qty은 팩터형이다 그래서 그걸 캐릭터로 바꾸고 숫자로 바꿔야 한다, 
df1$Qty=as.numeric(as.character(df1$Qty))
df1$name # 특정 이름 으로 찾기 
df1[,3] # []은 숫자만 들어간다. 
df1[c(1,2),] #1행 2행의 모든 열 
df1[,c(1:3)]# 모든 행 1~3열 
subset(df1,Qty<5) #sales중 qty가 5보다 작은 것 
subset(df1,name='apple')

no=c(1,2,3,4)
name = c('apple','peach','banana','grape')
price = c(200,500,100,20)
qty=c(5,6,2,7)
sales = data.frame(NO=no,Name=name,Price=price,Qty=qty) 

no=c(10,20,30,40)
name = c('train','carr','qeqa','zdaq')
price = c(240,510,130,210)
qty=c(15,16,12,17)
sales1 = data.frame(NO=no,Name=name,Price=price,Qty=qty) 

sales2 = cbind(sales,sales1) # 오른쪽 각각의 열로 붙음 
sales2 

sales3 = rbind(sales,sales1)
sales3

sales4 = subset(sales3, select =-Qty ) #이렇게 열을 뺄수 있다. ! 
sales4



