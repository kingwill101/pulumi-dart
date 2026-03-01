import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_config_args.dart';
import 'notification_config_state.dart';
import 'notification_config_streaming_config.dart';

/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of
/// findings, assets and etc.
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about NotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Notification Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccNotification = new gcp.pubsub.Topic("scc_notification", {name: "my-topic"});
/// const customNotificationConfig = new gcp.securitycenter.NotificationConfig("custom_notification_config", {
///     configId: "my-config",
///     organization: "123456789",
///     description: "My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsubTopic: sccNotification.id,
///     streamingConfig: {
///         filter: "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_notification = gcp.pubsub.Topic("scc_notification", name="my-topic")
/// custom_notification_config = gcp.securitycenter.NotificationConfig("custom_notification_config",
///     config_id="my-config",
///     organization="123456789",
///     description="My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsub_topic=scc_notification.id,
///     streaming_config={
///         "filter": "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
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
///     var sccNotification = new Gcp.PubSub.Topic("scc_notification", new()
///     {
///         Name = "my-topic",
///     });
///
///     var customNotificationConfig = new Gcp.SecurityCenter.NotificationConfig("custom_notification_config", new()
///     {
///         ConfigId = "my-config",
///         Organization = "123456789",
///         Description = "My custom Cloud Security Command Center Finding Notification Configuration",
///         PubsubTopic = sccNotification.Id,
///         StreamingConfig = new Gcp.SecurityCenter.Inputs.NotificationConfigStreamingConfigArgs
///         {
///             Filter = "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sccNotification, err := pubsub.NewTopic(ctx, "scc_notification", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewNotificationConfig(ctx, "custom_notification_config", &securitycenter.NotificationConfigArgs{
/// 			ConfigId:     pulumi.String("my-config"),
/// 			Organization: pulumi.String("123456789"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Notification Configuration"),
/// 			PubsubTopic:  sccNotification.ID(),
/// 			StreamingConfig: &securitycenter.NotificationConfigStreamingConfigArgs{
/// 				Filter: pulumi.String("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\""),
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
/// import com.pulumi.gcp.securitycenter.NotificationConfig;
/// import com.pulumi.gcp.securitycenter.NotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.NotificationConfigStreamingConfigArgs;
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
///         var sccNotification = new Topic("sccNotification", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var customNotificationConfig = new NotificationConfig("customNotificationConfig", NotificationConfigArgs.builder()
///             .configId("my-config")
///             .organization("123456789")
///             .description("My custom Cloud Security Command Center Finding Notification Configuration")
///             .pubsubTopic(sccNotification.id())
///             .streamingConfig(NotificationConfigStreamingConfigArgs.builder()
///                 .filter("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccNotification:
///     type: gcp:pubsub:Topic
///     name: scc_notification
///     properties:
///       name: my-topic
///   customNotificationConfig:
///     type: gcp:securitycenter:NotificationConfig
///     name: custom_notification_config
///     properties:
///       configId: my-config
///       organization: '123456789'
///       description: My custom Cloud Security Command Center Finding Notification Configuration
///       pubsubTopic: ${sccNotification.id}
///       streamingConfig:
///         filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
///
///
/// ## Import
///
/// NotificationConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/notificationConfig:NotificationConfig default {{name}}
/// ```
class NotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> configId;
  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;
  /// The resource name of this notification config, in the format
  /// `organizations/{{organization}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  late final pulumi.Output<String> organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<NotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [NotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationConfig]. {@macro pulumi_securitycenter_notification_config_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationConfig(
    String name, {
    NotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/notificationConfig:NotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig = registerOutput<NotificationConfigStreamingConfig>('streamingConfig');
  }

  /// Gets an existing [NotificationConfig] resource's state with the given [name] and [id].
  static NotificationConfig get(
    String name,
    pulumi.Input<String> id, {
    NotificationConfigState? state,
  }) {
    return NotificationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/notificationConfig:NotificationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.streamingConfig = registerOutput<NotificationConfigStreamingConfig>('streamingConfig');
  }
}
