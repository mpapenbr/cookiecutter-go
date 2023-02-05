package app

import (
	"testing"
)

func TestModuleName(t *testing.T) {
	if ProjectName() != "{{ cookiecutter.__project_name }}" {
		t.Errorf("Project name `%s` incorrect", ProjectName())
	}
}
