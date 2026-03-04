import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_admin_rule_collection_args.dart';
import 'network_manager_admin_rule_collection_state.dart';

/// Manages a Network Manager Admin Rule Collection.
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
///     name: "example-network-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerSecurityAdminConfiguration = new azure.network.NetworkManagerSecurityAdminConfiguration("example", {
///     name: "example-admin-conf",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerAdminRuleCollection = new azure.network.NetworkManagerAdminRuleCollection("example", {
///     name: "example-admin-rule-collection",
///     securityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.id,
///     networkGroupIds: [exampleNetworkManagerNetworkGroup.id],
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
///     name="example-network-group",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_security_admin_configuration = azure.network.NetworkManagerSecurityAdminConfiguration("example",
///     name="example-admin-conf",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_admin_rule_collection = azure.network.NetworkManagerAdminRuleCollection("example",
///     name="example-admin-rule-collection",
///     security_admin_configuration_id=example_network_manager_security_admin_configuration.id,
///     network_group_ids=[example_network_manager_network_group.id])
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
///         Name = "example-network-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerSecurityAdminConfiguration = new Azure.Network.NetworkManagerSecurityAdminConfiguration("example", new()
///     {
///         Name = "example-admin-conf",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerAdminRuleCollection = new Azure.Network.NetworkManagerAdminRuleCollection("example", new()
///     {
///         Name = "example-admin-rule-collection",
///         SecurityAdminConfigurationId = exampleNetworkManagerSecurityAdminConfiguration.Id,
///         NetworkGroupIds = new[]
///         {
///             exampleNetworkManagerNetworkGroup.Id,
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
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-network-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerSecurityAdminConfiguration, err := network.NewNetworkManagerSecurityAdminConfiguration(ctx, "example", &network.NetworkManagerSecurityAdminConfigurationArgs{
/// 			Name:             pulumi.String("example-admin-conf"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerAdminRuleCollection(ctx, "example", &network.NetworkManagerAdminRuleCollectionArgs{
/// 			Name:                         pulumi.String("example-admin-rule-collection"),
/// 			SecurityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.ID(),
/// 			NetworkGroupIds: pulumi.StringArray{
/// 				exampleNetworkManagerNetworkGroup.ID(),
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
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfiguration;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfigurationArgs;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollection;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollectionArgs;
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
///             .name("example-network-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerSecurityAdminConfiguration = new NetworkManagerSecurityAdminConfiguration("exampleNetworkManagerSecurityAdminConfiguration", NetworkManagerSecurityAdminConfigurationArgs.builder()
///             .name("example-admin-conf")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerAdminRuleCollection = new NetworkManagerAdminRuleCollection("exampleNetworkManagerAdminRuleCollection", NetworkManagerAdminRuleCollectionArgs.builder()
///             .name("example-admin-rule-collection")
///             .securityAdminConfigurationId(exampleNetworkManagerSecurityAdminConfiguration.id())
///             .networkGroupIds(exampleNetworkManagerNetworkGroup.id())
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
///       name: example-network-group
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerSecurityAdminConfiguration:
///     type: azure:network:NetworkManagerSecurityAdminConfiguration
///     name: example
///     properties:
///       name: example-admin-conf
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerAdminRuleCollection:
///     type: azure:network:NetworkManagerAdminRuleCollection
///     name: example
///     properties:
///       name: example-admin-rule-collection
///       securityAdminConfigurationId: ${exampleNetworkManagerSecurityAdminConfiguration.id}
///       networkGroupIds:
///         - ${exampleNetworkManagerNetworkGroup.id}
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
/// Network Manager Admin Rule Collection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerAdminRuleCollection:NetworkManagerAdminRuleCollection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/securityAdminConfigurations/configuration1/ruleCollections/ruleCollection1
/// ```
class NetworkManagerAdminRuleCollection extends pulumi.CustomResource {
  /// A description of the Network Manager Admin Rule Collection.
  late final pulumi.Output<String?> description;

  /// Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created.
  late final pulumi.Output<String> name;

  /// A list of Network Group ID which this Network Manager Admin Rule Collection applies to.
  late final pulumi.Output<List<String>> networkGroupIds;

  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created.
  late final pulumi.Output<String> securityAdminConfigurationId;

  /// Creates a new [NetworkManagerAdminRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerAdminRuleCollection]. {@macro pulumi_network_network_manager_admin_rule_collection_network_manager_admin_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerAdminRuleCollection(
    String name, {
    NetworkManagerAdminRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerAdminRuleCollection:NetworkManagerAdminRuleCollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkGroupIds = registerOutput<List<String>>('networkGroupIds');
    securityAdminConfigurationId = registerOutput<String>(
      'securityAdminConfigurationId',
    );
  }

  /// Gets an existing [NetworkManagerAdminRuleCollection] resource's state with the given [name] and [id].
  static NetworkManagerAdminRuleCollection get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerAdminRuleCollectionState? state,
  }) {
    return NetworkManagerAdminRuleCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerAdminRuleCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManagerAdminRuleCollection:NetworkManagerAdminRuleCollection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkGroupIds = registerOutput<List<String>>('networkGroupIds');
    securityAdminConfigurationId = registerOutput<String>(
      'securityAdminConfigurationId',
    );
  }
}
