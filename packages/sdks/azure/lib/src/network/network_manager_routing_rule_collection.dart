import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_rule_collection_args.dart';
import 'network_manager_routing_rule_collection_state.dart';

/// Manages a Network Manager Routing Rule Collection.
///
/// !&gt; **Note:** Terraform has enabled force deletion. This setting deletes the resource even if it's part of a deployed configuration. If the configuration is deployed, the service will perform a cleanup deployment in the background before the deletion.
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
///     scopeAccesses: ["Routing"],
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-network-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerRoutingConfiguration = new azure.network.NetworkManagerRoutingConfiguration("example", {
///     name: "example-routing-configuration",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerRoutingRuleCollection = new azure.network.NetworkManagerRoutingRuleCollection("example", {
///     name: "example-routing-rule-collection",
///     routingConfigurationId: exampleNetworkManagerRoutingConfiguration.id,
///     networkGroupIds: ["azurerm_network_manager_network_group.example.id"],
///     description: "example routing rule collection",
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
///     scope_accesses=["Routing"])
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-network-group",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_routing_configuration = azure.network.NetworkManagerRoutingConfiguration("example",
///     name="example-routing-configuration",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_routing_rule_collection = azure.network.NetworkManagerRoutingRuleCollection("example",
///     name="example-routing-rule-collection",
///     routing_configuration_id=example_network_manager_routing_configuration.id,
///     network_group_ids=["azurerm_network_manager_network_group.example.id"],
///     description="example routing rule collection")
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
///             "Routing",
///         },
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-network-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerRoutingConfiguration = new Azure.Network.NetworkManagerRoutingConfiguration("example", new()
///     {
///         Name = "example-routing-configuration",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerRoutingRuleCollection = new Azure.Network.NetworkManagerRoutingRuleCollection("example", new()
///     {
///         Name = "example-routing-rule-collection",
///         RoutingConfigurationId = exampleNetworkManagerRoutingConfiguration.Id,
///         NetworkGroupIds = new[]
///         {
///             "azurerm_network_manager_network_group.example.id",
///         },
///         Description = "example routing rule collection",
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
/// 				pulumi.String("Routing"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-network-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerRoutingConfiguration, err := network.NewNetworkManagerRoutingConfiguration(ctx, "example", &network.NetworkManagerRoutingConfigurationArgs{
/// 			Name:             pulumi.String("example-routing-configuration"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerRoutingRuleCollection(ctx, "example", &network.NetworkManagerRoutingRuleCollectionArgs{
/// 			Name:                   pulumi.String("example-routing-rule-collection"),
/// 			RoutingConfigurationId: exampleNetworkManagerRoutingConfiguration.ID(),
/// 			NetworkGroupIds: pulumi.StringArray{
/// 				pulumi.String("azurerm_network_manager_network_group.example.id"),
/// 			},
/// 			Description: pulumi.String("example routing rule collection"),
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
/// import com.pulumi.azure.network.NetworkManagerRoutingConfiguration;
/// import com.pulumi.azure.network.NetworkManagerRoutingConfigurationArgs;
/// import com.pulumi.azure.network.NetworkManagerRoutingRuleCollection;
/// import com.pulumi.azure.network.NetworkManagerRoutingRuleCollectionArgs;
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
///             .scopeAccesses("Routing")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-network-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerRoutingConfiguration = new NetworkManagerRoutingConfiguration("exampleNetworkManagerRoutingConfiguration", NetworkManagerRoutingConfigurationArgs.builder()
///             .name("example-routing-configuration")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerRoutingRuleCollection = new NetworkManagerRoutingRuleCollection("exampleNetworkManagerRoutingRuleCollection", NetworkManagerRoutingRuleCollectionArgs.builder()
///             .name("example-routing-rule-collection")
///             .routingConfigurationId(exampleNetworkManagerRoutingConfiguration.id())
///             .networkGroupIds("azurerm_network_manager_network_group.example.id")
///             .description("example routing rule collection")
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
///         - Routing
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-network-group
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerRoutingConfiguration:
///     type: azure:network:NetworkManagerRoutingConfiguration
///     name: example
///     properties:
///       name: example-routing-configuration
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerRoutingRuleCollection:
///     type: azure:network:NetworkManagerRoutingRuleCollection
///     name: example
///     properties:
///       name: example-routing-rule-collection
///       routingConfigurationId: ${exampleNetworkManagerRoutingConfiguration.id}
///       networkGroupIds:
///         - azurerm_network_manager_network_group.example.id
///       description: example routing rule collection
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
/// Network Manager Routing Rule Collections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerRoutingRuleCollection:NetworkManagerRoutingRuleCollection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/routingConfigurations/conf1/ruleCollections/collection1
/// ```
class NetworkManagerRoutingRuleCollection extends pulumi.CustomResource {
  /// Whether to enable the BGP route propagation. Defaults to `false`.
  late final pulumi.Output<bool?> bgpRoutePropagationEnabled;

  /// The description of the Network Manager Routing Rule Collection.
  late final pulumi.Output<String?> description;

  /// The name which should be used for this Network Manager Routing Rule Collection. Changing this forces a new Network Manager Routing Rule Collection to be created.
  late final pulumi.Output<String> name;

  /// A list of Network Group IDs which this Network Manager Routing Rule Collection applies to.
  late final pulumi.Output<List<String>> networkGroupIds;

  /// The ID of the Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Rule Collection to be created.
  late final pulumi.Output<String> routingConfigurationId;

  /// Creates a new [NetworkManagerRoutingRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerRoutingRuleCollection]. {@macro pulumi_network_network_manager_routing_rule_collection_network_manager_routing_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerRoutingRuleCollection(
    String name, {
    NetworkManagerRoutingRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerRoutingRuleCollection:NetworkManagerRoutingRuleCollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bgpRoutePropagationEnabled = registerOutput<bool?>(
      'bgpRoutePropagationEnabled',
    );
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkGroupIds = registerOutput<List<String>>('networkGroupIds');
    routingConfigurationId = registerOutput<String>('routingConfigurationId');
  }

  /// Gets an existing [NetworkManagerRoutingRuleCollection] resource's state with the given [name] and [id].
  static NetworkManagerRoutingRuleCollection get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerRoutingRuleCollectionState? state,
  }) {
    return NetworkManagerRoutingRuleCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerRoutingRuleCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerRoutingRuleCollection:NetworkManagerRoutingRuleCollection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bgpRoutePropagationEnabled = registerOutput<bool?>(
      'bgpRoutePropagationEnabled',
    );
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkGroupIds = registerOutput<List<String>>('networkGroupIds');
    routingConfigurationId = registerOutput<String>('routingConfigurationId');
  }
}
