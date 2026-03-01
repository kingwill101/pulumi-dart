import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_configuration_args.dart';
import 'network_manager_routing_configuration_state.dart';

/// Manages a Network Manager Routing Configuration.
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
/// const exampleNetworkManagerRoutingConfiguration = new azure.network.NetworkManagerRoutingConfiguration("example", {
///     name: "example-routing-configuration",
///     networkManagerId: exampleNetworkManager.id,
///     description: "example routing configuration",
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
/// example_network_manager_routing_configuration = azure.network.NetworkManagerRoutingConfiguration("example",
///     name="example-routing-configuration",
///     network_manager_id=example_network_manager.id,
///     description="example routing configuration")
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
///     var exampleNetworkManagerRoutingConfiguration = new Azure.Network.NetworkManagerRoutingConfiguration("example", new()
///     {
///         Name = "example-routing-configuration",
///         NetworkManagerId = exampleNetworkManager.Id,
///         Description = "example routing configuration",
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
/// 		_, err = network.NewNetworkManagerRoutingConfiguration(ctx, "example", &network.NetworkManagerRoutingConfigurationArgs{
/// 			Name:             pulumi.String("example-routing-configuration"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Description:      pulumi.String("example routing configuration"),
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
/// import com.pulumi.azure.network.NetworkManagerRoutingConfiguration;
/// import com.pulumi.azure.network.NetworkManagerRoutingConfigurationArgs;
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
///         var exampleNetworkManagerRoutingConfiguration = new NetworkManagerRoutingConfiguration("exampleNetworkManagerRoutingConfiguration", NetworkManagerRoutingConfigurationArgs.builder()
///             .name("example-routing-configuration")
///             .networkManagerId(exampleNetworkManager.id())
///             .description("example routing configuration")
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
///   exampleNetworkManagerRoutingConfiguration:
///     type: azure:network:NetworkManagerRoutingConfiguration
///     name: example
///     properties:
///       name: example-routing-configuration
///       networkManagerId: ${exampleNetworkManager.id}
///       description: example routing configuration
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
/// Network Manager Routing Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerRoutingConfiguration:NetworkManagerRoutingConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/routingConfigurations/conf1
/// ```
class NetworkManagerRoutingConfiguration extends pulumi.CustomResource {
  /// The description of the Network Manager Routing Configuration.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Configuration to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Manager. Changing this forces a new Network Manager Routing Configuration to be created.
  late final pulumi.Output<String> networkManagerId;
  /// The route table usage mode for the Network Manager Routing Configuration. Possible values are `ManagedOnly` and `UseExisting`. Defaults to `ManagedOnly`.
  late final pulumi.Output<String?> routeTableUsageMode;

  /// Creates a new [NetworkManagerRoutingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerRoutingConfiguration]. {@macro pulumi_network_network_manager_routing_configuration_network_manager_routing_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerRoutingConfiguration(
    String name, {
    NetworkManagerRoutingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerRoutingConfiguration:NetworkManagerRoutingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.routeTableUsageMode = registerOutput<String?>('routeTableUsageMode');
  }

  /// Gets an existing [NetworkManagerRoutingConfiguration] resource's state with the given [name] and [id].
  static NetworkManagerRoutingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerRoutingConfigurationState? state,
  }) {
    return NetworkManagerRoutingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerRoutingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerRoutingConfiguration:NetworkManagerRoutingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.routeTableUsageMode = registerOutput<String?>('routeTableUsageMode');
  }
}
