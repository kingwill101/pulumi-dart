import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_peering_args.dart';
import 'virtual_network_peering_state.dart';

/// Manages a Databricks Virtual Network Peering
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
/// const remote = new azure.network.VirtualNetwork("remote", {
///     name: "remote-vnet",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.1.0/24"],
///     location: example.location,
/// });
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "example-workspace",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
/// });
/// const exampleVirtualNetworkPeering = new azure.databricks.VirtualNetworkPeering("example", {
///     name: "databricks-vnet-peer",
///     resourceGroupName: example.name,
///     workspaceId: exampleWorkspace.id,
///     remoteAddressSpacePrefixes: remote.addressSpaces,
///     remoteVirtualNetworkId: remote.id,
///     allowVirtualNetworkAccess: true,
/// });
/// const remoteVirtualNetworkPeering = new azure.network.VirtualNetworkPeering("remote", {
///     name: "peer-to-databricks",
///     resourceGroupName: example.name,
///     virtualNetworkName: remote.name,
///     remoteVirtualNetworkId: exampleVirtualNetworkPeering.virtualNetworkId,
///     allowVirtualNetworkAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// remote = azure.network.VirtualNetwork("remote",
///     name="remote-vnet",
///     resource_group_name=example.name,
///     address_spaces=["10.0.1.0/24"],
///     location=example.location)
/// example_workspace = azure.databricks.Workspace("example",
///     name="example-workspace",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard")
/// example_virtual_network_peering = azure.databricks.VirtualNetworkPeering("example",
///     name="databricks-vnet-peer",
///     resource_group_name=example.name,
///     workspace_id=example_workspace.id,
///     remote_address_space_prefixes=remote.address_spaces,
///     remote_virtual_network_id=remote.id,
///     allow_virtual_network_access=True)
/// remote_virtual_network_peering = azure.network.VirtualNetworkPeering("remote",
///     name="peer-to-databricks",
///     resource_group_name=example.name,
///     virtual_network_name=remote.name,
///     remote_virtual_network_id=example_virtual_network_peering.virtual_network_id,
///     allow_virtual_network_access=True)
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
///     var remote = new Azure.Network.VirtualNetwork("remote", new()
///     {
///         Name = "remote-vnet",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///     });
///
///     var exampleVirtualNetworkPeering = new Azure.DataBricks.VirtualNetworkPeering("example", new()
///     {
///         Name = "databricks-vnet-peer",
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleWorkspace.Id,
///         RemoteAddressSpacePrefixes = remote.AddressSpaces,
///         RemoteVirtualNetworkId = remote.Id,
///         AllowVirtualNetworkAccess = true,
///     });
///
///     var remoteVirtualNetworkPeering = new Azure.Network.VirtualNetworkPeering("remote", new()
///     {
///         Name = "peer-to-databricks",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = remote.Name,
///         RemoteVirtualNetworkId = exampleVirtualNetworkPeering.VirtualNetworkId,
///         AllowVirtualNetworkAccess = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
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
/// 		remote, err := network.NewVirtualNetwork(ctx, "remote", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("remote-vnet"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetworkPeering, err := databricks.NewVirtualNetworkPeering(ctx, "example", &databricks.VirtualNetworkPeeringArgs{
/// 			Name:                       pulumi.String("databricks-vnet-peer"),
/// 			ResourceGroupName:          example.Name,
/// 			WorkspaceId:                exampleWorkspace.ID(),
/// 			RemoteAddressSpacePrefixes: remote.AddressSpaces,
/// 			RemoteVirtualNetworkId:     remote.ID(),
/// 			AllowVirtualNetworkAccess:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkPeering(ctx, "remote", &network.VirtualNetworkPeeringArgs{
/// 			Name:                      pulumi.String("peer-to-databricks"),
/// 			ResourceGroupName:         example.Name,
/// 			VirtualNetworkName:        remote.Name,
/// 			RemoteVirtualNetworkId:    exampleVirtualNetworkPeering.VirtualNetworkId,
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var remote = new VirtualNetwork("remote", VirtualNetworkArgs.builder()
///             .name("remote-vnet")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.1.0/24")
///             .location(example.location())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .build());
///
///         var exampleVirtualNetworkPeering = new com.pulumi.azure.databricks.VirtualNetworkPeering("exampleVirtualNetworkPeering", com.pulumi.azure.databricks.VirtualNetworkPeeringArgs.builder()
///             .name("databricks-vnet-peer")
///             .resourceGroupName(example.name())
///             .workspaceId(exampleWorkspace.id())
///             .remoteAddressSpacePrefixes(remote.addressSpaces())
///             .remoteVirtualNetworkId(remote.id())
///             .allowVirtualNetworkAccess(true)
///             .build());
///
///         var remoteVirtualNetworkPeering = new com.pulumi.azure.network.VirtualNetworkPeering("remoteVirtualNetworkPeering", com.pulumi.azure.network.VirtualNetworkPeeringArgs.builder()
///             .name("peer-to-databricks")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(remote.name())
///             .remoteVirtualNetworkId(exampleVirtualNetworkPeering.virtualNetworkId())
///             .allowVirtualNetworkAccess(true)
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
///   remote:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: remote-vnet
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.1.0/24
///       location: ${example.location}
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///   exampleVirtualNetworkPeering:
///     type: azure:databricks:VirtualNetworkPeering
///     name: example
///     properties:
///       name: databricks-vnet-peer
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleWorkspace.id}
///       remoteAddressSpacePrefixes: ${remote.addressSpaces}
///       remoteVirtualNetworkId: ${remote.id}
///       allowVirtualNetworkAccess: true
///   remoteVirtualNetworkPeering:
///     type: azure:network:VirtualNetworkPeering
///     name: remote
///     properties:
///       name: peer-to-databricks
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${remote.name}
///       remoteVirtualNetworkId: ${exampleVirtualNetworkPeering.virtualNetworkId}
///       allowVirtualNetworkAccess: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2024-05-01
///
/// ## Import
///
/// Databrick Virtual Network Peerings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databricks/virtualNetworkPeering:VirtualNetworkPeering example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/workspaces/workspace1/virtualNetworkPeerings/peering1
/// ```
class VirtualNetworkPeering extends pulumi.CustomResource {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  late final pulumi.Output<List<String>> addressSpacePrefixes;
  /// Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`.
  late final pulumi.Output<bool?> allowForwardedTraffic;
  /// Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`.
  late final pulumi.Output<bool?> allowGatewayTransit;
  /// Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`.
  late final pulumi.Output<bool?> allowVirtualNetworkAccess;
  /// Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> remoteAddressSpacePrefixes;
  /// The ID of the remote virtual network. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The remote virtual network should be in the same region as the databricks workspace. Please see the [product documentation](https://learn.microsoft.com/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering) for more information.
  late final pulumi.Output<String> remoteVirtualNetworkId;
  /// The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Can remote gateways be used on the Databricks virtual network? Defaults to `false`.
  ///
  /// &gt; **Note:** If the `use_remote_gateways` is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, the virtual network will use the gateways of the remote virtual network for transit. Only one peering can have this flag set to `true`. `use_remote_gateways` cannot be set if the virtual network already has a gateway.
  late final pulumi.Output<bool?> useRemoteGateways;
  /// The ID of the internal Virtual Network used by the DataBricks Workspace.
  ///
  /// &gt; **Note:** The `virtual_network_id` field is the value you must supply to the `azure.network.VirtualNetworkPeering` resources `remote_virtual_network_id` field to successfully peer the Databricks Virtual Network with the remote virtual network.
  late final pulumi.Output<String> virtualNetworkId;
  /// The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [VirtualNetworkPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkPeering]. {@macro pulumi_databricks_virtual_network_peering_virtual_network_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkPeering(
    String name, {
    VirtualNetworkPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/virtualNetworkPeering:VirtualNetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressSpacePrefixes = registerOutput<List<String>>('addressSpacePrefixes');
    allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    this.name = registerOutput<String>('name');
    remoteAddressSpacePrefixes = registerOutput<List<String>>('remoteAddressSpacePrefixes');
    remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [VirtualNetworkPeering] resource's state with the given [name] and [id].
  static VirtualNetworkPeering get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkPeeringState? state,
  }) {
    return VirtualNetworkPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetworkPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/virtualNetworkPeering:VirtualNetworkPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressSpacePrefixes = registerOutput<List<String>>('addressSpacePrefixes');
    allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    this.name = registerOutput<String>('name');
    remoteAddressSpacePrefixes = registerOutput<List<String>>('remoteAddressSpacePrefixes');
    remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
