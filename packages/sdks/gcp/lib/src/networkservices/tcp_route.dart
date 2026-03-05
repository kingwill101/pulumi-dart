import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_args.dart';
import 'tcp_route_state.dart';

/// TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/Gateway resource.
///
///
/// To get more information about TcpRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.tcpRoutes)
/// * How-to Guides
/// * [Setup TCP Services](https://cloud.google.com/traffic-director/docs/set-up-tcp-route)
///
/// ## Example Usage
///
/// ### Network Services Tcp Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "backend-service-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultTcpRoute = new gcp.networkservices.TcpRoute("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     rules: [{
///         matches: [{
///             address: "10.0.0.1/32",
///             port: "8081",
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///             originalDestination: false,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
/// default_tcp_route = gcp.networkservices.TcpRoute("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     rules=[{
///         "matches": [{
///             "address": "10.0.0.1/32",
///             "port": "8081",
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
///             }],
///             "original_destination": False,
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultTcpRoute = new Gcp.NetworkServices.TcpRoute("default", new()
///     {
///         Name = "my-tcp-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.TcpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.TcpRouteRuleMatchArgs
///                     {
///                         Address = "10.0.0.1/32",
///                         Port = "8081",
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TcpRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TcpRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
///                         },
///                     },
///                     OriginalDestination = false,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("backend-service-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("my-backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTcpRoute(ctx, "default", &networkservices.TcpRouteArgs{
/// 			Name: pulumi.String("my-tcp-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Rules: networkservices.TcpRouteRuleArray{
/// 				&networkservices.TcpRouteRuleArgs{
/// 					Matches: networkservices.TcpRouteRuleMatchArray{
/// 						&networkservices.TcpRouteRuleMatchArgs{
/// 							Address: pulumi.String("10.0.0.1/32"),
/// 							Port:    pulumi.String("8081"),
/// 						},
/// 					},
/// 					Action: &networkservices.TcpRouteRuleActionArgs{
/// 						Destinations: networkservices.TcpRouteRuleActionDestinationArray{
/// 							&networkservices.TcpRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID(),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						OriginalDestination: pulumi.Bool(false),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.TcpRoute;
/// import com.pulumi.gcp.networkservices.TcpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleActionArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultTcpRoute = new TcpRoute("defaultTcpRoute", TcpRouteArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .rules(TcpRouteRuleArgs.builder()
///                 .matches(TcpRouteRuleMatchArgs.builder()
///                     .address("10.0.0.1/32")
///                     .port("8081")
///                     .build())
///                 .action(TcpRouteRuleActionArgs.builder()
///                     .destinations(TcpRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
///                         .build())
///                     .originalDestination(false)
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
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   defaultTcpRoute:
///     type: gcp:networkservices:TcpRoute
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///       rules:
///         - matches:
///             - address: 10.0.0.1/32
///               port: '8081'
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
///             originalDestination: false
/// ```
///
/// ### Network Services Tcp Route Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "backend-service-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultTcpRoute = new gcp.networkservices.TcpRoute("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     rules: [{
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///             originalDestination: false,
///             idleTimeout: "60s",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
/// default_tcp_route = gcp.networkservices.TcpRoute("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     rules=[{
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
///             }],
///             "original_destination": False,
///             "idle_timeout": "60s",
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultTcpRoute = new Gcp.NetworkServices.TcpRoute("default", new()
///     {
///         Name = "my-tcp-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.TcpRouteRuleArgs
///             {
///                 Action = new Gcp.NetworkServices.Inputs.TcpRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TcpRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
///                         },
///                     },
///                     OriginalDestination = false,
///                     IdleTimeout = "60s",
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("backend-service-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("my-backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTcpRoute(ctx, "default", &networkservices.TcpRouteArgs{
/// 			Name: pulumi.String("my-tcp-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Rules: networkservices.TcpRouteRuleArray{
/// 				&networkservices.TcpRouteRuleArgs{
/// 					Action: &networkservices.TcpRouteRuleActionArgs{
/// 						Destinations: networkservices.TcpRouteRuleActionDestinationArray{
/// 							&networkservices.TcpRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID(),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						OriginalDestination: pulumi.Bool(false),
/// 						IdleTimeout:         pulumi.String("60s"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.TcpRoute;
/// import com.pulumi.gcp.networkservices.TcpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleActionArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultTcpRoute = new TcpRoute("defaultTcpRoute", TcpRouteArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .rules(TcpRouteRuleArgs.builder()
///                 .action(TcpRouteRuleActionArgs.builder()
///                     .destinations(TcpRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
///                         .build())
///                     .originalDestination(false)
///                     .idleTimeout("60s")
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
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   defaultTcpRoute:
///     type: gcp:networkservices:TcpRoute
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///       rules:
///         - action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
///             originalDestination: false
///             idleTimeout: 60s
/// ```
///
/// ### Network Services Tcp Route Mesh Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "backend-service-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultMesh = new gcp.networkservices.Mesh("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
/// });
/// const defaultTcpRoute = new gcp.networkservices.TcpRoute("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     meshes: [defaultMesh.id],
///     rules: [{
///         matches: [{
///             address: "10.0.0.1/32",
///             port: "8081",
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///             originalDestination: false,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
/// default_mesh = gcp.networkservices.Mesh("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description")
/// default_tcp_route = gcp.networkservices.TcpRoute("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     meshes=[default_mesh.id],
///     rules=[{
///         "matches": [{
///             "address": "10.0.0.1/32",
///             "port": "8081",
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
///             }],
///             "original_destination": False,
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultMesh = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-tcp-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///     });
///
///     var defaultTcpRoute = new Gcp.NetworkServices.TcpRoute("default", new()
///     {
///         Name = "my-tcp-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Meshes = new[]
///         {
///             defaultMesh.Id,
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.TcpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.TcpRouteRuleMatchArgs
///                     {
///                         Address = "10.0.0.1/32",
///                         Port = "8081",
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TcpRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TcpRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
///                         },
///                     },
///                     OriginalDestination = false,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("backend-service-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("my-backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMesh, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name: pulumi.String("my-tcp-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewTcpRoute(ctx, "default", &networkservices.TcpRouteArgs{
/// 			Name: pulumi.String("my-tcp-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Meshes: pulumi.StringArray{
/// 				defaultMesh.ID(),
/// 			},
/// 			Rules: networkservices.TcpRouteRuleArray{
/// 				&networkservices.TcpRouteRuleArgs{
/// 					Matches: networkservices.TcpRouteRuleMatchArray{
/// 						&networkservices.TcpRouteRuleMatchArgs{
/// 							Address: pulumi.String("10.0.0.1/32"),
/// 							Port:    pulumi.String("8081"),
/// 						},
/// 					},
/// 					Action: &networkservices.TcpRouteRuleActionArgs{
/// 						Destinations: networkservices.TcpRouteRuleActionDestinationArray{
/// 							&networkservices.TcpRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID(),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						OriginalDestination: pulumi.Bool(false),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
/// import com.pulumi.gcp.networkservices.TcpRoute;
/// import com.pulumi.gcp.networkservices.TcpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleActionArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultMesh = new Mesh("defaultMesh", MeshArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .build());
///
///         var defaultTcpRoute = new TcpRoute("defaultTcpRoute", TcpRouteArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .meshes(defaultMesh.id())
///             .rules(TcpRouteRuleArgs.builder()
///                 .matches(TcpRouteRuleMatchArgs.builder()
///                     .address("10.0.0.1/32")
///                     .port("8081")
///                     .build())
///                 .action(TcpRouteRuleActionArgs.builder()
///                     .destinations(TcpRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
///                         .build())
///                     .originalDestination(false)
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
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   defaultMesh:
///     type: gcp:networkservices:Mesh
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///   defaultTcpRoute:
///     type: gcp:networkservices:TcpRoute
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///       meshes:
///         - ${defaultMesh.id}
///       rules:
///         - matches:
///             - address: 10.0.0.1/32
///               port: '8081'
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
///             originalDestination: false
/// ```
///
/// ### Network Services Tcp Route Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "backend-service-health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "my-backend-service",
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const defaultGateway = new gcp.networkservices.Gateway("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     scope: "my-scope",
///     type: "OPEN_MESH",
///     ports: [443],
/// });
/// const defaultTcpRoute = new gcp.networkservices.TcpRoute("default", {
///     name: "my-tcp-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     gateways: [defaultGateway.id],
///     rules: [{
///         matches: [{
///             address: "10.0.0.1/32",
///             port: "8081",
///         }],
///         action: {
///             destinations: [{
///                 serviceName: _default.id,
///                 weight: 1,
///             }],
///             originalDestination: false,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
/// default_gateway = gcp.networkservices.Gateway("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     scope="my-scope",
///     type="OPEN_MESH",
///     ports=[443])
/// default_tcp_route = gcp.networkservices.TcpRoute("default",
///     name="my-tcp-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     gateways=[default_gateway.id],
///     rules=[{
///         "matches": [{
///             "address": "10.0.0.1/32",
///             "port": "8081",
///         }],
///         "action": {
///             "destinations": [{
///                 "service_name": default.id,
///                 "weight": 1,
///             }],
///             "original_destination": False,
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
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "backend-service-health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "my-backend-service",
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var defaultGateway = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-tcp-route",
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
///     var defaultTcpRoute = new Gcp.NetworkServices.TcpRoute("default", new()
///     {
///         Name = "my-tcp-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Gateways = new[]
///         {
///             defaultGateway.Id,
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.TcpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.TcpRouteRuleMatchArgs
///                     {
///                         Address = "10.0.0.1/32",
///                         Port = "8081",
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.TcpRouteRuleActionArgs
///                 {
///                     Destinations = new[]
///                     {
///                         new Gcp.NetworkServices.Inputs.TcpRouteRuleActionDestinationArgs
///                         {
///                             ServiceName = @default.Id,
///                             Weight = 1,
///                         },
///                     },
///                     OriginalDestination = false,
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
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("backend-service-health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("my-backend-service"),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGateway, err := networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name: pulumi.String("my-tcp-route"),
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
/// 		_, err = networkservices.NewTcpRoute(ctx, "default", &networkservices.TcpRouteArgs{
/// 			Name: pulumi.String("my-tcp-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Gateways: pulumi.StringArray{
/// 				defaultGateway.ID(),
/// 			},
/// 			Rules: networkservices.TcpRouteRuleArray{
/// 				&networkservices.TcpRouteRuleArgs{
/// 					Matches: networkservices.TcpRouteRuleMatchArray{
/// 						&networkservices.TcpRouteRuleMatchArgs{
/// 							Address: pulumi.String("10.0.0.1/32"),
/// 							Port:    pulumi.String("8081"),
/// 						},
/// 					},
/// 					Action: &networkservices.TcpRouteRuleActionArgs{
/// 						Destinations: networkservices.TcpRouteRuleActionDestinationArray{
/// 							&networkservices.TcpRouteRuleActionDestinationArgs{
/// 								ServiceName: _default.ID(),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						OriginalDestination: pulumi.Bool(false),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
/// import com.pulumi.gcp.networkservices.TcpRoute;
/// import com.pulumi.gcp.networkservices.TcpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TcpRouteRuleActionArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("backend-service-health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("my-backend-service")
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .scope("my-scope")
///             .type("OPEN_MESH")
///             .ports(443)
///             .build());
///
///         var defaultTcpRoute = new TcpRoute("defaultTcpRoute", TcpRouteArgs.builder()
///             .name("my-tcp-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .gateways(defaultGateway.id())
///             .rules(TcpRouteRuleArgs.builder()
///                 .matches(TcpRouteRuleMatchArgs.builder()
///                     .address("10.0.0.1/32")
///                     .port("8081")
///                     .build())
///                 .action(TcpRouteRuleActionArgs.builder()
///                     .destinations(TcpRouteRuleActionDestinationArgs.builder()
///                         .serviceName(default_.id())
///                         .weight(1)
///                         .build())
///                     .originalDestination(false)
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
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   defaultGateway:
///     type: gcp:networkservices:Gateway
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///       scope: my-scope
///       type: OPEN_MESH
///       ports:
///         - 443
///   defaultTcpRoute:
///     type: gcp:networkservices:TcpRoute
///     name: default
///     properties:
///       name: my-tcp-route
///       labels:
///         foo: bar
///       description: my description
///       gateways:
///         - ${defaultGateway.id}
///       rules:
///         - matches:
///             - address: 10.0.0.1/32
///               port: '8081'
///           action:
///             destinations:
///               - serviceName: ${default.id}
///                 weight: 1
///             originalDestination: false
/// ```
///
///
/// ## Import
///
/// TcpRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/tcpRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TcpRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default projects/{{project}}/locations/global/tcpRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tcpRoute:TcpRoute default {{name}}
/// ```
class TcpRoute extends pulumi.CustomResource {
  /// Time the TcpRoute was created in UTC.
  late final pulumi.Output<String> createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt;
  late final pulumi.Output<List<String>?> gateways;
  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;
  /// The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>?> meshes;
  /// Name of the TcpRoute resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  /// If there are multiple rules then the action taken will be the first rule to match.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// Time the TcpRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TcpRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TcpRoute]. {@macro pulumi_networkservices_tcp_route_tcp_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TcpRoute(
    String name, {
    TcpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tcpRoute:TcpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateways = registerOutput<List<String>?>('gateways');
    labels = registerOutput<Map<String, String>?>('labels');
    meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TcpRoute] resource's state with the given [name] and [id].
  static TcpRoute get(
    String name,
    pulumi.Input<String> id, {
    TcpRouteState? state,
  }) {
    return TcpRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TcpRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/tcpRoute:TcpRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gateways = registerOutput<List<String>?>('gateways');
    labels = registerOutput<Map<String, String>?>('labels');
    meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }
}
