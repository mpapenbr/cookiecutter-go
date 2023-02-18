/*
	Copyright {% now 'utc', '%Y' %} {{ cookiecutter.license_owner }}
*/
package main

import "{{ cookiecutter.go_module_path.strip('/') }}/cmd"

func main() {
	cmd.Execute()
}
