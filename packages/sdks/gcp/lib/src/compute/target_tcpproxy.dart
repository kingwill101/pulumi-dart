import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_tcpproxy_args.dart';
import 'target_tcpproxy_state.dart';

/// Represents a TargetTcpProxy resource, which is used by one or more
/// global forwarding rule to route incoming TCP requests to a Backend
/// service.
///
///
/// To get more information about TargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetTcpProxies)
/// * How-to Guides
/// * [Setting Up TCP proxy for Google Cloud Load Balancing](https://cloud.google.com/compute/docs/load-balancing/tcp-ssl/tcp-proxy)
///
/// ## Example Usage
///
/// ### Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 443,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     healthChecks: defaultHealthCheck.id,
/// });
/// const _default = new gcp.compute.TargetTCPProxy("default", {
///     name: "test-proxy",
///     backendService: defaultBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 443,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     health_checks=default_health_check.id)
/// default = gcp.compute.TargetTCPProxy("default",
///     name="test-proxy",
///     backend_service=default_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var @default = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "test-proxy",
///         BackendService = defaultBackendService.Id,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend-service"),
/// 			Protocol:     pulumi.String("TCP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			BackendService: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_targettcpproxy" "default" {
///   name            = "test-proxy"
///   backend_service = gcp_compute_backendservice.default.id
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name          = "backend-service"
///   protocol      = "TCP"
///   timeout_sec   = 10
///   health_checks = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name               = "health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var default_ = new TargetTCPProxy("default", TargetTCPProxyArgs.builder()
///             .name("test-proxy")
///             .backendService(defaultBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetTCPProxy
///     properties:
///       name: test-proxy
///       backendService: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '443'
/// ```
///
/// ### Target Tcp Proxy Basic Beta
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 443,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     protocol: "TCP",
///     timeoutSec: 10,
///     healthChecks: defaultHealthCheck.id,
/// });
/// const _default = new gcp.compute.TargetTCPProxy("default", {
///     name: "test-proxy",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     backendService: defaultBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 443,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     protocol="TCP",
///     timeout_sec=10,
///     health_checks=default_health_check.id)
/// default = gcp.compute.TargetTCPProxy("default",
///     name="test-proxy",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     backend_service=default_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var @default = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "test-proxy",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         BackendService = defaultBackendService.Id,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			BackendService:      defaultBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_targettcpproxy" "default" {
///   name                  = "test-proxy"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   backend_service       = gcp_compute_backendservice.default.id
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "backend-service"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name               = "health-check"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var default_ = new TargetTCPProxy("default", TargetTCPProxyArgs.builder()
///             .name("test-proxy")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .backendService(defaultBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetTCPProxy
///     properties:
///       name: test-proxy
///       loadBalancingScheme: EXTERNAL_MANAGED
///       backendService: ${defaultBackendService.id}
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       loadBalancingScheme: EXTERNAL_MANAGED
///       protocol: TCP
///       timeoutSec: 10
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '443'
/// ```
///
/// ### Target Tcp Proxy Backendless
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.TargetTCPProxy("default", {
///     name: "test-proxy",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.TargetTCPProxy("default",
///     name="test-proxy",
///     load_balancing_scheme="INTERNAL_MANAGED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "test-proxy",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
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
/// 		_, err := compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
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
/// resource "gcp_compute_targettcpproxy" "default" {
///   name                  = "test-proxy"
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
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
///         var default_ = new TargetTCPProxy("default", TargetTCPProxyArgs.builder()
///             .name("test-proxy")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetTCPProxy
///     properties:
///       name: test-proxy
///       loadBalancingScheme: INTERNAL_MANAGED
/// ```
///
/// ### Target Tcp Proxy Tls Route
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.TargetTCPProxy("default", {
///     name: "test-proxy",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backend-service",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     protocol: "TCP",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "tls-route-check",
///     targetProxies: [_default.id],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: defaultBackendService.id,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.TargetTCPProxy("default",
///     name="test-proxy",
///     load_balancing_scheme="INTERNAL_MANAGED")
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     https_health_check={
///         "port": 443,
///     })
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backend-service",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     protocol="TCP",
///     health_checks=default_health_check.id)
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="tls-route-check",
///     target_proxies=[default.id],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default_backend_service.id,
///             }],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "test-proxy",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backend-service",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Protocol = "TCP",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "tls-route-check",
///         TargetProxies = new[]
///         {
///             @default.Id,
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.TlsRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.TlsRouteRuleMatchArgs
///                     {
///                         SniHosts = new[]
///                         {
///                             "example.com",
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TlsRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TlsRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = defaultBackendService.Id,
///                         },
///                     },
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name: pulumi.String("tls-route-check"),
/// 			TargetProxies: pulumi.StringArray{
/// 				_default.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Rules: networkservices.TlsRouteRuleArray{
/// 				&networkservices.TlsRouteRuleArgs{
/// 					Matches: networkservices.TlsRouteRuleMatchArray{
/// 						&networkservices.TlsRouteRuleMatchArgs{
/// 							SniHosts: pulumi.StringArray{
/// 								pulumi.String("example.com"),
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.TlsRouteRuleActionArgs{
/// 						Destinations: networkservices.TlsRouteRuleActionDestinationArray{
/// 							&networkservices.TlsRouteRuleActionDestinationArgs{
/// 								ServiceName: defaultBackendService.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// resource "gcp_compute_targettcpproxy" "default" {
///   name                  = "test-proxy"
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "backend-service"
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   protocol              = "TCP"
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "health-check"
///   https_health_check = {
///     port = 443
///   }
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name           = "tls-route-check"
///   target_proxies = [gcp_compute_targettcpproxy.default.id]
///   rules {
///     matches {
///       sni_hosts = ["example.com"]
///     }
///     action = {
///       destinations = [{
///         "serviceName" = gcp_compute_backendservice.default.id
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.TlsRoute;
/// import com.pulumi.gcp.networkservices.TlsRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleMatchArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleActionDestinationArgs;
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
///         var default_ = new TargetTCPProxy("default", TargetTCPProxyArgs.builder()
///             .name("test-proxy")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backend-service")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .protocol("TCP")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("tls-route-check")
///             .targetProxies(default_.id())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(defaultBackendService.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetTCPProxy
///     properties:
///       name: test-proxy
///       loadBalancingScheme: INTERNAL_MANAGED
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backend-service
///       loadBalancingScheme: INTERNAL_MANAGED
///       protocol: TCP
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpsHealthCheck:
///         port: 443
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: tls-route-check
///       targetProxies:
///         - ${default.id}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///           action:
///             destinations:
///               - serviceName: ${defaultBackendService.id}
/// ```
///
///
/// ## Import
///
/// TargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetTcpProxies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, TargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default projects/{{project}}/global/targetTcpProxies/{{name}}
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{project}}/{{name}}
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{name}}
/// ```
class TargetTCPProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource. This field is optional when
  /// the loadBalancingScheme (available in beta) is set to INTERNAL_MANAGED.
  late final pulumi.Output<String?> backendService;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// (Optional, Beta)
  /// Specifies the load balancer type. A target TCP proxy created for one type
  /// of load balancer cannot be used with another. For more information, refer
  /// to [Summary of types of Google Cloud load balancers](https://docs.cloud.google.com/load-balancing/docs/load-balancing-overview#summary-gclb).
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<bool> proxyBind;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final pulumi.Output<String?> proxyHeader;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [TargetTCPProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetTCPProxy]. {@macro pulumi_compute_target_tcpproxy_target_tcpproxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetTCPProxy(
    String name, {
    TargetTCPProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetTCPProxy:TargetTCPProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    backendService = registerOutput<String?>('backendService');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [TargetTCPProxy] resource's state with the given [name] and [id].
  static TargetTCPProxy get(
    String name,
    pulumi.Input<String> id, {
    TargetTCPProxyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetTCPProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TargetTCPProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetTCPProxy:TargetTCPProxy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendService = registerOutput<String?>('backendService');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [TargetTCPProxy] resource.
  TargetTCPProxy.reference(String urn)
    : super(
        'gcp:compute/targetTCPProxy:TargetTCPProxy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backendService = registerOutput<String?>('backendService');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyBind = registerOutput<bool>('proxyBind');
    proxyHeader = registerOutput<String?>('proxyHeader');
    proxyId = registerOutput<int>('proxyId');
    selfLink = registerOutput<String>('selfLink');
  }
}
