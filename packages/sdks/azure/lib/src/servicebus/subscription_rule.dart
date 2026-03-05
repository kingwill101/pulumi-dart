import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_rule_args.dart';
import 'subscription_rule_correlation_filter.dart';
import 'subscription_rule_state.dart';

/// Manages a ServiceBus Subscription Rule.
///
/// ## Example Usage
///
/// ### SQL Filter)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-servicebus-subscription-rule-sql",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "tfex_servicebus_topic",
///     namespaceId: exampleNamespace.id,
///     enablePartitioning: true,
/// });
/// const exampleSubscription = new azure.servicebus.Subscription("example", {
///     name: "tfex_servicebus_subscription",
///     topicId: exampleTopic.id,
///     maxDeliveryCount: 1,
/// });
/// const exampleSubscriptionRule = new azure.servicebus.SubscriptionRule("example", {
///     name: "tfex_servicebus_rule",
///     subscriptionId: exampleSubscription.id,
///     filterType: "SqlFilter",
///     sqlFilter: "colour = 'red'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-servicebus-subscription-rule-sql",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_topic = azure.servicebus.Topic("example",
///     name="tfex_servicebus_topic",
///     namespace_id=example_namespace.id,
///     enable_partitioning=True)
/// example_subscription = azure.servicebus.Subscription("example",
///     name="tfex_servicebus_subscription",
///     topic_id=example_topic.id,
///     max_delivery_count=1)
/// example_subscription_rule = azure.servicebus.SubscriptionRule("example",
///     name="tfex_servicebus_rule",
///     subscription_id=example_subscription.id,
///     filter_type="SqlFilter",
///     sql_filter="colour = 'red'")
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
///         Name = "tfex-servicebus-subscription-rule-sql",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "tfex_servicebus_topic",
///         NamespaceId = exampleNamespace.Id,
///         EnablePartitioning = true,
///     });
///
///     var exampleSubscription = new Azure.ServiceBus.Subscription("example", new()
///     {
///         Name = "tfex_servicebus_subscription",
///         TopicId = exampleTopic.Id,
///         MaxDeliveryCount = 1,
///     });
///
///     var exampleSubscriptionRule = new Azure.ServiceBus.SubscriptionRule("example", new()
///     {
///         Name = "tfex_servicebus_rule",
///         SubscriptionId = exampleSubscription.Id,
///         FilterType = "SqlFilter",
///         SqlFilter = "colour = 'red'",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-servicebus-subscription-rule-sql"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:               pulumi.String("tfex_servicebus_topic"),
/// 			NamespaceId:        exampleNamespace.ID(),
/// 			EnablePartitioning: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubscription, err := servicebus.NewSubscription(ctx, "example", &servicebus.SubscriptionArgs{
/// 			Name:             pulumi.String("tfex_servicebus_subscription"),
/// 			TopicId:          exampleTopic.ID(),
/// 			MaxDeliveryCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewSubscriptionRule(ctx, "example", &servicebus.SubscriptionRuleArgs{
/// 			Name:           pulumi.String("tfex_servicebus_rule"),
/// 			SubscriptionId: exampleSubscription.ID(),
/// 			FilterType:     pulumi.String("SqlFilter"),
/// 			SqlFilter:      pulumi.String("colour = 'red'"),
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
/// import com.pulumi.azure.servicebus.Subscription;
/// import com.pulumi.azure.servicebus.SubscriptionArgs;
/// import com.pulumi.azure.servicebus.SubscriptionRule;
/// import com.pulumi.azure.servicebus.SubscriptionRuleArgs;
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
///             .name("tfex-servicebus-subscription-rule-sql")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("tfex_servicebus_topic")
///             .namespaceId(exampleNamespace.id())
///             .enablePartitioning(true)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("tfex_servicebus_subscription")
///             .topicId(exampleTopic.id())
///             .maxDeliveryCount(1)
///             .build());
///
///         var exampleSubscriptionRule = new SubscriptionRule("exampleSubscriptionRule", SubscriptionRuleArgs.builder()
///             .name("tfex_servicebus_rule")
///             .subscriptionId(exampleSubscription.id())
///             .filterType("SqlFilter")
///             .sqlFilter("colour = 'red'")
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
///       name: tfex-servicebus-subscription-rule-sql
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: tfex_servicebus_topic
///       namespaceId: ${exampleNamespace.id}
///       enablePartitioning: true
///   exampleSubscription:
///     type: azure:servicebus:Subscription
///     name: example
///     properties:
///       name: tfex_servicebus_subscription
///       topicId: ${exampleTopic.id}
///       maxDeliveryCount: 1
///   exampleSubscriptionRule:
///     type: azure:servicebus:SubscriptionRule
///     name: example
///     properties:
///       name: tfex_servicebus_rule
///       subscriptionId: ${exampleSubscription.id}
///       filterType: SqlFilter
///       sqlFilter: colour = 'red'
/// ```
///
///
///
/// ### Correlation Filter)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-servicebus-subscription-rule-cor",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "tfex_servicebus_topic",
///     namespaceId: exampleNamespace.id,
///     enablePartitioning: true,
/// });
/// const exampleSubscription = new azure.servicebus.Subscription("example", {
///     name: "tfex_servicebus_subscription",
///     topicId: exampleTopic.id,
///     maxDeliveryCount: 1,
/// });
/// const exampleSubscriptionRule = new azure.servicebus.SubscriptionRule("example", {
///     name: "tfex_servicebus_rule",
///     subscriptionId: exampleSubscription.id,
///     filterType: "CorrelationFilter",
///     correlationFilter: {
///         correlationId: "high",
///         label: "red",
///         properties: {
///             customProperty: "value",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-servicebus-subscription-rule-cor",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_topic = azure.servicebus.Topic("example",
///     name="tfex_servicebus_topic",
///     namespace_id=example_namespace.id,
///     enable_partitioning=True)
/// example_subscription = azure.servicebus.Subscription("example",
///     name="tfex_servicebus_subscription",
///     topic_id=example_topic.id,
///     max_delivery_count=1)
/// example_subscription_rule = azure.servicebus.SubscriptionRule("example",
///     name="tfex_servicebus_rule",
///     subscription_id=example_subscription.id,
///     filter_type="CorrelationFilter",
///     correlation_filter={
///         "correlation_id": "high",
///         "label": "red",
///         "properties": {
///             "customProperty": "value",
///         },
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
///         Name = "tfex-servicebus-subscription-rule-cor",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "tfex_servicebus_topic",
///         NamespaceId = exampleNamespace.Id,
///         EnablePartitioning = true,
///     });
///
///     var exampleSubscription = new Azure.ServiceBus.Subscription("example", new()
///     {
///         Name = "tfex_servicebus_subscription",
///         TopicId = exampleTopic.Id,
///         MaxDeliveryCount = 1,
///     });
///
///     var exampleSubscriptionRule = new Azure.ServiceBus.SubscriptionRule("example", new()
///     {
///         Name = "tfex_servicebus_rule",
///         SubscriptionId = exampleSubscription.Id,
///         FilterType = "CorrelationFilter",
///         CorrelationFilter = new Azure.ServiceBus.Inputs.SubscriptionRuleCorrelationFilterArgs
///         {
///             CorrelationId = "high",
///             Label = "red",
///             Properties =
///             {
///                 { "customProperty", "value" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-servicebus-subscription-rule-cor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:               pulumi.String("tfex_servicebus_topic"),
/// 			NamespaceId:        exampleNamespace.ID(),
/// 			EnablePartitioning: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubscription, err := servicebus.NewSubscription(ctx, "example", &servicebus.SubscriptionArgs{
/// 			Name:             pulumi.String("tfex_servicebus_subscription"),
/// 			TopicId:          exampleTopic.ID(),
/// 			MaxDeliveryCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewSubscriptionRule(ctx, "example", &servicebus.SubscriptionRuleArgs{
/// 			Name:           pulumi.String("tfex_servicebus_rule"),
/// 			SubscriptionId: exampleSubscription.ID(),
/// 			FilterType:     pulumi.String("CorrelationFilter"),
/// 			CorrelationFilter: &servicebus.SubscriptionRuleCorrelationFilterArgs{
/// 				CorrelationId: pulumi.String("high"),
/// 				Label:         pulumi.String("red"),
/// 				Properties: pulumi.StringMap{
/// 					"customProperty": pulumi.String("value"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
/// import com.pulumi.azure.servicebus.Subscription;
/// import com.pulumi.azure.servicebus.SubscriptionArgs;
/// import com.pulumi.azure.servicebus.SubscriptionRule;
/// import com.pulumi.azure.servicebus.SubscriptionRuleArgs;
/// import com.pulumi.azure.servicebus.inputs.SubscriptionRuleCorrelationFilterArgs;
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
///             .name("tfex-servicebus-subscription-rule-cor")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("tfex_servicebus_topic")
///             .namespaceId(exampleNamespace.id())
///             .enablePartitioning(true)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("tfex_servicebus_subscription")
///             .topicId(exampleTopic.id())
///             .maxDeliveryCount(1)
///             .build());
///
///         var exampleSubscriptionRule = new SubscriptionRule("exampleSubscriptionRule", SubscriptionRuleArgs.builder()
///             .name("tfex_servicebus_rule")
///             .subscriptionId(exampleSubscription.id())
///             .filterType("CorrelationFilter")
///             .correlationFilter(SubscriptionRuleCorrelationFilterArgs.builder()
///                 .correlationId("high")
///                 .label("red")
///                 .properties(Map.of("customProperty", "value"))
///                 .build())
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
///       name: tfex-servicebus-subscription-rule-cor
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: tfex_servicebus_topic
///       namespaceId: ${exampleNamespace.id}
///       enablePartitioning: true
///   exampleSubscription:
///     type: azure:servicebus:Subscription
///     name: example
///     properties:
///       name: tfex_servicebus_subscription
///       topicId: ${exampleTopic.id}
///       maxDeliveryCount: 1
///   exampleSubscriptionRule:
///     type: azure:servicebus:SubscriptionRule
///     name: example
///     properties:
///       name: tfex_servicebus_rule
///       subscriptionId: ${exampleSubscription.id}
///       filterType: CorrelationFilter
///       correlationFilter:
///         correlationId: high
///         label: red
///         properties:
///           customProperty: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// Service Bus Subscription Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/subscriptionRule:SubscriptionRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1/topics/sntopic1/subscriptions/sbsub1/rules/sbrule1
/// ```
class SubscriptionRule extends pulumi.CustomResource {
  /// Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage.
  late final pulumi.Output<String?> action;

