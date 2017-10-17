import UIKit

// 变量声明 var name[:type] = value
// 支持类型推导
var name = "demo"

// 可省值：var name:type? = value，可以为值，也可以为nil
var age: Int?

// 常量声明 let name = value
let PI = 3.14

// 基本类型: 均可推导，一般不需要指明类型
let typeInt: Int = 10
let typeDouble: Double = 2.3
let typeFloat: Float = 3.3
let typeString: String = "demo"
let isAdmin: Bool = true

// 类型转换：不支持自动类型转换；强制类型转换：type(name)
var result = Double(typeInt) + typeDouble

// 字符串插值："\(name)"
let sayHi = "hi, \(name)"

// 数组
var students = ["zhangsan", "lisi", "wangwu"]
students[1] = "demo"
var emptyArr1 = [String]()       // 空数组

// 字典
let works = [
    "0001": "第一个",
    "0002": "第二个"
]
works["0001"]
let emptyDict = [String: String]() // 空字典

// if
if isAdmin {
    print("\(name) is admin.")
} else {
    print("\(name) is't admin")
}

// switch
switch name {
case "demo":
    print("demo")
default:
    print("nothing")
}

// for in
for item in students {
    print("\(index): \(item)")
}

for (key, value) in works {
    print("\(key): \(value)")
}

// 范围：..< 不包含上界，...包含上界
for n in 0..<10 {
    print(n)
}

// while
var n = 0
while n < 3 {
    print(n)
    n = n + 1
}

// do while
repeat {
    print(n)
    n = n + 1
} while n < 8

// 缺省值
if let a = age {
    print("\(a) set.")
}

// 设置默认值
age ?? 20

// 函数
func getWork (id: String) -> String {
    return works[id] ?? ""
}

getWork(id: "0001")

// 参数：[实参] 形参: 类型，_忽略，可变参数...
func printInfo (p name: String, _ age: Int, _ args: String...) {
    print("\(name): \(age), \(args)")
}
printInfo(p: "honpery", 20, "demo", "asdas")


// 多返回值
func getInfo (name: String, age: Int) -> (String, Int) {
    return (name, age)
}
getInfo(name: "honpery", age: 20)

// 一等公民
func fetch (cb: (_ id: String) -> String) {
    print("begin")
    cb("0001")
}
fetch(cb: getWork)

// 闭包
students.map({
    (student: String) -> String in
    return student
})
students.map({student in student})
students.sorted {$0 > $1}






