import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_ipam_pool_args.dart';
import 'network_manager_ipam_pool_state.dart';

/// Manages a Network Manager IP Address Management (IPAM) Pool.
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
/// });
/// const exampleNetworkManagerIpamPool = new azure.network.NetworkManagerIpamPool("example", {
///     name: "example-ipam-pool",
///     location: "West Europe",
///     networkManagerId: exampleNetworkManager.id,
///     displayName: "example-pool",
///     addressPrefixes: ["10.0.0.0/24"],
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
///     ])
/// example_network_manager_ipam_pool = azure.network.NetworkManagerIpamPool("example",
///     name="example-ipam-pool",
///     location="West Europe",
///     network_manager_id=example_network_manager.id,
///     display_name="example-pool",
///     address_prefixes=["10.0.0.0/24"])
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
///     });
///
///     var exampleNetworkManagerIpamPool = new Azure.Network.NetworkManagerIpamPool("example", new()
///     {
///         Name = "example-ipam-pool",
///         Location = "West Europe",
///         NetworkManagerId = exampleNetworkManager.Id,
///         DisplayName = "example-pool",
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerIpamPool(ctx, "example", &network.NetworkManagerIpamPoolArgs{
/// 			Name:             pulumi.String("example-ipam-pool"),
/// 			Location:         pulumi.String("West Europe"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			DisplayName:      pulumi.String("example-pool"),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerIpamPool;
/// import com.pulumi.azure.network.NetworkManagerIpamPoolArgs;
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
///             .build());
///
///         var exampleNetworkManagerIpamPool = new NetworkManagerIpamPool("exampleNetworkManagerIpamPool", NetworkManagerIpamPoolArgs.builder()
///             .name("example-ipam-pool")
///             .location("West Europe")
///             .networkManagerId(exampleNetworkManager.id())
///             .displayName("example-pool")
///             .addressPrefixes("10.0.0.0/24")
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
///   exampleNetworkManagerIpamPool:
///     type: azure:network:NetworkManagerIpamPool
///     name: example
///     properties:
///       name: example-ipam-pool
///       location: West Europe
///       networkManagerId: ${exampleNetworkManager.id}
///       displayName: example-pool
///       addressPrefixes:
///         - 10.0.0.0/24
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Manager IPAM Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerIpamPool:NetworkManagerIpamPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/ipamPools/pool1
/// ```
class NetworkManagerIpamPool extends pulumi.CustomResource {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes. Changing this forces a new Network Manager IPAM Pool to be created.
  late final pulumi.Output<List<String>> addressPrefixes;
  /// The description of the Network Manager IPAM Pool.
  late final pulumi.Output<String?> description;
  /// The display name for the Network Manager IPAM Pool.
  late final pulumi.Output<String?> displayName;
  /// The Azure Region where the Network Manager IPAM Pool should exist. Changing this forces a new Network Manager IPAM Pool to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Network Manager IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  late final pulumi.Output<String> name;
  /// The ID of the parent Network Manager. Changing this forces a new Network Manager IPAM Pool to be created.
  late final pulumi.Output<String> networkManagerId;
  /// The name of the parent IPAM Pool. Changing this forces a new Network Manager IPAM Pool to be created.
  late final pulumi.Output<String?> parentPoolName;
  /// A mapping of tags which should be assigned to the Network Manager IPAM Pool.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkManagerIpamPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerIpamPool]. {@macro pulumi_network_network_manager_ipam_pool_network_manager_ipam_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerIpamPool(
    String name, {
    NetworkManagerIpamPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerIpamPool:NetworkManagerIpamPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixes = registerOutput<List<String>>('addressPrefixes');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    parentPoolName = registerOutput<String?>('parentPoolName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NetworkManagerIpamPool] resource's state with the given [name] and [id].
  static NetworkManagerIpamPool get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerIpamPoolState? state,
  }) {
    return NetworkManagerIpamPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerIpamPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerIpamPool:NetworkManagerIpamPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixes = registerOutput<List<String>>('addressPrefixes');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    parentPoolName = registerOutput<String?>('parentPoolName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
