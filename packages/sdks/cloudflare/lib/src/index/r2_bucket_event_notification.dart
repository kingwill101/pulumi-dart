import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_event_notification_args.dart';
import 'r2_bucket_event_notification_rule.dart';
import 'r2_bucket_event_notification_state.dart';

/// Accepted Permissions
///
/// - `Workers R2 Storage Read`
/// - `Workers R2 Storage Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2BucketEventNotification = new cloudflare.R2BucketEventNotification("example_r2_bucket_event_notification", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     queueId: "queue_id",
///     rules: [{
///         actions: [
///             "PutObject",
///             "CopyObject",
///         ],
///         description: "Notifications from source bucket to queue",
///         prefix: "img/",
///         suffix: ".jpeg",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket_event_notification = cloudflare.R2BucketEventNotification("example_r2_bucket_event_notification",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     queue_id="queue_id",
///     rules=[{
///         "actions": [
///             "PutObject",
///             "CopyObject",
///         ],
///         "description": "Notifications from source bucket to queue",
///         "prefix": "img/",
///         "suffix": ".jpeg",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2BucketEventNotification = new Cloudflare.R2BucketEventNotification("example_r2_bucket_event_notification", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         QueueId = "queue_id",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.R2BucketEventNotificationRuleArgs
///             {
///                 Actions = new[]
///                 {
///                     "PutObject",
///                     "CopyObject",
///                 },
///                 Description = "Notifications from source bucket to queue",
///                 Prefix = "img/",
///                 Suffix = ".jpeg",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewR2BucketEventNotification(ctx, "example_r2_bucket_event_notification", &cloudflare.R2BucketEventNotificationArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			QueueId:    pulumi.String("queue_id"),
/// 			Rules: cloudflare.R2BucketEventNotificationRuleArray{
/// 				&cloudflare.R2BucketEventNotificationRuleArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("PutObject"),
/// 						pulumi.String("CopyObject"),
/// 					},
/// 					Description: pulumi.String("Notifications from source bucket to queue"),
/// 					Prefix:      pulumi.String("img/"),
/// 					Suffix:      pulumi.String(".jpeg"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_r2bucketeventnotification" "example_r2_bucket_event_notification" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   queue_id    = "queue_id"
///   rules {
///     actions     = ["PutObject", "CopyObject"]
///     description = "Notifications from source bucket to queue"
///     prefix      = "img/"
///     suffix      = ".jpeg"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2BucketEventNotification;
/// import com.pulumi.cloudflare.R2BucketEventNotificationArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketEventNotificationRuleArgs;
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
///         var exampleR2BucketEventNotification = new R2BucketEventNotification("exampleR2BucketEventNotification", R2BucketEventNotificationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .queueId("queue_id")
///             .rules(R2BucketEventNotificationRuleArgs.builder()
///                 .actions(
///                     "PutObject",
///                     "CopyObject")
///                 .description("Notifications from source bucket to queue")
///                 .prefix("img/")
///                 .suffix(".jpeg")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2BucketEventNotification:
///     type: cloudflare:R2BucketEventNotification
///     name: example_r2_bucket_event_notification
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       queueId: queue_id
///       rules:
///         - actions:
///             - PutObject
///             - CopyObject
///           description: Notifications from source bucket to queue
///           prefix: img/
///           suffix: .jpeg
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2BucketEventNotification extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  /// Queue ID.
  late final pulumi.Output<String> queueId;
  /// Name of the queue.
  late final pulumi.Output<String> queueName;
  /// Array of rules to drive notifications.
  late final pulumi.Output<List<R2BucketEventNotificationRule>> rules;

  /// Creates a new [R2BucketEventNotification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2BucketEventNotification]. {@macro pulumi_index_r2_bucket_event_notification_r2_bucket_event_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2BucketEventNotification(
    String name, {
    R2BucketEventNotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketEventNotification:R2BucketEventNotification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    rules = registerOutput<List<R2BucketEventNotificationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketEventNotificationRule>(guardedValue, (value) => R2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [R2BucketEventNotification] resource's state with the given [name] and [id].
  static R2BucketEventNotification get(
    String name,
    pulumi.Input<String> id, {
    R2BucketEventNotificationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2BucketEventNotification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2BucketEventNotification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketEventNotification:R2BucketEventNotification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    rules = registerOutput<List<R2BucketEventNotificationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketEventNotificationRule>(guardedValue, (value) => R2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [R2BucketEventNotification] resource.
  R2BucketEventNotification.reference(String urn)
    : super(
        'cloudflare:index/r2BucketEventNotification:R2BucketEventNotification',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    rules = registerOutput<List<R2BucketEventNotificationRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketEventNotificationRule>(guardedValue, (value) => R2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
