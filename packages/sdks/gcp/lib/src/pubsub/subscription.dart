import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';
import 'subscription_bigquery_config.dart';
import 'subscription_cloud_storage_config.dart';
import 'subscription_dead_letter_policy.dart';
import 'subscription_expiration_policy.dart';
import 'subscription_message_transform.dart';
import 'subscription_push_config.dart';
import 'subscription_retry_policy.dart';
import 'subscription_state.dart';

/// A named resource representing the stream of messages from a single,
/// specific topic, to be delivered to the subscribing application.
///
///
/// To get more information about Subscription, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.subscriptions)
/// * How-to Guides
/// * [Managing Subscriptions](https://cloud.google.com/pubsub/docs/admin#managing_subscriptions)
///
/// > **Note:** You can retrieve the email of the Google Managed Pub/Sub Service Account used for forwarding
/// by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Pubsub Subscription Push
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     ackDeadlineSeconds: 20,
///     labels: {
///         foo: "bar",
///     },
///     pushConfig: {
///         pushEndpoint: "https://example.com/push",
///         attributes: {
///             "x-goog-version": "v1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     ack_deadline_seconds=20,
///     labels={
///         "foo": "bar",
///     },
///     push_config={
///         "push_endpoint": "https://example.com/push",
///         "attributes": {
///             "x-goog-version": "v1",
///         },
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         AckDeadlineSeconds = 20,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         PushConfig = new Gcp.PubSub.Inputs.SubscriptionPushConfigArgs
///         {
///             PushEndpoint = "https://example.com/push",
///             Attributes =
///             {
///                 { "x-goog-version", "v1" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:               pulumi.String("example-subscription"),
/// 			Topic:              example.ID(),
/// 			AckDeadlineSeconds: pulumi.Int(20),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			PushConfig: &pubsub.SubscriptionPushConfigArgs{
/// 				PushEndpoint: pulumi.String("https://example.com/push"),
/// 				Attributes: pulumi.StringMap{
/// 					"x-goog-version": pulumi.String("v1"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionPushConfigArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .ackDeadlineSeconds(20)
///             .labels(Map.of("foo", "bar"))
///             .pushConfig(SubscriptionPushConfigArgs.builder()
///                 .pushEndpoint("https://example.com/push")
///                 .attributes(Map.of("x-goog-version", "v1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       ackDeadlineSeconds: 20
///       labels:
///         foo: bar
///       pushConfig:
///         pushEndpoint: https://example.com/push
///         attributes:
///           x-goog-version: v1
/// ```
///
/// ### Pubsub Subscription Pull
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     labels: {
///         foo: "bar",
///     },
///     messageRetentionDuration: "1200s",
///     retainAckedMessages: true,
///     ackDeadlineSeconds: 20,
///     expirationPolicy: {
///         ttl: "300000.5s",
///     },
///     retryPolicy: {
///         minimumBackoff: "10s",
///     },
///     enableMessageOrdering: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     labels={
///         "foo": "bar",
///     },
///     message_retention_duration="1200s",
///     retain_acked_messages=True,
///     ack_deadline_seconds=20,
///     expiration_policy={
///         "ttl": "300000.5s",
///     },
///     retry_policy={
///         "minimum_backoff": "10s",
///     },
///     enable_message_ordering=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         MessageRetentionDuration = "1200s",
///         RetainAckedMessages = true,
///         AckDeadlineSeconds = 20,
///         ExpirationPolicy = new Gcp.PubSub.Inputs.SubscriptionExpirationPolicyArgs
///         {
///             Ttl = "300000.5s",
///         },
///         RetryPolicy = new Gcp.PubSub.Inputs.SubscriptionRetryPolicyArgs
///         {
///             MinimumBackoff = "10s",
///         },
///         EnableMessageOrdering = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			MessageRetentionDuration: pulumi.String("1200s"),
/// 			RetainAckedMessages:      pulumi.Bool(true),
/// 			AckDeadlineSeconds:       pulumi.Int(20),
/// 			ExpirationPolicy: &pubsub.SubscriptionExpirationPolicyArgs{
/// 				Ttl: pulumi.String("300000.5s"),
/// 			},
/// 			RetryPolicy: &pubsub.SubscriptionRetryPolicyArgs{
/// 				MinimumBackoff: pulumi.String("10s"),
/// 			},
/// 			EnableMessageOrdering: pulumi.Bool(false),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionExpirationPolicyArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionRetryPolicyArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .labels(Map.of("foo", "bar"))
///             .messageRetentionDuration("1200s")
///             .retainAckedMessages(true)
///             .ackDeadlineSeconds(20)
///             .expirationPolicy(SubscriptionExpirationPolicyArgs.builder()
///                 .ttl("300000.5s")
///                 .build())
///             .retryPolicy(SubscriptionRetryPolicyArgs.builder()
///                 .minimumBackoff("10s")
///                 .build())
///             .enableMessageOrdering(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       labels:
///         foo: bar
///       messageRetentionDuration: 1200s
///       retainAckedMessages: true
///       ackDeadlineSeconds: 20
///       expirationPolicy:
///         ttl: 300000.5s
///       retryPolicy:
///         minimumBackoff: 10s
///       enableMessageOrdering: false
/// ```
///
/// ### Pubsub Subscription Pull Filter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     labels: {
///         foo: "bar",
///     },
///     filter: `    attributes.foo = \\"foo\\"
///     AND attributes.bar = \\"bar\\"
/// `,
///     ackDeadlineSeconds: 20,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     labels={
///         "foo": "bar",
///     },
///     filter="""    attributes.foo = \"foo\"
///     AND attributes.bar = \"bar\"
/// """,
///     ack_deadline_seconds=20)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Filter = @"    attributes.foo = \""foo\""
///     AND attributes.bar = \""bar\""
/// ",
///         AckDeadlineSeconds = 20,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Filter:             pulumi.String("    attributes.foo = \\\"foo\\\"\n    AND attributes.bar = \\\"bar\\\"\n"),
/// 			AckDeadlineSeconds: pulumi.Int(20),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .labels(Map.of("foo", "bar"))
///             .filter("""
///     attributes.foo = \"foo\"
///     AND attributes.bar = \"bar\"
///             """)
///             .ackDeadlineSeconds(20)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       labels:
///         foo: bar
///       filter: |2
///             attributes.foo = \"foo\"
///             AND attributes.bar = \"bar\"
///       ackDeadlineSeconds: 20
/// ```
///
/// ### Pubsub Subscription Dead Letter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleDeadLetter = new gcp.pubsub.Topic("example_dead_letter", {name: "example-topic-dead-letter"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     deadLetterPolicy: {
///         deadLetterTopic: exampleDeadLetter.id,
///         maxDeliveryAttempts: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_dead_letter = gcp.pubsub.Topic("example_dead_letter", name="example-topic-dead-letter")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     dead_letter_policy={
///         "dead_letter_topic": example_dead_letter.id,
///         "max_delivery_attempts": 10,
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
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleDeadLetter = new Gcp.PubSub.Topic("example_dead_letter", new()
///     {
///         Name = "example-topic-dead-letter",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         DeadLetterPolicy = new Gcp.PubSub.Inputs.SubscriptionDeadLetterPolicyArgs
///         {
///             DeadLetterTopic = exampleDeadLetter.Id,
///             MaxDeliveryAttempts = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDeadLetter, err := pubsub.NewTopic(ctx, "example_dead_letter", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic-dead-letter"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			DeadLetterPolicy: &pubsub.SubscriptionDeadLetterPolicyArgs{
/// 				DeadLetterTopic:     exampleDeadLetter.ID(),
/// 				MaxDeliveryAttempts: pulumi.Int(10),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionDeadLetterPolicyArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleDeadLetter = new Topic("exampleDeadLetter", TopicArgs.builder()
///             .name("example-topic-dead-letter")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .deadLetterPolicy(SubscriptionDeadLetterPolicyArgs.builder()
///                 .deadLetterTopic(exampleDeadLetter.id())
///                 .maxDeliveryAttempts(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleDeadLetter:
///     type: gcp:pubsub:Topic
///     name: example_dead_letter
///     properties:
///       name: example-topic-dead-letter
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       deadLetterPolicy:
///         deadLetterTopic: ${exampleDeadLetter.id}
///         maxDeliveryAttempts: 10
/// ```
///
/// ### Pubsub Subscription Push Bq
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "example_dataset"});
/// const testTable = new gcp.bigquery.Table("test", {
///     tableId: "example_table",
///     datasetId: test.datasetId,
///     schema: `[
///   {
///     \\"name\\": \\"data\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"The data\\"
///   }
/// ]
/// `,
///     deletionProtection: false,
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     bigqueryConfig: {
///         table: pulumi.interpolate`${testTable.project}.${testTable.datasetId}.${testTable.tableId}`,
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// test = gcp.bigquery.Dataset("test", dataset_id="example_dataset")
/// test_table = gcp.bigquery.Table("test",
///     table_id="example_table",
///     dataset_id=test.dataset_id,
///     schema="""[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// """,
///     deletion_protection=False)
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     bigquery_config={
///         "table": pulumi.Output.all(
///             project=test_table.project,
///             dataset_id=test_table.dataset_id,
///             table_id=test_table.table_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var testTable = new Gcp.BigQuery.Table("test", new()
///     {
///         TableId = "example_table",
///         DatasetId = test.DatasetId,
///         Schema = @"[
///   {
///     \""name\"": \""data\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""The data\""
///   }
/// ]
/// ",
///         DeletionProtection = false,
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         BigqueryConfig = new Gcp.PubSub.Inputs.SubscriptionBigqueryConfigArgs
///         {
///             Table = Output.Tuple(testTable.Project, testTable.DatasetId, testTable.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"{project}.{datasetId}.{tableId}";
///             }),
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testTable, err := bigquery.NewTable(ctx, "test", &bigquery.TableArgs{
/// 			TableId:   pulumi.String("example_table"),
/// 			DatasetId: test.DatasetId,
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// `),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			BigqueryConfig: &pubsub.SubscriptionBigqueryConfigArgs{
/// 				Table: pulumi.All(testTable.Project, testTable.DatasetId, testTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					datasetId := _args[1].(string)
/// 					tableId := _args[2].(string)
/// 					return fmt.Sprintf("%v.%v.%v", project, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionBigqueryConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var testTable = new Table("testTable", TableArgs.builder()
///             .tableId("example_table")
///             .datasetId(test.datasetId())
///             .schema("""
/// [
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
///             """)
///             .deletionProtection(false)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .bigqueryConfig(SubscriptionBigqueryConfigArgs.builder()
///                 .table(Output.tuple(testTable.project(), testTable.datasetId(), testTable.tableId()).applyValue(values -> {
///                     var project = values.t1;
///                     var datasetId = values.t2;
///                     var tableId = values.t3;
///                     return String.format("%s.%s.%s", project,datasetId,tableId);
///                 }))
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       bigqueryConfig:
///         table: ${testTable.project}.${testTable.datasetId}.${testTable.tableId}
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///   testTable:
///     type: gcp:bigquery:Table
///     name: test
///     properties:
///       tableId: example_table
///       datasetId: ${test.datasetId}
///       schema: |
///         [
///           {
///             \"name\": \"data\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"The data\"
///           }
///         ]
///       deletionProtection: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Push Bq Table Schema
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "example_dataset"});
/// const testTable = new gcp.bigquery.Table("test", {
///     tableId: "example_table",
///     datasetId: test.datasetId,
///     schema: `[
///   {
///     \\"name\\": \\"data\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"The data\\"
///   }
/// ]
/// `,
///     deletionProtection: false,
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     bigqueryConfig: {
///         table: pulumi.interpolate`${testTable.project}.${testTable.datasetId}.${testTable.tableId}`,
///         useTableSchema: true,
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// test = gcp.bigquery.Dataset("test", dataset_id="example_dataset")
/// test_table = gcp.bigquery.Table("test",
///     table_id="example_table",
///     dataset_id=test.dataset_id,
///     schema="""[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// """,
///     deletion_protection=False)
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     bigquery_config={
///         "table": pulumi.Output.all(
///             project=test_table.project,
///             dataset_id=test_table.dataset_id,
///             table_id=test_table.table_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         "use_table_schema": True,
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var testTable = new Gcp.BigQuery.Table("test", new()
///     {
///         TableId = "example_table",
///         DatasetId = test.DatasetId,
///         Schema = @"[
///   {
///     \""name\"": \""data\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""The data\""
///   }
/// ]
/// ",
///         DeletionProtection = false,
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         BigqueryConfig = new Gcp.PubSub.Inputs.SubscriptionBigqueryConfigArgs
///         {
///             Table = Output.Tuple(testTable.Project, testTable.DatasetId, testTable.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"{project}.{datasetId}.{tableId}";
///             }),
///             UseTableSchema = true,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testTable, err := bigquery.NewTable(ctx, "test", &bigquery.TableArgs{
/// 			TableId:   pulumi.String("example_table"),
/// 			DatasetId: test.DatasetId,
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// `),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			BigqueryConfig: &pubsub.SubscriptionBigqueryConfigArgs{
/// 				Table: pulumi.All(testTable.Project, testTable.DatasetId, testTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					datasetId := _args[1].(string)
/// 					tableId := _args[2].(string)
/// 					return fmt.Sprintf("%v.%v.%v", project, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 				UseTableSchema: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionBigqueryConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var testTable = new Table("testTable", TableArgs.builder()
///             .tableId("example_table")
///             .datasetId(test.datasetId())
///             .schema("""
/// [
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
///             """)
///             .deletionProtection(false)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .bigqueryConfig(SubscriptionBigqueryConfigArgs.builder()
///                 .table(Output.tuple(testTable.project(), testTable.datasetId(), testTable.tableId()).applyValue(values -> {
///                     var project = values.t1;
///                     var datasetId = values.t2;
///                     var tableId = values.t3;
///                     return String.format("%s.%s.%s", project,datasetId,tableId);
///                 }))
///                 .useTableSchema(true)
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       bigqueryConfig:
///         table: ${testTable.project}.${testTable.datasetId}.${testTable.tableId}
///         useTableSchema: true
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///   testTable:
///     type: gcp:bigquery:Table
///     name: test
///     properties:
///       tableId: example_table
///       datasetId: ${test.datasetId}
///       schema: |
///         [
///           {
///             \"name\": \"data\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"The data\"
///           }
///         ]
///       deletionProtection: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Push Bq Service Account
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const bqWriteServiceAccount = new gcp.serviceaccount.Account("bq_write_service_account", {
///     accountId: "example-bqw",
///     displayName: "BQ Write Service Account",
/// });
/// const project = gcp.organizations.getProject({});
/// const bigqueryMetadataViewer = new gcp.projects.IAMMember("bigquery_metadata_viewer", {
///     project: project.then(project => project.projectId),
///     role: "roles/bigquery.metadataViewer",
///     member: pulumi.interpolate`serviceAccount:${bqWriteServiceAccount.email}`,
/// });
/// const bigqueryDataEditor = new gcp.projects.IAMMember("bigquery_data_editor", {
///     project: project.then(project => project.projectId),
///     role: "roles/bigquery.dataEditor",
///     member: pulumi.interpolate`serviceAccount:${bqWriteServiceAccount.email}`,
/// });
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "example_dataset"});
/// const testTable = new gcp.bigquery.Table("test", {
///     deletionProtection: false,
///     tableId: "example_table",
///     datasetId: test.datasetId,
///     schema: `[
///   {
///     \\"name\\": \\"data\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"The data\\"
///   }
/// ]
/// `,
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     bigqueryConfig: {
///         table: pulumi.interpolate`${testTable.project}.${testTable.datasetId}.${testTable.tableId}`,
///         serviceAccountEmail: bqWriteServiceAccount.email,
///     },
/// }, {
///     dependsOn: [
///         bqWriteServiceAccount,
///         bigqueryMetadataViewer,
///         bigqueryDataEditor,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// bq_write_service_account = gcp.serviceaccount.Account("bq_write_service_account",
///     account_id="example-bqw",
///     display_name="BQ Write Service Account")
/// project = gcp.organizations.get_project()
/// bigquery_metadata_viewer = gcp.projects.IAMMember("bigquery_metadata_viewer",
///     project=project.project_id,
///     role="roles/bigquery.metadataViewer",
///     member=bq_write_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// bigquery_data_editor = gcp.projects.IAMMember("bigquery_data_editor",
///     project=project.project_id,
///     role="roles/bigquery.dataEditor",
///     member=bq_write_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// test = gcp.bigquery.Dataset("test", dataset_id="example_dataset")
/// test_table = gcp.bigquery.Table("test",
///     deletion_protection=False,
///     table_id="example_table",
///     dataset_id=test.dataset_id,
///     schema="""[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// """)
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     bigquery_config={
///         "table": pulumi.Output.all(
///             project=test_table.project,
///             dataset_id=test_table.dataset_id,
///             table_id=test_table.table_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         "service_account_email": bq_write_service_account.email,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             bq_write_service_account,
///             bigquery_metadata_viewer,
///             bigquery_data_editor,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var bqWriteServiceAccount = new Gcp.ServiceAccount.Account("bq_write_service_account", new()
///     {
///         AccountId = "example-bqw",
///         DisplayName = "BQ Write Service Account",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var bigqueryMetadataViewer = new Gcp.Projects.IAMMember("bigquery_metadata_viewer", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/bigquery.metadataViewer",
///         Member = bqWriteServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var bigqueryDataEditor = new Gcp.Projects.IAMMember("bigquery_data_editor", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/bigquery.dataEditor",
///         Member = bqWriteServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var testTable = new Gcp.BigQuery.Table("test", new()
///     {
///         DeletionProtection = false,
///         TableId = "example_table",
///         DatasetId = test.DatasetId,
///         Schema = @"[
///   {
///     \""name\"": \""data\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""The data\""
///   }
/// ]
/// ",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         BigqueryConfig = new Gcp.PubSub.Inputs.SubscriptionBigqueryConfigArgs
///         {
///             Table = Output.Tuple(testTable.Project, testTable.DatasetId, testTable.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"{project}.{datasetId}.{tableId}";
///             }),
///             ServiceAccountEmail = bqWriteServiceAccount.Email,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bqWriteServiceAccount,
///             bigqueryMetadataViewer,
///             bigqueryDataEditor,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqWriteServiceAccount, err := serviceaccount.NewAccount(ctx, "bq_write_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("example-bqw"),
/// 			DisplayName: pulumi.String("BQ Write Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bigqueryMetadataViewer, err := projects.NewIAMMember(ctx, "bigquery_metadata_viewer", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/bigquery.metadataViewer"),
/// 			Member: bqWriteServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bigqueryDataEditor, err := projects.NewIAMMember(ctx, "bigquery_data_editor", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/bigquery.dataEditor"),
/// 			Member: bqWriteServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testTable, err := bigquery.NewTable(ctx, "test", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			TableId:            pulumi.String("example_table"),
/// 			DatasetId:          test.DatasetId,
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			BigqueryConfig: &pubsub.SubscriptionBigqueryConfigArgs{
/// 				Table: pulumi.All(testTable.Project, testTable.DatasetId, testTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					datasetId := _args[1].(string)
/// 					tableId := _args[2].(string)
/// 					return fmt.Sprintf("%v.%v.%v", project, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 				ServiceAccountEmail: bqWriteServiceAccount.Email,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bqWriteServiceAccount,
/// 			bigqueryMetadataViewer,
/// 			bigqueryDataEditor,
/// 		}))
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionBigqueryConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var bqWriteServiceAccount = new Account("bqWriteServiceAccount", AccountArgs.builder()
///             .accountId("example-bqw")
///             .displayName("BQ Write Service Account")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var bigqueryMetadataViewer = new IAMMember("bigqueryMetadataViewer", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/bigquery.metadataViewer")
///             .member(bqWriteServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var bigqueryDataEditor = new IAMMember("bigqueryDataEditor", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/bigquery.dataEditor")
///             .member(bqWriteServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var testTable = new Table("testTable", TableArgs.builder()
///             .deletionProtection(false)
///             .tableId("example_table")
///             .datasetId(test.datasetId())
///             .schema("""
/// [
///   {
///     \"name\": \"data\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The data\"
///   }
/// ]
///             """)
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .bigqueryConfig(SubscriptionBigqueryConfigArgs.builder()
///                 .table(Output.tuple(testTable.project(), testTable.datasetId(), testTable.tableId()).applyValue(values -> {
///                     var project = values.t1;
///                     var datasetId = values.t2;
///                     var tableId = values.t3;
///                     return String.format("%s.%s.%s", project,datasetId,tableId);
///                 }))
///                 .serviceAccountEmail(bqWriteServiceAccount.email())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     bqWriteServiceAccount,
///                     bigqueryMetadataViewer,
///                     bigqueryDataEditor)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       bigqueryConfig:
///         table: ${testTable.project}.${testTable.datasetId}.${testTable.tableId}
///         serviceAccountEmail: ${bqWriteServiceAccount.email}
///     options:
///       dependsOn:
///         - ${bqWriteServiceAccount}
///         - ${bigqueryMetadataViewer}
///         - ${bigqueryDataEditor}
///   bqWriteServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: bq_write_service_account
///     properties:
///       accountId: example-bqw
///       displayName: BQ Write Service Account
///   bigqueryMetadataViewer:
///     type: gcp:projects:IAMMember
///     name: bigquery_metadata_viewer
///     properties:
///       project: ${project.projectId}
///       role: roles/bigquery.metadataViewer
///       member: serviceAccount:${bqWriteServiceAccount.email}
///   bigqueryDataEditor:
///     type: gcp:projects:IAMMember
///     name: bigquery_data_editor
///     properties:
///       project: ${project.projectId}
///       role: roles/bigquery.dataEditor
///       member: serviceAccount:${bqWriteServiceAccount.email}
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///   testTable:
///     type: gcp:bigquery:Table
///     name: test
///     properties:
///       deletionProtection: false
///       tableId: example_table
///       datasetId: ${test.datasetId}
///       schema: |
///         [
///           {
///             \"name\": \"data\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"The data\"
///           }
///         ]
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Push Cloudstorage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.Bucket("example", {
///     name: "example-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const project = gcp.organizations.getProject({});
/// const admin = new gcp.storage.BucketIAMMember("admin", {
///     bucket: example.name,
///     role: "roles/storage.admin",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-pubsub.iam.gserviceaccount.com`),
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: exampleTopic.id,
///     cloudStorageConfig: {
///         bucket: example.name,
///         filenamePrefix: "pre-",
///         filenameSuffix: "-_89648",
///         filenameDatetimeFormat: "YYYY-MM-DD/hh_mm_ssZ",
///         maxBytes: 1000,
///         maxDuration: "300s",
///         maxMessages: 1000,
///     },
/// }, {
///     dependsOn: [
///         example,
///         admin,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.Bucket("example",
///     name="example-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// example_topic = gcp.pubsub.Topic("example", name="example-topic")
/// project = gcp.organizations.get_project()
/// admin = gcp.storage.BucketIAMMember("admin",
///     bucket=example.name,
///     role="roles/storage.admin",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-pubsub.iam.gserviceaccount.com")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example_topic.id,
///     cloud_storage_config={
///         "bucket": example.name,
///         "filename_prefix": "pre-",
///         "filename_suffix": "-_89648",
///         "filename_datetime_format": "YYYY-MM-DD/hh_mm_ssZ",
///         "max_bytes": 1000,
///         "max_duration": "300s",
///         "max_messages": 1000,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example,
///             admin,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Storage.Bucket("example", new()
///     {
///         Name = "example-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var admin = new Gcp.Storage.BucketIAMMember("admin", new()
///     {
///         Bucket = example.Name,
///         Role = "roles/storage.admin",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-pubsub.iam.gserviceaccount.com",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = exampleTopic.Id,
///         CloudStorageConfig = new Gcp.PubSub.Inputs.SubscriptionCloudStorageConfigArgs
///         {
///             Bucket = example.Name,
///             FilenamePrefix = "pre-",
///             FilenameSuffix = "-_89648",
///             FilenameDatetimeFormat = "YYYY-MM-DD/hh_mm_ssZ",
///             MaxBytes = 1000,
///             MaxDuration = "300s",
///             MaxMessages = 1000,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             admin,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.NewBucket(ctx, "example", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := storage.NewBucketIAMMember(ctx, "admin", &storage.BucketIAMMemberArgs{
/// 			Bucket: example.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-pubsub.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: exampleTopic.ID(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_89648"),
/// 				FilenameDatetimeFormat: pulumi.String("YYYY-MM-DD/hh_mm_ssZ"),
/// 				MaxBytes:               pulumi.Int(1000),
/// 				MaxDuration:            pulumi.String("300s"),
/// 				MaxMessages:            pulumi.Int(1000),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 			admin,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionCloudStorageConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .name("example-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var admin = new BucketIAMMember("admin", BucketIAMMemberArgs.builder()
///             .bucket(example.name())
///             .role("roles/storage.admin")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-pubsub.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(exampleTopic.id())
///             .cloudStorageConfig(SubscriptionCloudStorageConfigArgs.builder()
///                 .bucket(example.name())
///                 .filenamePrefix("pre-")
///                 .filenameSuffix("-_89648")
///                 .filenameDatetimeFormat("YYYY-MM-DD/hh_mm_ssZ")
///                 .maxBytes(1000)
///                 .maxDuration("300s")
///                 .maxMessages(1000)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     admin)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:Bucket
///     properties:
///       name: example-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${exampleTopic.id}
///       cloudStorageConfig:
///         bucket: ${example.name}
///         filenamePrefix: pre-
///         filenameSuffix: -_89648
///         filenameDatetimeFormat: YYYY-MM-DD/hh_mm_ssZ
///         maxBytes: 1000
///         maxDuration: 300s
///         maxMessages: 1000
///     options:
///       dependsOn:
///         - ${example}
///         - ${admin}
///   admin:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${example.name}
///       role: roles/storage.admin
///       member: serviceAccount:service-${project.number}@gcp-sa-pubsub.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Push Cloudstorage Avro
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.Bucket("example", {
///     name: "example-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const project = gcp.organizations.getProject({});
/// const admin = new gcp.storage.BucketIAMMember("admin", {
///     bucket: example.name,
///     role: "roles/storage.admin",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-pubsub.iam.gserviceaccount.com`),
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: exampleTopic.id,
///     cloudStorageConfig: {
///         bucket: example.name,
///         filenamePrefix: "pre-",
///         filenameSuffix: "-_64612",
///         filenameDatetimeFormat: "YYYY-MM-DD/hh_mm_ssZ",
///         maxBytes: 1000,
///         maxDuration: "300s",
///         maxMessages: 1000,
///         avroConfig: {
///             writeMetadata: true,
///             useTopicSchema: true,
///         },
///     },
/// }, {
///     dependsOn: [
///         example,
///         admin,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.Bucket("example",
///     name="example-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// example_topic = gcp.pubsub.Topic("example", name="example-topic")
/// project = gcp.organizations.get_project()
/// admin = gcp.storage.BucketIAMMember("admin",
///     bucket=example.name,
///     role="roles/storage.admin",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-pubsub.iam.gserviceaccount.com")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example_topic.id,
///     cloud_storage_config={
///         "bucket": example.name,
///         "filename_prefix": "pre-",
///         "filename_suffix": "-_64612",
///         "filename_datetime_format": "YYYY-MM-DD/hh_mm_ssZ",
///         "max_bytes": 1000,
///         "max_duration": "300s",
///         "max_messages": 1000,
///         "avro_config": {
///             "write_metadata": True,
///             "use_topic_schema": True,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example,
///             admin,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Storage.Bucket("example", new()
///     {
///         Name = "example-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var admin = new Gcp.Storage.BucketIAMMember("admin", new()
///     {
///         Bucket = example.Name,
///         Role = "roles/storage.admin",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-pubsub.iam.gserviceaccount.com",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = exampleTopic.Id,
///         CloudStorageConfig = new Gcp.PubSub.Inputs.SubscriptionCloudStorageConfigArgs
///         {
///             Bucket = example.Name,
///             FilenamePrefix = "pre-",
///             FilenameSuffix = "-_64612",
///             FilenameDatetimeFormat = "YYYY-MM-DD/hh_mm_ssZ",
///             MaxBytes = 1000,
///             MaxDuration = "300s",
///             MaxMessages = 1000,
///             AvroConfig = new Gcp.PubSub.Inputs.SubscriptionCloudStorageConfigAvroConfigArgs
///             {
///                 WriteMetadata = true,
///                 UseTopicSchema = true,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             admin,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.NewBucket(ctx, "example", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := storage.NewBucketIAMMember(ctx, "admin", &storage.BucketIAMMemberArgs{
/// 			Bucket: example.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-pubsub.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: exampleTopic.ID(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_64612"),
/// 				FilenameDatetimeFormat: pulumi.String("YYYY-MM-DD/hh_mm_ssZ"),
/// 				MaxBytes:               pulumi.Int(1000),
/// 				MaxDuration:            pulumi.String("300s"),
/// 				MaxMessages:            pulumi.Int(1000),
/// 				AvroConfig: &pubsub.SubscriptionCloudStorageConfigAvroConfigArgs{
/// 					WriteMetadata:  pulumi.Bool(true),
/// 					UseTopicSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 			admin,
/// 		}))
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionCloudStorageConfigArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionCloudStorageConfigAvroConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .name("example-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var admin = new BucketIAMMember("admin", BucketIAMMemberArgs.builder()
///             .bucket(example.name())
///             .role("roles/storage.admin")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-pubsub.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(exampleTopic.id())
///             .cloudStorageConfig(SubscriptionCloudStorageConfigArgs.builder()
///                 .bucket(example.name())
///                 .filenamePrefix("pre-")
///                 .filenameSuffix("-_64612")
///                 .filenameDatetimeFormat("YYYY-MM-DD/hh_mm_ssZ")
///                 .maxBytes(1000)
///                 .maxDuration("300s")
///                 .maxMessages(1000)
///                 .avroConfig(SubscriptionCloudStorageConfigAvroConfigArgs.builder()
///                     .writeMetadata(true)
///                     .useTopicSchema(true)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     admin)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:Bucket
///     properties:
///       name: example-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${exampleTopic.id}
///       cloudStorageConfig:
///         bucket: ${example.name}
///         filenamePrefix: pre-
///         filenameSuffix: -_64612
///         filenameDatetimeFormat: YYYY-MM-DD/hh_mm_ssZ
///         maxBytes: 1000
///         maxDuration: 300s
///         maxMessages: 1000
///         avroConfig:
///           writeMetadata: true
///           useTopicSchema: true
///     options:
///       dependsOn:
///         - ${example}
///         - ${admin}
///   admin:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${example.name}
///       role: roles/storage.admin
///       member: serviceAccount:service-${project.number}@gcp-sa-pubsub.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Push Cloudstorage Service Account
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.Bucket("example", {
///     name: "example-bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const storageWriteServiceAccount = new gcp.serviceaccount.Account("storage_write_service_account", {
///     accountId: "example-stw",
///     displayName: "Storage Write Service Account",
/// });
/// const admin = new gcp.storage.BucketIAMMember("admin", {
///     bucket: example.name,
///     role: "roles/storage.admin",
///     member: pulumi.interpolate`serviceAccount:${storageWriteServiceAccount.email}`,
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: exampleTopic.id,
///     cloudStorageConfig: {
///         bucket: example.name,
///         filenamePrefix: "pre-",
///         filenameSuffix: "-_34242",
///         filenameDatetimeFormat: "YYYY-MM-DD/hh_mm_ssZ",
///         maxBytes: 1000,
///         maxDuration: "300s",
///         serviceAccountEmail: storageWriteServiceAccount.email,
///     },
/// }, {
///     dependsOn: [
///         storageWriteServiceAccount,
///         example,
///         admin,
///     ],
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.Bucket("example",
///     name="example-bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// example_topic = gcp.pubsub.Topic("example", name="example-topic")
/// storage_write_service_account = gcp.serviceaccount.Account("storage_write_service_account",
///     account_id="example-stw",
///     display_name="Storage Write Service Account")
/// admin = gcp.storage.BucketIAMMember("admin",
///     bucket=example.name,
///     role="roles/storage.admin",
///     member=storage_write_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example_topic.id,
///     cloud_storage_config={
///         "bucket": example.name,
///         "filename_prefix": "pre-",
///         "filename_suffix": "-_34242",
///         "filename_datetime_format": "YYYY-MM-DD/hh_mm_ssZ",
///         "max_bytes": 1000,
///         "max_duration": "300s",
///         "service_account_email": storage_write_service_account.email,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             storage_write_service_account,
///             example,
///             admin,
///         ]))
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Storage.Bucket("example", new()
///     {
///         Name = "example-bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var storageWriteServiceAccount = new Gcp.ServiceAccount.Account("storage_write_service_account", new()
///     {
///         AccountId = "example-stw",
///         DisplayName = "Storage Write Service Account",
///     });
///
///     var admin = new Gcp.Storage.BucketIAMMember("admin", new()
///     {
///         Bucket = example.Name,
///         Role = "roles/storage.admin",
///         Member = storageWriteServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = exampleTopic.Id,
///         CloudStorageConfig = new Gcp.PubSub.Inputs.SubscriptionCloudStorageConfigArgs
///         {
///             Bucket = example.Name,
///             FilenamePrefix = "pre-",
///             FilenameSuffix = "-_34242",
///             FilenameDatetimeFormat = "YYYY-MM-DD/hh_mm_ssZ",
///             MaxBytes = 1000,
///             MaxDuration = "300s",
///             ServiceAccountEmail = storageWriteServiceAccount.Email,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             storageWriteServiceAccount,
///             example,
///             admin,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := storage.NewBucket(ctx, "example", &storage.BucketArgs{
/// 			Name:                     pulumi.String("example-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		storageWriteServiceAccount, err := serviceaccount.NewAccount(ctx, "storage_write_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("example-stw"),
/// 			DisplayName: pulumi.String("Storage Write Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := storage.NewBucketIAMMember(ctx, "admin", &storage.BucketIAMMemberArgs{
/// 			Bucket: example.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: storageWriteServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: exampleTopic.ID(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_34242"),
/// 				FilenameDatetimeFormat: pulumi.String("YYYY-MM-DD/hh_mm_ssZ"),
/// 				MaxBytes:               pulumi.Int(1000),
/// 				MaxDuration:            pulumi.String("300s"),
/// 				ServiceAccountEmail:    storageWriteServiceAccount.Email,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			storageWriteServiceAccount,
/// 			example,
/// 			admin,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionCloudStorageConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .name("example-bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var storageWriteServiceAccount = new Account("storageWriteServiceAccount", AccountArgs.builder()
///             .accountId("example-stw")
///             .displayName("Storage Write Service Account")
///             .build());
///
///         var admin = new BucketIAMMember("admin", BucketIAMMemberArgs.builder()
///             .bucket(example.name())
///             .role("roles/storage.admin")
///             .member(storageWriteServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(exampleTopic.id())
///             .cloudStorageConfig(SubscriptionCloudStorageConfigArgs.builder()
///                 .bucket(example.name())
///                 .filenamePrefix("pre-")
///                 .filenameSuffix("-_34242")
///                 .filenameDatetimeFormat("YYYY-MM-DD/hh_mm_ssZ")
///                 .maxBytes(1000)
///                 .maxDuration("300s")
///                 .serviceAccountEmail(storageWriteServiceAccount.email())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     storageWriteServiceAccount,
///                     example,
///                     admin)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:Bucket
///     properties:
///       name: example-bucket
///       location: US
///       uniformBucketLevelAccess: true
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${exampleTopic.id}
///       cloudStorageConfig:
///         bucket: ${example.name}
///         filenamePrefix: pre-
///         filenameSuffix: -_34242
///         filenameDatetimeFormat: YYYY-MM-DD/hh_mm_ssZ
///         maxBytes: 1000
///         maxDuration: 300s
///         serviceAccountEmail: ${storageWriteServiceAccount.email}
///     options:
///       dependsOn:
///         - ${storageWriteServiceAccount}
///         - ${example}
///         - ${admin}
///   storageWriteServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: storage_write_service_account
///     properties:
///       accountId: example-stw
///       displayName: Storage Write Service Account
///   admin:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${example.name}
///       role: roles/storage.admin
///       member: serviceAccount:${storageWriteServiceAccount.email}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Pubsub Subscription Single Smt
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     messageTransforms: [{
///         javascriptUdf: {
///             functionName: "isYearEven",
///             code: `function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// `,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     message_transforms=[{
///         "javascript_udf": {
///             "function_name": "isYearEven",
///             "code": """function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// """,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         MessageTransforms = new[]
///         {
///             new Gcp.PubSub.Inputs.SubscriptionMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.SubscriptionMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "isYearEven",
///                     Code = @"function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
/// ",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			MessageTransforms: pubsub.SubscriptionMessageTransformArray{
/// 				&pubsub.SubscriptionMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.SubscriptionMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("isYearEven"),
/// 						Code:         pulumi.String("function isYearEven(message, metadata) {\n  const data = JSON.parse(message.data);\n  return message.year %2 === 0;\n}\n"),
/// 					},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformJavascriptUdfArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .messageTransforms(SubscriptionMessageTransformArgs.builder()
///                 .javascriptUdf(SubscriptionMessageTransformJavascriptUdfArgs.builder()
///                     .functionName("isYearEven")
///                     .code("""
/// function isYearEven(message, metadata) {
///   const data = JSON.parse(message.data);
///   return message.year %2 === 0;
/// }
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       messageTransforms:
///         - javascriptUdf:
///             functionName: isYearEven
///             code: |
///               function isYearEven(message, metadata) {
///                 const data = JSON.parse(message.data);
///                 return message.year %2 === 0;
///               }
/// ```
///
/// ### Pubsub Subscription Multiple Smts
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     messageTransforms: [
///         {
///             javascriptUdf: {
///                 functionName: "redactSSN",
///                 code: `function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// `,
///             },
///         },
///         {
///             javascriptUdf: {
///                 functionName: "otherFunc",
///                 code: `function otherFunc(message, metadata) {
///   return null;
/// }
/// `,
///             },
///         },
///         {
///             disabled: true,
///             javascriptUdf: {
///                 functionName: "someSMTWeDisabled",
///                 code: "...",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     message_transforms=[
///         {
///             "javascript_udf": {
///                 "function_name": "redactSSN",
///                 "code": """function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// """,
///             },
///         },
///         {
///             "javascript_udf": {
///                 "function_name": "otherFunc",
///                 "code": """function otherFunc(message, metadata) {
///   return null;
/// }
/// """,
///             },
///         },
///         {
///             "disabled": True,
///             "javascript_udf": {
///                 "function_name": "someSMTWeDisabled",
///                 "code": "...",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         MessageTransforms = new[]
///         {
///             new Gcp.PubSub.Inputs.SubscriptionMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.SubscriptionMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "redactSSN",
///                     Code = @"function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// ",
///                 },
///             },
///             new Gcp.PubSub.Inputs.SubscriptionMessageTransformArgs
///             {
///                 JavascriptUdf = new Gcp.PubSub.Inputs.SubscriptionMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "otherFunc",
///                     Code = @"function otherFunc(message, metadata) {
///   return null;
/// }
/// ",
///                 },
///             },
///             new Gcp.PubSub.Inputs.SubscriptionMessageTransformArgs
///             {
///                 Disabled = true,
///                 JavascriptUdf = new Gcp.PubSub.Inputs.SubscriptionMessageTransformJavascriptUdfArgs
///                 {
///                     FunctionName = "someSMTWeDisabled",
///                     Code = "...",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID(),
/// 			MessageTransforms: pubsub.SubscriptionMessageTransformArray{
/// 				&pubsub.SubscriptionMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.SubscriptionMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("redactSSN"),
/// 						Code: pulumi.String(`function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
/// `),
/// 					},
/// 				},
/// 				&pubsub.SubscriptionMessageTransformArgs{
/// 					JavascriptUdf: &pubsub.SubscriptionMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("otherFunc"),
/// 						Code:         pulumi.String("function otherFunc(message, metadata) {\n  return null;\n}\n"),
/// 					},
/// 				},
/// 				&pubsub.SubscriptionMessageTransformArgs{
/// 					Disabled: pulumi.Bool(true),
/// 					JavascriptUdf: &pubsub.SubscriptionMessageTransformJavascriptUdfArgs{
/// 						FunctionName: pulumi.String("someSMTWeDisabled"),
/// 						Code:         pulumi.String("..."),
/// 					},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformJavascriptUdfArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .messageTransforms(
///                 SubscriptionMessageTransformArgs.builder()
///                     .javascriptUdf(SubscriptionMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("redactSSN")
///                         .code("""
/// function redactSSN(message, metadata) {
///   const data = JSON.parse(message.data);
///   delete data['ssn'];
///   message.data = JSON.stringify(data);
///   return message;
/// }
///                         """)
///                         .build())
///                     .build(),
///                 SubscriptionMessageTransformArgs.builder()
///                     .javascriptUdf(SubscriptionMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("otherFunc")
///                         .code("""
/// function otherFunc(message, metadata) {
///   return null;
/// }
///                         """)
///                         .build())
///                     .build(),
///                 SubscriptionMessageTransformArgs.builder()
///                     .disabled(true)
///                     .javascriptUdf(SubscriptionMessageTransformJavascriptUdfArgs.builder()
///                         .functionName("someSMTWeDisabled")
///                         .code("...")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       messageTransforms:
///         - javascriptUdf:
///             functionName: redactSSN
///             code: |
///               function redactSSN(message, metadata) {
///                 const data = JSON.parse(message.data);
///                 delete data['ssn'];
///                 message.data = JSON.stringify(data);
///                 return message;
///               }
///         - javascriptUdf:
///             functionName: otherFunc
///             code: |
///               function otherFunc(message, metadata) {
///                 return null;
///               }
///         - disabled: true
///           javascriptUdf:
///             functionName: someSMTWeDisabled
///             code: '...'
/// ```
///
/// ### Pubsub Subscription Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const project = gcp.organizations.getProject({});
/// const tagKey = new gcp.tags.TagKey("tag_key", {
///     parent: project.then(project => project.id),
///     shortName: "tag_key",
/// }, {
///     dependsOn: [example],
/// });
/// const tagValue = new gcp.tags.TagValue("tag_value", {
///     parent: tagKey.id,
///     shortName: "tag_value",
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     tags: pulumi.all([tagKey.namespacedName, tagValue.shortName]).apply(([namespacedName, shortName]) => {
///         [namespacedName]: shortName,
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// project = gcp.organizations.get_project()
/// tag_key = gcp.tags.TagKey("tag_key",
///     parent=project.id,
///     short_name="tag_key",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// tag_value = gcp.tags.TagValue("tag_value",
///     parent=tag_key.id,
///     short_name="tag_value")
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     tags=pulumi.Output.all(
///         namespaced_name=tag_key.namespaced_name,
///         short_name=tag_value.short_name
/// ).apply(lambda resolved_outputs: {
///         resolved_outputs['namespaced_name']: resolved_outputs['short_name'],
///     })
/// )
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var tagKey = new Gcp.Tags.TagKey("tag_key", new()
///     {
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         ShortName = "tag_key",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var tagValue = new Gcp.Tags.TagValue("tag_value", new()
///     {
///         Parent = tagKey.Id,
///         ShortName = "tag_value",
///     });
///
///     var exampleSubscription = new Gcp.PubSub.Subscription("example", new()
///     {
///         Name = "example-subscription",
///         Topic = example.Id,
///         Tags = Output.Tuple(tagKey.NamespacedName, tagValue.ShortName).Apply(values =>
///         {
///             var namespacedName = values.Item1;
///             var shortName = values.Item2;
///             return
///             {
///                 { namespacedName, shortName },
///             };
///         }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// Name: pulumi.String("example-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// Parent: pulumi.String(project.Id),
/// ShortName: pulumi.String("tag_key"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// Parent: tagKey.ID(),
/// ShortName: pulumi.String("tag_value"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// Name: pulumi.String("example-subscription"),
/// Topic: example.ID(),
/// Tags: pulumi.All(tagKey.NamespacedName,tagValue.ShortName).ApplyT(func(_args []interface{}) (map[string]string, error) {
/// namespacedName := _args[0].(string)
/// shortName := _args[1].(string)
/// return map[string]string{
/// namespacedName: shortName,
/// }, nil
/// }).(pulumi.Map[string]stringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var tagKey = new TagKey("tagKey", TagKeyArgs.builder()
///             .parent(project.id())
///             .shortName("tag_key")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var tagValue = new TagValue("tagValue", TagValueArgs.builder()
///             .parent(tagKey.id())
///             .shortName("tag_value")
///             .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .tags(Output.tuple(tagKey.namespacedName(), tagValue.shortName()).applyValue(values -> {
///                 var namespacedName = values.t1;
///                 var shortName = values.t2;
///                 return Map.of(namespacedName, shortName);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Topic
///     properties:
///       name: example-topic
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       tags:
///         ${tagKey.namespacedName}: ${tagValue.shortName}
///   tagKey:
///     type: gcp:tags:TagKey
///     name: tag_key
///     properties:
///       parent: ${project.id}
///       shortName: tag_key
///     options:
///       dependsOn:
///         - ${example}
///   tagValue:
///     type: gcp:tags:TagValue
///     name: tag_value
///     properties:
///       parent: ${tagKey.id}
///       shortName: tag_value
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
/// * `projects/{{project}}/subscriptions/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default projects/{{project}}/subscriptions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default {{name}}
/// ```
class Subscription extends pulumi.CustomResource {
  /// This value is the maximum time after a subscriber receives a message
  /// before the subscriber should acknowledge the message. After message
  /// delivery but before the ack deadline expires and before the message is
  /// acknowledged, it is an outstanding message and will not be delivered
  /// again during that time (on a best-effort basis).
  /// For pull subscriptions, this value is used as the initial value for
  /// the ack deadline. To override this value for a given message, call
  /// subscriptions.modifyAckDeadline with the corresponding ackId if using
  /// pull. The minimum custom deadline you can specify is 10 seconds. The
  /// maximum custom deadline you can specify is 600 seconds (10 minutes).
  /// If this parameter is 0, a default value of 10 seconds is used.
  /// For push delivery, this value is also used to set the request timeout
  /// for the call to the push endpoint.
  /// If the subscriber never acknowledges the message, the Pub/Sub system
  /// will eventually redeliver the message.
  late final pulumi.Output<int> ackDeadlineSeconds;
  /// If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionBigqueryConfig?> bigqueryConfig;
  /// If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionCloudStorageConfig?> cloudStorageConfig;
  /// A policy that specifies the conditions for dead lettering messages in
  /// this subscription. If dead_letter_policy is not set, dead lettering
  /// is disabled.
  /// The Cloud Pub/Sub service account associated with this subscription's
  /// parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionDeadLetterPolicy?> deadLetterPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If `true`, Pub/Sub provides the following guarantees for the delivery
  /// of a message with a given value of messageId on this Subscriptions':
  /// - The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.
  /// - An acknowledged message will not be resent to a subscriber.
  /// Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery`
  /// is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values
  late final pulumi.Output<bool?> enableExactlyOnceDelivery;
  /// If `true`, messages published with the same orderingKey in PubsubMessage will be delivered to
  /// the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
  /// may be delivered in any order.
  late final pulumi.Output<bool?> enableMessageOrdering;
  /// A policy that specifies the conditions for this subscription's expiration.
  /// A subscription is considered active as long as any connected subscriber
  /// is successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If expirationPolicy is not set, a default
  /// policy with ttl of 31 days will be used.  If it is set but ttl is "", the
  /// resource never expires.  The minimum allowed value for expirationPolicy.ttl
  /// is 1 day.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionExpirationPolicy> expirationPolicy;
  /// The subscription only delivers the messages that match the filter.
  /// Pub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages
  /// by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
  /// you can't modify the filter.
  late final pulumi.Output<String?> filter;
  /// A set of key/value label pairs to assign to this Subscription.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// How long to retain unacknowledged messages in the subscription's
  /// backlog, from the moment a message is published. If
  /// retain_acked_messages is true, then this also configures the retention
  /// of acknowledged messages, and thus configures how far back in time a
  /// subscriptions.seek can be done. Defaults to 7 days. Cannot be more
  /// than 31 days (`"2678400s"`) or less than 10 minutes (`"600s"`).
  /// A duration in seconds with up to nine fractional digits, terminated
  /// by 's'. Example: `"600.5s"`.
  late final pulumi.Output<String?> messageRetentionDuration;
  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  late final pulumi.Output<List<SubscriptionMessageTransform>?> messageTransforms;
  /// Name of the subscription.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// If push delivery is used with this subscription, this field is used to
  /// configure it. An empty pushConfig signifies that the subscriber will
  /// pull and ack messages using API methods.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionPushConfig?> pushConfig;
  /// Indicates whether to retain acknowledged messages. If `true`, then
  /// messages are not expunged from the subscription's backlog, even if
  /// they are acknowledged, until they fall out of the
  /// messageRetentionDuration window.
  late final pulumi.Output<bool?> retainAckedMessages;
  /// A policy that specifies how Pub/Sub retries message delivery for this subscription.
  /// If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionRetryPolicy?> retryPolicy;
  /// Input only. Resource manager tags to be bound to the subscription. Tag
  /// keys and values have the same definition as resource manager tags. Keys
  /// must be in the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
  /// (as in the id property of a google_pubsub_topic), or just a topic name if
  /// the topic is in the same project as the subscription.
  late final pulumi.Output<String> topic;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_pubsub_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.bigqueryConfig = registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig');
    this.cloudStorageConfig = registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig');
    this.deadLetterPolicy = registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableExactlyOnceDelivery = registerOutput<bool?>('enableExactlyOnceDelivery');
    this.enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    this.expirationPolicy = registerOutput<SubscriptionExpirationPolicy>('expirationPolicy');
    this.filter = registerOutput<String?>('filter');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    this.messageTransforms = registerOutput<List<SubscriptionMessageTransform>?>('messageTransforms');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig');
    this.retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    this.retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topic = registerOutput<String>('topic');
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
          'gcp:pubsub/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.bigqueryConfig = registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig');
    this.cloudStorageConfig = registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig');
    this.deadLetterPolicy = registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableExactlyOnceDelivery = registerOutput<bool?>('enableExactlyOnceDelivery');
    this.enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    this.expirationPolicy = registerOutput<SubscriptionExpirationPolicy>('expirationPolicy');
    this.filter = registerOutput<String?>('filter');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    this.messageTransforms = registerOutput<List<SubscriptionMessageTransform>?>('messageTransforms');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig');
    this.retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    this.retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topic = registerOutput<String>('topic');
  }
}
