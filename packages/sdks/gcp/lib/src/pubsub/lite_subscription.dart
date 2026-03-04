import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_subscription_args.dart';
import 'lite_subscription_delivery_config.dart';
import 'lite_subscription_state.dart';

/// &gt; **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use `gcp.pubsub.Subscription` instead.
///
/// A named resource representing the stream of messages from a single,
/// specific topic, to be delivered to the subscribing application.
///
///
/// To get more information about Subscription, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.subscriptions)
/// * How-to Guides
/// * [Managing Subscriptions](https://cloud.google.com/pubsub/lite/docs/subscriptions)
///
/// ## Example Usage
///
/// ### Pubsub Lite Subscription Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.pubsub.LiteTopic("example", {
///     name: "example-topic",
///     project: project.then(project => project.number),
///     partitionConfig: {
///         count: 1,
///         capacity: {
///             publishMibPerSec: 4,
///             subscribeMibPerSec: 8,
///         },
///     },
///     retentionConfig: {
///         perPartitionBytes: "32212254720",
///     },
/// });
/// const exampleLiteSubscription = new gcp.pubsub.LiteSubscription("example", {
///     name: "example-subscription",
///     topic: example.name,
///     deliveryConfig: {
///         deliveryRequirement: "DELIVER_AFTER_STORED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.pubsub.LiteTopic("example",
///     name="example-topic",
///     project=project.number,
///     partition_config={
///         "count": 1,
///         "capacity": {
///             "publish_mib_per_sec": 4,
///             "subscribe_mib_per_sec": 8,
///         },
///     },
///     retention_config={
///         "per_partition_bytes": "32212254720",
///     })
/// example_lite_subscription = gcp.pubsub.LiteSubscription("example",
///     name="example-subscription",
///     topic=example.name,
///     delivery_config={
///         "delivery_requirement": "DELIVER_AFTER_STORED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.PubSub.LiteTopic("example", new()
///     {
///         Name = "example-topic",
///         Project = project.Apply(getProjectResult => getProjectResult.Number),
///         PartitionConfig = new Gcp.PubSub.Inputs.LiteTopicPartitionConfigArgs
///         {
///             Count = 1,
///             Capacity = new Gcp.PubSub.Inputs.LiteTopicPartitionConfigCapacityArgs
///             {
///                 PublishMibPerSec = 4,
///                 SubscribeMibPerSec = 8,
///             },
///         },
///         RetentionConfig = new Gcp.PubSub.Inputs.LiteTopicRetentionConfigArgs
///         {
///             PerPartitionBytes = "32212254720",
///         },
///     });
///
///     var exampleLiteSubscription = new Gcp.PubSub.LiteSubscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Name,
///         DeliveryConfig = new Gcp.PubSub.Inputs.LiteSubscriptionDeliveryConfigArgs
///         {
///             DeliveryRequirement = "DELIVER_AFTER_STORED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := pubsub.NewLiteTopic(ctx, "example", &pubsub.LiteTopicArgs{
/// 			Name:    pulumi.String("example-topic"),
/// 			Project: pulumi.String(project.Number),
/// 			PartitionConfig: &pubsub.LiteTopicPartitionConfigArgs{
/// 				Count: pulumi.Int(1),
/// 				Capacity: &pubsub.LiteTopicPartitionConfigCapacityArgs{
/// 					PublishMibPerSec:   pulumi.Int(4),
/// 					SubscribeMibPerSec: pulumi.Int(8),
/// 				},
/// 			},
/// 			RetentionConfig: &pubsub.LiteTopicRetentionConfigArgs{
/// 				PerPartitionBytes: pulumi.String("32212254720"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewLiteSubscription(ctx, "example", &pubsub.LiteSubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.Name,
/// 			DeliveryConfig: &pubsub.LiteSubscriptionDeliveryConfigArgs{
/// 				DeliveryRequirement: pulumi.String("DELIVER_AFTER_STORED"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.LiteTopic;
/// import com.pulumi.gcp.pubsub.LiteTopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicPartitionConfigArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicPartitionConfigCapacityArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteTopicRetentionConfigArgs;
/// import com.pulumi.gcp.pubsub.LiteSubscription;
/// import com.pulumi.gcp.pubsub.LiteSubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.LiteSubscriptionDeliveryConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new LiteTopic("example", LiteTopicArgs.builder()
///             .name("example-topic")
///             .project(project.number())
///             .partitionConfig(LiteTopicPartitionConfigArgs.builder()
///                 .count(1)
///                 .capacity(LiteTopicPartitionConfigCapacityArgs.builder()
///                     .publishMibPerSec(4)
///                     .subscribeMibPerSec(8)
///                     .build())
///                 .build())
///             .retentionConfig(LiteTopicRetentionConfigArgs.builder()
///                 .perPartitionBytes("32212254720")
///                 .build())
///             .build());
///
///         var exampleLiteSubscription = new LiteSubscription("exampleLiteSubscription", LiteSubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.name())
///             .deliveryConfig(LiteSubscriptionDeliveryConfigArgs.builder()
///                 .deliveryRequirement("DELIVER_AFTER_STORED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:LiteTopic
///     properties:
///       name: example-topic
///       project: ${project.number}
///       partitionConfig:
///         count: 1
///         capacity:
///           publishMibPerSec: 4
///           subscribeMibPerSec: 8
///       retentionConfig:
///         perPartitionBytes: 3.221225472e+10
///   exampleLiteSubscription:
///     type: gcp:pubsub:LiteSubscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.name}
///       deliveryConfig:
///         deliveryRequirement: DELIVER_AFTER_STORED
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Subscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/subscriptions/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default projects/{{project}}/locations/{{zone}}/subscriptions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteSubscription:LiteSubscription default {{name}}
/// ```
class LiteSubscription extends pulumi.CustomResource {
  /// The settings for this subscription's message delivery.
  /// Structure is documented below.
  late final pulumi.Output<LiteSubscriptionDeliveryConfig?> deliveryConfig;

  /// Name of the subscription.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the pubsub lite topic.
  late final pulumi.Output<String?> region;

  /// A reference to a Topic resource.
  late final pulumi.Output<String> topic;

  /// The zone of the pubsub lite topic.
  late final pulumi.Output<String?> zone;

  /// Creates a new [LiteSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LiteSubscription]. {@macro pulumi_pubsub_lite_subscription_lite_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LiteSubscription(
    String name, {
    LiteSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:pubsub/liteSubscription:LiteSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryConfig = registerOutput<LiteSubscriptionDeliveryConfig?>(
      'deliveryConfig',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    topic = registerOutput<String>('topic');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [LiteSubscription] resource's state with the given [name] and [id].
  static LiteSubscription get(
    String name,
    pulumi.Input<String> id, {
    LiteSubscriptionState? state,
  }) {
    return LiteSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LiteSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:pubsub/liteSubscription:LiteSubscription',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deliveryConfig = registerOutput<LiteSubscriptionDeliveryConfig?>(
      'deliveryConfig',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
    topic = registerOutput<String>('topic');
    zone = registerOutput<String?>('zone');
  }
}
