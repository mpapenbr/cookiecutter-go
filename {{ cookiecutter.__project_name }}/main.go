package main

import "{{ cookiecutter.go_module_path }}.strip('/')/cmd"

func main() {
	cmd.Execute()
}
