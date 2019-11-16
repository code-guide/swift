// 基础语法

// 变量声明
// 语法：var <name>[: <type>] = <value>
// 说明：
//  1. 支持类型推导
var var1 = "hello world!"
var var2: String = "hello world!"

print("变量声明: \(var1) \(var2)")


// 常量声明
// 语法：let <name>[: <type>] = <value>
// 说明：
let CONST1 = 3.14
let CONST2: Float = 3.14
print("常量声明: \(CONST1) \(CONST2)")


// 数据类型：强类型
// 内置类型：Int, UInt, Float, Double, Bool(true, false), String, Character, Optional
// 类型别名: typealias <name> = <type>
print("字符串插值：\(var1)")
print("字符串连接: \(var1 + " hi")")
print("字符串长度: \(var1.count)")



// 可选类型：Optional
// 语法：
//  1. var <name>: <type>?
//  2. var <name>: Optional<<type>>
//  3. 自动解析：var <name>: <type>!
//  4. 访问可选值：<name>!
//  5. 可选绑定：if let <name> = <value> {}
var OptNum1: Int?
var OptNum2: Optional<Int> = 2
var OptNum3: Int! = 3
print("可选类型: ", OptNum1, OptNum2, OptNum3, OptNum2!)


// 运算符


// if语句
let num = 10
if num > 0 {
  print("if语句，num > 0")
} else if num < 0 {
  print("if语句, num < 0")
} else {
  print("if语句，num = 0")
}

// switch语句
switch num {
  case 10:
    print("switch语句, num = 10")
    fallthrough     // 穿透
  default:
    print("swicth语句, num != 10")
}

// for语句
for item in 2...5 {
  print("for循环，\(item)")
}