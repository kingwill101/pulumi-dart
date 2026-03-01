import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_verifier_workspace_args.dart';
import 'network_manager_verifier_workspace_state.dart';

/// Manages a Network Manager Verifier Workspace.
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
///     scopeAccesses: ["Connectivity"],
/// });
/// const exampleNetworkManagerVerifierWorkspace = new azure.network.NetworkManagerVerifierWorkspace("example", {
///     name: "example",
///     networkManagerId: exampleNetworkManager.id,
///     location: example.location,
///     description: "This is an example verifier workspace",
///     tags: {
///         foo: "bar",
///         env: "example",
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
///     name="example-nm",
///     resource_group_name=example.name,
///     location=example.location,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=["Connectivity"])
/// example_network_manager_verifier_workspace = azure.network.NetworkManagerVerifierWorkspace("example",
///     name="example",
///     network_manager_id=example_network_manager.id,
///     location=example.location,
///     description="This is an example verifier workspace",
///     tags={
///         "foo": "bar",
///         "env": "example",
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
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///         },
///     });
///
///     var exampleNetworkManagerVerifierWorkspace = new Azure.Network.NetworkManagerVerifierWorkspace("example", new()
///     {
///         Name = "example",
///         NetworkManagerId = exampleNetworkManager.Id,
///         Location = example.Location,
///         Description = "This is an example verifier workspace",
///         Tags =
///         {
///             { "foo", "bar" },
///             { "env", "example" },
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
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerVerifierWorkspace(ctx, "example", &network.NetworkManagerVerifierWorkspaceArgs{
/// 			Name:             pulumi.String("example"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Location:         example.Location,
/// 			Description:      pulumi.String("This is an example verifier workspace"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"env": pulumi.String("example"),
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
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspace;
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspaceArgs;
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
///             .scopeAccesses("Connectivity")
///             .build());
///
///         var exampleNetworkManagerVerifierWorkspace = new NetworkManagerVerifierWorkspace("exampleNetworkManagerVerifierWorkspace", NetworkManagerVerifierWorkspaceArgs.builder()
///             .name("example")
///             .networkManagerId(exampleNetworkManager.id())
///             .location(example.location())
///             .description("This is an example verifier workspace")
///             .tags(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("env", "example")
///             ))
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
///       scopeAccesses:
///         - Connectivity
///   exampleNetworkManagerVerifierWorkspace:
///     type: azure:network:NetworkManagerVerifierWorkspace
///     name: example
///     properties:
///       name: example
///       networkManagerId: ${exampleNetworkManager.id}
///       location: ${example.location}
///       description: This is an example verifier workspace
///       tags:
///         foo: bar
///         env: example
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
/// Network Manager Verifier Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerVerifierWorkspace:NetworkManagerVerifierWorkspace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/verifierWorkspaces/workspace1
/// ```
class NetworkManagerVerifierWorkspace extends pulumi.CustomResource {
  /// The Description of the Network Manager Verifier Workspace.
  late final pulumi.Output<String?> description;
  /// The Azure Region where the Network Manager Verifier Workspace should exist. Changing this forces a new Network Manager Verifier Workspace to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Manager. Changing this forces a new Network Manager Verifier Workspace to be created.
  late final pulumi.Output<String> networkManagerId;
  /// A mapping of tags which should be assigned to the Network Manager Verifier Workspace.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkManagerVerifierWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerVerifierWorkspace]. {@macro pulumi_network_network_manager_verifier_workspace_network_manager_verifier_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerVerifierWorkspace(
    String name, {
    NetworkManagerVerifierWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerVerifierWorkspace:NetworkManagerVerifierWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NetworkManagerVerifierWorkspace] resource's state with the given [name] and [id].
  static NetworkManagerVerifierWorkspace get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerVerifierWorkspaceState? state,
  }) {
    return NetworkManagerVerifierWorkspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerVerifierWorkspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerVerifierWorkspace:NetworkManagerVerifierWorkspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
