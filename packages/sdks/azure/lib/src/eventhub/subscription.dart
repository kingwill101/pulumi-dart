import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';
import 'subscription_client_scoped_subscription.dart';
import 'subscription_state.dart';

/// Manages a ServiceBus Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-servicebus-subscription",
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
///     partitioningEnabled: true,
/// });
/// const exampleSubscription = new azure.servicebus.Subscription("example", {
///     name: "tfex_servicebus_subscription",
///     topicId: exampleTopic.id,
///     maxDeliveryCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-servicebus-subscription",
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
///     partitioning_enabled=True)
/// example_subscription = azure.servicebus.Subscription("example",
///     name="tfex_servicebus_subscription",
///     topic_id=example_topic.id,
///     max_delivery_count=1)
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
///         Name = "tfex-servicebus-subscription",
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
///         PartitioningEnabled = true,
///     });
///
///     var exampleSubscription = new Azure.ServiceBus.Subscription("example", new()
///     {
///         Name = "tfex_servicebus_subscription",
///         TopicId = exampleTopic.Id,
///         MaxDeliveryCount = 1,
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
/// 			Name:     pulumi.String("tfex-servicebus-subscription"),
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
/// 			Name:                pulumi.String("tfex_servicebus_topic"),
/// 			NamespaceId:         exampleNamespace.ID(),
/// 			PartitioningEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewSubscription(ctx, "example", &servicebus.SubscriptionArgs{
/// 			Name:             pulumi.String("tfex_servicebus_subscription"),
/// 			TopicId:          exampleTopic.ID(),
/// 			MaxDeliveryCount: pulumi.Int(1),
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
///             .name("tfex-servicebus-subscription")
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
///             .partitioningEnabled(true)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("tfex_servicebus_subscription")
///             .topicId(exampleTopic.id())
///             .maxDeliveryCount(1)
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
///       name: tfex-servicebus-subscription
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
///       partitioningEnabled: true
///   exampleSubscription:
///     type: azure:servicebus:Subscription
///     name: example
///     properties:
///       name: tfex_servicebus_subscription
///       topicId: ${exampleTopic.id}
///       maxDeliveryCount: 1
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
/// Service Bus Subscriptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/subscription:Subscription example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1/topics/sntopic1/subscriptions/sbsub1
/// ```
class Subscription extends pulumi.CustomResource {
  /// The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. Defaults to `P10675199DT2H48M5.4775807S`.
  late final pulumi.Output<String?> autoDeleteOnIdle;
  /// Boolean flag which controls whether the Subscription supports batched operations.
  late final pulumi.Output<bool?> batchedOperationsEnabled;
  /// A `client_scoped_subscription` block as defined below.
  late final pulumi.Output<SubscriptionClientScopedSubscription?> clientScopedSubscription;
  /// whether the subscription is scoped to a client id. Defaults to `false`.
  ///
  /// &gt; **Note:** Client Scoped Subscription can only be used for JMS subscription (Java Message Service).
  late final pulumi.Output<bool?> clientScopedSubscriptionEnabled;
  /// Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`.
  late final pulumi.Output<bool?> deadLetteringOnFilterEvaluationError;
  /// Boolean flag which controls whether the Subscription has dead letter support when a message expires.
  late final pulumi.Output<bool?> deadLetteringOnMessageExpiration;
  /// The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the value used when TimeToLive is not set on a message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  late final pulumi.Output<String?> defaultMessageTtl;
  /// The name of a Queue or Topic to automatically forward Dead Letter messages to.
  late final pulumi.Output<String?> forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to.
  late final pulumi.Output<String?> forwardTo;
  /// The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Defaults to `PT1M`.
  late final pulumi.Output<String?> lockDuration;
  /// The maximum number of deliveries.
  late final pulumi.Output<int> maxDeliveryCount;
  /// Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> requiresSession;
  /// The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`.
  late final pulumi.Output<String?> status;
  /// The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created.
  late final pulumi.Output<String> topicId;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_eventhub_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    clientScopedSubscription = registerOutput<SubscriptionClientScopedSubscription?>('clientScopedSubscription', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionClientScopedSubscription.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientScopedSubscriptionEnabled = registerOutput<bool?>('clientScopedSubscriptionEnabled');
    deadLetteringOnFilterEvaluationError = registerOutput<bool?>('deadLetteringOnFilterEvaluationError');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTtl = registerOutput<String?>('defaultMessageTtl');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int>('maxDeliveryCount');
    this.name = registerOutput<String>('name');
    requiresSession = registerOutput<bool?>('requiresSession');
    status = registerOutput<String?>('status');
    topicId = registerOutput<String>('topicId');
  }

  /// Gets an existing [Subscription] resource's state with the given [name] and [id].
  static Subscription get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionState? state,
  }) {
    return Subscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    clientScopedSubscription = registerOutput<SubscriptionClientScopedSubscription?>('clientScopedSubscription', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionClientScopedSubscription.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientScopedSubscriptionEnabled = registerOutput<bool?>('clientScopedSubscriptionEnabled');
    deadLetteringOnFilterEvaluationError = registerOutput<bool?>('deadLetteringOnFilterEvaluationError');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTtl = registerOutput<String?>('defaultMessageTtl');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int>('maxDeliveryCount');
    this.name = registerOutput<String>('name');
    requiresSession = registerOutput<bool?>('requiresSession');
    status = registerOutput<String?>('status');
    topicId = registerOutput<String>('topicId');
  }
}
