import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';
import 'route_table_state.dart';

/// Manages a Route Table
///
/// &gt; **NOTE on Route Tables and Routes:** There is both a standalone `route` resource, and allows for Routes to be defined in-line within the `routeTable` resource.
/// At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleRouteTable = new azure.network.RouteTable("example", {
///     name: "example-route-table",
///     location: example.location,
///     resourceGroupName: example.name,
///     routes: [{
///         name: "route1",
///         addressPrefix: "10.1.0.0/16",
///         nextHopType: "VnetLocal",
///     }],
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_route_table = azure.network.RouteTable("example",
///     name="example-route-table",
///     location=example.location,
///     resource_group_name=example.name,
///     routes=[{
///         "name": "route1",
///         "address_prefix": "10.1.0.0/16",
///         "next_hop_type": "VnetLocal",
///     }],
///     tags={
///         "environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleRouteTable = new Azure.Network.RouteTable("example", new()
///     {
///         Name = "example-route-table",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Routes = new[]
///         {
///             new Azure.Network.Inputs.RouteTableRouteArgs
///             {
///                 Name = "route1",
///                 AddressPrefix = "10.1.0.0/16",
///                 NextHopType = "VnetLocal",
///             },
///         },
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewRouteTable(ctx, "example", &network.RouteTableArgs{
/// 			Name:              pulumi.String("example-route-table"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Routes: network.RouteTableRouteArray{
/// 				&network.RouteTableRouteArgs{
/// 					Name:          pulumi.String("route1"),
/// 					AddressPrefix: pulumi.String("10.1.0.0/16"),
/// 					NextHopType:   pulumi.String("VnetLocal"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_routetable" "example" {
///   name                = "example-route-table"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   routes {
///     name           = "route1"
///     address_prefix = "10.1.0.0/16"
///     next_hop_type  = "VnetLocal"
///   }
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.RouteTable;
/// import com.pulumi.azure.network.RouteTableArgs;
/// import com.pulumi.azure.network.inputs.RouteTableRouteArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
///             .name("example-route-table")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .routes(RouteTableRouteArgs.builder()
///                 .name("route1")
///                 .addressPrefix("10.1.0.0/16")
///                 .nextHopType("VnetLocal")
///                 .build())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleRouteTable:
///     type: azure:network:RouteTable
///     name: example
///     properties:
///       name: example-route-table
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       routes:
///         - name: route1
///           addressPrefix: 10.1.0.0/16
///           nextHopType: VnetLocal
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Route Tables can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routeTable:RouteTable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/routeTables/mytable1
/// ```
class RouteTable extends pulumi.CustomResource {
  /// Boolean flag which controls propagation of routes learned by BGP on that route table. Defaults to `true`.
  late final pulumi.Output<bool?> bgpRoutePropagationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the route.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the route table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A list of objects representing routes. Each object accepts the arguments documented below.
  ///
  /// &gt; **NOTE** Since `route` can be configured both inline and via the separate `azure.network.Route` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<Map<String, dynamic>>> routes;
  /// The collection of Subnets associated with this route table.
  late final pulumi.Output<List<String>> subnets;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTable]. {@macro pulumi_network_route_table_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTable(
    String name, {
    RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bgpRoutePropagationEnabled = registerOutput<bool?>('bgpRoutePropagationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RouteTable] resource's state with the given [name] and [id].
  static RouteTable get(
    String name,
    pulumi.Input<String> id, {
    RouteTableState? state,
  }) {
    return RouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bgpRoutePropagationEnabled = registerOutput<bool?>('bgpRoutePropagationEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    subnets = registerOutput<List<String>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
