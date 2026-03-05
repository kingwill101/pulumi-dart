import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_project_notification_config_args.dart';
import 'v2_project_notification_config_state.dart';
import 'v2_project_notification_config_streaming_config.dart';

/// This is a continuous export that exports findings to a Pub/Sub topic.
///
///
/// To get more information about ProjectNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/projects.locations.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc V2 Project Notification Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccV2ProjectNotification = new gcp.pubsub.Topic("scc_v2_project_notification", {name: "my-topic"});
/// const customNotificationConfig = new gcp.securitycenter.V2ProjectNotificationConfig("custom_notification_config", {
///     configId: "my-config",
///     project: "my-project-name",
///     description: "My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsubTopic: sccV2ProjectNotification.id,
///     streamingConfig: {
///         filter: "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_v2_project_notification = gcp.pubsub.Topic("scc_v2_project_notification", name="my-topic")
/// custom_notification_config = gcp.securitycenter.V2ProjectNotificationConfig("custom_notification_config",
///     config_id="my-config",
///     project="my-project-name",
///     description="My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsub_topic=scc_v2_project_notification.id,
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
///     var sccV2ProjectNotification = new Gcp.PubSub.Topic("scc_v2_project_notification", new()
///     {
///         Name = "my-topic",
///     });
///
///     var customNotificationConfig = new Gcp.SecurityCenter.V2ProjectNotificationConfig("custom_notification_config", new()
///     {
///         ConfigId = "my-config",
///         Project = "my-project-name",
///         Description = "My custom Cloud Security Command Center Finding Notification Configuration",
///         PubsubTopic = sccV2ProjectNotification.Id,
///         StreamingConfig = new Gcp.SecurityCenter.Inputs.V2ProjectNotificationConfigStreamingConfigArgs
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
/// 		sccV2ProjectNotification, err := pubsub.NewTopic(ctx, "scc_v2_project_notification", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewV2ProjectNotificationConfig(ctx, "custom_notification_config", &securitycenter.V2ProjectNotificationConfigArgs{
/// 			ConfigId:    pulumi.String("my-config"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("My custom Cloud Security Command Center Finding Notification Configuration"),
/// 			PubsubTopic: sccV2ProjectNotification.ID(),
/// 			StreamingConfig: &securitycenter.V2ProjectNotificationConfigStreamingConfigArgs{
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
/// import com.pulumi.gcp.securitycenter.V2ProjectNotificationConfig;
/// import com.pulumi.gcp.securitycenter.V2ProjectNotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.V2ProjectNotificationConfigStreamingConfigArgs;
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
///         var sccV2ProjectNotification = new Topic("sccV2ProjectNotification", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var customNotificationConfig = new V2ProjectNotificationConfig("customNotificationConfig", V2ProjectNotificationConfigArgs.builder()
///             .configId("my-config")
///             .project("my-project-name")
///             .description("My custom Cloud Security Command Center Finding Notification Configuration")
///             .pubsubTopic(sccV2ProjectNotification.id())
///             .streamingConfig(V2ProjectNotificationConfigStreamingConfigArgs.builder()
///                 .filter("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccV2ProjectNotification:
///     type: gcp:pubsub:Topic
///     name: scc_v2_project_notification
///     properties:
///       name: my-topic
///   customNotificationConfig:
///     type: gcp:securitycenter:V2ProjectNotificationConfig
///     name: custom_notification_config
///     properties:
///       configId: my-config
///       project: my-project-name
///       description: My custom Cloud Security Command Center Finding Notification Configuration
///       pubsubTopic: ${sccV2ProjectNotification.id}
///       streamingConfig:
///         filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
///
///
/// ## Import
///
/// ProjectNotificationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notificationConfigs/{{config_id}}`
///
/// * `{{project}}/{{location}}/{{config_id}}`
///
/// * `{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, ProjectNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default projects/{{project}}/locations/{{location}}/notificationConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default {{project}}/{{location}}/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig default {{location}}/{{config_id}}
/// ```
class V2ProjectNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the project.
  late final pulumi.Output<String> configId;
  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;
  /// Location ID for the parent project. Defaults to `global` if location is not provided.
  late final pulumi.Output<String?> location;
  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String?> pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<V2ProjectNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2ProjectNotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2ProjectNotificationConfig]. {@macro pulumi_securitycenter_v2_project_notification_config_v2_project_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2ProjectNotificationConfig(
    String name, {
    V2ProjectNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    description = registerOutput<String?>('description');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String?>('pubsubTopic');
    serviceAccount = registerOutput<String>('serviceAccount');
    streamingConfig = registerOutput<V2ProjectNotificationConfigStreamingConfig>('streamingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2ProjectNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [V2ProjectNotificationConfig] resource's state with the given [name] and [id].
  static V2ProjectNotificationConfig get(
    String name,
    pulumi.Input<String> id, {
    V2ProjectNotificationConfigState? state,
  }) {
    return V2ProjectNotificationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2ProjectNotificationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectNotificationConfig:V2ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    description = registerOutput<String?>('description');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String?>('pubsubTopic');
    serviceAccount = registerOutput<String>('serviceAccount');
    streamingConfig = registerOutput<V2ProjectNotificationConfigStreamingConfig>('streamingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2ProjectNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
