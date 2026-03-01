import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_scope_connection_args.dart';
import 'network_manager_scope_connection_state.dart';

/// Manages a Network Manager Scope Connection which may cross tenants.
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
/// const current = azure.core.getClientConfig({});
/// const currentGetSubscription = azure.core.getSubscription({});
/// const alt = azure.core.getSubscription({
///     subscriptionId: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-networkmanager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [currentGetSubscription.then(currentGetSubscription => currentGetSubscription.id)],
///     },
///     scopeAccesses: ["SecurityAdmin"],
/// });
/// const exampleNetworkManagerScopeConnection = new azure.network.NetworkManagerScopeConnection("example", {
///     name: "example-nsc",
///     networkManagerId: exampleNetworkManager.id,
///     tenantId: current.then(current => current.tenantId),
///     targetScopeId: alt.then(alt => alt.id),
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
/// current = azure.core.get_client_config()
/// current_get_subscription = azure.core.get_subscription()
/// alt = azure.core.get_subscription(subscription_id="00000000-0000-0000-0000-000000000000")
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-networkmanager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current_get_subscription.id],
///     },
///     scope_accesses=["SecurityAdmin"])
/// example_network_manager_scope_connection = azure.network.NetworkManagerScopeConnection("example",
///     name="example-nsc",
///     network_manager_id=example_network_manager.id,
///     tenant_id=current.tenant_id,
///     target_scope_id=alt.id,
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var currentGetSubscription = Azure.Core.GetSubscription.Invoke();
///
///     var alt = Azure.Core.GetSubscription.Invoke(new()
///     {
///         SubscriptionId = "00000000-0000-0000-0000-000000000000",
///     });
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
///                 currentGetSubscription.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "SecurityAdmin",
///         },
///     });
///
///     var exampleNetworkManagerScopeConnection = new Azure.Network.NetworkManagerScopeConnection("example", new()
///     {
///         Name = "example-nsc",
///         NetworkManagerId = exampleNetworkManager.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         TargetScopeId = alt.Apply(getSubscriptionResult => getSubscriptionResult.Id),
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetSubscription, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		alt, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{
/// 			SubscriptionId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-networkmanager"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(currentGetSubscription.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerScopeConnection(ctx, "example", &network.NetworkManagerScopeConnectionArgs{
/// 			Name:             pulumi.String("example-nsc"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			TenantId:         pulumi.String(current.TenantId),
/// 			TargetScopeId:    pulumi.String(alt.Id),
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
/// import com.pulumi.azure.network.NetworkManagerScopeConnection;
/// import com.pulumi.azure.network.NetworkManagerScopeConnectionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var currentGetSubscription = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var alt = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .subscriptionId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-networkmanager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(currentGetSubscription.id())
///                 .build())
///             .scopeAccesses("SecurityAdmin")
///             .build());
///
///         var exampleNetworkManagerScopeConnection = new NetworkManagerScopeConnection("exampleNetworkManagerScopeConnection", NetworkManagerScopeConnectionArgs.builder()
///             .name("example-nsc")
///             .networkManagerId(exampleNetworkManager.id())
///             .tenantId(current.tenantId())
///             .targetScopeId(alt.id())
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
///           - ${currentGetSubscription.id}
///       scopeAccesses:
///         - SecurityAdmin
///   exampleNetworkManagerScopeConnection:
///     type: azure:network:NetworkManagerScopeConnection
///     name: example
///     properties:
///       name: example-nsc
///       networkManagerId: ${exampleNetworkManager.id}
///       tenantId: ${current.tenantId}
///       targetScopeId: ${alt.id}
///       description: example
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   currentGetSubscription:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   alt:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments:
///         subscriptionId: 00000000-0000-0000-0000-000000000000
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
/// Network Manager Scope Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerScopeConnection:NetworkManagerScopeConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/scopeConnections/scopeConnection1
/// ```
class NetworkManagerScopeConnection extends pulumi.CustomResource {
  /// The Connection state of the Network Manager Scope Connection.
  late final pulumi.Output<String> connectionState;
  /// A description of the Network Manager Scope Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created.
  late final pulumi.Output<String> networkManagerId;
  /// Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID.
  late final pulumi.Output<String> targetScopeId;
  /// Specifies the Tenant ID of the Resource which the Network Manager is connected to.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [NetworkManagerScopeConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerScopeConnection]. {@macro pulumi_network_network_manager_scope_connection_network_manager_scope_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerScopeConnection(
    String name, {
    NetworkManagerScopeConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerScopeConnection:NetworkManagerScopeConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionState = registerOutput<String>('connectionState');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.targetScopeId = registerOutput<String>('targetScopeId');
    this.tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [NetworkManagerScopeConnection] resource's state with the given [name] and [id].
  static NetworkManagerScopeConnection get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerScopeConnectionState? state,
  }) {
    return NetworkManagerScopeConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerScopeConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerScopeConnection:NetworkManagerScopeConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionState = registerOutput<String>('connectionState');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
    this.targetScopeId = registerOutput<String>('targetScopeId');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
