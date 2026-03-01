import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_static_member_args.dart';
import 'network_manager_static_member_state.dart';

/// Manages a Network Manager Static Member.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-group",
///     networkManagerId: exampleNetworkManager.id,
///     description: "example network group",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     resourceGroupName: example.name,
///     addressSpaces: ["192.168.1.0/24"],
///     location: example.location,
/// });
/// const exampleNetworkManagerStaticMember = new azure.network.NetworkManagerStaticMember("example", {
///     name: "example-nmsm",
///     networkGroupId: exampleNetworkManagerNetworkGroup.id,
///     targetVirtualNetworkId: exampleVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-group",
///     network_manager_id=example_network_manager.id,
///     description="example network group")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     resource_group_name=example.name,
///     address_spaces=["192.168.1.0/24"],
///     location=example.location)
/// example_network_manager_static_member = azure.network.NetworkManagerStaticMember("example",
///     name="example-nmsm",
///     network_group_id=example_network_manager_network_group.id,
///     target_virtual_network_id=example_virtual_network.id)
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///         Description = "example network group",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.1.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var exampleNetworkManagerStaticMember = new Azure.Network.NetworkManagerStaticMember("example", new()
///     {
///         Name = "example-nmsm",
///         NetworkGroupId = exampleNetworkManagerNetworkGroup.Id,
///         TargetVirtualNetworkId = exampleVirtualNetwork.Id,
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Description:      pulumi.String("example network group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerStaticMember(ctx, "example", &network.NetworkManagerStaticMemberArgs{
/// 			Name:                   pulumi.String("example-nmsm"),
/// 			NetworkGroupId:         exampleNetworkManagerNetworkGroup.ID(),
/// 			TargetVirtualNetworkId: exampleVirtualNetwork.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.NetworkManagerStaticMember;
/// import com.pulumi.azure.network.NetworkManagerStaticMemberArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .description("example network group")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .resourceGroupName(example.name())
///             .addressSpaces("192.168.1.0/24")
///             .location(example.location())
///             .build());
///
///         var exampleNetworkManagerStaticMember = new NetworkManagerStaticMember("exampleNetworkManagerStaticMember", NetworkManagerStaticMemberArgs.builder()
///             .name("example-nmsm")
///             .networkGroupId(exampleNetworkManagerNetworkGroup.id())
///             .targetVirtualNetworkId(exampleVirtualNetwork.id())
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
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-group
///       networkManagerId: ${exampleNetworkManager.id}
///       description: example network group
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 192.168.1.0/24
///       location: ${example.location}
///   exampleNetworkManagerStaticMember:
///     type: azure:network:NetworkManagerStaticMember
///     name: example
///     properties:
///       name: example-nmsm
///       networkGroupId: ${exampleNetworkManagerNetworkGroup.id}
///       targetVirtualNetworkId: ${exampleVirtualNetwork.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Manager Static Member can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerStaticMember:NetworkManagerStaticMember example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/networkGroups/networkGroup1/staticMembers/staticMember1
/// ```
class NetworkManagerStaticMember extends pulumi.CustomResource {
  /// Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
  late final pulumi.Output<String> networkGroupId;
  /// The region of the Network Manager Static Member.
  late final pulumi.Output<String> region;
  /// Specifies the Resource ID of the Virtual Network or Subnet used as the Static Member. Changing this forces a new Network Manager Static Member to be created.
  ///
  /// > **Note:** Subnet is supported only if the Network Manager has added `Routing` to `scope_accesses` and the Network Group has set `Subnet` as the `member_type` value.
  late final pulumi.Output<String> targetVirtualNetworkId;

  /// Creates a new [NetworkManagerStaticMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerStaticMember]. {@macro pulumi_network_network_manager_static_member_network_manager_static_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerStaticMember(
    String name, {
    NetworkManagerStaticMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerStaticMember:NetworkManagerStaticMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.networkGroupId = registerOutput<String>('networkGroupId');
    this.region = registerOutput<String>('region');
    this.targetVirtualNetworkId = registerOutput<String>('targetVirtualNetworkId');
  }

  /// Gets an existing [NetworkManagerStaticMember] resource's state with the given [name] and [id].
  static NetworkManagerStaticMember get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerStaticMemberState? state,
  }) {
    return NetworkManagerStaticMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerStaticMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerStaticMember:NetworkManagerStaticMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.networkGroupId = registerOutput<String>('networkGroupId');
    this.region = registerOutput<String>('region');
    this.targetVirtualNetworkId = registerOutput<String>('targetVirtualNetworkId');
  }
}
