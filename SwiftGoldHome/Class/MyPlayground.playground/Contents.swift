//: Playground - noun: a place where people can play
// 极客学院的Swift Wiki :http://wiki.jikexueyuan.com/project/swift/



import UIKit



let a = 10;// 常量
var b = 10;// 变量



// 不可变数组
let arrA = [a,b]

// 可变数组
var arrB = [a]
arrB.append(b)


// 数组的一些操作
let arrC = [1,2,3,4,5,6,7,8,9,10]



// 所有元素乘以2
arrC.map { (i) -> Int in
    return i*2
}
print(arrC)


// 返回数组总和
arrC.reduce(0,combine: +)




// 不可变字典
let dicA = ["a":a,"b":b]

// 可变字典
var dicB = ["a":a]
dicB.updateValue(b, forKey: "b")


// 元组
let group:(Int,Array) = (1,arrA)

// 利用元组交换两个数的值
var c = 1, d = 2
(c,d) = (d,c)
print(c,d)





// block
typealias myBlock =  (b:String) ->Void
func blockFunction(a:String,block:myBlock){
    block(b: a)
}
blockFunction("这是一个带block的函数") { (aaaaa) in
    print(aaaaa)
}


// block
let block = {(a:String) in print(a)
}
block("这是一个block")

// if else
if a == 10 {

}else{

}

// while
while a != 10 {
    
}

// 普通的枚举
enum studyEnum:Int {
    case enumA = 1,enumB,enumC
}

enum specialEnum:String {
    case 吃了吗 = "吃了吗"
    case 没吃呢 = "没吃呢"
    case 该吃💊了 = "该吃💊了"
}

let specialEnumAAA = specialEnum(rawValue:"该吃💊了")

// switch
// 可选值 需要拆包
switch specialEnumAAA! {
    case .吃了吗:

        break
    case .没吃呢:
    
        break
    case .该吃💊了:
        print(specialEnumAAA!.rawValue)
        break
}



// 函数
func thisIsAFuncthion(a:String){
    print(a)
}
thisIsAFuncthion("这是一个函数")


// 函数式
//typealias StrAddStr =

func functionPrograming(strA:String) -> ((str:String) -> String) {
    func sayHello(strB:String) -> String {
        return strB + "," + strA
    }
    return sayHello
}

let funcA = functionPrograming("World")
funcA(str: "你好")
funcA(str: "Hello")
functionPrograming("World")(str:"你好")




// 类
class ClassA: NSObject {
    let a:String?
    override init() {
        a = "10"
    }
}


let classA = ClassA()
// 拆option的包
if let str = classA.a{
    print(str)
}


let str:String?
let number:Int?
let float:Float?


str = "这是一个可选值"
print(str)

// if let 解包
if let a = str {
    print(a)
}


// guard 解包
//guard let StrA = str else{
// return
//}


// UIKit框架
let view = UIView(frame: CGRectMake(0,0,200,100))
view.backgroundColor = UIColor.lightGrayColor()
let label = UILabel(frame:  CGRectMake(0,0,100,50))
label.center = view.center
label.font = UIFont.systemFontOfSize(15)
label.text = "这是一个标题"
view.addSubview(label)


