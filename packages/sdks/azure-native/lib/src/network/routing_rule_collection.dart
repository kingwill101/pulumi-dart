import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_group_item_response.dart';
import 'routing_rule_collection_args.dart';
import 'system_data_response.dart';

/// Defines the routing rule collection.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-09-01-preview, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a routing rule collection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routingRuleCollection = new AzureNative.Network.RoutingRuleCollection("routingRuleCollection", new()
///     {
///         AppliesTo = new[]
///         {
///             new AzureNative.Network.Inputs.NetworkManagerRoutingGroupItemArgs
///             {
///                 NetworkGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///             },
///         },
///         ConfigurationName = "myTestRoutingConfig",
///         Description = "A sample policy",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewRoutingRuleCollection(ctx, "routingRuleCollection", &network.RoutingRuleCollectionArgs{
/// 			AppliesTo: network.NetworkManagerRoutingGroupItemArray{
/// 				&network.NetworkManagerRoutingGroupItemArgs{
/// 					NetworkGroupId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup"),
/// 				},
/// 			},
/// 			ConfigurationName:  pulumi.String("myTestRoutingConfig"),
/// 			Description:        pulumi.String("A sample policy"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.RoutingRuleCollection;
/// import com.pulumi.azurenative.network.RoutingRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkManagerRoutingGroupItemArgs;
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
///         var routingRuleCollection = new RoutingRuleCollection("routingRuleCollection", RoutingRuleCollectionArgs.builder()
///             .appliesTo(NetworkManagerRoutingGroupItemArgs.builder()
///                 .networkGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup")
///                 .build())
///             .configurationName("myTestRoutingConfig")
///             .description("A sample policy")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const routingRuleCollection = new azure_native.network.RoutingRuleCollection("routingRuleCollection", {
///     appliesTo: [{
///         networkGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configurationName: "myTestRoutingConfig",
///     description: "A sample policy",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// routing_rule_collection = azure_native.network.RoutingRuleCollection("routingRuleCollection",
///     applies_to=[{
///         "network_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configuration_name="myTestRoutingConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection")
///
/// ```
///
/// ```yaml
/// resources:
///   routingRuleCollection:
///     type: azure-native:network:RoutingRuleCollection
///     properties:
///       appliesTo:
///         - networkGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup
///       configurationName: myTestRoutingConfig
///       description: A sample policy
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:RoutingRuleCollection myTestRoutingConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/routingConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}
/// ```
class RoutingRuleCollection extends pulumi.CustomResource {
  /// Groups for configuration
  late final pulumi.Output<List<NetworkManagerRoutingGroupItemResponse>> appliesTo;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the routing rule collection.
  late final pulumi.Output<String?> description;
  /// Determines whether BGP route propagation is enabled. Defaults to true.
  late final pulumi.Output<String?> disableBgpRoutePropagation;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RoutingRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingRuleCollection]. {@macro pulumi_network_routing_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingRuleCollection(
    String name, {
    RoutingRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:RoutingRuleCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appliesTo = registerOutput<List<NetworkManagerRoutingGroupItemResponse>>('appliesTo');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.disableBgpRoutePropagation = registerOutput<String?>('disableBgpRoutePropagation');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
