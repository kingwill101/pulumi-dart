import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_args.dart';
import 'routing_rule_next_hop_response.dart';
import 'routing_rule_route_destination_response.dart';
import 'system_data_response.dart';

/// Network routing rule.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-09-01-preview, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a default routing rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routingRule = new AzureNative.Network.RoutingRule("routingRule", new()
///     {
///         ConfigurationName = "myTestRoutingConfig",
///         Description = "This is Sample Routing Rule",
///         Destination = new AzureNative.Network.Inputs.RoutingRuleRouteDestinationArgs
///         {
///             DestinationAddress = "10.0.0.0/16",
///             Type = AzureNative.Network.RoutingRuleDestinationType.AddressPrefix,
///         },
///         NetworkManagerName = "testNetworkManager",
///         NextHop = new AzureNative.Network.Inputs.RoutingRuleNextHopArgs
///         {
///             NextHopType = AzureNative.Network.RoutingRuleNextHopType.VirtualNetworkGateway,
///         },
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleRoutingRule",
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
/// 		_, err := network.NewRoutingRule(ctx, "routingRule", &network.RoutingRuleArgs{
/// 			ConfigurationName: pulumi.String("myTestRoutingConfig"),
/// 			Description:       pulumi.String("This is Sample Routing Rule"),
/// 			Destination: &network.RoutingRuleRouteDestinationArgs{
/// 				DestinationAddress: pulumi.String("10.0.0.0/16"),
/// 				Type:               pulumi.String(network.RoutingRuleDestinationTypeAddressPrefix),
/// 			},
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			NextHop: &network.RoutingRuleNextHopArgs{
/// 				NextHopType: pulumi.String(network.RoutingRuleNextHopTypeVirtualNetworkGateway),
/// 			},
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleRoutingRule"),
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
/// import com.pulumi.azurenative.network.RoutingRule;
/// import com.pulumi.azurenative.network.RoutingRuleArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingRuleRouteDestinationArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingRuleNextHopArgs;
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
///         var routingRule = new RoutingRule("routingRule", RoutingRuleArgs.builder()
///             .configurationName("myTestRoutingConfig")
///             .description("This is Sample Routing Rule")
///             .destination(RoutingRuleRouteDestinationArgs.builder()
///                 .destinationAddress("10.0.0.0/16")
///                 .type("AddressPrefix")
///                 .build())
///             .networkManagerName("testNetworkManager")
///             .nextHop(RoutingRuleNextHopArgs.builder()
///                 .nextHopType("VirtualNetworkGateway")
///                 .build())
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleRoutingRule")
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
/// const routingRule = new azure_native.network.RoutingRule("routingRule", {
///     configurationName: "myTestRoutingConfig",
///     description: "This is Sample Routing Rule",
///     destination: {
///         destinationAddress: "10.0.0.0/16",
///         type: azure_native.network.RoutingRuleDestinationType.AddressPrefix,
///     },
///     networkManagerName: "testNetworkManager",
///     nextHop: {
///         nextHopType: azure_native.network.RoutingRuleNextHopType.VirtualNetworkGateway,
///     },
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleRoutingRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// routing_rule = azure_native.network.RoutingRule("routingRule",
///     configuration_name="myTestRoutingConfig",
///     description="This is Sample Routing Rule",
///     destination={
///         "destination_address": "10.0.0.0/16",
///         "type": azure_native.network.RoutingRuleDestinationType.ADDRESS_PREFIX,
///     },
///     network_manager_name="testNetworkManager",
///     next_hop={
///         "next_hop_type": azure_native.network.RoutingRuleNextHopType.VIRTUAL_NETWORK_GATEWAY,
///     },
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleRoutingRule")
///
/// ```
///
/// ```yaml
/// resources:
///   routingRule:
///     type: azure-native:network:RoutingRule
///     properties:
///       configurationName: myTestRoutingConfig
///       description: This is Sample Routing Rule
///       destination:
///         destinationAddress: 10.0.0.0/16
///         type: AddressPrefix
///       networkManagerName: testNetworkManager
///       nextHop:
///         nextHopType: VirtualNetworkGateway
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleRoutingRule
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
/// $ pulumi import azure-native:network:RoutingRule SampleRoutingRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/routingConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}/rules/{ruleName}
/// ```
class RoutingRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description for this rule.
  late final pulumi.Output<String?> description;

  /// Indicates the destination for this particular rule.
  late final pulumi.Output<RoutingRuleRouteDestinationResponse> destination;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Indicates the next hop for this particular rule.
  late final pulumi.Output<RoutingRuleNextHopResponse> nextHop;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RoutingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingRule]. {@macro pulumi_network_routing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingRule(
    String name, {
    RoutingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:RoutingRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destination = registerOutput<RoutingRuleRouteDestinationResponse>(
      'destination',
    );
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    nextHop = registerOutput<RoutingRuleNextHopResponse>('nextHop');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
