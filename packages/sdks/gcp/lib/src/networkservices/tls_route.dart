import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_args.dart';
import 'tls_route_rule.dart';
import 'tls_route_state.dart';

/// TlsRoute defines how traffic should be routed based on SNI and other matching L3 attributes.
///
///
/// To get more information about TlsRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.tlsRoutes)
///
/// ## Example Usage
///
/// ### Network Services Tls Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "backend-service-health-check",
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     description: "my description",
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///             alpns: ["http/1.1"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="backend-service-health-check",
///     https_health_check={
///         "port": 443,
///     })
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     description="my description",
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///             "alpns": ["http/1.1"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
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
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         Description = "my description",
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
///                         Alpns = new[]
///                         {
///                             "http/1.1",
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TlsRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TlsRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("backend-service-health-check"),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name:        pulumi.String("my-tls-route"),
/// 			Description: pulumi.String("my description"),
/// 			Rules: networkservices.TlsRouteRuleArray{
/// 				&networkservices.TlsRouteRuleArgs{
/// 					Matches: networkservices.TlsRouteRuleMatchArray{
/// 						&networkservices.TlsRouteRuleMatchArgs{
/// 							SniHosts: pulumi.StringArray{
/// 								pulumi.String("example.com"),
/// 							},
/// 							Alpns: pulumi.StringArray{
/// 								pulumi.String("http/1.1"),
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.TlsRouteRuleActionArgs{
/// 						Destinations: networkservices.TlsRouteRuleActionDestinationArray{
/// 							&networkservices.TlsRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID().ToIDOutput().ToStringOutput(),
/// 								Weight:      pulumi.Int(1),
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
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "my-backend-service"
///   load_balancing_scheme = "INTERNAL_SELF_MANAGED"
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "backend-service-health-check"
///   https_health_check = {
///     port = 443
///   }
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name        = "my-tls-route"
///   description = "my description"
///   rules {
///     matches {
///       sni_hosts = ["example.com"]
///       alpns     = ["http/1.1"]
///     }
///     action = {
///       destinations = [{
///         "serviceName" = gcp_compute_backendservice.default.id
///         "weight"      = 1
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .description("my description")
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .alpns("http/1.1")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
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
///     type: gcp:compute:BackendService
///     properties:
///       name: my-backend-service
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       httpsHealthCheck:
///         port: 443
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       description: my description
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///               alpns:
///                 - http/1.1
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
/// ```
///
/// ### Network Services Tls Route Regional Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "backend-service-health-check",
///     region: "europe-west4",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "my-backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "europe-west4",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     location: "europe-west4",
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.selfLink,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="backend-service-health-check",
///     region="europe-west4",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="my-backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="europe-west4",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     location="europe-west4",
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.self_link,
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
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         Region = "europe-west4",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "my-backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "europe-west4",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         Location = "europe-west4",
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
///                             ServiceName = @default.SelfLink,
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
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("backend-service-health-check"),
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
/// 		_default, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
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
/// 			Name:     pulumi.String("my-tls-route"),
/// 			Location: pulumi.String("europe-west4"),
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
/// 								ServiceName: _default.SelfLink,
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
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "my-backend-service"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   region                = "europe-west4"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name               = "backend-service-health-check"
///   region             = "europe-west4"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name     = "my-tls-route"
///   location = "europe-west4"
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .region("europe-west4")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("my-backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("europe-west4")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .location("europe-west4")
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.selfLink())
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
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: my-backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: europe-west4
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       region: europe-west4
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       location: europe-west4
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///           action:
///             destinations:
///               - serviceName: ${default.selfLink}
/// ```
///
/// ### Network Services Tls Route Mesh Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "backend-service-health-check",
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultMesh = new gcp.networkservices.Mesh("default", {
///     name: "my-tls-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     description: "my description",
///     meshes: [defaultMesh.id],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///             alpns: ["http/1.1"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="backend-service-health-check",
///     https_health_check={
///         "port": 443,
///     })
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// default_mesh = gcp.networkservices.Mesh("default",
///     name="my-tls-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description")
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     description="my description",
///     meshes=[default_mesh.id],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///             "alpns": ["http/1.1"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
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
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultMesh = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-tls-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         Description = "my description",
///         Meshes = new[]
///         {
///             defaultMesh.Id,
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
///                         Alpns = new[]
///                         {
///                             "http/1.1",
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TlsRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TlsRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("backend-service-health-check"),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMesh, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name: pulumi.String("my-tls-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name:        pulumi.String("my-tls-route"),
/// 			Description: pulumi.String("my description"),
/// 			Meshes: pulumi.StringArray{
/// 				defaultMesh.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Rules: networkservices.TlsRouteRuleArray{
/// 				&networkservices.TlsRouteRuleArgs{
/// 					Matches: networkservices.TlsRouteRuleMatchArray{
/// 						&networkservices.TlsRouteRuleMatchArgs{
/// 							SniHosts: pulumi.StringArray{
/// 								pulumi.String("example.com"),
/// 							},
/// 							Alpns: pulumi.StringArray{
/// 								pulumi.String("http/1.1"),
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.TlsRouteRuleActionArgs{
/// 						Destinations: networkservices.TlsRouteRuleActionDestinationArray{
/// 							&networkservices.TlsRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID().ToIDOutput().ToStringOutput(),
/// 								Weight:      pulumi.Int(1),
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
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "my-backend-service"
///   load_balancing_scheme = "INTERNAL_SELF_MANAGED"
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "backend-service-health-check"
///   https_health_check = {
///     port = 443
///   }
/// }
/// resource "gcp_networkservices_mesh" "default" {
///   name = "my-tls-route"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name        = "my-tls-route"
///   description = "my description"
///   meshes      = [gcp_networkservices_mesh.default.id]
///   rules {
///     matches {
///       sni_hosts = ["example.com"]
///       alpns     = ["http/1.1"]
///     }
///     action = {
///       destinations = [{
///         "serviceName" = gcp_compute_backendservice.default.id
///         "weight"      = 1
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultMesh = new Mesh("defaultMesh", MeshArgs.builder()
///             .name("my-tls-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .description("my description")
///             .meshes(defaultMesh.id())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .alpns("http/1.1")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
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
///     type: gcp:compute:BackendService
///     properties:
///       name: my-backend-service
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       httpsHealthCheck:
///         port: 443
///   defaultMesh:
///     type: gcp:networkservices:Mesh
///     name: default
///     properties:
///       name: my-tls-route
///       labels:
///         foo: bar
///       description: my description
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       description: my description
///       meshes:
///         - ${defaultMesh.id}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///               alpns:
///                 - http/1.1
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
/// ```
///
/// ### Network Services Tls Route Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "backend-service-health-check",
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultGateway = new gcp.networkservices.Gateway("default", {
///     name: "my-tls-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     scope: "my-scope",
///     type: "OPEN_MESH",
///     ports: [443],
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     description: "my description",
///     gateways: [defaultGateway.id],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///             alpns: ["http/1.1"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="backend-service-health-check",
///     https_health_check={
///         "port": 443,
///     })
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// default_gateway = gcp.networkservices.Gateway("default",
///     name="my-tls-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     scope="my-scope",
///     type="OPEN_MESH",
///     ports=[443])
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     description="my description",
///     gateways=[default_gateway.id],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///             "alpns": ["http/1.1"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
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
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultGateway = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-tls-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Scope = "my-scope",
///         Type = "OPEN_MESH",
///         Ports = new[]
///         {
///             443,
///         },
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         Description = "my description",
///         Gateways = new[]
///         {
///             defaultGateway.Id,
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
///                         Alpns = new[]
///                         {
///                             "http/1.1",
///                         },
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TlsRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TlsRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("backend-service-health-check"),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name: pulumi.String("my-tls-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Scope:       pulumi.String("my-scope"),
/// 			Type:        pulumi.String("OPEN_MESH"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name:        pulumi.String("my-tls-route"),
/// 			Description: pulumi.String("my description"),
/// 			Gateways: pulumi.StringArray{
/// 				defaultGateway.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Rules: networkservices.TlsRouteRuleArray{
/// 				&networkservices.TlsRouteRuleArgs{
/// 					Matches: networkservices.TlsRouteRuleMatchArray{
/// 						&networkservices.TlsRouteRuleMatchArgs{
/// 							SniHosts: pulumi.StringArray{
/// 								pulumi.String("example.com"),
/// 							},
/// 							Alpns: pulumi.StringArray{
/// 								pulumi.String("http/1.1"),
/// 							},
/// 						},
/// 					},
/// 					Action: &networkservices.TlsRouteRuleActionArgs{
/// 						Destinations: networkservices.TlsRouteRuleActionDestinationArray{
/// 							&networkservices.TlsRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID().ToIDOutput().ToStringOutput(),
/// 								Weight:      pulumi.Int(1),
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
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "my-backend-service"
///   load_balancing_scheme = "INTERNAL_SELF_MANAGED"
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "backend-service-health-check"
///   https_health_check = {
///     port = 443
///   }
/// }
/// resource "gcp_networkservices_gateway" "default" {
///   name = "my-tls-route"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   scope       = "my-scope"
///   type        = "OPEN_MESH"
///   ports       = [443]
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name        = "my-tls-route"
///   description = "my description"
///   gateways    = [gcp_networkservices_gateway.default.id]
///   rules {
///     matches {
///       sni_hosts = ["example.com"]
///       alpns     = ["http/1.1"]
///     }
///     action = {
///       destinations = [{
///         "serviceName" = gcp_compute_backendservice.default.id
///         "weight"      = 1
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .name("my-tls-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .scope("my-scope")
///             .type("OPEN_MESH")
///             .ports(443)
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .description("my description")
///             .gateways(defaultGateway.id())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .alpns("http/1.1")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
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
///     type: gcp:compute:BackendService
///     properties:
///       name: my-backend-service
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       httpsHealthCheck:
///         port: 443
///   defaultGateway:
///     type: gcp:networkservices:Gateway
///     name: default
///     properties:
///       name: my-tls-route
///       labels:
///         foo: bar
///       description: my description
///       scope: my-scope
///       type: OPEN_MESH
///       ports:
///         - 443
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       description: my description
///       gateways:
///         - ${defaultGateway.id}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///               alpns:
///                 - http/1.1
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
/// ```
///
/// ### Network Services Tls Route Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "my-health-check",
///     httpsHealthCheck: {
///         port: 443,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     protocol: "TCP",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const defaultTargetTCPProxy = new gcp.compute.TargetTCPProxy("default", {
///     name: "my-target-tcp-proxy",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     targetProxies: [defaultTargetTCPProxy.id],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="my-health-check",
///     https_health_check={
///         "port": 443,
///     })
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     protocol="TCP",
///     health_checks=default_health_check.id)
/// default_target_tcp_proxy = gcp.compute.TargetTCPProxy("default",
///     name="my-target-tcp-proxy",
///     load_balancing_scheme="INTERNAL_MANAGED")
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     target_proxies=[default_target_tcp_proxy.id],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
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
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "my-health-check",
///         HttpsHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpsHealthCheckArgs
///         {
///             Port = 443,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Protocol = "TCP",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var defaultTargetTCPProxy = new Gcp.Compute.TargetTCPProxy("default", new()
///     {
///         Name = "my-target-tcp-proxy",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         TargetProxies = new[]
///         {
///             defaultTargetTCPProxy.Id,
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
///                             ServiceName = @default.Id,
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
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("my-health-check"),
/// 			HttpsHealthCheck: &compute.HealthCheckHttpsHealthCheckArgs{
/// 				Port: pulumi.Int(443),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTargetTCPProxy, err := compute.NewTargetTCPProxy(ctx, "default", &compute.TargetTCPProxyArgs{
/// 			Name:                pulumi.String("my-target-tcp-proxy"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name: pulumi.String("my-tls-route"),
/// 			TargetProxies: pulumi.StringArray{
/// 				defaultTargetTCPProxy.ID().ToIDOutput().ToStringOutput(),
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
/// 								ServiceName: _default.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "my-backend-service"
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   protocol              = "TCP"
///   health_checks         = gcp_compute_healthcheck.default.id
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "my-health-check"
///   https_health_check = {
///     port = 443
///   }
/// }
/// resource "gcp_compute_targettcpproxy" "default" {
///   name                  = "my-target-tcp-proxy"
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name           = "my-tls-route"
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpsHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.TargetTCPProxy;
/// import com.pulumi.gcp.compute.TargetTCPProxyArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("my-health-check")
///             .httpsHealthCheck(HealthCheckHttpsHealthCheckArgs.builder()
///                 .port(443)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .protocol("TCP")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var defaultTargetTCPProxy = new TargetTCPProxy("defaultTargetTCPProxy", TargetTCPProxyArgs.builder()
///             .name("my-target-tcp-proxy")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .targetProxies(defaultTargetTCPProxy.id())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
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
///     type: gcp:compute:BackendService
///     properties:
///       name: my-backend-service
///       loadBalancingScheme: INTERNAL_MANAGED
///       protocol: TCP
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: my-health-check
///       httpsHealthCheck:
///         port: 443
///   defaultTargetTCPProxy:
///     type: gcp:compute:TargetTCPProxy
///     name: default
///     properties:
///       name: my-target-tcp-proxy
///       loadBalancingScheme: INTERNAL_MANAGED
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       targetProxies:
///         - ${defaultTargetTCPProxy.id}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///           action:
///             destinations:
///               - serviceName: ${default.id}
/// ```
///
/// ### Network Services Tls Route Region Target Tcp Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "my-health-check",
///     region: "europe-west4",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "my-backend-service",
///     protocol: "TCP",
///     timeoutSec: 10,
///     region: "europe-west4",
///     healthChecks: defaultRegionHealthCheck.id,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultRegionTargetTcpProxy = new gcp.compute.RegionTargetTcpProxy("default", {
///     name: "my-target-tcp-proxy",
///     region: "europe-west4",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
/// });
/// const defaultTlsRoute = new gcp.networkservices.TlsRoute("default", {
///     name: "my-tls-route",
///     location: "europe-west4",
///     targetProxies: [defaultRegionTargetTcpProxy.selfLink],
///     rules: [{
///         matches: [{
///             sniHosts: ["example.com"],
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.selfLink,
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="my-health-check",
///     region="europe-west4",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="my-backend-service",
///     protocol="TCP",
///     timeout_sec=10,
///     region="europe-west4",
///     health_checks=default_region_health_check.id,
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default_region_target_tcp_proxy = gcp.compute.RegionTargetTcpProxy("default",
///     name="my-target-tcp-proxy",
///     region="europe-west4",
///     load_balancing_scheme="EXTERNAL_MANAGED")
/// default_tls_route = gcp.networkservices.TlsRoute("default",
///     name="my-tls-route",
///     location="europe-west4",
///     target_proxies=[default_region_target_tcp_proxy.self_link],
///     rules=[{
///         "matches": [{
///             "sni_hosts": ["example.com"],
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.self_link,
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
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "my-health-check",
///         Region = "europe-west4",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "my-backend-service",
///         Protocol = "TCP",
///         TimeoutSec = 10,
///         Region = "europe-west4",
///         HealthChecks = defaultRegionHealthCheck.Id,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var defaultRegionTargetTcpProxy = new Gcp.Compute.RegionTargetTcpProxy("default", new()
///     {
///         Name = "my-target-tcp-proxy",
///         Region = "europe-west4",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///     });
///
///     var defaultTlsRoute = new Gcp.NetworkServices.TlsRoute("default", new()
///     {
///         Name = "my-tls-route",
///         Location = "europe-west4",
///         TargetProxies = new[]
///         {
///             defaultRegionTargetTcpProxy.SelfLink,
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
///                             ServiceName = @default.SelfLink,
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
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:             pulumi.String("my-health-check"),
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
/// 		_default, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("my-backend-service"),
/// 			Protocol:            pulumi.String("TCP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			Region:              pulumi.String("europe-west4"),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionTargetTcpProxy, err := compute.NewRegionTargetTcpProxy(ctx, "default", &compute.RegionTargetTcpProxyArgs{
/// 			Name:                pulumi.String("my-target-tcp-proxy"),
/// 			Region:              pulumi.String("europe-west4"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTlsRoute(ctx, "default", &networkservices.TlsRouteArgs{
/// 			Name:     pulumi.String("my-tls-route"),
/// 			Location: pulumi.String("europe-west4"),
/// 			TargetProxies: pulumi.StringArray{
/// 				defaultRegionTargetTcpProxy.SelfLink,
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
/// 								ServiceName: _default.SelfLink,
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
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "my-backend-service"
///   protocol              = "TCP"
///   timeout_sec           = 10
///   region                = "europe-west4"
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name               = "my-health-check"
///   region             = "europe-west4"
///   timeout_sec        = 1
///   check_interval_sec = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_compute_regiontargettcpproxy" "default" {
///   name                  = "my-target-tcp-proxy"
///   region                = "europe-west4"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
/// }
/// resource "gcp_networkservices_tlsroute" "default" {
///   name           = "my-tls-route"
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxy;
/// import com.pulumi.gcp.compute.RegionTargetTcpProxyArgs;
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
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("my-health-check")
///             .region("europe-west4")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(RegionHealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("my-backend-service")
///             .protocol("TCP")
///             .timeoutSec(10)
///             .region("europe-west4")
///             .healthChecks(defaultRegionHealthCheck.id())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var defaultRegionTargetTcpProxy = new RegionTargetTcpProxy("defaultRegionTargetTcpProxy", RegionTargetTcpProxyArgs.builder()
///             .name("my-target-tcp-proxy")
///             .region("europe-west4")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .build());
///
///         var defaultTlsRoute = new TlsRoute("defaultTlsRoute", TlsRouteArgs.builder()
///             .name("my-tls-route")
///             .location("europe-west4")
///             .targetProxies(defaultRegionTargetTcpProxy.selfLink())
///             .rules(TlsRouteRuleArgs.builder()
///                 .matches(TlsRouteRuleMatchArgs.builder()
///                     .sniHosts("example.com")
///                     .build())
///                 .action(TlsRouteRuleActionArgs.builder()
///                     .destinations(TlsRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.selfLink())
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
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: my-backend-service
///       protocol: TCP
///       timeoutSec: 10
///       region: europe-west4
///       healthChecks: ${defaultRegionHealthCheck.id}
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: my-health-check
///       region: europe-west4
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   defaultRegionTargetTcpProxy:
///     type: gcp:compute:RegionTargetTcpProxy
///     name: default
///     properties:
///       name: my-target-tcp-proxy
///       region: europe-west4
///       loadBalancingScheme: EXTERNAL_MANAGED
///   defaultTlsRoute:
///     type: gcp:networkservices:TlsRoute
///     name: default
///     properties:
///       name: my-tls-route
///       location: europe-west4
///       targetProxies:
///         - ${defaultRegionTargetTcpProxy.selfLink}
///       rules:
///         - matches:
///             - sniHosts:
///                 - example.com
///           action:
///             destinations:
///               - serviceName: ${default.selfLink}
/// ```
///
///
/// ## Import
///
/// TlsRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tlsRoutes/{{name}}`
/// * `projects/{{project}}/locations/global/tlsRoutes/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, TlsRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default projects/{{project}}/locations/{{location}}/tlsRoutes/{{name}}
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default projects/{{project}}/locations/global/tlsRoutes/{{name}}
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{location}}/{{name}}
/// ```
class TlsRoute extends pulumi.CustomResource {
  /// Time the TlsRoute was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/*/gateways/&lt;gateway_name&gt;
  late final pulumi.Output<List<String>?> gateways;
  /// Location (region) of the TLS Route.
  late final pulumi.Output<String?> location;
  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/*/meshes/&lt;mesh_name&gt;
  /// The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>?> meshes;
  /// Name of the TlsRoute resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<TlsRouteRule>> rules;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// TargetProxies defines a list of target proxies this TlsRoute is attached to, as one of the routing rules to route the requests served by the load balancer.
  /// Each target proxy reference should match the pattern: projects/*/locations/global/targetTcpProxies/&lt;target_tcp_proxy_name&gt;
  late final pulumi.Output<List<String>?> targetProxies;
  /// Time the TlsRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TlsRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsRoute]. {@macro pulumi_networkservices_tls_route_tls_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsRoute(
    String name, {
    TlsRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tlsRoute:TlsRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gateways = registerOutput<List<String>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String?>('location');
    meshes = registerOutput<List<String>?>('meshes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<TlsRouteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsRouteRule>(guardedValue, (value) => TlsRouteRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    targetProxies = registerOutput<List<String>?>('targetProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TlsRoute] resource's state with the given [name] and [id].
  static TlsRoute get(
    String name,
    pulumi.Input<String> id, {
    TlsRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TlsRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TlsRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tlsRoute:TlsRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gateways = registerOutput<List<String>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String?>('location');
    meshes = registerOutput<List<String>?>('meshes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<TlsRouteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsRouteRule>(guardedValue, (value) => TlsRouteRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    targetProxies = registerOutput<List<String>?>('targetProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [TlsRoute] resource.
  TlsRoute.reference(String urn)
    : super(
        'gcp:networkservices/tlsRoute:TlsRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gateways = registerOutput<List<String>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String?>('location');
    meshes = registerOutput<List<String>?>('meshes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<TlsRouteRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsRouteRule>(guardedValue, (value) => TlsRouteRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    targetProxies = registerOutput<List<String>?>('targetProxies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
