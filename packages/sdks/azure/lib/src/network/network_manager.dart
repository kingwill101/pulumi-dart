import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_args.dart';
import 'network_manager_scope.dart';
import 'network_manager_state.dart';

/// Manages a Network Manager.
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
///     tags: {
///         foo: "bar",
///     },
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
///     description="example network manager",
///     tags={
///         "foo": "bar",
///     })
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
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 		_, err = network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
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
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
///             .tags(Map.of("foo", "bar"))
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
///       tags:
///         foo: bar
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
/// Network Manager can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManager:NetworkManager example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1
/// ```
class NetworkManager extends pulumi.CustomResource {
  /// One or more `cross_tenant_scopes` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> crossTenantScopes;

  /// A description of the Network Manager.
  late final pulumi.Output<String?> description;

  /// Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `scope` block as defined below.
  late final pulumi.Output<NetworkManagerScope> scope;

  /// A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  late final pulumi.Output<List<String>?> scopeAccesses;

  /// A mapping of tags which should be assigned to the Network Manager.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManager]. {@macro pulumi_network_network_manager_network_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManager(
    String name, {
    NetworkManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManager:NetworkManager',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    crossTenantScopes = registerOutput<List<Map<String, dynamic>>>(
      'crossTenantScopes',
    );
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<NetworkManagerScope>('scope');
    scopeAccesses = registerOutput<List<String>?>('scopeAccesses');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NetworkManager] resource's state with the given [name] and [id].
  static NetworkManager get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerState? state,
  }) {
    return NetworkManager._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManager._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkManager:NetworkManager',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    crossTenantScopes = registerOutput<List<Map<String, dynamic>>>(
      'crossTenantScopes',
    );
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<NetworkManagerScope>('scope');
    scopeAccesses = registerOutput<List<String>?>('scopeAccesses');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
