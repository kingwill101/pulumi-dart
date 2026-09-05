import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_connection_args.dart';
import 'virtual_hub_connection_routing.dart';
import 'virtual_hub_connection_state.dart';

/// Manages a Connection for a Virtual Hub.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     addressSpaces: ["172.16.0.0/12"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-hub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleVirtualHubConnection = new azure.network.VirtualHubConnection("example", {
///     name: "example-vhub",
///     virtualHubId: exampleVirtualHub.id,
///     remoteVirtualNetworkId: exampleVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     address_spaces=["172.16.0.0/12"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-hub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_virtual_hub_connection = azure.network.VirtualHubConnection("example",
///     name="example-vhub",
///     virtual_hub_id=example_virtual_hub.id,
///     remote_virtual_network_id=example_virtual_network.id)
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         AddressSpaces = new[]
///         {
///             "172.16.0.0/12",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-hub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.1.0/24",
///     });
///
///     var exampleVirtualHubConnection = new Azure.Network.VirtualHubConnection("example", new()
///     {
///         Name = "example-vhub",
///         VirtualHubId = exampleVirtualHub.Id,
///         RemoteVirtualNetworkId = exampleVirtualNetwork.Id,
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("172.16.0.0/12"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-hub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID().ToIDOutput().ToStringOutput(),
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualHubConnection(ctx, "example", &network.VirtualHubConnectionArgs{
/// 			Name:                   pulumi.String("example-vhub"),
/// 			VirtualHubId:           exampleVirtualHub.ID().ToIDOutput().ToStringOutput(),
/// 			RemoteVirtualNetworkId: exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["172.16.0.0/12"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-vwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_virtualhub" "example" {
///   name                = "example-hub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_wan_id      = azure_network_virtualwan.example.id
///   address_prefix      = "10.0.1.0/24"
/// }
/// resource "azure_network_virtualhubconnection" "example" {
///   name                      = "example-vhub"
///   virtual_hub_id            = azure_network_virtualhub.example.id
///   remote_virtual_network_id = azure_network_virtualnetwork.example.id
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VirtualHubConnection;
/// import com.pulumi.azure.network.VirtualHubConnectionArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("172.16.0.0/12")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-hub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleVirtualHubConnection = new VirtualHubConnection("exampleVirtualHubConnection", VirtualHubConnectionArgs.builder()
///             .name("example-vhub")
///             .virtualHubId(exampleVirtualHub.id())
///             .remoteVirtualNetworkId(exampleVirtualNetwork.id())
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       addressSpaces:
///         - 172.16.0.0/12
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-hub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.1.0/24
///   exampleVirtualHubConnection:
///     type: azure:network:VirtualHubConnection
///     name: example
///     properties:
///       name: example-vhub
///       virtualHubId: ${exampleVirtualHub.id}
///       remoteVirtualNetworkId: ${exampleVirtualNetwork.id}
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
/// Virtual Hub Connection's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualHubConnection:VirtualHubConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/connection1
/// ```
class VirtualHubConnection extends pulumi.CustomResource {
  /// Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  late final pulumi.Output<bool?> internetSecurityEnabled;
  /// The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> remoteVirtualNetworkId;
  /// A `routing` block as defined below.
  late final pulumi.Output<VirtualHubConnectionRouting> routing;
  /// The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [VirtualHubConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubConnection]. {@macro pulumi_network_virtual_hub_connection_virtual_hub_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubConnection(
    String name, {
    VirtualHubConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubConnection:VirtualHubConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    internetSecurityEnabled = registerOutput<bool?>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    routing = registerOutput<VirtualHubConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Gets an existing [VirtualHubConnection] resource's state with the given [name] and [id].
  static VirtualHubConnection get(
    String name,
    pulumi.Input<String> id, {
    VirtualHubConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualHubConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualHubConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubConnection:VirtualHubConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internetSecurityEnabled = registerOutput<bool?>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    routing = registerOutput<VirtualHubConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Creates a typed reference to an existing [VirtualHubConnection] resource.
  VirtualHubConnection.reference(String urn)
    : super(
        'azure:network/virtualHubConnection:VirtualHubConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    internetSecurityEnabled = registerOutput<bool?>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    routing = registerOutput<VirtualHubConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualHubId = registerOutput<String>('virtualHubId');
  }
}
