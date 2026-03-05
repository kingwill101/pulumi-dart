import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_notification_config_args.dart';
import 'project_notification_config_state.dart';
import 'project_notification_config_streaming_config.dart';

/// A Cloud Security Command Center (Cloud SCC) notification configs. A
/// notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of
/// findings, assets and etc.
/// &gt; **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about ProjectNotificationConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/projects.notificationConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Project Notification Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccProjectNotification = new gcp.pubsub.Topic("scc_project_notification", {name: "my-topic"});
/// const customNotificationConfig = new gcp.securitycenter.ProjectNotificationConfig("custom_notification_config", {
///     configId: "my-config",
///     project: "my-project-name",
///     description: "My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsubTopic: sccProjectNotification.id,
///     streamingConfig: {
///         filter: "category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_project_notification = gcp.pubsub.Topic("scc_project_notification", name="my-topic")
/// custom_notification_config = gcp.securitycenter.ProjectNotificationConfig("custom_notification_config",
///     config_id="my-config",
///     project="my-project-name",
///     description="My custom Cloud Security Command Center Finding Notification Configuration",
///     pubsub_topic=scc_project_notification.id,
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
///     var sccProjectNotification = new Gcp.PubSub.Topic("scc_project_notification", new()
///     {
///         Name = "my-topic",
///     });
///
///     var customNotificationConfig = new Gcp.SecurityCenter.ProjectNotificationConfig("custom_notification_config", new()
///     {
///         ConfigId = "my-config",
///         Project = "my-project-name",
///         Description = "My custom Cloud Security Command Center Finding Notification Configuration",
///         PubsubTopic = sccProjectNotification.Id,
///         StreamingConfig = new Gcp.SecurityCenter.Inputs.ProjectNotificationConfigStreamingConfigArgs
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
/// 		sccProjectNotification, err := pubsub.NewTopic(ctx, "scc_project_notification", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewProjectNotificationConfig(ctx, "custom_notification_config", &securitycenter.ProjectNotificationConfigArgs{
/// 			ConfigId:    pulumi.String("my-config"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("My custom Cloud Security Command Center Finding Notification Configuration"),
/// 			PubsubTopic: sccProjectNotification.ID(),
/// 			StreamingConfig: &securitycenter.ProjectNotificationConfigStreamingConfigArgs{
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
/// import com.pulumi.gcp.securitycenter.ProjectNotificationConfig;
/// import com.pulumi.gcp.securitycenter.ProjectNotificationConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ProjectNotificationConfigStreamingConfigArgs;
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
///         var sccProjectNotification = new Topic("sccProjectNotification", TopicArgs.builder()
///             .name("my-topic")
///             .build());
///
///         var customNotificationConfig = new ProjectNotificationConfig("customNotificationConfig", ProjectNotificationConfigArgs.builder()
///             .configId("my-config")
///             .project("my-project-name")
///             .description("My custom Cloud Security Command Center Finding Notification Configuration")
///             .pubsubTopic(sccProjectNotification.id())
///             .streamingConfig(ProjectNotificationConfigStreamingConfigArgs.builder()
///                 .filter("category = \"OPEN_FIREWALL\" AND state = \"ACTIVE\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccProjectNotification:
///     type: gcp:pubsub:Topic
///     name: scc_project_notification
///     properties:
///       name: my-topic
///   customNotificationConfig:
///     type: gcp:securitycenter:ProjectNotificationConfig
///     name: custom_notification_config
///     properties:
///       configId: my-config
///       project: my-project-name
///       description: My custom Cloud Security Command Center Finding Notification Configuration
///       pubsubTopic: ${sccProjectNotification.id}
///       streamingConfig:
///         filter: category = "OPEN_FIREWALL" AND state = "ACTIVE"
/// ```
///
///
/// ## Import
///
/// ProjectNotificationConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ProjectNotificationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/projectNotificationConfig:ProjectNotificationConfig default {{name}}
/// ```
class ProjectNotificationConfig extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> configId;
  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;
  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/notificationConfigs/{{config_id}}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  late final pulumi.Output<ProjectNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [ProjectNotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectNotificationConfig]. {@macro pulumi_securitycenter_project_notification_config_project_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectNotificationConfig(
    String name, {
    ProjectNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/projectNotificationConfig:ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String>('pubsubTopic');
    serviceAccount = registerOutput<String>('serviceAccount');
    streamingConfig = registerOutput<ProjectNotificationConfigStreamingConfig>('streamingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ProjectNotificationConfig] resource's state with the given [name] and [id].
  static ProjectNotificationConfig get(
    String name,
    pulumi.Input<String> id, {
    ProjectNotificationConfigState? state,
  }) {
    return ProjectNotificationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectNotificationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/projectNotificationConfig:ProjectNotificationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String>('pubsubTopic');
    serviceAccount = registerOutput<String>('serviceAccount');
    streamingConfig = registerOutput<ProjectNotificationConfigStreamingConfig>('streamingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
