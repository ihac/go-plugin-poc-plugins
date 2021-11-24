package main

import "github.com/ihac/go-plugin-poc-main/log"

var BinderImpl binder

type binder struct{}

func (b *binder) Execute() {
	log.Info("hello, world. plugin 1")
}
