//
//  main.swift
//  swift_test
//
//  Created by 이형욱 on 31/05/2019.
//  Copyright © 2019 이형욱. All rights reserved.
//

import Foundation

print("Hello, World!")

let a=1;var b=1;
print(a);print(b);
//what is different ?  let and var;  정리 할 것
let(q,w)=(1,2)
print(q);print(w)
// tuple 로서 두개의 값을 동시에 받을 수 있다.

let three = 3;
let minus_three = -three;
let plus_three = -minus_three;
print(three);print(minus_three);print(plus_three);
//연산은 기본적으로 다른 언어들과 같이 +,-,%,*을 사용한다.
//비교연산도 다른 언어와 동일

let name = "world"
if name == "worldd" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

if((1, "zebra") < (2, "apple")){
    print("2 is larger");
}
if((3, "apple") < (3, "bird")){
    print("bird is larger than apple")
}
//같은 타입의 값을 갖는 두 개의 튜플을 비교할 수 있습니다.
//튜플의 비교는 왼쪽에서 오른쪽 방향으로 이뤄지고 한번에 한개의 값만 비교합니다.이 비교를 다른 두 값을 비교하게 될 때까지 수행합니다.

//튜플은 비교 연산자가 해당 값을 비교할 수 있는 경우에만 비교를 수행할 수 있습니다.
//Swift 표준 라이브러리에서는 7개 요소 미만을 갖는 튜플만 비교할 수 있습니다.
//만약 7개 혹은 그 이상의 요소를 갖는 튜플을 비교하고 싶으면 직접 비교 연산자를 구현해야 합니다.


if 3>2 {
    print("111");
} else {
    print("222");
}
//이는 다음과 같은 형식을 지닌다.
print(3>2 ? 111: 222);
//다음은 정상적으로 실행

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight);
//조건문을 위와 같이 실행 가능

//let contentHeight = 40
//let hasHeader = true
//let rowHeight: Int
//if hasHeader {
//    rowHeight = contentHeight + 50
//} else {
//    rowHeight = contentHeight + 20
//}
// rowHeight는 90입니다.

//Nil 병합 연산자(Nil-Coalescing Operator)을 넘어가기 전에 optional type을 공부해 보자.
//Swift인 경우 일반 변수/상수는 nil(null) 대입 불가 합니다.  그래서 나온 타입이 옵셔널 타입입니다.

//옵셔널 타입을 선언
var value:Int?;
//옵셔널 타입의 특징은
//1) nil 대입 가능
//2) 자동 초기화

//언래핑
//*언래핑:옵셔널 타입의 변수로부터 유효한 값을 얻어오기
//강제 언래핑은 옵셔널 뒤에 !을 붙이면된다. 하지만 강제 언래핑 결과로 nil이면 error를 호출하게 되니 언레핑 대산이 nil이 아닌지 check 후에 얼래핑을 해야한다.
//var optional:String?;
//print(optional!);

//옵셔널 바인딩 기법 optional Binding
//if let을 사용한 옵셔널 바인딩기법
func printName(_name:String){
    print(_name)
}
var myname:String?="noterror"
if let name1=myname{
    printName(_name: name1)
}else{
    print("error")
}
//이 옵셔널 바이널에서 ,는 &&의 역활을 한다.
//var height:Int?=170
//if let val=height{
//    if val>=160{
//        print("wow");
//    }
//}

var height:Int?=170
if let val=height,val>=160{
    print("wow")
}

//옵셔널 체이닝 optional chaining
//옵셔널에서 하니씩 확인을 하면서 중간에 하나라도 nil 값이 발견되면 nil이 반환되는 형식을 말한다.
class Person{
    var residence:Residence?
}
class Residence{
    var numOfrooms=1
}
let zed=Person()
zed.residence = Residence()
print(zed)
if let roomcnt=zed.residence?.numOfrooms{
    print("zed residence has \(roomcnt)rooms")
}else{
    print("unable the ...")
}

let defaultColorName = "red"
var userDefinedColorName: String?;// 이 값은 defaults 값 nil입니다.
print(userDefinedColorName);
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse);
// userDefinedColorNam이 nil이므로 so colorNameToUse 값은 defaultColorName인 "red"가 설정 됩니다.


//범위연산지
//닫힌 범위 연산자
for idx in 1...5{
    print(idx)
}
//반 닫힌 범위 연산자
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i) is called \(names[i])")
}

//단방향 범위(One-Side Ranges)
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

let range = ...5
print(range.contains(7))  // false
print(range.contains(4))   // true
print(range.contains(-1))  // true


//논리 연산자(Logical Operators)
//논리 부정 NOT (!a)
//논리 합 AND (a && b)
//논리 곱 OR (a || b)

//논리 부정 연산자(Logical NOT Operator)
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"
//논리 곱 연산자(Logical AND Operator)
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//논리 합(OR) 연산자(Logical OR Operator)
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"


//논리 연산자의 조합(Combining Logical Operators)
//두 개 이상의 논리 연산자를 조합해서 사용할 수 있습니다

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
