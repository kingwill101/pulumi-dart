import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_security_admin_configuration_args.dart';
import 'network_manager_security_admin_configuration_state.dart';

/// Manages a Network Manager Security Admin Configuration.
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
///     description: "example admin conf",
///     applyOnNetworkIntentPolicyBasedServices: "None",
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
///     network_manager_id=example_network_manager.id,
///     description="example admin conf",
///     apply_on_network_intent_policy_based_services="None")
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
///         Description = "example admin conf",
///         ApplyOnNetworkIntentPolicyBasedServices = "None",
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
/// 		_, err = network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-network-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerSecurityAdminConfiguration(ctx, "example", &network.NetworkManagerSecurityAdminConfigurationArgs{
/// 			Name:                                    pulumi.String("example-admin-conf"),
/// 			NetworkManagerId:                        exampleNetworkManager.ID(),
/// 			Description:                             pulumi.String("example admin conf"),
/// 			ApplyOnNetworkIntentPolicyBasedServices: pulumi.String("None"),
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
///             .description("example admin conf")
///             .applyOnNetworkIntentPolicyBasedServices("None")
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
///       description: example admin conf
///       applyOnNetworkIntentPolicyBasedServices: None
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
/// Network Manager Security Admin Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerSecurityAdminConfiguration:NetworkManagerSecurityAdminConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/securityAdminConfigurations/configuration1
/// ```
class NetworkManagerSecurityAdminConfiguration extends pulumi.CustomResource {
  /// A list of network intent policy based services. Possible values are `All`, `None` and `AllowRulesOnly`. Exactly one value should be set. The `All` option requires `Microsoft.Network/AllowAdminRulesOnNipBasedServices` feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information.
  late final pulumi.Output<String?> applyOnNetworkIntentPolicyBasedServices;
  /// A description of the Security Admin Configuration.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created.
  late final pulumi.Output<String> networkManagerId;

  /// Creates a new [NetworkManagerSecurityAdminConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerSecurityAdminConfiguration]. {@macro pulumi_network_network_manager_security_admin_configuration_network_manager_security_admin_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerSecurityAdminConfiguration(
    String name, {
    NetworkManagerSecurityAdminConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerSecurityAdminConfiguration:NetworkManagerSecurityAdminConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnNetworkIntentPolicyBasedServices = registerOutput<String?>('applyOnNetworkIntentPolicyBasedServices');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
  }

  /// Gets an existing [NetworkManagerSecurityAdminConfiguration] resource's state with the given [name] and [id].
  static NetworkManagerSecurityAdminConfiguration get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerSecurityAdminConfigurationState? state,
  }) {
    return NetworkManagerSecurityAdminConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerSecurityAdminConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerSecurityAdminConfiguration:NetworkManagerSecurityAdminConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnNetworkIntentPolicyBasedServices = registerOutput<String?>('applyOnNetworkIntentPolicyBasedServices');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
  }
}
