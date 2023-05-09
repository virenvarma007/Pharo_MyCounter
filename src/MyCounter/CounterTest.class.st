Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
  |c|
  c := Counter new.
  c count: 7.
  self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [
  |c|
  c := Counter new.
  c count: 5.
  c decrement.
  self assert: c count equals: 4
]

{ #category : #tests }
CounterTest >> testIncrement [
  |c|
  c := Counter new.
  c count: 5.
  c increment.
  self assert: c count equals: 6
]

{ #category : #tests }
CounterTest >> testIncrementDecrement [
  |c|
  c := Counter new.
  c count: 5.
  c increment; increment; decrement.
  self assert: c count equals: 6
]
