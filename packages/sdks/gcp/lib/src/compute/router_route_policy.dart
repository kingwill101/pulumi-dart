import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_route_policy_args.dart';
import 'router_route_policy_state.dart';

/// A route policy created in a router
///
///
/// To get more information about RouterRoutePolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Route Policy Export
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnetwork",
///     network: net.id,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnet.region,
///     network: net.id,
/// });
/// const rp_export = new gcp.compute.RouterRoutePolicy("rp-export", {
///     router: router.name,
///     region: router.region,
///     name: "my-rp1",
///     type: "ROUTE_POLICY_TYPE_EXPORT",
///     terms: [{
///         priority: 1,
///         match: {
///             expression: "destination == '10.0.0.0/12'",
///         },
///         actions: [{
///             expression: "accept()",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnetwork",
///     network=net.id,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnet.region,
///     network=net.id)
/// rp_export = gcp.compute.RouterRoutePolicy("rp-export",
///     router=router.name,
///     region=router.region,
///     name="my-rp1",
///     type="ROUTE_POLICY_TYPE_EXPORT",
///     terms=[{
///         "priority": 1,
///         "match": {
///             "expression": "destination == '10.0.0.0/12'",
///         },
///         "actions": [{
///             "expression": "accept()",
///         }],
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
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnetwork",
///         Network = net.Id,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnet.Region,
///         Network = net.Id,
///     });
///
///     var rp_export = new Gcp.Compute.RouterRoutePolicy("rp-export", new()
///     {
///         Router = router.Name,
///         Region = router.Region,
///         Name = "my-rp1",
///         Type = "ROUTE_POLICY_TYPE_EXPORT",
///         Terms = new[]
///         {
///             new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
///             {
///                 Priority = 1,
///                 Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
///                 {
///                     Expression = "destination == '10.0.0.0/12'",
///                 },
///                 Actions = new[]
///                 {
///                     new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
///                     {
///                         Expression = "accept()",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     net.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnet.Region,
/// 			Network: net.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterRoutePolicy(ctx, "rp-export", &compute.RouterRoutePolicyArgs{
/// 			Router: router.Name,
/// 			Region: router.Region,
/// 			Name:   pulumi.String("my-rp1"),
/// 			Type:   pulumi.String("ROUTE_POLICY_TYPE_EXPORT"),
/// 			Terms: compute.RouterRoutePolicyTermArray{
/// 				&compute.RouterRoutePolicyTermArgs{
/// 					Priority: pulumi.Int(1),
/// 					Match: &compute.RouterRoutePolicyTermMatchArgs{
/// 						Expression: pulumi.String("destination == '10.0.0.0/12'"),
/// 					},
/// 					Actions: compute.RouterRoutePolicyTermActionArray{
/// 						&compute.RouterRoutePolicyTermActionArgs{
/// 							Expression: pulumi.String("accept()"),
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
/// resource "gcp_compute_network" "net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnet" {
///   name          = "my-subnetwork"
///   network       = gcp_compute_network.net.id
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-central1"
/// }
/// resource "gcp_compute_router" "router" {
///   name    = "my-router"
///   region  = gcp_compute_subnetwork.subnet.region
///   network = gcp_compute_network.net.id
/// }
/// resource "gcp_compute_routerroutepolicy" "rp-export" {
///   router = gcp_compute_router.router.name
///   region = gcp_compute_router.router.region
///   name   = "my-rp1"
///   type   = "ROUTE_POLICY_TYPE_EXPORT"
///   terms {
///     priority = 1
///     match = {
///       expression = "destination == '10.0.0.0/12'"
///     }
///     actions {
///       expression = "accept()"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermActionArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(net.id())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnet.region())
///             .network(net.id())
///             .build());
///
///         var rp_export = new RouterRoutePolicy("rp-export", RouterRoutePolicyArgs.builder()
///             .router(router.name())
///             .region(router.region())
///             .name("my-rp1")
///             .type("ROUTE_POLICY_TYPE_EXPORT")
///             .terms(RouterRoutePolicyTermArgs.builder()
///                 .priority(1)
///                 .match(RouterRoutePolicyTermMatchArgs.builder()
///                     .expression("destination == '10.0.0.0/12'")
///                     .build())
///                 .actions(RouterRoutePolicyTermActionArgs.builder()
///                     .expression("accept()")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnetwork
///       network: ${net.id}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnet.region}
///       network: ${net.id}
///   rp-export:
///     type: gcp:compute:RouterRoutePolicy
///     properties:
///       router: ${router.name}
///       region: ${router.region}
///       name: my-rp1
///       type: ROUTE_POLICY_TYPE_EXPORT
///       terms:
///         - priority: 1
///           match:
///             expression: destination == '10.0.0.0/12'
///           actions:
///             - expression: accept()
/// ```
///
/// ### Router Route Policy Import
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnetwork",
///     network: net.id,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnet.region,
///     network: net.id,
/// });
/// const rp_import = new gcp.compute.RouterRoutePolicy("rp-import", {
///     name: "my-rp2",
///     router: router.name,
///     region: router.region,
///     type: "ROUTE_POLICY_TYPE_IMPORT",
///     terms: [{
///         priority: 2,
///         match: {
///             expression: "destination == '10.0.0.0/12'",
///         },
///         actions: [{
///             expression: "accept()",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnetwork",
///     network=net.id,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnet.region,
///     network=net.id)
/// rp_import = gcp.compute.RouterRoutePolicy("rp-import",
///     name="my-rp2",
///     router=router.name,
///     region=router.region,
///     type="ROUTE_POLICY_TYPE_IMPORT",
///     terms=[{
///         "priority": 2,
///         "match": {
///             "expression": "destination == '10.0.0.0/12'",
///         },
///         "actions": [{
///             "expression": "accept()",
///         }],
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
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnetwork",
///         Network = net.Id,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnet.Region,
///         Network = net.Id,
///     });
///
///     var rp_import = new Gcp.Compute.RouterRoutePolicy("rp-import", new()
///     {
///         Name = "my-rp2",
///         Router = router.Name,
///         Region = router.Region,
///         Type = "ROUTE_POLICY_TYPE_IMPORT",
///         Terms = new[]
///         {
///             new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
///             {
///                 Priority = 2,
///                 Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
///                 {
///                     Expression = "destination == '10.0.0.0/12'",
///                 },
///                 Actions = new[]
///                 {
///                     new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
///                     {
///                         Expression = "accept()",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     net.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnet.Region,
/// 			Network: net.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterRoutePolicy(ctx, "rp-import", &compute.RouterRoutePolicyArgs{
/// 			Name:   pulumi.String("my-rp2"),
/// 			Router: router.Name,
/// 			Region: router.Region,
/// 			Type:   pulumi.String("ROUTE_POLICY_TYPE_IMPORT"),
/// 			Terms: compute.RouterRoutePolicyTermArray{
/// 				&compute.RouterRoutePolicyTermArgs{
/// 					Priority: pulumi.Int(2),
/// 					Match: &compute.RouterRoutePolicyTermMatchArgs{
/// 						Expression: pulumi.String("destination == '10.0.0.0/12'"),
/// 					},
/// 					Actions: compute.RouterRoutePolicyTermActionArray{
/// 						&compute.RouterRoutePolicyTermActionArgs{
/// 							Expression: pulumi.String("accept()"),
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
/// resource "gcp_compute_network" "net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnet" {
///   name          = "my-subnetwork"
///   network       = gcp_compute_network.net.id
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-central1"
/// }
/// resource "gcp_compute_router" "router" {
///   name    = "my-router"
///   region  = gcp_compute_subnetwork.subnet.region
///   network = gcp_compute_network.net.id
/// }
/// resource "gcp_compute_routerroutepolicy" "rp-import" {
///   name   = "my-rp2"
///   router = gcp_compute_router.router.name
///   region = gcp_compute_router.router.region
///   type   = "ROUTE_POLICY_TYPE_IMPORT"
///   terms {
///     priority = 2
///     match = {
///       expression = "destination == '10.0.0.0/12'"
///     }
///     actions {
///       expression = "accept()"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermActionArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(net.id())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnet.region())
///             .network(net.id())
///             .build());
///
///         var rp_import = new RouterRoutePolicy("rp-import", RouterRoutePolicyArgs.builder()
///             .name("my-rp2")
///             .router(router.name())
///             .region(router.region())
///             .type("ROUTE_POLICY_TYPE_IMPORT")
///             .terms(RouterRoutePolicyTermArgs.builder()
///                 .priority(2)
///                 .match(RouterRoutePolicyTermMatchArgs.builder()
///                     .expression("destination == '10.0.0.0/12'")
///                     .build())
///                 .actions(RouterRoutePolicyTermActionArgs.builder()
///                     .expression("accept()")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnetwork
///       network: ${net.id}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnet.region}
///       network: ${net.id}
///   rp-import:
///     type: gcp:compute:RouterRoutePolicy
///     properties:
///       name: my-rp2
///       router: ${router.name}
///       region: ${router.region}
///       type: ROUTE_POLICY_TYPE_IMPORT
///       terms:
///         - priority: 2
///           match:
///             expression: destination == '10.0.0.0/12'
///           actions:
///             - expression: accept()
/// ```
///
///
/// ## Import
///
/// RouterRoutePolicy can be imported using any of these accepted formats:
///
/// * `{{project}}/{{region}}/{{router}}/routePolicies/{{name}}`
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
/// * `{{region}}/{{router}}/{{name}}`
/// * `{{router}}/{{name}}`
///
///
/// When using the `pulumi import` command, RouterRoutePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/routePolicies/{{name}}
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/{{name}}
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{region}}/{{router}}/{{name}}
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{router}}/{{name}}
/// ```
class RouterRoutePolicy extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> fingerprint;
  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the router and NAT reside.
  late final pulumi.Output<String> region;
  /// The name of the Cloud Router in which this route policy will be configured.
  late final pulumi.Output<String> router;
  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> terms;
  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  late final pulumi.Output<String?> type;

  /// Creates a new [RouterRoutePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterRoutePolicy]. {@macro pulumi_compute_router_route_policy_router_route_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterRoutePolicy(
    String name, {
    RouterRoutePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerRoutePolicy:RouterRoutePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    terms = registerOutput<List<Map<String, dynamic>>>('terms');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [RouterRoutePolicy] resource's state with the given [name] and [id].
  static RouterRoutePolicy get(
    String name,
    pulumi.Input<String> id, {
    RouterRoutePolicyState? state,
  }) {
    return RouterRoutePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterRoutePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerRoutePolicy:RouterRoutePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    terms = registerOutput<List<Map<String, dynamic>>>('terms');
    type = registerOutput<String?>('type');
  }
}
