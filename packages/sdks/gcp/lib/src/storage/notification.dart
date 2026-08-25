import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_args.dart';
import 'notification_state.dart';

/// Creates a new notification configuration on a specified bucket, establishing a flow of event notifications from GCS to a Cloud Pub/Sub topic.
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/pubsub-notifications)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/notifications).
///
/// In order to enable notifications, a special Google Cloud Storage service account unique to the project
/// must exist and have the IAM permission "projects.topics.publish" for a Cloud Pub/Sub topic in the project.
/// This service account is not created automatically when a project is created.
/// To ensure the service account exists and obtain its email address for use in granting the correct IAM permission, use the
/// [`gcp.storage.getProjectServiceAccount`](https://www.terraform.io/docs/providers/google/d/storage_project_service_account.html)
/// datasource's `emailAddress` value, and see below for an example of enabling notifications by granting the correct IAM permission.
/// See [the notifications documentation](https://cloud.google.com/storage/docs/gsutil/commands/notification) for more details.
///
/// &gt;**NOTE**: This resource can affect your storage IAM policy. If you are using this in the same config as your storage IAM policy resources, consider
/// making this resource dependent on those IAM resources via `dependsOn`. This will safeguard against errors due to IAM race conditions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Enable notifications by giving the correct IAM permission to the unique service account.
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const topic = new gcp.pubsub.Topic("topic", {name: "default_topic"});
/// const binding = new gcp.pubsub.TopicIAMBinding("binding", {
///     topic: topic.id,
///     role: "roles/pubsub.publisher",
///     members: [gcsAccount.then(gcsAccount => `serviceAccount:${gcsAccount.emailAddress}`)],
/// });
/// // End enabling notifications
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "default_bucket",
///     location: "US",
/// });
/// const notification = new gcp.storage.Notification("notification", {
///     bucket: bucket.name,
///     payloadFormat: "JSON_API_V1",
///     topic: topic.id,
///     eventTypes: [
///         "OBJECT_FINALIZE",
///         "OBJECT_METADATA_UPDATE",
///     ],
///     customAttributes: {
///         "new-attribute": "new-attribute-value",
///     },
/// }, {
///     dependsOn: [binding],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Enable notifications by giving the correct IAM permission to the unique service account.
/// gcs_account = gcp.storage.get_project_service_account()
/// topic = gcp.pubsub.Topic("topic", name="default_topic")
/// binding = gcp.pubsub.TopicIAMBinding("binding",
///     topic=topic.id,
///     role="roles/pubsub.publisher",
///     members=[f"serviceAccount:{gcs_account.email_address}"])
/// # End enabling notifications
/// bucket = gcp.storage.Bucket("bucket",
///     name="default_bucket",
///     location="US")
/// notification = gcp.storage.Notification("notification",
///     bucket=bucket.name,
///     payload_format="JSON_API_V1",
///     topic=topic.id,
///     event_types=[
///         "OBJECT_FINALIZE",
///         "OBJECT_METADATA_UPDATE",
///     ],
///     custom_attributes={
///         "new-attribute": "new-attribute-value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[binding]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Enable notifications by giving the correct IAM permission to the unique service account.
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "default_topic",
///     });
///
///     var binding = new Gcp.PubSub.TopicIAMBinding("binding", new()
///     {
///         Topic = topic.Id,
///         Role = "roles/pubsub.publisher",
///         Members = new[]
///         {
///             $"serviceAccount:{gcsAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.EmailAddress)}",
///         },
///     });
///
///     // End enabling notifications
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "default_bucket",
///         Location = "US",
///     });
///
///     var notification = new Gcp.Storage.Notification("notification", new()
///     {
///         Bucket = bucket.Name,
///         PayloadFormat = "JSON_API_V1",
///         Topic = topic.Id,
///         EventTypes = new[]
///         {
///             "OBJECT_FINALIZE",
///             "OBJECT_METADATA_UPDATE",
///         },
///         CustomAttributes =
///         {
///             { "new-attribute", "new-attribute-value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             binding,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Enable notifications by giving the correct IAM permission to the unique service account.
/// 		gcsAccount, err := storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("default_topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		binding, err := pubsub.NewTopicIAMBinding(ctx, "binding", &pubsub.TopicIAMBindingArgs{
/// 			Topic: topic.ID().ToIDOutput().ToStringOutput(),
/// 			Role:  pulumi.String("roles/pubsub.publisher"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.Sprintf("serviceAccount:%v", gcsAccount.EmailAddress),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// End enabling notifications
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("default_bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewNotification(ctx, "notification", &storage.NotificationArgs{
/// 			Bucket:        bucket.Name,
/// 			PayloadFormat: pulumi.String("JSON_API_V1"),
/// 			Topic:         topic.ID().ToIDOutput().ToStringOutput(),
/// 			EventTypes: pulumi.StringArray{
/// 				pulumi.String("OBJECT_FINALIZE"),
/// 				pulumi.String("OBJECT_METADATA_UPDATE"),
/// 			},
/// 			CustomAttributes: pulumi.StringMap{
/// 				"new-attribute": pulumi.String("new-attribute-value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			binding,
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
/// data "gcp_storage_getprojectserviceaccount" "gcsAccount" {
/// }
///
/// resource "gcp_storage_notification" "notification" {
///   depends_on     = [gcp_pubsub_topiciambinding.binding]
///   bucket         = gcp_storage_bucket.bucket.name
///   payload_format = "JSON_API_V1"
///   topic          = gcp_pubsub_topic.topic.id
///   event_types    = ["OBJECT_FINALIZE", "OBJECT_METADATA_UPDATE"]
///   custom_attributes = {
///     "new-attribute" = "new-attribute-value"
///   }
/// }
/// resource "gcp_pubsub_topiciambinding" "binding" {
///   topic   = gcp_pubsub_topic.topic.id
///   role    = "roles/pubsub.publisher"
///   members = ["serviceAccount:${data.gcp_storage_getprojectserviceaccount.gcsAccount.email_address}"]
/// }
/// // End enabling notifications
/// resource "gcp_storage_bucket" "bucket" {
///   name     = "default_bucket"
///   location = "US"
/// }
/// resource "gcp_pubsub_topic" "topic" {
///   name = "default_topic"
/// }
/// // Enable notifications by giving the correct IAM permission to the unique service account.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMBinding;
/// import com.pulumi.gcp.pubsub.TopicIAMBindingArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.Notification;
/// import com.pulumi.gcp.storage.NotificationArgs;
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
///         // Enable notifications by giving the correct IAM permission to the unique service account.
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("default_topic")
///             .build());
///
///         var binding = new TopicIAMBinding("binding", TopicIAMBindingArgs.builder()
///             .topic(topic.id())
///             .role("roles/pubsub.publisher")
///             .members(String.format("serviceAccount:%s", gcsAccount.emailAddress()))
///             .build());
///
///         // End enabling notifications
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("default_bucket")
///             .location("US")
///             .build());
///
///         var notification = new Notification("notification", NotificationArgs.builder()
///             .bucket(bucket.name())
///             .payloadFormat("JSON_API_V1")
///             .topic(topic.id())
///             .eventTypes(
///                 "OBJECT_FINALIZE",
///                 "OBJECT_METADATA_UPDATE")
///             .customAttributes(Map.of("new-attribute", "new-attribute-value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(binding)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   notification:
///     type: gcp:storage:Notification
///     properties:
///       bucket: ${bucket.name}
///       payloadFormat: JSON_API_V1
///       topic: ${topic.id}
///       eventTypes:
///         - OBJECT_FINALIZE
///         - OBJECT_METADATA_UPDATE
///       customAttributes:
///         new-attribute: new-attribute-value
///     options:
///       dependsOn:
///         - ${binding}
///   binding:
///     type: gcp:pubsub:TopicIAMBinding
///     properties:
///       topic: ${topic.id}
///       role: roles/pubsub.publisher
///       members:
///         - serviceAccount:${gcsAccount.emailAddress}
///   # End enabling notifications
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: default_bucket
///       location: US
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: default_topic
/// variables:
///   # Enable notifications by giving the correct IAM permission to the unique service account.
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Storage notifications can be imported using any of these accepted formats:
///
/// * `{{bucket_name}}/notificationConfigs/{{id}}`
///
///
/// When using the `pulumi import` command, Storage notifications can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/notification:Notification default {{bucket_name}}/notificationConfigs/{{id}}
/// ```
class Notification extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  late final pulumi.Output<Map<String, String>?> customAttributes;
  /// List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  late final pulumi.Output<List<String>?> eventTypes;
  /// The ID of the created notification.
  late final pulumi.Output<String> notificationId;
  /// Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  late final pulumi.Output<String?> objectNamePrefix;
  /// The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  late final pulumi.Output<String> payloadFormat;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The Cloud PubSub topic to which this subscription publishes. Expects either the
  /// topic name, assumed to belong to the default GCP provider project, or the project-level name,
  /// i.e. `projects/my-gcp-project/topics/my-topic` or `my-topic`. If the project is not set in the provider,
  /// you will need to use the project-level name.
  ///
  /// - - -
  late final pulumi.Output<String> topic;

  /// Creates a new [Notification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Notification]. {@macro pulumi_storage_notification_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Notification(
    String name, {
    NotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/notification:Notification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    customAttributes = registerOutput<Map<String, String>?>('customAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventTypes = registerOutput<List<String>?>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationId = registerOutput<String>('notificationId');
    objectNamePrefix = registerOutput<String?>('objectNamePrefix');
    payloadFormat = registerOutput<String>('payloadFormat');
    selfLink = registerOutput<String>('selfLink');
    topic = registerOutput<String>('topic');
  }

  /// Gets an existing [Notification] resource's state with the given [name] and [id].
  static Notification get(
    String name,
    pulumi.Input<String> id, {
    NotificationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Notification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Notification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/notification:Notification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    customAttributes = registerOutput<Map<String, String>?>('customAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventTypes = registerOutput<List<String>?>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationId = registerOutput<String>('notificationId');
    objectNamePrefix = registerOutput<String?>('objectNamePrefix');
    payloadFormat = registerOutput<String>('payloadFormat');
    selfLink = registerOutput<String>('selfLink');
    topic = registerOutput<String>('topic');
  }

  /// Creates a typed reference to an existing [Notification] resource.
  Notification.reference(String urn)
    : super(
        'gcp:storage/notification:Notification',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    customAttributes = registerOutput<Map<String, String>?>('customAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventTypes = registerOutput<List<String>?>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationId = registerOutput<String>('notificationId');
    objectNamePrefix = registerOutput<String?>('objectNamePrefix');
    payloadFormat = registerOutput<String>('payloadFormat');
    selfLink = registerOutput<String>('selfLink');
    topic = registerOutput<String>('topic');
  }
}
