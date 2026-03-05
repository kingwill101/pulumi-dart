import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_subscription_connection_args.dart';
import 'network_manager_subscription_connection_state.dart';

/// Manages a Network Manager Subscription Connection which may cross tenants.
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
///     name: "example-networkmanager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: ["SecurityAdmin"],
/// });
/// const exampleNetworkManagerSubscriptionConnection = new azure.network.NetworkManagerSubscriptionConnection("example", {
///     name: "example-nsnmc",
///     subscriptionId: current.then(current => current.id),
///     networkManagerId: exampleNetworkManager.id,
///     description: "example",
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
///     name="example-networkmanager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=["SecurityAdmin"])
/// example_network_manager_subscription_connection = azure.network.NetworkManagerSubscriptionConnection("example",
///     name="example-nsnmc",
///     subscription_id=current.id,
///     network_manager_id=example_network_manager.id,
///     description="example")
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
///         Name = "example-networkmanager",
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
///             "SecurityAdmin",
///         },
///     });
///
///     var exampleNetworkManagerSubscriptionConnection = new Azure.Network.NetworkManagerSubscriptionConnection("example", new()
///     {
///         Name = "example-nsnmc",
///         SubscriptionId = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         NetworkManagerId = exampleNetworkManager.Id,
///         Description = "example",
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
/// 			Name:              pulumi.String("example-networkmanager"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerSubscriptionConnection(ctx, "example", &network.NetworkManagerSubscriptionConnectionArgs{
/// 			Name:             pulumi.String("example-nsnmc"),
/// 			SubscriptionId:   pulumi.String(current.Id),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Description:      pulumi.String("example"),
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
/// import com.pulumi.azure.network.NetworkManagerSubscriptionConnection;
/// import com.pulumi.azure.network.NetworkManagerSubscriptionConnectionArgs;
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
///             .name("example-networkmanager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses("SecurityAdmin")
///             .build());
///
///         var exampleNetworkManagerSubscriptionConnection = new NetworkManagerSubscriptionConnection("exampleNetworkManagerSubscriptionConnection", NetworkManagerSubscriptionConnectionArgs.builder()
///             .name("example-nsnmc")
///             .subscriptionId(current.id())
///             .networkManagerId(exampleNetworkManager.id())
///             .description("example")
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
///       name: example-networkmanager
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - SecurityAdmin
///   exampleNetworkManagerSubscriptionConnection:
///     type: azure:network:NetworkManagerSubscriptionConnection
///     name: example
///     properties:
///       name: example-nsnmc
///       subscriptionId: ${current.id}
///       networkManagerId: ${exampleNetworkManager.id}
///       description: example
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
/// Network Subscription Network Manager Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerSubscriptionConnection:NetworkManagerSubscriptionConnection example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Network/networkManagerConnections/networkManagerConnection1
/// ```
class NetworkManagerSubscriptionConnection extends pulumi.CustomResource {
  /// The Connection state of the Network Manager Subscription Connection.
  late final pulumi.Output<String> connectionState;
  /// A description of the Network Manager Subscription Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager which the Subscription is connected to.
  late final pulumi.Output<String> networkManagerId;
  /// Specifies the ID of the target Subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [NetworkManagerSubscriptionConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerSubscriptionConnection]. {@macro pulumi_network_network_manager_subscription_connection_network_manager_subscription_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerSubscriptionConnection(
    String name, {
    NetworkManagerSubscriptionConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerSubscriptionConnection:NetworkManagerSubscriptionConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionState = registerOutput<String>('connectionState');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [NetworkManagerSubscriptionConnection] resource's state with the given [name] and [id].
  static NetworkManagerSubscriptionConnection get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerSubscriptionConnectionState? state,
  }) {
    return NetworkManagerSubscriptionConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerSubscriptionConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerSubscriptionConnection:NetworkManagerSubscriptionConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionState = registerOutput<String>('connectionState');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