  /// A `correlation_filter` block as documented below to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`.
  late final pulumi.Output<SubscriptionRuleCorrelationFilter?>
  correlationFilter;

  /// Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`.
  late final pulumi.Output<String> filterType;

  /// Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`.
  late final pulumi.Output<String?> sqlFilter;
  late final pulumi.Output<int> sqlFilterCompatibilityLevel;

  /// The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [SubscriptionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionRule]. {@macro pulumi_servicebus_subscription_rule_subscription_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionRule(
    String name, {
    SubscriptionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:servicebus/subscriptionRule:SubscriptionRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    correlationFilter = registerOutput<SubscriptionRuleCorrelationFilter?>(
      'correlationFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubscriptionRuleCorrelationFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    filterType = registerOutput<String>('filterType');
    this.name = registerOutput<String>('name');
    sqlFilter = registerOutput<String?>('sqlFilter');
    sqlFilterCompatibilityLevel = registerOutput<int>(
      'sqlFilterCompatibilityLevel',
    );
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [SubscriptionRule] resource's state with the given [name] and [id].
  static SubscriptionRule get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionRuleState? state,
  }) {
    return SubscriptionRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:servicebus/subscriptionRule:SubscriptionRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    correlationFilter = registerOutput<SubscriptionRuleCorrelationFilter?>(
      'correlationFilter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubscriptionRuleCorrelationFilter.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    filterType = registerOutput<String>('filterType');
    this.name = registerOutput<String>('name');
    sqlFilter = registerOutput<String?>('sqlFilter');
    sqlFilterCompatibilityLevel = registerOutput<int>(
      'sqlFilterCompatibilityLevel',
    );
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
