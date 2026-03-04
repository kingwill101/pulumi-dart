import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_ipam_pool_static_cidr_args.dart';
import 'network_manager_ipam_pool_static_cidr_state.dart';

/// Manages a Network Manager IPAM Pool Static CIDR.
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
///     name: "example-nm",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
/// });
/// const exampleNetworkManagerIpamPool = new azure.network.NetworkManagerIpamPool("example", {
///     name: "example-ipampool",
///     networkManagerId: exampleNetworkManager.id,
///     location: example.location,
///     displayName: "ipampool1",
///     addressPrefixes: ["10.0.0.0/24"],
/// });
/// const exampleNetworkManagerIpamPoolStaticCidr = new azure.network.NetworkManagerIpamPoolStaticCidr("example", {
///     name: "example-ipsc",
///     ipamPoolId: exampleNetworkManagerIpamPool.id,
///     addressPrefixes: [
///         "10.0.0.0/26",
///         "10.0.0.128/27",
///     ],
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
///     name="example-nm",
///     resource_group_name=example.name,
///     location=example.location,
///     scope={
///         "subscription_ids": [current.id],
///     })
/// example_network_manager_ipam_pool = azure.network.NetworkManagerIpamPool("example",
///     name="example-ipampool",
///     network_manager_id=example_network_manager.id,
///     location=example.location,
///     display_name="ipampool1",
///     address_prefixes=["10.0.0.0/24"])
/// example_network_manager_ipam_pool_static_cidr = azure.network.NetworkManagerIpamPoolStaticCidr("example",
///     name="example-ipsc",
///     ipam_pool_id=example_network_manager_ipam_pool.id,
///     address_prefixes=[
///         "10.0.0.0/26",
///         "10.0.0.128/27",
///     ])
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
///         Name = "example-nm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///     });
///
///     var exampleNetworkManagerIpamPool = new Azure.Network.NetworkManagerIpamPool("example", new()
///     {
///         Name = "example-ipampool",
///         NetworkManagerId = exampleNetworkManager.Id,
///         Location = example.Location,
///         DisplayName = "ipampool1",
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
///         },
///     });
///
///     var exampleNetworkManagerIpamPoolStaticCidr = new Azure.Network.NetworkManagerIpamPoolStaticCidr("example", new()
///     {
///         Name = "example-ipsc",
///         IpamPoolId = exampleNetworkManagerIpamPool.Id,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/26",
///             "10.0.0.128/27",
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
/// 			Name:              pulumi.String("example-nm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerIpamPool, err := network.NewNetworkManagerIpamPool(ctx, "example", &network.NetworkManagerIpamPoolArgs{
/// 			Name:             pulumi.String("example-ipampool"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Location:         example.Location,
/// 			DisplayName:      pulumi.String("ipampool1"),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerIpamPoolStaticCidr(ctx, "example", &network.NetworkManagerIpamPoolStaticCidrArgs{
/// 			Name:       pulumi.String("example-ipsc"),
/// 			IpamPoolId: exampleNetworkManagerIpamPool.ID(),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/26"),
/// 				pulumi.String("10.0.0.128/27"),
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
/// import com.pulumi.azure.network.NetworkManagerIpamPoolStaticCidr;
/// import com.pulumi.azure.network.NetworkManagerIpamPoolStaticCidrArgs;
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
///             .name("example-nm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .build());
///
///         var exampleNetworkManagerIpamPool = new NetworkManagerIpamPool("exampleNetworkManagerIpamPool", NetworkManagerIpamPoolArgs.builder()
///             .name("example-ipampool")
///             .networkManagerId(exampleNetworkManager.id())
///             .location(example.location())
///             .displayName("ipampool1")
///             .addressPrefixes("10.0.0.0/24")
///             .build());
///
///         var exampleNetworkManagerIpamPoolStaticCidr = new NetworkManagerIpamPoolStaticCidr("exampleNetworkManagerIpamPoolStaticCidr", NetworkManagerIpamPoolStaticCidrArgs.builder()
///             .name("example-ipsc")
///             .ipamPoolId(exampleNetworkManagerIpamPool.id())
///             .addressPrefixes(
///                 "10.0.0.0/26",
///                 "10.0.0.128/27")
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
///       name: example-nm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///   exampleNetworkManagerIpamPool:
///     type: azure:network:NetworkManagerIpamPool
///     name: example
///     properties:
///       name: example-ipampool
///       networkManagerId: ${exampleNetworkManager.id}
///       location: ${example.location}
///       displayName: ipampool1
///       addressPrefixes:
///         - 10.0.0.0/24
///   exampleNetworkManagerIpamPoolStaticCidr:
///     type: azure:network:NetworkManagerIpamPoolStaticCidr
///     name: example
///     properties:
///       name: example-ipsc
///       ipamPoolId: ${exampleNetworkManagerIpamPool.id}
///       addressPrefixes:
///         - 10.0.0.0/26
///         - 10.0.0.128/27
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
/// Network Manager IPAM Pool Static CIDRs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerIpamPoolStaticCidr:NetworkManagerIpamPoolStaticCidr example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/ipamPools/pool1/staticCidrs/cidr1
/// ```
class NetworkManagerIpamPoolStaticCidr extends pulumi.CustomResource {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  ///
  /// &gt; **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  late final pulumi.Output<List<String>?> addressPrefixes;

  /// The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  late final pulumi.Output<String> ipamPoolId;

  /// The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  late final pulumi.Output<String> name;

  /// The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  ///
  /// &gt; **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  late final pulumi.Output<String?> numberOfIpAddressesToAllocate;

  /// Creates a new [NetworkManagerIpamPoolStaticCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerIpamPoolStaticCidr]. {@macro pulumi_network_network_manager_ipam_pool_static_cidr_network_manager_ipam_pool_static_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerIpamPoolStaticCidr(
    String name, {
    NetworkManagerIpamPoolStaticCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerIpamPoolStaticCidr:NetworkManagerIpamPoolStaticCidr',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    this.name = registerOutput<String>('name');
    numberOfIpAddressesToAllocate = registerOutput<String?>(
      'numberOfIpAddressesToAllocate',
    );
  }

  /// Gets an existing [NetworkManagerIpamPoolStaticCidr] resource's state with the given [name] and [id].
  static NetworkManagerIpamPoolStaticCidr get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerIpamPoolStaticCidrState? state,
  }) {
    return NetworkManagerIpamPoolStaticCidr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerIpamPoolStaticCidr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerIpamPoolStaticCidr:NetworkManagerIpamPoolStaticCidr',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    this.name = registerOutput<String>('name');
    numberOfIpAddressesToAllocate = registerOutput<String?>(
      'numberOfIpAddressesToAllocate',
    );
  }
}
