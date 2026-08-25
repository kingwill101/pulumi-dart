import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_tcp_proxy_args.dart';
import 'region_target_tcp_proxy_state.dart';

/// Represents a RegionTargetTcpProxy resource, which is used by one or more
/// forwarding rules to route incoming TCP requests to a regional TCP proxy load
/// balancer.
///
///
/// To get more information about RegionTargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/tcp/internal-proxy)
///
/// ## Example Usage
///
/// ### Region Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "us-central1",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "us-central1",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const _default = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "test-proxy",
///     region: "us-central1",
///     backendService: defaultRegionBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="us-central1",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="us-central1",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="INTERNAL_MANAGED")
/// default = gcp.compute.RegionTargetTcpProxy("default",
///     name="test-proxy",
///     region="us-central1",
///     backend_service=default_region_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "us-central1",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "us-central1",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var @default = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "test-proxy",
///         Region = "us-central1",
///         BackendService = defaultRegionBackendService.Id,
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
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			Region:           pulumi.String("us-central1"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			Region:              pulumi.String("us-central1"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:           pulumi.String("test-proxy"),
/// 			Region:         pulumi.String("us-central1"),
/// 			BackendService: defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_regiontargettcpproxy" "default" {
///   name            = "test-proxy"
///   region          = "us-central1"
///   backend_service = gcp_compute_regionbackendservice.default.id
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "backend-service"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   region                = "us-central1"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name               = "health-check"
///   region             = "us-central1"
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
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("us-central1")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("us-central1")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var default_ = new RegionTargetTcpProxy("default", RegionTargetTcpProxyArgs.builder()
///             .name("test-proxy")
///             .region("us-central1")
///             .backendService(defaultRegionBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetTcpProxy
///     properties:
///       name: test-proxy
///       region: us-central1
///       backendService: ${defaultRegionBackendService.id}
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: us-central1
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: INTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: health-check
///       region: us-central1
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Region Target Tcp Proxy Basic Beta
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "europe-west4",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "europe-west4",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const _default = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "test-proxy",
///     region: "europe-west4",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     backendService: defaultRegionBackendService.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="europe-west4",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="europe-west4",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default = gcp.compute.RegionTargetTcpProxy("default",
///     name="test-proxy",
///     region="europe-west4",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     backend_service=default_region_backend_service.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "europe-west4",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "europe-west4",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var @default = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "test-proxy",
///         Region = "europe-west4",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         BackendService = defaultRegionBackendService.Id,
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
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			Region:           pulumi.String("europe-west4"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			Region:              pulumi.String("europe-west4"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			Region:              pulumi.String("europe-west4"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			BackendService:      defaultRegionBackendService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_regiontargettcpproxy" "default" {
///   name                  = "test-proxy"
///   region                = "europe-west4"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   backend_service       = gcp_compute_regionbackendservice.default.id
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "backend-service"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   region                = "europe-west4"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name               = "health-check"
///   region             = "europe-west4"
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
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("europe-west4")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("europe-west4")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var default_ = new RegionTargetTcpProxy("default", RegionTargetTcpProxyArgs.builder()
///             .name("test-proxy")
///             .region("europe-west4")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .backendService(defaultRegionBackendService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetTcpProxy
///     properties:
///       name: test-proxy
///       region: europe-west4
///       loadBalancingScheme: EXTERNAL_MANAGED
///       backendService: ${defaultRegionBackendService.id}
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: europe-west4
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: health-check
///       region: europe-west4
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
/// ```
///
/// ### Region Target Tcp Proxy Backendless
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "test-proxy",
///     region: "europe-west4",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionTargetTcpProxy("default",
///     name="test-proxy",
///     region="europe-west4",
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
///     var @default = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "test-proxy",
///         Region = "europe-west4",
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
/// 		_, err := compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			Region:              pulumi.String("europe-west4"),
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
/// resource "gcp_compute_regiontargettcpproxy" "default" {
///   name                  = "test-proxy"
///   region                = "europe-west4"
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
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
///         var default_ = new RegionTargetTcpProxy("default", RegionTargetTcpProxyArgs.builder()
///             .name("test-proxy")
///             .region("europe-west4")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionTargetTcpProxy
///     properties:
///       name: test-proxy
///       region: europe-west4
///       loadBalancingScheme: INTERNAL_MANAGED
/// ```
///
/// ### Region Target Tcp Proxy Tls Route
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "test-proxy",
///     region: "europe-west4",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "health-check",
///     region: "europe-west4",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "europe-west4",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "tls-route-check",
///     location: "europe-west4",
///     targetProxies: [_default.selfLink],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: defaultRegionBackendService.selfLink,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionTargetTcpProxy("default",
///     name="test-proxy",
///     region="europe-west4",
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="health-check",
///     region="europe-west4",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="europe-west4",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="tls-route-check",
///     location="europe-west4",
///     target_proxies=[default.self_link],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default_region_backend_service.self_link,
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
///     var @default = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "test-proxy",
///         Region = "europe-west4",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "health-check",
///         Region = "europe-west4",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "europe-west4",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "tls-route-check",
///         Location = "europe-west4",
///         TargetProxies = new[]
///         {
///             @default.SelfLink,
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
///                             ServiceName = defaultRegionBackendService.SelfLink,
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
/// 		_default, err := compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:                pulumi.String("test-proxy"),
/// 			Region:              pulumi.String("europe-west4"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			Region:           pulumi.String("europe-west4"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.RegionHealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionBackendService, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backend-service"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			Region:              pulumi.String("europe-west4"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name:     pulumi.String("tls-route-check"),
/// 			Location: pulumi.String("europe-west4"),
/// 			TargetProxies: pulumi.StringArray{
/// 				_default.SelfLink,
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
/// 								ServiceName: defaultRegionBackendService.SelfLink,
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
/// resource "gcp_compute_regiontargettcpproxy" "default" {
///   name                  = "test-proxy"
///   region                = "europe-west4"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "backend-service"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   region                = "europe-west4"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name               = "health-check"
///   region             = "europe-west4"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name           = "tls-route-check"
///   location       = "europe-west4"
///   target_proxies = [gcp_compute_regiontargettcpproxy.default.self_link]
///   rules {
///     matches {
///       sni_hosts = ["example.com"]
///     }
///     action = {
///       destinations = [{
///         "serviceName" = gcp_compute_regionbackendservice.default.self_link
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
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
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
///         var default_ = new RegionTargetTcpProxy("default", RegionTargetTcpProxyArgs.builder()
///             .name("test-proxy")
///             .region("europe-west4")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("health-check")
///             .region("europe-west4")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("europe-west4")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("tls-route-check")
///             .location("europe-west4")
///             .targetProxies(default_.selfLink())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(defaultRegionBackendService.selfLink())
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
///     type: gcp:compute:RegionTargetTcpProxy
///     properties:
///       name: test-proxy
///       region: europe-west4
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: europe-west4
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: health-check
///       region: europe-west4
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: tls-route-check
///       location: europe-west4
///       targetProxies:
///         - ${default.selfLink}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///           action:
///             destinations:
///               - serviceName: ${defaultRegionBackendService.selfLink}
/// ```
///
///
/// ## Import
///
/// RegionTargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionTargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{name}}
/// ```
class RegionTargetTcpProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource. This field is optional when
  /// the loadBalancingScheme (available in beta) is specified.
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
  /// Possible values are: `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`.
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
  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionTargetTcpProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionTargetTcpProxy]. {@macro pulumi_compute_region_target_tcp_proxy_region_target_tcp_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionTargetTcpProxy(
    String name, {
    RegionTargetTcpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy',
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
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [RegionTargetTcpProxy] resource's state with the given [name] and [id].
  static RegionTargetTcpProxy get(
    String name,
    pulumi.Input<String> id, {
    RegionTargetTcpProxyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionTargetTcpProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionTargetTcpProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy',
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
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [RegionTargetTcpProxy] resource.
  RegionTargetTcpProxy.reference(String urn)
    : super(
        'gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy',
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
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}
