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
/// &gt; **Note:** You can retrieve the email of the Google Managed Pub/Sub Service Account used for forwarding
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
/// 			Topic:              example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name                 = "example-subscription"
///   topic                = gcp_pubsub_topic.example.id
///   ack_deadline_seconds = 20
///   labels = {
///     "foo" = "bar"
///   }
///   push_config = {
///     push_endpoint = "https://example.com/push"
///     attributes = {
///       "x-goog-version" = "v1"
///     }
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   labels = {
///     "foo" = "bar"
///   }
///   message_retention_duration = "1200s"
///   retain_acked_messages      = true
///   ack_deadline_seconds       = 20
///   expiration_policy = {
///     ttl = "300000.5s"
///   }
///   retry_policy = {
///     minimum_backoff = "10s"
///   }
///   enable_message_ordering = false
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   labels = {
///     "foo" = "bar"
///   }
///   filter               = "    attributes.foo = \\\"foo\\\"\n    AND attributes.bar = \\\"bar\\\"\n"
///   ack_deadline_seconds = 20
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
/// 			DeadLetterPolicy: &pubsub.SubscriptionDeadLetterPolicyArgs{
/// 				DeadLetterTopic:     exampleDeadLetter.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_topic" "example_dead_letter" {
///   name = "example-topic-dead-letter"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   dead_letter_policy = {
///     dead_letter_topic     = gcp_pubsub_topic.example_dead_letter.id
///     max_delivery_attempts = 10
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   bigquery_config = {
///     table ="${gcp_bigquery_table.test.project}.${gcp_bigquery_table.test.dataset_id}.${gcp_bigquery_table.test.table_id}"
///   }
/// }
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "example_dataset"
/// }
/// resource "gcp_bigquery_table" "test" {
///   table_id            = "example_table"
///   dataset_id          = gcp_bigquery_dataset.test.dataset_id
///   schema              = "[\n  {\n    \\\"name\\\": \\\"data\\\",\n    \\\"type\\\": \\\"STRING\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\",\n    \\\"description\\\": \\\"The data\\\"\n  }\n]\n"
///   deletion_protection = false
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   bigquery_config = {
///     table            ="${gcp_bigquery_table.test.project}.${gcp_bigquery_table.test.dataset_id}.${gcp_bigquery_table.test.table_id}"
///     use_table_schema = true
///   }
/// }
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "example_dataset"
/// }
/// resource "gcp_bigquery_table" "test" {
///   table_id            = "example_table"
///   dataset_id          = gcp_bigquery_dataset.test.dataset_id
///   schema              = "[\n  {\n    \\\"name\\\": \\\"data\\\",\n    \\\"type\\\": \\\"STRING\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\",\n    \\\"description\\\": \\\"The data\\\"\n  }\n]\n"
///   deletion_protection = false
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [gcp_serviceaccount_account.bq_write_service_account, gcp_projects_iammember.bigquery_metadata_viewer, gcp_projects_iammember.bigquery_data_editor]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   bigquery_config = {
///     table                 ="${gcp_bigquery_table.test.project}.${gcp_bigquery_table.test.dataset_id}.${gcp_bigquery_table.test.table_id}"
///     service_account_email = gcp_serviceaccount_account.bq_write_service_account.email
///   }
/// }
/// resource "gcp_serviceaccount_account" "bq_write_service_account" {
///   account_id   = "example-bqw"
///   display_name = "BQ Write Service Account"
/// }
/// resource "gcp_projects_iammember" "bigquery_metadata_viewer" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/bigquery.metadataViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.bq_write_service_account.email}"
/// }
/// resource "gcp_projects_iammember" "bigquery_data_editor" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/bigquery.dataEditor"
///   member  ="serviceAccount:${gcp_serviceaccount_account.bq_write_service_account.email}"
/// }
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "example_dataset"
/// }
/// resource "gcp_bigquery_table" "test" {
///   deletion_protection = false
///   table_id            = "example_table"
///   dataset_id          = gcp_bigquery_dataset.test.dataset_id
///   schema              = "[\n  {\n    \\\"name\\\": \\\"data\\\",\n    \\\"type\\\": \\\"STRING\\\",\n    \\\"mode\\\": \\\"NULLABLE\\\",\n    \\\"description\\\": \\\"The data\\\"\n  }\n]\n"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         filenameSuffix: "-_75303",
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
///         "filename_suffix": "-_75303",
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
///             FilenameSuffix = "-_75303",
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
/// 			Topic: exampleTopic.ID().ToIDOutput().ToStringOutput(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_75303"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_storage_bucket" "example" {
///   name                        = "example-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [gcp_storage_bucket.example, gcp_storage_bucketiammember.admin]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   cloud_storage_config = {
///     bucket                   = gcp_storage_bucket.example.name
///     filename_prefix          = "pre-"
///     filename_suffix          = "-_75303"
///     filename_datetime_format = "YYYY-MM-DD/hh_mm_ssZ"
///     max_bytes                = 1000
///     max_duration             = "300s"
///     max_messages             = 1000
///   }
/// }
/// resource "gcp_storage_bucketiammember" "admin" {
///   bucket = gcp_storage_bucket.example.name
///   role   = "roles/storage.admin"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-pubsub.iam.gserviceaccount.com"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///                 .filenameSuffix("-_75303")
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
///         filenameSuffix: -_75303
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
/// ### Pubsub Subscription Push Cloudstorage Text
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
///         filenameSuffix: "-_72437",
///         filenameDatetimeFormat: "YYYY-MM-DD/hh_mm_ssZ",
///         maxBytes: 1000,
///         maxDuration: "300s",
///         maxMessages: 1000,
///         textConfig: {},
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
///         "filename_suffix": "-_72437",
///         "filename_datetime_format": "YYYY-MM-DD/hh_mm_ssZ",
///         "max_bytes": 1000,
///         "max_duration": "300s",
///         "max_messages": 1000,
///         "text_config": {},
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
///             FilenameSuffix = "-_72437",
///             FilenameDatetimeFormat = "YYYY-MM-DD/hh_mm_ssZ",
///             MaxBytes = 1000,
///             MaxDuration = "300s",
///             MaxMessages = 1000,
///             TextConfig = null,
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
/// 			Topic: exampleTopic.ID().ToIDOutput().ToStringOutput(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_72437"),
/// 				FilenameDatetimeFormat: pulumi.String("YYYY-MM-DD/hh_mm_ssZ"),
/// 				MaxBytes:               pulumi.Int(1000),
/// 				MaxDuration:            pulumi.String("300s"),
/// 				MaxMessages:            pulumi.Int(1000),
/// 				TextConfig:             &pubsub.SubscriptionCloudStorageConfigTextConfigArgs{},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_storage_bucket" "example" {
///   name                        = "example-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [gcp_storage_bucket.example, gcp_storage_bucketiammember.admin]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   cloud_storage_config = {
///     bucket                   = gcp_storage_bucket.example.name
///     filename_prefix          = "pre-"
///     filename_suffix          = "-_72437"
///     filename_datetime_format = "YYYY-MM-DD/hh_mm_ssZ"
///     max_bytes                = 1000
///     max_duration             = "300s"
///     max_messages             = 1000
///     text_config              = {}
///   }
/// }
/// resource "gcp_storage_bucketiammember" "admin" {
///   bucket = gcp_storage_bucket.example.name
///   role   = "roles/storage.admin"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-pubsub.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionCloudStorageConfigTextConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///                 .filenameSuffix("-_72437")
///                 .filenameDatetimeFormat("YYYY-MM-DD/hh_mm_ssZ")
///                 .maxBytes(1000)
///                 .maxDuration("300s")
///                 .maxMessages(1000)
///                 .textConfig(SubscriptionCloudStorageConfigTextConfigArgs.builder()
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
///         filenameSuffix: -_72437
///         filenameDatetimeFormat: YYYY-MM-DD/hh_mm_ssZ
///         maxBytes: 1000
///         maxDuration: 300s
///         maxMessages: 1000
///         textConfig: {}
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
///         filenameSuffix: "-_7864",
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
///         "filename_suffix": "-_7864",
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
///             FilenameSuffix = "-_7864",
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
/// 			Topic: exampleTopic.ID().ToIDOutput().ToStringOutput(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_7864"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_storage_bucket" "example" {
///   name                        = "example-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [gcp_storage_bucket.example, gcp_storage_bucketiammember.admin]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   cloud_storage_config = {
///     bucket                   = gcp_storage_bucket.example.name
///     filename_prefix          = "pre-"
///     filename_suffix          = "-_7864"
///     filename_datetime_format = "YYYY-MM-DD/hh_mm_ssZ"
///     max_bytes                = 1000
///     max_duration             = "300s"
///     max_messages             = 1000
///     avro_config = {
///       write_metadata   = true
///       use_topic_schema = true
///     }
///   }
/// }
/// resource "gcp_storage_bucketiammember" "admin" {
///   bucket = gcp_storage_bucket.example.name
///   role   = "roles/storage.admin"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-pubsub.iam.gserviceaccount.com"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///                 .filenameSuffix("-_7864")
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
///         filenameSuffix: -_7864
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
///         filenameSuffix: "-_70324",
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
///         "filename_suffix": "-_70324",
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
///             FilenameSuffix = "-_70324",
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
/// 			Topic: exampleTopic.ID().ToIDOutput().ToStringOutput(),
/// 			CloudStorageConfig: &pubsub.SubscriptionCloudStorageConfigArgs{
/// 				Bucket:                 example.Name,
/// 				FilenamePrefix:         pulumi.String("pre-"),
/// 				FilenameSuffix:         pulumi.String("-_70324"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_storage_bucket" "example" {
///   name                        = "example-bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [gcp_serviceaccount_account.storage_write_service_account, gcp_storage_bucket.example, gcp_storage_bucketiammember.admin]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   cloud_storage_config = {
///     bucket                   = gcp_storage_bucket.example.name
///     filename_prefix          = "pre-"
///     filename_suffix          = "-_70324"
///     filename_datetime_format = "YYYY-MM-DD/hh_mm_ssZ"
///     max_bytes                = 1000
///     max_duration             = "300s"
///     service_account_email    = gcp_serviceaccount_account.storage_write_service_account.email
///   }
/// }
/// resource "gcp_serviceaccount_account" "storage_write_service_account" {
///   account_id   = "example-stw"
///   display_name = "Storage Write Service Account"
/// }
/// resource "gcp_storage_bucketiammember" "admin" {
///   bucket = gcp_storage_bucket.example.name
///   role   = "roles/storage.admin"
///   member ="serviceAccount:${gcp_serviceaccount_account.storage_write_service_account.email}"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///                 .filenameSuffix("-_70324")
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
///         filenameSuffix: -_70324
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   message_transforms {
///     javascript_udf = {
///       function_name = "isYearEven"
///       code          = "function isYearEven(message, metadata) {\n  const data = JSON.parse(message.data);\n  return message.year %2 === 0;\n}\n"
///     }
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   message_transforms {
///     javascript_udf = {
///       function_name = "redactSSN"
///       code          = "function redactSSN(message, metadata) {\n  const data = JSON.parse(message.data);\n  delete data['ssn'];\n  message.data = JSON.stringify(data);\n  return message;\n}\n"
///     }
///   }
///   message_transforms {
///     javascript_udf = {
///       function_name = "otherFunc"
///       code          = "function otherFunc(message, metadata) {\n  return null;\n}\n"
///     }
///   }
///   message_transforms {
///     disabled = true
///     javascript_udf = {
///       function_name = "someSMTWeDisabled"
///       code          = "..."
///     }
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagKey, err := tags.NewTagKey(ctx, "tag_key", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String(project.Id),
/// 			ShortName: pulumi.String("tag_key"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue, err := tags.NewTagValue(ctx, "tag_value", &tags.TagValueArgs{
/// 			Parent:    tagKey.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("tag_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.All(tagKey.NamespacedName, tagValue.ShortName).ApplyT(func(_args []interface{}) (map[string]string, error) {
/// 				namespacedName := _args[0].(string)
/// 				shortName := _args[1].(string)
/// 				return map[string]string{
/// 					namespacedName: shortName,
/// 				}, nil
/// 			}).(pulumi.StringMapOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   name  = "example-subscription"
///   topic = gcp_pubsub_topic.example.id
///   tags = {
///     gcp_tags_tagkey.tag_key.namespaced_name = gcp_tags_tagvalue.tag_value.short_name
///   }
/// }
/// resource "gcp_tags_tagkey" "tag_key" {
///   depends_on = [gcp_pubsub_topic.example]
///   parent     = data.gcp_organizations_getproject.project.id
///   short_name = "tag_key"
/// }
/// resource "gcp_tags_tagvalue" "tag_value" {
///   parent     = gcp_tags_tagkey.tag_key.id
///   short_name = "tag_value"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
/// ### Pubsub Subscription Ai Inference
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const example = new gcp.pubsub.Topic("example", {name: "example-topic"});
/// const geminiQueryServiceAccount = new gcp.serviceaccount.Account("gemini_query_service_account", {
///     accountId: "example-sa",
///     displayName: "Gemini Query Service Account",
/// });
/// const geminiInferenceGet = new gcp.projects.IAMMember("gemini_inference_get", {
///     project: "my-project-name",
///     role: "roles/aiplatform.user",
///     member: pulumi.interpolate`serviceAccount:${geminiQueryServiceAccount.email}`,
/// });
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [geminiInferenceGet],
/// });
/// const exampleSubscription = new gcp.pubsub.Subscription("example", {
///     name: "example-subscription",
///     topic: example.id,
///     messageTransforms: [{
///         aiInference: {
///             endpoint: "projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///             unstructuredInference: {
///                 parameters: {
///                     max_tokens: "25000",
///                 },
///             },
///             serviceAccountEmail: geminiQueryServiceAccount.email,
///         },
///     }],
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// example = gcp.pubsub.Topic("example", name="example-topic")
/// gemini_query_service_account = gcp.serviceaccount.Account("gemini_query_service_account",
///     account_id="example-sa",
///     display_name="Gemini Query Service Account")
/// gemini_inference_get = gcp.projects.IAMMember("gemini_inference_get",
///     project="my-project-name",
///     role="roles/aiplatform.user",
///     member=gemini_query_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[gemini_inference_get]))
/// example_subscription = gcp.pubsub.Subscription("example",
///     name="example-subscription",
///     topic=example.id,
///     message_transforms=[{
///         "ai_inference": {
///             "endpoint": "projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///             "unstructured_inference": {
///                 "parameters": {
///                     "max_tokens": "25000",
///                 },
///             },
///             "service_account_email": gemini_query_service_account.email,
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var geminiQueryServiceAccount = new Gcp.ServiceAccount.Account("gemini_query_service_account", new()
///     {
///         AccountId = "example-sa",
///         DisplayName = "Gemini Query Service Account",
///     });
///
///     var geminiInferenceGet = new Gcp.Projects.IAMMember("gemini_inference_get", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/aiplatform.user",
///         Member = geminiQueryServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             geminiInferenceGet,
///         },
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
///                 AiInference = new Gcp.PubSub.Inputs.SubscriptionMessageTransformAiInferenceArgs
///                 {
///                     Endpoint = "projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash",
///                     UnstructuredInference = new Gcp.PubSub.Inputs.SubscriptionMessageTransformAiInferenceUnstructuredInferenceArgs
///                     {
///                         Parameters =
///                         {
///                             { "max_tokens", "25000" },
///                         },
///                     },
///                     ServiceAccountEmail = geminiQueryServiceAccount.Email,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
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
/// 		geminiQueryServiceAccount, err := serviceaccount.NewAccount(ctx, "gemini_query_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("example-sa"),
/// 			DisplayName: pulumi.String("Gemini Query Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		geminiInferenceGet, err := projects.NewIAMMember(ctx, "gemini_inference_get", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/aiplatform.user"),
/// 			Member: geminiQueryServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			geminiInferenceGet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "example", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("example-subscription"),
/// 			Topic: example.ID().ToIDOutput().ToStringOutput(),
/// 			MessageTransforms: pubsub.SubscriptionMessageTransformArray{
/// 				&pubsub.SubscriptionMessageTransformArgs{
/// 					AiInference: &pubsub.SubscriptionMessageTransformAiInferenceArgs{
/// 						Endpoint: pulumi.String("projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash"),
/// 						UnstructuredInference: &pubsub.SubscriptionMessageTransformAiInferenceUnstructuredInferenceArgs{
/// 							Parameters: pulumi.StringMap{
/// 								"max_tokens": pulumi.String("25000"),
/// 							},
/// 						},
/// 						ServiceAccountEmail: geminiQueryServiceAccount.Email,
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_pubsub_topic" "example" {
///   name = "example-topic"
/// }
/// resource "gcp_serviceaccount_account" "gemini_query_service_account" {
///   account_id   = "example-sa"
///   display_name = "Gemini Query Service Account"
/// }
/// resource "gcp_projects_iammember" "gemini_inference_get" {
///   project = "my-project-name"
///   role    = "roles/aiplatform.user"
///   member  ="serviceAccount:${gcp_serviceaccount_account.gemini_query_service_account.email}"
/// }
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_projects_iammember.gemini_inference_get]
///   create_duration = "120s"
/// }
/// resource "gcp_pubsub_subscription" "example" {
///   depends_on = [time_sleep.wait_120_seconds]
///   name       = "example-subscription"
///   topic      = gcp_pubsub_topic.example.id
///   message_transforms {
///     ai_inference = {
///       endpoint = "projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash"
///       unstructured_inference = {
///         parameters = {
///           "max_tokens" = 25000
///         }
///       }
///       service_account_email = gcp_serviceaccount_account.gemini_query_service_account.email
///     }
///   }
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformAiInferenceArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionMessageTransformAiInferenceUnstructuredInferenceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var geminiQueryServiceAccount = new Account("geminiQueryServiceAccount", AccountArgs.builder()
///             .accountId("example-sa")
///             .displayName("Gemini Query Service Account")
///             .build());
///
///         var geminiInferenceGet = new IAMMember("geminiInferenceGet", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/aiplatform.user")
///             .member(geminiQueryServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(geminiInferenceGet)
///                 .build());
///
///         var exampleSubscription = new Subscription("exampleSubscription", SubscriptionArgs.builder()
///             .name("example-subscription")
///             .topic(example.id())
///             .messageTransforms(SubscriptionMessageTransformArgs.builder()
///                 .aiInference(SubscriptionMessageTransformAiInferenceArgs.builder()
///                     .endpoint("projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash")
///                     .unstructuredInference(SubscriptionMessageTransformAiInferenceUnstructuredInferenceArgs.builder()
///                         .parameters(Map.of("max_tokens", "25000"))
///                         .build())
///                     .serviceAccountEmail(geminiQueryServiceAccount.email())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
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
///   geminiQueryServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: gemini_query_service_account
///     properties:
///       accountId: example-sa
///       displayName: Gemini Query Service Account
///   geminiInferenceGet:
///     type: gcp:projects:IAMMember
///     name: gemini_inference_get
///     properties:
///       project: my-project-name
///       role: roles/aiplatform.user
///       member: serviceAccount:${geminiQueryServiceAccount.email}
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${geminiInferenceGet}
///   exampleSubscription:
///     type: gcp:pubsub:Subscription
///     name: example
///     properties:
///       name: example-subscription
///       topic: ${example.id}
///       messageTransforms:
///         - aiInference:
///             endpoint: projects/my-project-name/locations/us-central1/publishers/google/models/gemini-2.5-flash
///             unstructuredInference:
///               parameters:
///                 max_tokens: 25000
///             serviceAccountEmail: ${geminiQueryServiceAccount.email}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
/// ```
///
///
/// ## Import
///
/// Subscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/subscriptions/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Subscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default projects/{{project}}/subscriptions/{{name}}
/// $ pulumi import gcp:pubsub/subscription:Subscription default {{project}}/{{name}}
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
  /// this subscription. If deadLetterPolicy is not set, dead lettering
  /// is disabled.
  /// The Cloud Pub/Sub service account associated with this subscription's
  /// parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  /// Structure is documented below.
  late final pulumi.Output<SubscriptionDeadLetterPolicy?> deadLetterPolicy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If `true`, Pub/Sub provides the following guarantees for the delivery
  /// of a message with a given value of messageId on this Subscriptions':
  /// - The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.
  /// - An acknowledged message will not be resent to a subscriber.
  /// Note that subscribers may still receive multiple copies of a message when `enableExactlyOnceDelivery`
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// How long to retain unacknowledged messages in the subscription's
  /// backlog, from the moment a message is published. If
  /// retainAckedMessages is true, then this also configures the retention
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
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    bigqueryConfig = registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionBigqueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudStorageConfig = registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionCloudStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterPolicy = registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionDeadLetterPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableExactlyOnceDelivery = registerOutput<bool?>('enableExactlyOnceDelivery');
    enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    expirationPolicy = registerOutput<SubscriptionExpirationPolicy>('expirationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionExpirationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filter = registerOutput<String?>('filter');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    messageTransforms = registerOutput<List<SubscriptionMessageTransform>?>('messageTransforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionMessageTransform>(guardedValue, (value) => SubscriptionMessageTransform.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionPushConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topic = registerOutput<String>('topic');
  }

  /// Gets an existing [Subscription] resource's state with the given [name] and [id].
  static Subscription get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Subscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    bigqueryConfig = registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionBigqueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudStorageConfig = registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionCloudStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterPolicy = registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionDeadLetterPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableExactlyOnceDelivery = registerOutput<bool?>('enableExactlyOnceDelivery');
    enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    expirationPolicy = registerOutput<SubscriptionExpirationPolicy>('expirationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionExpirationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filter = registerOutput<String?>('filter');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    messageTransforms = registerOutput<List<SubscriptionMessageTransform>?>('messageTransforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionMessageTransform>(guardedValue, (value) => SubscriptionMessageTransform.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionPushConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topic = registerOutput<String>('topic');
  }

  /// Creates a typed reference to an existing [Subscription] resource.
  Subscription.reference(String urn)
    : super(
        'gcp:pubsub/subscription:Subscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    bigqueryConfig = registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionBigqueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudStorageConfig = registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionCloudStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterPolicy = registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionDeadLetterPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableExactlyOnceDelivery = registerOutput<bool?>('enableExactlyOnceDelivery');
    enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    expirationPolicy = registerOutput<SubscriptionExpirationPolicy>('expirationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionExpirationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filter = registerOutput<String?>('filter');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    messageRetentionDuration = registerOutput<String?>('messageRetentionDuration');
    messageTransforms = registerOutput<List<SubscriptionMessageTransform>?>('messageTransforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionMessageTransform>(guardedValue, (value) => SubscriptionMessageTransform.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionPushConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topic = registerOutput<String>('topic');
  }
}
