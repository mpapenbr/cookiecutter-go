package main

import (
	"{{ cookiecutter.go_module_path.strip('/') }}/app"
)

func main() {
	fmt.Printf("Running project: `%s`\n", app.ProjectName())
}
