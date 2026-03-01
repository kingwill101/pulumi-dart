import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'correlation_filter_response.dart';
import 'rule_args.dart';
import 'sql_filter_response.dart';
import 'system_data_response.dart';

/// Description of Rule Resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RulesCreateCorrelationFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule = new AzureNative.ServiceBus.Rule("rule", new()
///     {
///         CorrelationFilter = new AzureNative.ServiceBus.Inputs.CorrelationFilterArgs
///         {
///             Properties =
///             {
///                 { "topicHint", "Crop" },
///             },
///         },
///         FilterType = AzureNative.ServiceBus.FilterType.CorrelationFilter,
///         NamespaceName = "sdk-Namespace-1319",
///         ResourceGroupName = "resourceGroupName",
///         RuleName = "sdk-Rules-6571",
///         SubscriptionName = "sdk-Subscriptions-8691",
///         TopicName = "sdk-Topics-2081",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewRule(ctx, "rule", &servicebus.RuleArgs{
/// 			CorrelationFilter: &servicebus.CorrelationFilterArgs{
/// 				Properties: pulumi.StringMap{
/// 					"topicHint": pulumi.String("Crop"),
/// 				},
/// 			},
/// 			FilterType:        servicebus.FilterTypeCorrelationFilter,
/// 			NamespaceName:     pulumi.String("sdk-Namespace-1319"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			RuleName:          pulumi.String("sdk-Rules-6571"),
/// 			SubscriptionName:  pulumi.String("sdk-Subscriptions-8691"),
/// 			TopicName:         pulumi.String("sdk-Topics-2081"),
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
/// import com.pulumi.azurenative.servicebus.Rule;
/// import com.pulumi.azurenative.servicebus.RuleArgs;
/// import com.pulumi.azurenative.servicebus.inputs.CorrelationFilterArgs;
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
///         var rule = new Rule("rule", RuleArgs.builder()
///             .correlationFilter(CorrelationFilterArgs.builder()
///                 .properties(Map.of("topicHint", "Crop"))
///                 .build())
///             .filterType("CorrelationFilter")
///             .namespaceName("sdk-Namespace-1319")
///             .resourceGroupName("resourceGroupName")
///             .ruleName("sdk-Rules-6571")
///             .subscriptionName("sdk-Subscriptions-8691")
///             .topicName("sdk-Topics-2081")
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
/// const rule = new azure_native.servicebus.Rule("rule", {
///     correlationFilter: {
///         properties: {
///             topicHint: "Crop",
///         },
///     },
///     filterType: azure_native.servicebus.FilterType.CorrelationFilter,
///     namespaceName: "sdk-Namespace-1319",
///     resourceGroupName: "resourceGroupName",
///     ruleName: "sdk-Rules-6571",
///     subscriptionName: "sdk-Subscriptions-8691",
///     topicName: "sdk-Topics-2081",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rule = azure_native.servicebus.Rule("rule",
///     correlation_filter={
///         "properties": {
///             "topicHint": "Crop",
///         },
///     },
///     filter_type=azure_native.servicebus.FilterType.CORRELATION_FILTER,
///     namespace_name="sdk-Namespace-1319",
///     resource_group_name="resourceGroupName",
///     rule_name="sdk-Rules-6571",
///     subscription_name="sdk-Subscriptions-8691",
///     topic_name="sdk-Topics-2081")
///
/// ```
///
/// ```yaml
/// resources:
///   rule:
///     type: azure-native:servicebus:Rule
///     properties:
///       correlationFilter:
///         properties:
///           topicHint: Crop
///       filterType: CorrelationFilter
///       namespaceName: sdk-Namespace-1319
///       resourceGroupName: resourceGroupName
///       ruleName: sdk-Rules-6571
///       subscriptionName: sdk-Subscriptions-8691
///       topicName: sdk-Topics-2081
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RulesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule = new AzureNative.ServiceBus.Rule("rule", new()
///     {
///         NamespaceName = "sdk-Namespace-1319",
///         ResourceGroupName = "resourceGroupName",
///         RuleName = "sdk-Rules-6571",
///         SubscriptionName = "sdk-Subscriptions-8691",
///         TopicName = "sdk-Topics-2081",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewRule(ctx, "rule", &servicebus.RuleArgs{
/// 			NamespaceName:     pulumi.String("sdk-Namespace-1319"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			RuleName:          pulumi.String("sdk-Rules-6571"),
/// 			SubscriptionName:  pulumi.String("sdk-Subscriptions-8691"),
/// 			TopicName:         pulumi.String("sdk-Topics-2081"),
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
/// import com.pulumi.azurenative.servicebus.Rule;
/// import com.pulumi.azurenative.servicebus.RuleArgs;
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
///         var rule = new Rule("rule", RuleArgs.builder()
///             .namespaceName("sdk-Namespace-1319")
///             .resourceGroupName("resourceGroupName")
///             .ruleName("sdk-Rules-6571")
///             .subscriptionName("sdk-Subscriptions-8691")
///             .topicName("sdk-Topics-2081")
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
/// const rule = new azure_native.servicebus.Rule("rule", {
///     namespaceName: "sdk-Namespace-1319",
///     resourceGroupName: "resourceGroupName",
///     ruleName: "sdk-Rules-6571",
///     subscriptionName: "sdk-Subscriptions-8691",
///     topicName: "sdk-Topics-2081",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rule = azure_native.servicebus.Rule("rule",
///     namespace_name="sdk-Namespace-1319",
///     resource_group_name="resourceGroupName",
///     rule_name="sdk-Rules-6571",
///     subscription_name="sdk-Subscriptions-8691",
///     topic_name="sdk-Topics-2081")
///
/// ```
///
/// ```yaml
/// resources:
///   rule:
///     type: azure-native:servicebus:Rule
///     properties:
///       namespaceName: sdk-Namespace-1319
///       resourceGroupName: resourceGroupName
///       ruleName: sdk-Rules-6571
///       subscriptionName: sdk-Subscriptions-8691
///       topicName: sdk-Topics-2081
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RulesCreateSqlFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule = new AzureNative.ServiceBus.Rule("rule", new()
///     {
///         FilterType = AzureNative.ServiceBus.FilterType.SqlFilter,
///         NamespaceName = "sdk-Namespace-1319",
///         ResourceGroupName = "resourceGroupName",
///         RuleName = "sdk-Rules-6571",
///         SqlFilter = new AzureNative.ServiceBus.Inputs.SqlFilterArgs
///         {
///             SqlExpression = "myproperty=test",
///         },
///         SubscriptionName = "sdk-Subscriptions-8691",
///         TopicName = "sdk-Topics-2081",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewRule(ctx, "rule", &servicebus.RuleArgs{
/// 			FilterType:        servicebus.FilterTypeSqlFilter,
/// 			NamespaceName:     pulumi.String("sdk-Namespace-1319"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			RuleName:          pulumi.String("sdk-Rules-6571"),
/// 			SqlFilter: &servicebus.SqlFilterArgs{
/// 				SqlExpression: pulumi.String("myproperty=test"),
/// 			},
/// 			SubscriptionName: pulumi.String("sdk-Subscriptions-8691"),
/// 			TopicName:        pulumi.String("sdk-Topics-2081"),
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
/// import com.pulumi.azurenative.servicebus.Rule;
/// import com.pulumi.azurenative.servicebus.RuleArgs;
/// import com.pulumi.azurenative.servicebus.inputs.SqlFilterArgs;
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
///         var rule = new Rule("rule", RuleArgs.builder()
///             .filterType("SqlFilter")
///             .namespaceName("sdk-Namespace-1319")
///             .resourceGroupName("resourceGroupName")
///             .ruleName("sdk-Rules-6571")
///             .sqlFilter(SqlFilterArgs.builder()
///                 .sqlExpression("myproperty=test")
///                 .build())
///             .subscriptionName("sdk-Subscriptions-8691")
///             .topicName("sdk-Topics-2081")
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
/// const rule = new azure_native.servicebus.Rule("rule", {
///     filterType: azure_native.servicebus.FilterType.SqlFilter,
///     namespaceName: "sdk-Namespace-1319",
///     resourceGroupName: "resourceGroupName",
///     ruleName: "sdk-Rules-6571",
///     sqlFilter: {
///         sqlExpression: "myproperty=test",
///     },
///     subscriptionName: "sdk-Subscriptions-8691",
///     topicName: "sdk-Topics-2081",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rule = azure_native.servicebus.Rule("rule",
///     filter_type=azure_native.servicebus.FilterType.SQL_FILTER,
///     namespace_name="sdk-Namespace-1319",
///     resource_group_name="resourceGroupName",
///     rule_name="sdk-Rules-6571",
///     sql_filter={
///         "sql_expression": "myproperty=test",
///     },
///     subscription_name="sdk-Subscriptions-8691",
///     topic_name="sdk-Topics-2081")
///
/// ```
///
/// ```yaml
/// resources:
///   rule:
///     type: azure-native:servicebus:Rule
///     properties:
///       filterType: SqlFilter
///       namespaceName: sdk-Namespace-1319
///       resourceGroupName: resourceGroupName
///       ruleName: sdk-Rules-6571
///       sqlFilter:
///         sqlExpression: myproperty=test
///       subscriptionName: sdk-Subscriptions-8691
///       topicName: sdk-Topics-2081
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
/// $ pulumi import azure-native:servicebus:Rule sdk-Rules-6571 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules/{ruleName}
/// ```
class Rule extends pulumi.CustomResource {
  /// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  late final pulumi.Output<ActionResponse?> action;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties of correlationFilter
  late final pulumi.Output<CorrelationFilterResponse?> correlationFilter;
  /// Filter type that is evaluated against a BrokeredMessage.
  late final pulumi.Output<String?> filterType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of sqlFilter
  late final pulumi.Output<SqlFilterResponse?> sqlFilter;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_servicebus_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<ActionResponse?>('action');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.correlationFilter = registerOutput<CorrelationFilterResponse?>('correlationFilter');
    this.filterType = registerOutput<String?>('filterType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.sqlFilter = registerOutput<SqlFilterResponse?>('sqlFilter');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
