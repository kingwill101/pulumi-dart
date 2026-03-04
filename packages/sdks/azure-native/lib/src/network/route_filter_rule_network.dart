import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_rule_args.dart';

/// Route Filter Rule Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RouteFilterRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routeFilterRule = new AzureNative.Network.RouteFilterRule("routeFilterRule", new()
///     {
///         Access = AzureNative.Network.Access.Allow,
///         Communities = new[]
///         {
///             "12076:5030",
///             "12076:5040",
///         },
///         ResourceGroupName = "rg1",
///         RouteFilterName = "filterName",
///         RouteFilterRuleType = AzureNative.Network.RouteFilterRuleType.Community,
///         RuleName = "ruleName",
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
/// 		_, err := network.NewRouteFilterRule(ctx, "routeFilterRule", &network.RouteFilterRuleArgs{
/// 			Access: pulumi.String(network.AccessAllow),
/// 			Communities: pulumi.StringArray{
/// 				pulumi.String("12076:5030"),
/// 				pulumi.String("12076:5040"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			RouteFilterName:     pulumi.String("filterName"),
/// 			RouteFilterRuleType: pulumi.String(network.RouteFilterRuleTypeCommunity),
/// 			RuleName:            pulumi.String("ruleName"),
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
/// import com.pulumi.azurenative.network.RouteFilterRule;
/// import com.pulumi.azurenative.network.RouteFilterRuleArgs;
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
///         var routeFilterRule = new RouteFilterRule("routeFilterRule", RouteFilterRuleArgs.builder()
///             .access("Allow")
///             .communities(
///                 "12076:5030",
///                 "12076:5040")
///             .resourceGroupName("rg1")
///             .routeFilterName("filterName")
///             .routeFilterRuleType("Community")
///             .ruleName("ruleName")
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
/// const routeFilterRule = new azure_native.network.RouteFilterRule("routeFilterRule", {
///     access: azure_native.network.Access.Allow,
///     communities: [
///         "12076:5030",
///         "12076:5040",
///     ],
///     resourceGroupName: "rg1",
///     routeFilterName: "filterName",
///     routeFilterRuleType: azure_native.network.RouteFilterRuleType.Community,
///     ruleName: "ruleName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route_filter_rule = azure_native.network.RouteFilterRule("routeFilterRule",
///     access=azure_native.network.Access.ALLOW,
///     communities=[
///         "12076:5030",
///         "12076:5040",
///     ],
///     resource_group_name="rg1",
///     route_filter_name="filterName",
///     route_filter_rule_type=azure_native.network.RouteFilterRuleType.COMMUNITY,
///     rule_name="ruleName")
///
/// ```
///
/// ```yaml
/// resources:
///   routeFilterRule:
///     type: azure-native:network:RouteFilterRule
///     properties:
///       access: Allow
///       communities:
///         - 12076:5030
///         - 12076:5040
///       resourceGroupName: rg1
///       routeFilterName: filterName
///       routeFilterRuleType: Community
///       ruleName: ruleName
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
/// $ pulumi import azure-native:network:RouteFilterRule ruleName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeFilters/{routeFilterName}/routeFilterRules/{ruleName}
/// ```
class RouteFilterRuleNetwork extends pulumi.CustomResource {
  /// The access type of the rule.
  late final pulumi.Output<String> access;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  late final pulumi.Output<List<String>> communities;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The provisioning state of the route filter rule resource.
  late final pulumi.Output<String> provisioningState;

  /// The rule type of the rule.
  late final pulumi.Output<String> routeFilterRuleType;

  /// Creates a new [RouteFilterRuleNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteFilterRuleNetwork]. {@macro pulumi_network_route_filter_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteFilterRuleNetwork(
    String name, {
    RouteFilterRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:RouteFilterRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    communities = registerOutput<List<String>>('communities');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routeFilterRuleType = registerOutput<String>('routeFilterRuleType');
  }
}
