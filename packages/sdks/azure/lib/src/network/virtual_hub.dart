import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_args.dart';
import 'virtual_hub_route.dart';
import 'virtual_hub_state.dart';

/// Manages a Virtual Hub within a Virtual WAN.
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-virtualwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-virtualhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.0.0/23",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-virtualwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-virtualhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.0.0/23")
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-virtualwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-virtualhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.0.0/23",
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-virtualwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-virtualhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID().ToIDOutput().ToStringOutput(),
/// 			AddressPrefix:     pulumi.String("10.0.0.0/23"),
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
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-virtualwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_virtualhub" "example" {
///   name                = "example-virtualhub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_wan_id      = azure_network_virtualwan.example.id
///   address_prefix      = "10.0.0.0/23"
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
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
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-virtualwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-virtualhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.0.0/23")
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
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-virtualwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-virtualhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.0.0/23
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
/// Virtual Hub's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualHub:VirtualHub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/hub1
/// ```
class VirtualHub extends pulumi.CustomResource {
  /// The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation).
  late final pulumi.Output<String?> addressPrefix;
  /// Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `false`.
  late final pulumi.Output<bool?> branchToBranchTrafficEnabled;
  /// The ID of the default Route Table in the Virtual Hub.
  late final pulumi.Output<String> defaultRouteTableId;
  /// The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`.
  late final pulumi.Output<String?> hubRoutingPreference;
  /// Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Virtual Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `route` blocks as defined below.
  late final pulumi.Output<List<VirtualHubRoute>?> routes;
  /// The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sku;
  /// A mapping of tags to assign to the Virtual Hub.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Autonomous System Number of the Virtual Hub BGP router.
  late final pulumi.Output<int> virtualRouterAsn;
  /// Minimum instance capacity for the scaling configuration of the Virtual Hub Router. Defaults to `2`.
  late final pulumi.Output<int?> virtualRouterAutoScaleMinCapacity;
  /// The IP addresses of the Virtual Hub BGP router.
  late final pulumi.Output<List<String>> virtualRouterIps;
  /// The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> virtualWanId;

  /// Creates a new [VirtualHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHub]. {@macro pulumi_network_virtual_hub_virtual_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHub(
    String name, {
    VirtualHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHub:VirtualHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    branchToBranchTrafficEnabled = registerOutput<bool?>('branchToBranchTrafficEnabled');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<VirtualHubRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualHubRoute>(guardedValue, (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterAsn = registerOutput<int>('virtualRouterAsn');
    virtualRouterAutoScaleMinCapacity = registerOutput<int?>('virtualRouterAutoScaleMinCapacity');
    virtualRouterIps = registerOutput<List<String>>('virtualRouterIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    virtualWanId = registerOutput<String?>('virtualWanId');
  }

  /// Gets an existing [VirtualHub] resource's state with the given [name] and [id].
  static VirtualHub get(
    String name,
    pulumi.Input<String> id, {
    VirtualHubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHub:VirtualHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    branchToBranchTrafficEnabled = registerOutput<bool?>('branchToBranchTrafficEnabled');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<VirtualHubRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualHubRoute>(guardedValue, (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterAsn = registerOutput<int>('virtualRouterAsn');
    virtualRouterAutoScaleMinCapacity = registerOutput<int?>('virtualRouterAutoScaleMinCapacity');
    virtualRouterIps = registerOutput<List<String>>('virtualRouterIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    virtualWanId = registerOutput<String?>('virtualWanId');
  }

  /// Creates a typed reference to an existing [VirtualHub] resource.
  VirtualHub.reference(String urn)
    : super(
        'azure:network/virtualHub:VirtualHub',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    branchToBranchTrafficEnabled = registerOutput<bool?>('branchToBranchTrafficEnabled');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<VirtualHubRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualHubRoute>(guardedValue, (value) => VirtualHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterAsn = registerOutput<int>('virtualRouterAsn');
    virtualRouterAutoScaleMinCapacity = registerOutput<int?>('virtualRouterAutoScaleMinCapacity');
    virtualRouterIps = registerOutput<List<String>>('virtualRouterIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    virtualWanId = registerOutput<String?>('virtualWanId');
  }
}
