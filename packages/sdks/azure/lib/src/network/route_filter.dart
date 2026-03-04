import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_args.dart';
import 'route_filter_rule.dart';
import 'route_filter_state.dart';

/// Manages a Route Filter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.network.RouteFilter("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "East US",
///     rule: {
///         name: "rule",
///         access: "Allow",
///         ruleType: "Community",
///         communities: ["12076:52004"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.RouteFilter("example",
///     name="example",
///     resource_group_name="example",
///     location="East US",
///     rule={
///         "name": "rule",
///         "access": "Allow",
///         "rule_type": "Community",
///         "communities": ["12076:52004"],
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
///     var example = new Azure.Network.RouteFilter("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "East US",
///         Rule = new Azure.Network.Inputs.RouteFilterRuleArgs
///         {
///             Name = "rule",
///             Access = "Allow",
///             RuleType = "Community",
///             Communities = new[]
///             {
///                 "12076:52004",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewRouteFilter(ctx, "example", &network.RouteFilterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Location:          pulumi.String("East US"),
/// 			Rule: &network.RouteFilterRuleArgs{
/// 				Name:     pulumi.String("rule"),
/// 				Access:   pulumi.String("Allow"),
/// 				RuleType: pulumi.String("Community"),
/// 				Communities: pulumi.StringArray{
/// 					pulumi.String("12076:52004"),
/// 				},
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
/// import com.pulumi.azure.network.RouteFilter;
/// import com.pulumi.azure.network.RouteFilterArgs;
/// import com.pulumi.azure.network.inputs.RouteFilterRuleArgs;
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
///         var example = new RouteFilter("example", RouteFilterArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("East US")
///             .rule(RouteFilterRuleArgs.builder()
///                 .name("rule")
///                 .access("Allow")
///                 .ruleType("Community")
///                 .communities("12076:52004")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:network:RouteFilter
///     properties:
///       name: example
///       resourceGroupName: example
///       location: East US
///       rule:
///         name: rule
///         access: Allow
///         ruleType: Community
///         communities:
///           - 12076:52004
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
/// Route Filters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routeFilter:RouteFilter example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/routeFilters/routeFilter1
/// ```
class RouteFilter extends pulumi.CustomResource {
  /// The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  late final pulumi.Output<String> location;

  /// The Name which should be used for this Route Filter.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `rule` block as defined below.
  late final pulumi.Output<RouteFilterRule> rule;

  /// A mapping of tags which should be assigned to the Route Filter.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RouteFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteFilter]. {@macro pulumi_network_route_filter_route_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteFilter(
    String name, {
    RouteFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/routeFilter:RouteFilter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rule = registerOutput<RouteFilterRule>('rule');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RouteFilter] resource's state with the given [name] and [id].
  static RouteFilter get(
    String name,
    pulumi.Input<String> id, {
    RouteFilterState? state,
  }) {
    return RouteFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/routeFilter:RouteFilter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rule = registerOutput<RouteFilterRule>('rule');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
