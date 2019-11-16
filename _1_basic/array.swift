// 数组

// 声明
//  1. var <name>: [<Type>]
//  2. var <name> = [<type>]()
//  3. var <name> = [<type>](repeating: <initvalue>, count: <int>)
var arr1: [Int] = [1, 2, 3]
var arr2 = [Int]()
var arr3 = [Int](repeating: 1, count: 3)

print("数组声明: ", arr1, arr2, arr3)

// 访问 <name>[<index>]
print("访问数组: ", arr1[1])

// 修改
arr1[1] = 10
arr1.append(1)        // push
arr2 += [3, 4, 5]     // concat
print("修改数组: ", arr1, arr2)

// 属性
print("数组长度: \(arr1.count), 是否为空: \(arr2.isEmpty)")

// 遍历
for item in arr1 {
  print("遍历数组: \(item)")
}
for (index, item) in arr1.enumerated() {
  print("遍历数组: \(index), \(item)")
}