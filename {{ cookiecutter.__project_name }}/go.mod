module {{ cookiecutter.go_module_path.strip('/') }}

go {{ cookiecutter.go_version }}

require (
    github.com/samber/lo v1.52.0
	github.com/spf13/cobra v1.10.2
	github.com/spf13/pflag v1.0.10
	github.com/spf13/viper v1.21.0
	go.opentelemetry.io/contrib/bridges/otelzap v0.15.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.65.0
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.65.0
	go.opentelemetry.io/contrib/instrumentation/runtime v0.65.0
	go.opentelemetry.io/contrib/processors/minsev v0.13.0
	go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc v0.16.0
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v1.40.0
	go.opentelemetry.io/otel/exporters/stdout/stdoutlog v0.16.0
	go.opentelemetry.io/otel/log v0.16.0
	go.opentelemetry.io/otel/sdk/log v0.16.0
	go.uber.org/zap v1.27.1
	google.golang.org/grpc v1.79.1
	moul.io/zapfilter v1.7.0
    go.opentelemetry.io/otel v1.40.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.40.0
	go.opentelemetry.io/otel/exporters/stdout/stdoutmetric v1.40.0
	go.opentelemetry.io/otel/exporters/stdout/stdouttrace v1.40.0
	go.opentelemetry.io/otel/metric v1.40.0
	go.opentelemetry.io/otel/sdk v1.40.0
	go.opentelemetry.io/otel/sdk/metric v1.40.0
	go.opentelemetry.io/otel/trace v1.40.0
    gopkg.in/yaml.v3 v3.0.1
)