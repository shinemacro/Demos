// 顺序队列

package main

import "fmt"

func main() {
	t := NewThing()
	t.In("12")
	t.In("13")
	t.In("14")
	t.In("15")
	t.Out()
	fmt.Println(t.value)
}

type thing struct {
	value []interface{}
}

func NewThing() *thing {
	return &thing{
		make([]interface{}, 0),
	}
}

func (t *thing) In(v interface{}) {
	t.value = append(t.value, v)
}

func (t *thing) Out() interface{} {
	t.value = t.value[1:]
	return t.value[0]
}

// 如何实现线程安全。

//开始迭代



