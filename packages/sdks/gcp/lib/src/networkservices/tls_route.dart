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
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
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
/// 								ServiceName: _default.ID(),
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
/// import com.pulumi.gcp.networkservices.TlsRoute;
/// import com.pulumi.gcp.networkservices.TlsRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleActionArgs;
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
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: backend-service-health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
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
/// ### Network Services Tls Route Mesh Basic
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
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
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
/// 				defaultMesh.ID(),
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
/// 								ServiceName: _default.ID(),
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
/// import com.pulumi.gcp.networkservices.TlsRoute;
/// import com.pulumi.gcp.networkservices.TlsRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleActionArgs;
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
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="backend-service-health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="my-backend-service",
///     health_checks=default_http_health_check.id)
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
/// 				defaultGateway.ID(),
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
/// 								ServiceName: _default.ID(),
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
/// import com.pulumi.gcp.networkservices.TlsRoute;
/// import com.pulumi.gcp.networkservices.TlsRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.TlsRouteRuleActionArgs;
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
///
/// ## Import
///
/// TlsRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/tlsRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TlsRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default projects/{{project}}/locations/global/tlsRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/tlsRoute:TlsRoute default {{name}}
/// ```
class TlsRoute extends pulumi.CustomResource {
  /// Time the TlsRoute was created in UTC.
  late final pulumi.Output<String> createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  late final pulumi.Output<List<String>?> gateways;
  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<TlsRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TlsRoute] resource's state with the given [name] and [id].
  static TlsRoute get(
    String name,
    pulumi.Input<String> id, {
    TlsRouteState? state,
  }) {
    return TlsRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules = registerOutput<List<TlsRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
