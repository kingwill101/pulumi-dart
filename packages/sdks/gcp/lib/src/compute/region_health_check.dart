import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_health_check_args.dart';
import 'region_health_check_grpc_health_check.dart';
import 'region_health_check_grpc_tls_health_check.dart';
import 'region_health_check_http2_health_check.dart';
import 'region_health_check_http_health_check.dart';
import 'region_health_check_https_health_check.dart';
import 'region_health_check_log_config.dart';
import 'region_health_check_ssl_health_check.dart';
import 'region_health_check_state.dart';
import 'region_health_check_tcp_health_check.dart';

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
///
/// To get more information about RegionHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/health-checks)
///
/// ## Example Usage
///
/// ### Region Health Check Tcp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tcp_region_health_check = new gcp.compute.RegionHealthCheck("tcp-region-health-check", {
///     name: "tcp-region-health-check",
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
/// tcp_region_health_check = gcp.compute.RegionHealthCheck("tcp-region-health-check",
///     name="tcp-region-health-check",
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
///     var tcp_region_health_check = new Gcp.Compute.RegionHealthCheck("tcp-region-health-check", new()
///     {
///         Name = "tcp-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "tcp-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("tcp-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "tcp-region-health-check" {
///   name               = "tcp-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var tcp_region_health_check = new RegionHealthCheck("tcp-region-health-check", RegionHealthCheckArgs.builder()
///             .name("tcp-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: tcp-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Region Health Check Tcp Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tcp_region_health_check = new gcp.compute.RegionHealthCheck("tcp-region-health-check", {
///     name: "tcp-region-health-check",
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
/// tcp_region_health_check = gcp.compute.RegionHealthCheck("tcp-region-health-check",
///     name="tcp-region-health-check",
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
///     var tcp_region_health_check = new Gcp.Compute.RegionHealthCheck("tcp-region-health-check", new()
///     {
///         Name = "tcp-region-health-check",
///         Description = "Health check via tcp",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "tcp-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("tcp-region-health-check"),
/// 			Description:        pulumi.String("Health check via tcp"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "tcp-region-health-check" {
///   name                = "tcp-region-health-check"
///   description         = "Health check via tcp"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   tcp_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     request            = "ARE YOU HEALTHY?"
///     proxy_header       = "NONE"
///     response           = "I AM HEALTHY"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var tcp_region_health_check = new RegionHealthCheck("tcp-region-health-check", RegionHealthCheckArgs.builder()
///             .name("tcp-region-health-check")
///             .description("Health check via tcp")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
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
///   tcp-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: tcp-region-health-check
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
/// ### Region Health Check Ssl
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ssl_region_health_check = new gcp.compute.RegionHealthCheck("ssl-region-health-check", {
///     name: "ssl-region-health-check",
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
/// ssl_region_health_check = gcp.compute.RegionHealthCheck("ssl-region-health-check",
///     name="ssl-region-health-check",
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
///     var ssl_region_health_check = new Gcp.Compute.RegionHealthCheck("ssl-region-health-check", new()
///     {
///         Name = "ssl-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         SslHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckSslHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "ssl-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("ssl-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			SslHealthCheck: &compute.RegionHealthCheckSslHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "ssl-region-health-check" {
///   name               = "ssl-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   ssl_health_check = {
///     port = "443"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckSslHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var ssl_region_health_check = new RegionHealthCheck("ssl-region-health-check", RegionHealthCheckArgs.builder()
///             .name("ssl-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .sslHealthCheck(RegionHealthCheckSslHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ssl-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: ssl-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       sslHealthCheck:
///         port: '443'
/// ```
///
/// ### Region Health Check Ssl Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ssl_region_health_check = new gcp.compute.RegionHealthCheck("ssl-region-health-check", {
///     name: "ssl-region-health-check",
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
/// ssl_region_health_check = gcp.compute.RegionHealthCheck("ssl-region-health-check",
///     name="ssl-region-health-check",
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
///     var ssl_region_health_check = new Gcp.Compute.RegionHealthCheck("ssl-region-health-check", new()
///     {
///         Name = "ssl-region-health-check",
///         Description = "Health check via ssl",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         SslHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckSslHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "ssl-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("ssl-region-health-check"),
/// 			Description:        pulumi.String("Health check via ssl"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			SslHealthCheck: &compute.RegionHealthCheckSslHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "ssl-region-health-check" {
///   name                = "ssl-region-health-check"
///   description         = "Health check via ssl"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   ssl_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     request            = "ARE YOU HEALTHY?"
///     proxy_header       = "NONE"
///     response           = "I AM HEALTHY"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckSslHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var ssl_region_health_check = new RegionHealthCheck("ssl-region-health-check", RegionHealthCheckArgs.builder()
///             .name("ssl-region-health-check")
///             .description("Health check via ssl")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .sslHealthCheck(RegionHealthCheckSslHealthCheckArgs.builder()
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
///   ssl-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: ssl-region-health-check
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
/// ### Region Health Check Http
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_region_health_check = new gcp.compute.RegionHealthCheck("http-region-health-check", {
///     name: "http-region-health-check",
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
/// http_region_health_check = gcp.compute.RegionHealthCheck("http-region-health-check",
///     name="http-region-health-check",
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
///     var http_region_health_check = new Gcp.Compute.RegionHealthCheck("http-region-health-check", new()
///     {
///         Name = "http-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "http-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("http-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "http-region-health-check" {
///   name               = "http-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   http_health_check = {
///     port = "80"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var http_region_health_check = new RegionHealthCheck("http-region-health-check", RegionHealthCheckArgs.builder()
///             .name("http-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: http-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       httpHealthCheck:
///         port: '80'
/// ```
///
/// ### Region Health Check Http Logs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_region_health_check = new gcp.compute.RegionHealthCheck("http-region-health-check", {
///     name: "http-region-health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     httpHealthCheck: {
///         port: 80,
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
/// http_region_health_check = gcp.compute.RegionHealthCheck("http-region-health-check",
///     name="http-region-health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     http_health_check={
///         "port": 80,
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
///     var http_region_health_check = new Gcp.Compute.RegionHealthCheck("http-region-health-check", new()
///     {
///         Name = "http-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///         LogConfig = new Gcp.Compute.Inputs.RegionHealthCheckLogConfigArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "http-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("http-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 			LogConfig: &compute.RegionHealthCheckLogConfigArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "http-region-health-check" {
///   name               = "http-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   http_health_check = {
///     port = "80"
///   }
///   log_config = {
///     enable = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckLogConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var http_region_health_check = new RegionHealthCheck("http-region-health-check", RegionHealthCheckArgs.builder()
///             .name("http-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .logConfig(RegionHealthCheckLogConfigArgs.builder()
///                 .enable(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: http-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       httpHealthCheck:
///         port: '80'
///       logConfig:
///         enable: true
/// ```
///
/// ### Region Health Check Http Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http_region_health_check = new gcp.compute.RegionHealthCheck("http-region-health-check", {
///     name: "http-region-health-check",
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
/// http_region_health_check = gcp.compute.RegionHealthCheck("http-region-health-check",
///     name="http-region-health-check",
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
///     var http_region_health_check = new Gcp.Compute.RegionHealthCheck("http-region-health-check", new()
///     {
///         Name = "http-region-health-check",
///         Description = "Health check via http",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "http-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("http-region-health-check"),
/// 			Description:        pulumi.String("Health check via http"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "http-region-health-check" {
///   name                = "http-region-health-check"
///   description         = "Health check via http"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   http_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     host               = "1.2.3.4"
///     request_path       = "/mypath"
///     proxy_header       = "NONE"
///     response           = "I AM HEALTHY"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var http_region_health_check = new RegionHealthCheck("http-region-health-check", RegionHealthCheckArgs.builder()
///             .name("http-region-health-check")
///             .description("Health check via http")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
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
///   http-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: http-region-health-check
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
/// ### Region Health Check Https
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https_region_health_check = new gcp.compute.RegionHealthCheck("https-region-health-check", {
///     name: "https-region-health-check",
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
/// https_region_health_check = gcp.compute.RegionHealthCheck("https-region-health-check",
///     name="https-region-health-check",
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
///     var https_region_health_check = new Gcp.Compute.RegionHealthCheck("https-region-health-check", new()
///     {
///         Name = "https-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HttpsHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpsHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "https-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("https-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			HttpsHealthCheck: &compute.RegionHealthCheckHttpsHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "https-region-health-check" {
///   name               = "https-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   https_health_check = {
///     port = "443"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpsHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var https_region_health_check = new RegionHealthCheck("https-region-health-check", RegionHealthCheckArgs.builder()
///             .name("https-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .httpsHealthCheck(RegionHealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   https-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: https-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       httpsHealthCheck:
///         port: '443'
/// ```
///
/// ### Region Health Check Https Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https_region_health_check = new gcp.compute.RegionHealthCheck("https-region-health-check", {
///     name: "https-region-health-check",
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
/// https_region_health_check = gcp.compute.RegionHealthCheck("https-region-health-check",
///     name="https-region-health-check",
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
///     var https_region_health_check = new Gcp.Compute.RegionHealthCheck("https-region-health-check", new()
///     {
///         Name = "https-region-health-check",
///         Description = "Health check via https",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         HttpsHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpsHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "https-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("https-region-health-check"),
/// 			Description:        pulumi.String("Health check via https"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			HttpsHealthCheck: &compute.RegionHealthCheckHttpsHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "https-region-health-check" {
///   name                = "https-region-health-check"
///   description         = "Health check via https"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   https_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     host               = "1.2.3.4"
///     request_path       = "/mypath"
///     proxy_header       = "NONE"
///     response           = "I AM HEALTHY"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpsHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var https_region_health_check = new RegionHealthCheck("https-region-health-check", RegionHealthCheckArgs.builder()
///             .name("https-region-health-check")
///             .description("Health check via https")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .httpsHealthCheck(RegionHealthCheckHttpsHealthCheckArgs.builder()
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
///   https-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: https-region-health-check
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
/// ### Region Health Check Http2
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http2_region_health_check = new gcp.compute.RegionHealthCheck("http2-region-health-check", {
///     name: "http2-region-health-check",
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
/// http2_region_health_check = gcp.compute.RegionHealthCheck("http2-region-health-check",
///     name="http2-region-health-check",
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
///     var http2_region_health_check = new Gcp.Compute.RegionHealthCheck("http2-region-health-check", new()
///     {
///         Name = "http2-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         Http2HealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttp2HealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "http2-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("http2-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			Http2HealthCheck: &compute.RegionHealthCheckHttp2HealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "http2-region-health-check" {
///   name               = "http2-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   http2_health_check = {
///     port = "443"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttp2HealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var http2_region_health_check = new RegionHealthCheck("http2-region-health-check", RegionHealthCheckArgs.builder()
///             .name("http2-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .http2HealthCheck(RegionHealthCheckHttp2HealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http2-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: http2-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       http2HealthCheck:
///         port: '443'
/// ```
///
/// ### Region Health Check Http2 Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http2_region_health_check = new gcp.compute.RegionHealthCheck("http2-region-health-check", {
///     name: "http2-region-health-check",
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
/// http2_region_health_check = gcp.compute.RegionHealthCheck("http2-region-health-check",
///     name="http2-region-health-check",
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
///     var http2_region_health_check = new Gcp.Compute.RegionHealthCheck("http2-region-health-check", new()
///     {
///         Name = "http2-region-health-check",
///         Description = "Health check via http2",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         Http2HealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttp2HealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "http2-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("http2-region-health-check"),
/// 			Description:        pulumi.String("Health check via http2"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			Http2HealthCheck: &compute.RegionHealthCheckHttp2HealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "http2-region-health-check" {
///   name                = "http2-region-health-check"
///   description         = "Health check via http2"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   http2_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     host               = "1.2.3.4"
///     request_path       = "/mypath"
///     proxy_header       = "NONE"
///     response           = "I AM HEALTHY"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttp2HealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var http2_region_health_check = new RegionHealthCheck("http2-region-health-check", RegionHealthCheckArgs.builder()
///             .name("http2-region-health-check")
///             .description("Health check via http2")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .http2HealthCheck(RegionHealthCheckHttp2HealthCheckArgs.builder()
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
///   http2-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: http2-region-health-check
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
/// ### Region Health Check Grpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_region_health_check = new gcp.compute.RegionHealthCheck("grpc-region-health-check", {
///     name: "grpc-region-health-check",
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
/// grpc_region_health_check = gcp.compute.RegionHealthCheck("grpc-region-health-check",
///     name="grpc-region-health-check",
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
///     var grpc_region_health_check = new Gcp.Compute.RegionHealthCheck("grpc-region-health-check", new()
///     {
///         Name = "grpc-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckGrpcHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "grpc-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("grpc-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcHealthCheck: &compute.RegionHealthCheckGrpcHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "grpc-region-health-check" {
///   name               = "grpc-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   grpc_health_check = {
///     port = "443"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckGrpcHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var grpc_region_health_check = new RegionHealthCheck("grpc-region-health-check", RegionHealthCheckArgs.builder()
///             .name("grpc-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcHealthCheck(RegionHealthCheckGrpcHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: grpc-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcHealthCheck:
///         port: '443'
/// ```
///
/// ### Region Health Check Grpc Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_region_health_check = new gcp.compute.RegionHealthCheck("grpc-region-health-check", {
///     name: "grpc-region-health-check",
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
/// grpc_region_health_check = gcp.compute.RegionHealthCheck("grpc-region-health-check",
///     name="grpc-region-health-check",
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
///     var grpc_region_health_check = new Gcp.Compute.RegionHealthCheck("grpc-region-health-check", new()
///     {
///         Name = "grpc-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckGrpcHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "grpc-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("grpc-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcHealthCheck: &compute.RegionHealthCheckGrpcHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "grpc-region-health-check" {
///   name               = "grpc-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   grpc_health_check = {
///     port_name          = "health-check-port"
///     port_specification = "USE_NAMED_PORT"
///     grpc_service_name  = "testservice"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckGrpcHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var grpc_region_health_check = new RegionHealthCheck("grpc-region-health-check", RegionHealthCheckArgs.builder()
///             .name("grpc-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcHealthCheck(RegionHealthCheckGrpcHealthCheckArgs.builder()
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
///   grpc-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: grpc-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         grpcServiceName: testservice
/// ```
///
/// ### Region Health Check Grpc With Tls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_with_tls_region_health_check = new gcp.compute.RegionHealthCheck("grpc-with-tls-region-health-check", {
///     name: "grpc-with-tls-region-health-check",
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
/// grpc_with_tls_region_health_check = gcp.compute.RegionHealthCheck("grpc-with-tls-region-health-check",
///     name="grpc-with-tls-region-health-check",
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
///     var grpc_with_tls_region_health_check = new Gcp.Compute.RegionHealthCheck("grpc-with-tls-region-health-check", new()
///     {
///         Name = "grpc-with-tls-region-health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcTlsHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckGrpcTlsHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "grpc-with-tls-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("grpc-with-tls-region-health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcTlsHealthCheck: &compute.RegionHealthCheckGrpcTlsHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "grpc-with-tls-region-health-check" {
///   name               = "grpc-with-tls-region-health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   grpc_tls_health_check = {
///     port = "443"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckGrpcTlsHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var grpc_with_tls_region_health_check = new RegionHealthCheck("grpc-with-tls-region-health-check", RegionHealthCheckArgs.builder()
///             .name("grpc-with-tls-region-health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcTlsHealthCheck(RegionHealthCheckGrpcTlsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grpc-with-tls-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: grpc-with-tls-region-health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcTlsHealthCheck:
///         port: '443'
/// ```
///
/// ### Region Health Check Grpc With Tls Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const grpc_with_tls_region_health_check = new gcp.compute.RegionHealthCheck("grpc-with-tls-region-health-check", {
///     name: "grpc-with-tls-region-health-check",
///     description: "regional health check via GRPC with TLS",
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
/// grpc_with_tls_region_health_check = gcp.compute.RegionHealthCheck("grpc-with-tls-region-health-check",
///     name="grpc-with-tls-region-health-check",
///     description="regional health check via GRPC with TLS",
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
///     var grpc_with_tls_region_health_check = new Gcp.Compute.RegionHealthCheck("grpc-with-tls-region-health-check", new()
///     {
///         Name = "grpc-with-tls-region-health-check",
///         Description = "regional health check via GRPC with TLS",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         HealthyThreshold = 4,
///         UnhealthyThreshold = 5,
///         GrpcTlsHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckGrpcTlsHealthCheckArgs
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
/// 		_, err := compute.NewRegionHealthCheck(ctx, "grpc-with-tls-region-health-check", &compute.RegionHealthCheckArgs{
/// 			Name:               pulumi.String("grpc-with-tls-region-health-check"),
/// 			Description:        pulumi.String("regional health check via GRPC with TLS"),
/// 			TimeoutSec:         pulumi.Int(1),
/// 			CheckIntervalSec:   pulumi.Int(1),
/// 			HealthyThreshold:   pulumi.Int(4),
/// 			UnhealthyThreshold: pulumi.Int(5),
/// 			GrpcTlsHealthCheck: &compute.RegionHealthCheckGrpcTlsHealthCheckArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionhealthcheck" "grpc-with-tls-region-health-check" {
///   name                = "grpc-with-tls-region-health-check"
///   description         = "regional health check via GRPC with TLS"
///   timeout_sec         = 1
///   check_interval_sec  = 1
///   healthy_threshold   = 4
///   unhealthy_threshold = 5
///   grpc_tls_health_check = {
///     port_specification = "USE_FIXED_PORT"
///     port               = "443"
///     grpc_service_name  = "testservice"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckGrpcTlsHealthCheckArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var grpc_with_tls_region_health_check = new RegionHealthCheck("grpc-with-tls-region-health-check", RegionHealthCheckArgs.builder()
///             .name("grpc-with-tls-region-health-check")
///             .description("regional health check via GRPC with TLS")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .healthyThreshold(4)
///             .unhealthyThreshold(5)
///             .grpcTlsHealthCheck(RegionHealthCheckGrpcTlsHealthCheckArgs.builder()
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
///   grpc-with-tls-region-health-check:
///     type: gcp:compute:RegionHealthCheck
///     properties:
///       name: grpc-with-tls-region-health-check
///       description: regional health check via GRPC with TLS
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
///
/// ## Import
///
/// RegionHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/healthChecks/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default projects/{{project}}/regions/{{region}}/healthChecks/{{name}}
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{name}}
/// ```
class RegionHealthCheck extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final pulumi.Output<int?> checkIntervalSec;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckGrpcHealthCheck?> grpcHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckGrpcTlsHealthCheck?> grpcTlsHealthCheck;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> healthCheckId;
  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final pulumi.Output<int?> healthyThreshold;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttp2HealthCheck?> http2HealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttpHealthCheck?> httpHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttpsHealthCheck?> httpsHealthCheck;
  /// Configure logging on this health check.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckLogConfig> logConfig;
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
  /// The Region in which the created health check should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckSslHealthCheck?> sslHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckTcpHealthCheck?> tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final pulumi.Output<int?> timeoutSec;
  /// The type of the health check. One of HTTP, HTTP2, HTTPS, TCP, or SSL.
  late final pulumi.Output<String> type;
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final pulumi.Output<int?> unhealthyThreshold;

  /// Creates a new [RegionHealthCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionHealthCheck]. {@macro pulumi_compute_region_health_check_region_health_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionHealthCheck(
    String name, {
    RegionHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthCheck:RegionHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    grpcHealthCheck = registerOutput<RegionHealthCheckGrpcHealthCheck?>('grpcHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckGrpcHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcTlsHealthCheck = registerOutput<RegionHealthCheckGrpcTlsHealthCheck?>('grpcTlsHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckGrpcTlsHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckId = registerOutput<int>('healthCheckId');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    http2HealthCheck = registerOutput<RegionHealthCheckHttp2HealthCheck?>('http2HealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttp2HealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpHealthCheck = registerOutput<RegionHealthCheckHttpHealthCheck?>('httpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttpHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsHealthCheck = registerOutput<RegionHealthCheckHttpsHealthCheck?>('httpsHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttpsHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<RegionHealthCheckLogConfig>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    sslHealthCheck = registerOutput<RegionHealthCheckSslHealthCheck?>('sslHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckSslHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tcpHealthCheck = registerOutput<RegionHealthCheckTcpHealthCheck?>('tcpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckTcpHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeoutSec = registerOutput<int?>('timeoutSec');
    type = registerOutput<String>('type');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }

  /// Gets an existing [RegionHealthCheck] resource's state with the given [name] and [id].
  static RegionHealthCheck get(
    String name,
    pulumi.Input<String> id, {
    RegionHealthCheckState? state,
  }) {
    return RegionHealthCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionHealthCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthCheck:RegionHealthCheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    grpcHealthCheck = registerOutput<RegionHealthCheckGrpcHealthCheck?>('grpcHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckGrpcHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcTlsHealthCheck = registerOutput<RegionHealthCheckGrpcTlsHealthCheck?>('grpcTlsHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckGrpcTlsHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckId = registerOutput<int>('healthCheckId');
    healthyThreshold = registerOutput<int?>('healthyThreshold');
    http2HealthCheck = registerOutput<RegionHealthCheckHttp2HealthCheck?>('http2HealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttp2HealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpHealthCheck = registerOutput<RegionHealthCheckHttpHealthCheck?>('httpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttpHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsHealthCheck = registerOutput<RegionHealthCheckHttpsHealthCheck?>('httpsHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckHttpsHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<RegionHealthCheckLogConfig>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    sslHealthCheck = registerOutput<RegionHealthCheckSslHealthCheck?>('sslHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckSslHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tcpHealthCheck = registerOutput<RegionHealthCheckTcpHealthCheck?>('tcpHealthCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionHealthCheckTcpHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeoutSec = registerOutput<int?>('timeoutSec');
    type = registerOutput<String>('type');
    unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
