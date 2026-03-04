import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_check_args.dart';
import 'health_check_grpc_health_check.dart';
import 'health_check_grpc_tls_health_check.dart';
import 'health_check_http2_health_check.dart';
import 'health_check_http_health_check.dart';
import 'health_check_https_health_check.dart';
import 'health_check_log_config.dart';
import 'health_check_ssl_health_check.dart';
import 'health_check_state.dart';
import 'health_check_tcp_health_check.dart';

/// Health Checks determine whether instances are responsive and able to do work.
/// They are an important part of a comprehensive load balancing configuration,
/// as they enable monitoring instances behind load balancers.
///
/// Health Checks poll instances at a specified interval. Instances that
/// do not respond successfully to some number of probes in a row are marked
/// as unhealthy. No new connections are sent to unhealthy instances,
/// though existing connections will continue. The health check will
/// continue to poll unhealthy instances. If an instance later responds
/// successfully to some number of consecutive probes, it is marked
/// healthy again and can receive new connections.
///
/// ~&gt;**NOTE**: Legacy HTTP(S) health checks must be used for target pool-based network
/// load balancers. See the [official guide](https://cloud.google.com/load-balancing/docs/health-check-concepts#selecting_hc)
/// for choosing a type of health check.
///
///
/// To get more information about HealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/health-checks)
///
/// ## Example Usage
///
/// ### Health Check Tcp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tcp_health_check = new gcp.compute.HealthCheck("tcp-health-check", {
///     name: "tcp-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tcp_health_check = gcp.compute.HealthCheck("tcp-health-check",
///     name="tcp-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tcp_health_check = new Gcp.Compute.HealthCheck("tcp-health-check", new()
///     {
///         Name = "tcp-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "tcp-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("tcp-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var tcp_health_check = new HealthCheck("tcp-health-check", HealthCheckArgs.builder()
///             .name("tcp-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: tcp-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Health Check Tcp Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tcp_health_check = new gcp.compute.HealthCheck("tcp-health-check", {
///     name: "tcp-health-check",
///     description: "Health check via tcp",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     tcpHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         request: "ARE YOU HEALTHY?",
///         proxyHeader: "NONE",
///         response: "I AM HEALTHY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tcp_health_check = gcp.compute.HealthCheck("tcp-health-check",
///     name="tcp-health-check",
///     description="Health check via tcp",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     tcp_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "request": "ARE YOU HEALTHY?",
///         "proxy_header": "NONE",
///         "response": "I AM HEALTHY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tcp_health_check = new Gcp.Compute.HealthCheck("tcp-health-check", new()
///     {
///         Name = "tcp-health-check",
///         Description = "Health check via tcp",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             Request = "ARE YOU HEALTHY?",
///             ProxyHeader = "NONE",
///             Response = "I AM HEALTHY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "tcp-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("tcp-health-check"),
/// 			Description:        pulumi.String("Health check via tcp"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				Request:           pulumi.String("ARE YOU HEALTHY?"),
/// 				ProxyHeader:       pulumi.String("NONE"),
/// 				Response:          pulumi.String("I AM HEALTHY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var tcp_health_check = new HealthCheck("tcp-health-check", HealthCheckArgs.builder()
///             .name("tcp-health-check")
///             .description("Health check via tcp")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .request("ARE YOU HEALTHY?")
///                 .proxyHeader("NONE")
///                 .response("I AM HEALTHY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: tcp-health-check
///       description: Health check via tcp
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       tcpHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         request: ARE YOU HEALTHY?
///         proxyHeader: NONE
///         response: I AM HEALTHY
/// ```
///
/// ### Health Check Ssl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ssl_health_check = new gcp.compute.HealthCheck("ssl-health-check", {
///     name: "ssl-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     sslHealthCheck: {
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ssl_health_check = gcp.compute.HealthCheck("ssl-health-check",
///     name="ssl-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     ssl_health_check={
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ssl_health_check = new Gcp.Compute.HealthCheck("ssl-health-check", new()
///     {
///         Name = "ssl-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         SslHealthCheck = new Gcp.Compute.Inputs.HealthCheckSslHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "ssl-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("ssl-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			SslHealthCheck: &compute.HealthCheckSslHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckSslHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ssl_health_check = new HealthCheck("ssl-health-check", HealthCheckArgs.builder()
///             .name("ssl-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .sslHealthCheck(HealthCheckSslHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ssl-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: ssl-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       sslHealthCheck:
///         port: '443'
/// ```
///
/// ### Health Check Ssl Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ssl_health_check = new gcp.compute.HealthCheck("ssl-health-check", {
///     name: "ssl-health-check",
///     description: "Health check via ssl",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     sslHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         request: "ARE YOU HEALTHY?",
///         proxyHeader: "NONE",
///         response: "I AM HEALTHY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ssl_health_check = gcp.compute.HealthCheck("ssl-health-check",
///     name="ssl-health-check",
///     description="Health check via ssl",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     ssl_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "request": "ARE YOU HEALTHY?",
///         "proxy_header": "NONE",
///         "response": "I AM HEALTHY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ssl_health_check = new Gcp.Compute.HealthCheck("ssl-health-check", new()
///     {
///         Name = "ssl-health-check",
///         Description = "Health check via ssl",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         SslHealthCheck = new Gcp.Compute.Inputs.HealthCheckSslHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             Request = "ARE YOU HEALTHY?",
///             ProxyHeader = "NONE",
///             Response = "I AM HEALTHY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "ssl-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("ssl-health-check"),
/// 			Description:        pulumi.String("Health check via ssl"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			SslHealthCheck: &compute.HealthCheckSslHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				Request:           pulumi.String("ARE YOU HEALTHY?"),
/// 				ProxyHeader:       pulumi.String("NONE"),
/// 				Response:          pulumi.String("I AM HEALTHY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckSslHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ssl_health_check = new HealthCheck("ssl-health-check", HealthCheckArgs.builder()
///             .name("ssl-health-check")
///             .description("Health check via ssl")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .sslHealthCheck(HealthCheckSslHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .request("ARE YOU HEALTHY?")
///                 .proxyHeader("NONE")
///                 .response("I AM HEALTHY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ssl-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: ssl-health-check
///       description: Health check via ssl
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       sslHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         request: ARE YOU HEALTHY?
///         proxyHeader: NONE
///         response: I AM HEALTHY
/// ```
///
/// ### Health Check Http
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_health_check = new gcp.compute.HealthCheck("http-health-check", {
///     name: "http-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http_health_check = gcp.compute.HealthCheck("http-health-check",
///     name="http-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     http_health_check={
///         "port": 80,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http_health_check = new Gcp.Compute.HealthCheck("http-health-check", new()
///     {
///         Name = "http-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "http-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var http_health_check = new HealthCheck("http-health-check", HealthCheckArgs.builder()
///             .name("http-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Health Check Http Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_health_check = new gcp.compute.HealthCheck("http-health-check", {
///     name: "http-health-check",
///     description: "Health check via http",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     httpHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         host: "1.2.3.4",
///         requestPath: "/mypath",
///         proxyHeader: "NONE",
///         response: "I AM HEALTHY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http_health_check = gcp.compute.HealthCheck("http-health-check",
///     name="http-health-check",
///     description="Health check via http",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     http_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "host": "1.2.3.4",
///         "request_path": "/mypath",
///         "proxy_header": "NONE",
///         "response": "I AM HEALTHY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http_health_check = new Gcp.Compute.HealthCheck("http-health-check", new()
///     {
///         Name = "http-health-check",
///         Description = "Health check via http",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             Host = "1.2.3.4",
///             RequestPath = "/mypath",
///             ProxyHeader = "NONE",
///             Response = "I AM HEALTHY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "http-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("http-health-check"),
/// 			Description:        pulumi.String("Health check via http"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				Host:              pulumi.String("1.2.3.4"),
/// 				RequestPath:       pulumi.String("/mypath"),
/// 				ProxyHeader:       pulumi.String("NONE"),
/// 				Response:          pulumi.String("I AM HEALTHY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var http_health_check = new HealthCheck("http-health-check", HealthCheckArgs.builder()
///             .name("http-health-check")
///             .description("Health check via http")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .host("1.2.3.4")
///                 .requestPath("/mypath")
///                 .proxyHeader("NONE")
///                 .response("I AM HEALTHY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http-health-check
///       description: Health check via http
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       httpHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         host: 1.2.3.4
///         requestPath: /mypath
///         proxyHeader: NONE
///         response: I AM HEALTHY
/// ```
///
/// ### Health Check Https
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https_health_check = new gcp.compute.HealthCheck("https-health-check", {
///     name: "https-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// https_health_check = gcp.compute.HealthCheck("https-health-check",
///     name="https-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     https_health_check={
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var https_health_check = new Gcp.Compute.HealthCheck("https-health-check", new()
///     {
///         Name = "https-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "https-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("https-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var https_health_check = new HealthCheck("https-health-check", HealthCheckArgs.builder()
///             .name("https-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   https-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: https-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       httpsHealthCheck:
///         port: '443'
/// ```
///
/// ### Health Check Https Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https_health_check = new gcp.compute.HealthCheck("https-health-check", {
///     name: "https-health-check",
///     description: "Health check via https",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     httpsHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         host: "1.2.3.4",
///         requestPath: "/mypath",
///         proxyHeader: "NONE",
///         response: "I AM HEALTHY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// https_health_check = gcp.compute.HealthCheck("https-health-check",
///     name="https-health-check",
///     description="Health check via https",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     https_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "host": "1.2.3.4",
///         "request_path": "/mypath",
///         "proxy_header": "NONE",
///         "response": "I AM HEALTHY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var https_health_check = new Gcp.Compute.HealthCheck("https-health-check", new()
///     {
///         Name = "https-health-check",
///         Description = "Health check via https",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             Host = "1.2.3.4",
///             RequestPath = "/mypath",
///             ProxyHeader = "NONE",
///             Response = "I AM HEALTHY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "https-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("https-health-check"),
/// 			Description:        pulumi.String("Health check via https"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				Host:              pulumi.String("1.2.3.4"),
/// 				RequestPath:       pulumi.String("/mypath"),
/// 				ProxyHeader:       pulumi.String("NONE"),
/// 				Response:          pulumi.String("I AM HEALTHY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var https_health_check = new HealthCheck("https-health-check", HealthCheckArgs.builder()
///             .name("https-health-check")
///             .description("Health check via https")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .host("1.2.3.4")
///                 .requestPath("/mypath")
///                 .proxyHeader("NONE")
///                 .response("I AM HEALTHY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   https-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: https-health-check
///       description: Health check via https
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       httpsHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         host: 1.2.3.4
///         requestPath: /mypath
///         proxyHeader: NONE
///         response: I AM HEALTHY
/// ```
///
/// ### Health Check Http2
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http2_health_check = new gcp.compute.HealthCheck("http2-health-check", {
///     name: "http2-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     http2HealthCheck: {
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http2_health_check = gcp.compute.HealthCheck("http2-health-check",
///     name="http2-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     http2_health_check={
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http2_health_check = new Gcp.Compute.HealthCheck("http2-health-check", new()
///     {
///         Name = "http2-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         Http2HealthCheck = new Gcp.Compute.Inputs.HealthCheckHttp2HealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "http2-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("http2-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			Http2HealthCheck: &compute.HealthCheckHttp2HealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttp2HealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var http2_health_check = new HealthCheck("http2-health-check", HealthCheckArgs.builder()
///             .name("http2-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .http2HealthCheck(HealthCheckHttp2HealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http2-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http2-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       http2HealthCheck:
///         port: '443'
/// ```
///
/// ### Health Check Http2 Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http2_health_check = new gcp.compute.HealthCheck("http2-health-check", {
///     name: "http2-health-check",
///     description: "Health check via http2",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     http2HealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         host: "1.2.3.4",
///         requestPath: "/mypath",
///         proxyHeader: "NONE",
///         response: "I AM HEALTHY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http2_health_check = gcp.compute.HealthCheck("http2-health-check",
///     name="http2-health-check",
///     description="Health check via http2",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     http2_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "host": "1.2.3.4",
///         "request_path": "/mypath",
///         "proxy_header": "NONE",
///         "response": "I AM HEALTHY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http2_health_check = new Gcp.Compute.HealthCheck("http2-health-check", new()
///     {
///         Name = "http2-health-check",
///         Description = "Health check via http2",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         Http2HealthCheck = new Gcp.Compute.Inputs.HealthCheckHttp2HealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             Host = "1.2.3.4",
///             RequestPath = "/mypath",
///             ProxyHeader = "NONE",
///             Response = "I AM HEALTHY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "http2-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("http2-health-check"),
/// 			Description:        pulumi.String("Health check via http2"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			Http2HealthCheck: &compute.HealthCheckHttp2HealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				Host:              pulumi.String("1.2.3.4"),
/// 				RequestPath:       pulumi.String("/mypath"),
/// 				ProxyHeader:       pulumi.String("NONE"),
/// 				Response:          pulumi.String("I AM HEALTHY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttp2HealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var http2_health_check = new HealthCheck("http2-health-check", HealthCheckArgs.builder()
///             .name("http2-health-check")
///             .description("Health check via http2")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .http2HealthCheck(HealthCheckHttp2HealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .host("1.2.3.4")
///                 .requestPath("/mypath")
///                 .proxyHeader("NONE")
///                 .response("I AM HEALTHY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http2-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http2-health-check
///       description: Health check via http2
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       http2HealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         host: 1.2.3.4
///         requestPath: /mypath
///         proxyHeader: NONE
///         response: I AM HEALTHY
/// ```
///
/// ### Health Check Grpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_health_check = new gcp.compute.HealthCheck("grpc-health-check", {
///     name: "grpc-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     grpcHealthCheck: {
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// grpc_health_check = gcp.compute.HealthCheck("grpc-health-check",
///     name="grpc-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     grpc_health_check={
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grpc_health_check = new Gcp.Compute.HealthCheck("grpc-health-check", new()
///     {
///         Name = "grpc-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcHealthCheck = new Gcp.Compute.Inputs.HealthCheckGrpcHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "grpc-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("grpc-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcHealthCheck: &compute.HealthCheckGrpcHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckGrpcHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var grpc_health_check = new HealthCheck("grpc-health-check", HealthCheckArgs.builder()
///             .name("grpc-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcHealthCheck(HealthCheckGrpcHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: grpc-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcHealthCheck:
///         port: '443'
/// ```
///
/// ### Health Check Grpc Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_health_check = new gcp.compute.HealthCheck("grpc-health-check", {
///     name: "grpc-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     grpcHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         grpcServiceName: "testservice",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// grpc_health_check = gcp.compute.HealthCheck("grpc-health-check",
///     name="grpc-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     grpc_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "grpc_service_name": "testservice",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grpc_health_check = new Gcp.Compute.HealthCheck("grpc-health-check", new()
///     {
///         Name = "grpc-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcHealthCheck = new Gcp.Compute.Inputs.HealthCheckGrpcHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             GrpcServiceName = "testservice",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "grpc-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("grpc-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcHealthCheck: &compute.HealthCheckGrpcHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				GrpcServiceName:   pulumi.String("testservice"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckGrpcHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var grpc_health_check = new HealthCheck("grpc-health-check", HealthCheckArgs.builder()
///             .name("grpc-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcHealthCheck(HealthCheckGrpcHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .grpcServiceName("testservice")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: grpc-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         grpcServiceName: testservice
/// ```
///
/// ### Health Check Grpc With Tls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_with_tls_health_check = new gcp.compute.HealthCheck("grpc-with-tls-health-check", {
///     name: "grpc-with-tls-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     grpcTlsHealthCheck: {
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// grpc_with_tls_health_check = gcp.compute.HealthCheck("grpc-with-tls-health-check",
///     name="grpc-with-tls-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     grpc_tls_health_check={
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grpc_with_tls_health_check = new Gcp.Compute.HealthCheck("grpc-with-tls-health-check", new()
///     {
///         Name = "grpc-with-tls-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcTlsHealthCheck = new Gcp.Compute.Inputs.HealthCheckGrpcTlsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "grpc-with-tls-health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("grpc-with-tls-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcTlsHealthCheck: &compute.HealthCheckGrpcTlsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckGrpcTlsHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var grpc_with_tls_health_check = new HealthCheck("grpc-with-tls-health-check", HealthCheckArgs.builder()
///             .name("grpc-with-tls-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcTlsHealthCheck(HealthCheckGrpcTlsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-with-tls-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: grpc-with-tls-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcTlsHealthCheck:
///         port: '443'
/// ```
///
/// ### Health Check Grpc With Tls Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_with_tls_health_check = new gcp.compute.HealthCheck("grpc-with-tls-health-check", {
///     name: "grpc-with-tls-health-check",
///     description: "Health check via grpc with TLS",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     healthyThreshold: 4,
///     unhealthyThreshold: 5,
///     grpcTlsHealthCheck: {
///         portSpecification: "USE_FIXED_PORT",
///         port: 443,
///         grpcServiceName: "testservice",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// grpc_with_tls_health_check = gcp.compute.HealthCheck("grpc-with-tls-health-check",
///     name="grpc-with-tls-health-check",
///     description="Health check via grpc with TLS",
///     timeout_sec=1,
///     check_interval_sec=1,
///     healthy_threshold=4,
///     unhealthy_threshold=5,
///     grpc_tls_health_check={
///         "port_specification": "USE_FIXED_PORT",
///         "port": 443,
///         "grpc_service_name": "testservice",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grpc_with_tls_health_check = new Gcp.Compute.HealthCheck("grpc-with-tls-health-check", new()
///     {
///         Name = "grpc-with-tls-health-check",
///         Description = "Health check via grpc with TLS",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         GrpcTlsHealthCheck = new Gcp.Compute.Inputs.HealthCheckGrpcTlsHealthCheckArgs
///         {
///             PortSpecification = "USE_FIXED_PORT",
///             Port = 443,
///             GrpcServiceName = "testservice",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "grpc-with-tls-health-check", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("grpc-with-tls-health-check"),
/// 			Description:        pulumi.String("Health check via grpc with TLS"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			GrpcTlsHealthCheck: &compute.HealthCheckGrpcTlsHealthCheckArgs{
/// 				PortSpecification: pulumi.String("USE_FIXED_PORT"),
/// 				Port:              pulumi.Int(443),
/// 				GrpcServiceName:   pulumi.String("testservice"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckGrpcTlsHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var grpc_with_tls_health_check = new HealthCheck("grpc-with-tls-health-check", HealthCheckArgs.builder()
///             .name("grpc-with-tls-health-check")
///             .description("Health check via grpc with TLS")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .grpcTlsHealthCheck(HealthCheckGrpcTlsHealthCheckArgs.builder()
///                 .portSpecification("USE_FIXED_PORT")
///                 .port(443)
///                 .grpcServiceName("testservice")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-with-tls-health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: grpc-with-tls-health-check
///       description: Health check via grpc with TLS
///       timeoutSec: 1
///       checkIntervalSec: 1
///       healthyThreshold: 4
///       unhealthyThreshold: 5
///       grpcTlsHealthCheck:
///         portSpecification: USE_FIXED_PORT
///         port: '443'
///         grpcServiceName: testservice
/// ```
///
/// ### Health Check With Logging
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const health_check_with_logging = new gcp.compute.HealthCheck("health-check-with-logging", {
///     name: "tcp-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 22,
///     },
///     logConfig: {
///         enable: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check_with_logging = gcp.compute.HealthCheck("health-check-with-logging",
///     name="tcp-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 22,
///     },
///     log_config={
///         "enable": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var health_check_with_logging = new Gcp.Compute.HealthCheck("health-check-with-logging", new()
///     {
///         Name = "tcp-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 22,
///         },
///         LogConfig = new Gcp.Compute.Inputs.HealthCheckLogConfigArgs
///         {
///             Enable = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "health-check-with-logging", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("tcp-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(22),
/// 			},
/// 			LogConfig: &compute.HealthCheckLogConfigArgs{
/// 				Enable: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckLogConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var health_check_with_logging = new HealthCheck("health-check-with-logging", HealthCheckArgs.builder()
///             .name("tcp-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(22)
///                 .build())
///             .logConfig(HealthCheckLogConfigArgs.builder()
///                 .enable(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   health-check-with-logging:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: tcp-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '22'
///       logConfig:
///         enable: true
/// ```
///
/// ### Compute Health Check Http Source Regions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_health_check_with_source_regions = new gcp.compute.HealthCheck("http-health-check-with-source-regions", {
///     name: "http-health-check",
///     checkIntervalSec: 30,
///     httpHealthCheck: {
///         port: 80,
///         portSpecification: "USE_FIXED_PORT",
///     },
///     sourceRegions: [
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http_health_check_with_source_regions = gcp.compute.HealthCheck("http-health-check-with-source-regions",
///     name="http-health-check",
///     check_interval_sec=30,
///     http_health_check={
///         "port": 80,
///         "port_specification": "USE_FIXED_PORT",
///     },
///     source_regions=[
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http_health_check_with_source_regions = new Gcp.Compute.HealthCheck("http-health-check-with-source-regions", new()
///     {
///         Name = "http-health-check",
///         CheckIntervalSec = 30,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///             PortSpecification = "USE_FIXED_PORT",
///         },
///         SourceRegions = new[]
///         {
///             "us-west1",
///             "us-central1",
///             "us-east5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "http-health-check-with-source-regions", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("http-health-check"),
/// 			CheckIntervalSec: pulumi.Int(30),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port:              pulumi.Int(80),
/// 				PortSpecification: pulumi.String("USE_FIXED_PORT"),
/// 			},
/// 			SourceRegions: pulumi.StringArray{
/// 				pulumi.String("us-west1"),
/// 				pulumi.String("us-central1"),
/// 				pulumi.String("us-east5"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var http_health_check_with_source_regions = new HealthCheck("http-health-check-with-source-regions", HealthCheckArgs.builder()
///             .name("http-health-check")
///             .checkIntervalSec(30)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .portSpecification("USE_FIXED_PORT")
///                 .build())
///             .sourceRegions(
///                 "us-west1",
///                 "us-central1",
///                 "us-east5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http-health-check-with-source-regions:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: http-health-check
///       checkIntervalSec: 30
///       httpHealthCheck:
///         port: 80
///         portSpecification: USE_FIXED_PORT
///       sourceRegions:
///         - us-west1
///         - us-central1
///         - us-east5
/// ```
///
/// ### Compute Health Check Https Source Regions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https_health_check_with_source_regions = new gcp.compute.HealthCheck("https-health-check-with-source-regions", {
///     name: "https-health-check",
///     checkIntervalSec: 30,
///     httpsHealthCheck: {
///         port: 80,
///         portSpecification: "USE_FIXED_PORT",
///     },
///     sourceRegions: [
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// https_health_check_with_source_regions = gcp.compute.HealthCheck("https-health-check-with-source-regions",
///     name="https-health-check",
///     check_interval_sec=30,
///     https_health_check={
///         "port": 80,
///         "port_specification": "USE_FIXED_PORT",
///     },
///     source_regions=[
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var https_health_check_with_source_regions = new Gcp.Compute.HealthCheck("https-health-check-with-source-regions", new()
///     {
///         Name = "https-health-check",
///         CheckIntervalSec = 30,
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 80,
///             PortSpecification = "USE_FIXED_PORT",
///         },
///         SourceRegions = new[]
///         {
///             "us-west1",
///             "us-central1",
///             "us-east5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "https-health-check-with-source-regions", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("https-health-check"),
/// 			CheckIntervalSec: pulumi.Int(30),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port:              pulumi.Int(80),
/// 				PortSpecification: pulumi.String("USE_FIXED_PORT"),
/// 			},
/// 			SourceRegions: pulumi.StringArray{
/// 				pulumi.String("us-west1"),
/// 				pulumi.String("us-central1"),
/// 				pulumi.String("us-east5"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var https_health_check_with_source_regions = new HealthCheck("https-health-check-with-source-regions", HealthCheckArgs.builder()
///             .name("https-health-check")
///             .checkIntervalSec(30)
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(80)
///                 .portSpecification("USE_FIXED_PORT")
///                 .build())
///             .sourceRegions(
///                 "us-west1",
///                 "us-central1",
///                 "us-east5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   https-health-check-with-source-regions:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: https-health-check
///       checkIntervalSec: 30
///       httpsHealthCheck:
///         port: 80
///         portSpecification: USE_FIXED_PORT
///       sourceRegions:
///         - us-west1
///         - us-central1
///         - us-east5
/// ```
///
/// ### Compute Health Check Tcp Source Regions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tcp_health_check_with_source_regions = new gcp.compute.HealthCheck("tcp-health-check-with-source-regions", {
///     name: "tcp-health-check",
///     checkIntervalSec: 30,
///     tcpHealthCheck: {
///         port: 80,
///         portSpecification: "USE_FIXED_PORT",
///     },
///     sourceRegions: [
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tcp_health_check_with_source_regions = gcp.compute.HealthCheck("tcp-health-check-with-source-regions",
///     name="tcp-health-check",
///     check_interval_sec=30,
///     tcp_health_check={
///         "port": 80,
///         "port_specification": "USE_FIXED_PORT",
///     },
///     source_regions=[
///         "us-west1",
///         "us-central1",
///         "us-east5",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tcp_health_check_with_source_regions = new Gcp.Compute.HealthCheck("tcp-health-check-with-source-regions", new()
///     {
///         Name = "tcp-health-check",
///         CheckIntervalSec = 30,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///             PortSpecification = "USE_FIXED_PORT",
///         },
///         SourceRegions = new[]
///         {
///             "us-west1",
///             "us-central1",
///             "us-east5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewHealthCheck(ctx, "tcp-health-check-with-source-regions", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("tcp-health-check"),
/// 			CheckIntervalSec: pulumi.Int(30),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port:              pulumi.Int(80),
/// 				PortSpecification: pulumi.String("USE_FIXED_PORT"),
/// 			},
/// 			SourceRegions: pulumi.StringArray{
/// 				pulumi.String("us-west1"),
/// 				pulumi.String("us-central1"),
/// 				pulumi.String("us-east5"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var tcp_health_check_with_source_regions = new HealthCheck("tcp-health-check-with-source-regions", HealthCheckArgs.builder()
///             .name("tcp-health-check")
///             .checkIntervalSec(30)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .portSpecification("USE_FIXED_PORT")
///                 .build())
///             .sourceRegions(
///                 "us-west1",
///                 "us-central1",
///                 "us-east5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-health-check-with-source-regions:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: tcp-health-check
///       checkIntervalSec: 30
///       tcpHealthCheck:
///         port: 80
///         portSpecification: USE_FIXED_PORT
///       sourceRegions:
///         - us-west1
///         - us-central1
///         - us-east5
/// ```
///
///
/// ## Import
///
/// HealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/healthChecks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default projects/{{project}}/global/healthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default {{name}}
/// ```
class HealthCheck extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final pulumi.Output<int?> checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckGrpcHealthCheck?> grpcHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckGrpcTlsHealthCheck?> grpcTlsHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final pulumi.Output<int?> healthyThreshold;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckHttp2HealthCheck?> http2HealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckHttpHealthCheck?> httpHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckHttpsHealthCheck?> httpsHealthCheck;

  /// Configure logging on this health check.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckLogConfig> logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The list of cloud regions from which health checks are performed. If
  /// any regions are specified, then exactly 3 regions should be specified.
  /// The region names must be valid names of Google Cloud regions. This can
  /// only be set for global health check. If this list is non-empty, then
  /// there are restrictions on what other health check fields are supported
  /// and what other resources can use this health check:
  /// * SSL, HTTP2, and GRPC protocols are not supported.
  /// * The TCP request field is not supported.
  /// * The proxyHeader field for HTTP, HTTPS, and TCP is not supported.
  /// * The checkIntervalSec field must be at least 30.
  /// * The health check cannot be used with BackendService nor with managed
  /// instance group auto-healing.
  late final pulumi.Output<List<String>?> sourceRegions;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckSslHealthCheck?> sslHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<HealthCheckTcpHealthCheck?> tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final pulumi.Output<int?> timeoutSec;

  /// The type of the health check. One of HTTP, HTTPS, TCP, or SSL.
  late final pulumi.Output<String> type;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final pulumi.Output<int?> unhealthyThreshold;

  /// Creates a new [HealthCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HealthCheck]. {@macro pulumi_compute_health_check_health_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HealthCheck(
    String name, {
    HealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/healthCheck:HealthCheck',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    grpcHealthCheck = registerOutput<HealthCheckGrpcHealthCheck?>(
      'grpcHealthCheck',
    );
    grpcTlsHealthCheck = registerOutput<HealthCheckGrpcTlsHealthCheck?>(
      'grpcTlsHealthCheck',
    );
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    http2HealthCheck = registerOutput<HealthCheckHttp2HealthCheck?>(
      'http2HealthCheck',
    );
    httpHealthCheck = registerOutput<HealthCheckHttpHealthCheck?>(
      'httpHealthCheck',
    );
    httpsHealthCheck = registerOutput<HealthCheckHttpsHealthCheck?>(
      'httpsHealthCheck',
    );
    logConfig = registerOutput<HealthCheckLogConfig>('logConfig');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sourceRegions = registerOutput<List<String>?>('sourceRegions');
    sslHealthCheck = registerOutput<HealthCheckSslHealthCheck?>(
      'sslHealthCheck',
    );
    tcpHealthCheck = registerOutput<HealthCheckTcpHealthCheck?>(
      'tcpHealthCheck',
    );
    timeoutSec = registerOutput<int?>('timeoutSec');
    type = registerOutput<String>('type');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }

  /// Gets an existing [HealthCheck] resource's state with the given [name] and [id].
  static HealthCheck get(
    String name,
    pulumi.Input<String> id, {
    HealthCheckState? state,
  }) {
    return HealthCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HealthCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/healthCheck:HealthCheck',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    grpcHealthCheck = registerOutput<HealthCheckGrpcHealthCheck?>(
      'grpcHealthCheck',
    );
    grpcTlsHealthCheck = registerOutput<HealthCheckGrpcTlsHealthCheck?>(
      'grpcTlsHealthCheck',
    );
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    http2HealthCheck = registerOutput<HealthCheckHttp2HealthCheck?>(
      'http2HealthCheck',
    );
    httpHealthCheck = registerOutput<HealthCheckHttpHealthCheck?>(
      'httpHealthCheck',
    );
    httpsHealthCheck = registerOutput<HealthCheckHttpsHealthCheck?>(
      'httpsHealthCheck',
    );
    logConfig = registerOutput<HealthCheckLogConfig>('logConfig');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sourceRegions = registerOutput<List<String>?>('sourceRegions');
    sslHealthCheck = registerOutput<HealthCheckSslHealthCheck?>(
      'sslHealthCheck',
    );
    tcpHealthCheck = registerOutput<HealthCheckTcpHealthCheck?>(
      'tcpHealthCheck',
    );
    timeoutSec = registerOutput<int?>('timeoutSec');
    type = registerOutput<String>('type');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
