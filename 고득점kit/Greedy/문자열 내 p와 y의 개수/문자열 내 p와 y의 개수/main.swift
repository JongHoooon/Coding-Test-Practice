//
//  main.swift
//  문자열 내 p와 y의 개수
//
//  Created by JongHoon on 2023/01/21.
//

import Foundation


var array: [Int] = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

func quickSort(start: Int, end: Int) {
    if start >= end { return } // 원소가 1개인 경우 죵로
    
    let pivot: Int = start // 보통 첫 번째 원소로 피벗
    var left: Int = pivot + 1
    var right: Int = end
    while left <= right {
        // 피벗보다 큰 데이터를 찾을 때까지 반복
        while left <= end && array[pivot] >= array[left] {
            left += 1
        }
        // 피벗보다 작은 데이터를 찾을 때까지 반복
        while right > start && array[pivot] <= array[right] {
            right -= 1
        }
        // 엇갈렸다면 피벗보다 작은 데이터와 피벗 스왑
        if left > right {
            array.swapAt(pivot, right)
        } else {
        // 엇갈리지 않았다면 작은 데이터 와 큰 데이터를 교체
        array.swapAt(left, right)
        }
    }
    quickSort(start: start, end: right-1)
    quickSort(start: right+1, end: end)
}

quickSort(start: 0, end: array.count-1)
print(array)
