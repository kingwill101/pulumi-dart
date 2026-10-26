import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_service_account_args.dart';
import 'notification_service_account_state.dart';

/// Generates and retrieves the email and member string of the Security Command Center Notification Service Account (`gcp-sa-scc-notification.iam.gserviceaccount.com`).
///
/// &gt; **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// &gt; **Note:** This resource can be used to provision the Security Command Center Notification Service Account in IAM before configuring notification configs or applying IAM policy bindings to Pub/Sub topics, avoiding "permission denied" errors when using automated pipelines.
///
/// To get more information about Security Command Center Notification Service Accounts, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Scc Notification Service Account Organization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccSa = new gcp.securitycenter.NotificationServiceAccount("scc_sa", {organization: "1234567890"});
/// const sccNotifications = new gcp.pubsub.Topic("scc_notifications", {name: "scc-notifications-topic"});
/// const sccPubsubPublisher = new gcp.pubsub.TopicIAMMember("scc_pubsub_publisher", {
///     topic: sccNotifications.id,
///     role: "roles/pubsub.publisher",
///     member: sccSa.member,
/// });
/// const customNotificationConfig = new gcp.securitycenter.NotificationConfig("custom_notification_config", {
///     configId: "my-config",
///     organization: "1234567890",
///     description: "My custom SCC Finding Notification Configuration",
///     pubsubTopic: sccNotifications.id,
/// }, {
///     dependsOn: [sccPubsubPublisher],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_sa = gcp.securitycenter.NotificationServiceAccount("scc_sa", organization="1234567890")
/// scc_notifications = gcp.pubsub.Topic("scc_notifications", name="scc-notifications-topic")
/// scc_pubsub_publisher = gcp.pubsub.TopicIAMMember("scc_pubsub_publisher",
///     topic=scc_notifications.id,
///     role="roles/pubsub.publisher",
///     member=scc_sa.member)
/// custom_notification_config = gcp.securitycenter.NotificationConfig("custom_notification_config",
///     config_id="my-config",
///     organization="1234567890",
///     description="My custom SCC Finding Notification Configuration",
///     pubsub_topic=scc_notifications.id,
///     opts = pulumi.ResourceOptions(depends_on=[scc_pubsub_publisher]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sccSa = new Gcp.SecurityCenter.NotificationServiceAccount("scc_sa", new()
///     {
///         Organization = "1234567890",
///     });
///
///     var sccNotifications = new Gcp.PubSub.Topic("scc_notifications", new()
///     {
///         Name = "scc-notifications-topic",
///     });
///
///     var sccPubsubPublisher = new Gcp.PubSub.TopicIAMMember("scc_pubsub_publisher", new()
///     {
///         Topic = sccNotifications.Id,
///         Role = "roles/pubsub.publisher",
///         Member = sccSa.Member,
///     });
///
///     var customNotificationConfig = new Gcp.SecurityCenter.NotificationConfig("custom_notification_config", new()
///     {
///         ConfigId = "my-config",
///         Organization = "1234567890",
///         Description = "My custom SCC Finding Notification Configuration",
///         PubsubTopic = sccNotifications.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sccPubsubPublisher,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sccSa, err := securitycenter.NewNotificationServiceAccount(ctx, "scc_sa", &securitycenter.NotificationServiceAccountArgs{
/// 			Organization: pulumi.String("1234567890"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sccNotifications, err := pubsub.NewTopic(ctx, "scc_notifications", &pubsub.TopicArgs{
/// 			Name: pulumi.String("scc-notifications-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sccPubsubPublisher, err := pubsub.NewTopicIAMMember(ctx, "scc_pubsub_publisher", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  sccNotifications.ID(),
/// 			Role:   pulumi.String("roles/pubsub.publisher"),
/// 			Member: sccSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewNotificationConfig(ctx, "custom_notification_config", &securitycenter.NotificationConfigArgs{
/// 			ConfigId:     pulumi.String("my-config"),
/// 			Organization: pulumi.String("1234567890"),
/// 			Description:  pulumi.String("My custom SCC Finding Notification Configuration"),
/// 			PubsubTopic:  sccNotifications.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sccPubsubPublisher,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securitycenter_notification_service_account" "scc_sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   organization = "1234567890"
/// }
/// resource "gcp_pubsub_topic" "scc_notifications" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "scc-notifications-topic"
/// }
/// resource "gcp_pubsub_topic_i_a_m_member" "scc_pubsub_publisher" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   topic  = gcp_pubsub_topic.scc_notifications.id
///   role   = "roles/pubsub.publisher"
///   member = gcp_securitycenter_notification_service_account.scc_sa.member
/// }
/// resource "gcp_securitycenter_notification_config" "custom_notification_config" {
///   depends_on = [gcp_pubsub_topic_i_a_m_member.scc_pubsub_publisher]
///   lifecycle {
///     create_before_destroy = true
///   }
///   config_id    = "my-config"
///   organization = "1234567890"
///   description  = "My custom SCC Finding Notification Configuration"
///   pubsub_topic = gcp_pubsub_topic.scc_notifications.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.NotificationServiceAccount;
/// import com.pulumi.gcp.securitycenter.NotificationServiceAccountArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.securitycenter.NotificationConfig;
/// import com.pulumi.gcp.securitycenter.NotificationConfigArgs;
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
///         var sccSa = new NotificationServiceAccount("sccSa", NotificationServiceAccountArgs.builder()
///             .organization("1234567890")
///             .build());
///
///         var sccNotifications = new Topic("sccNotifications", TopicArgs.builder()
///             .name("scc-notifications-topic")
///             .build());
///
///         var sccPubsubPublisher = new TopicIAMMember("sccPubsubPublisher", TopicIAMMemberArgs.builder()
///             .topic(sccNotifications.id())
///             .role("roles/pubsub.publisher")
///             .member(sccSa.member())
///             .build());
///
///         var customNotificationConfig = new NotificationConfig("customNotificationConfig", NotificationConfigArgs.builder()
///             .configId("my-config")
///             .organization("1234567890")
///             .description("My custom SCC Finding Notification Configuration")
///             .pubsubTopic(sccNotifications.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sccPubsubPublisher)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccSa:
///     type: gcp:securitycenter:NotificationServiceAccount
///     name: scc_sa
///     properties:
///       organization: '1234567890'
///   sccNotifications:
///     type: gcp:pubsub:Topic
///     name: scc_notifications
///     properties:
///       name: scc-notifications-topic
///   sccPubsubPublisher:
///     type: gcp:pubsub:TopicIAMMember
///     name: scc_pubsub_publisher
///     properties:
///       topic: ${sccNotifications.id}
///       role: roles/pubsub.publisher
///       member: ${sccSa.member}
///   customNotificationConfig:
///     type: gcp:securitycenter:NotificationConfig
///     name: custom_notification_config
///     properties:
///       configId: my-config
///       organization: '1234567890'
///       description: My custom SCC Finding Notification Configuration
///       pubsubTopic: ${sccNotifications.id}
///     options:
///       dependsOn:
///         - ${sccPubsubPublisher}
/// ```
///
///
/// ### Scc Notification Service Account Project
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sccSa = new gcp.securitycenter.NotificationServiceAccount("scc_sa", {project: "my-project-id"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scc_sa = gcp.securitycenter.NotificationServiceAccount("scc_sa", project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sccSa = new Gcp.SecurityCenter.NotificationServiceAccount("scc_sa", new()
///     {
///         Project = "my-project-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewNotificationServiceAccount(ctx, "scc_sa", &securitycenter.NotificationServiceAccountArgs{
/// 			Project: pulumi.String("my-project-id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securitycenter_notification_service_account" "scc_sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = "my-project-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.NotificationServiceAccount;
/// import com.pulumi.gcp.securitycenter.NotificationServiceAccountArgs;
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
///         var sccSa = new NotificationServiceAccount("sccSa", NotificationServiceAccountArgs.builder()
///             .project("my-project-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sccSa:
///     type: gcp:securitycenter:NotificationServiceAccount
///     name: scc_sa
///     properties:
///       project: my-project-id
/// ```
///
///
/// ## Import
///
/// Notification Service Accounts can be imported using their parent scope or email address:
///
/// * `organizations/{{organization}}`
/// * `projects/{{project}}`
/// * `{{email}}`
///
///
/// When using the `pulumi import` command, Notification Service Accounts can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/notificationServiceAccount:NotificationServiceAccount default organizations/1234567890
/// ```
class NotificationServiceAccount extends pulumi.CustomResource {
  /// The email address of the Cloud Security Command Center Notification service account.
  late final pulumi.Output<String> email;
  /// The Identity of the Cloud Security Command Center Notification service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;
  /// The organization ID for which the service account should be generated. Exactly one of `organization` or `project` must be specified.
  late final pulumi.Output<String?> organization;
  /// The project ID or number for which the service account should be generated. Exactly one of `organization` or `project` must be specified. If omitted and `organization` is not specified, it defaults to the provider project.
  late final pulumi.Output<String> project;

  /// Creates a new [NotificationServiceAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationServiceAccount]. {@macro pulumi_securitycenter_notification_service_account_notification_service_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationServiceAccount(
    String name, {
    NotificationServiceAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/notificationServiceAccount:NotificationServiceAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    organization = registerOutput<String?>('organization');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [NotificationServiceAccount] resource's state with the given [name] and [id].
  static NotificationServiceAccount get(
    String name,
    pulumi.Input<String> id, {
    NotificationServiceAccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NotificationServiceAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NotificationServiceAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/notificationServiceAccount:NotificationServiceAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    organization = registerOutput<String?>('organization');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [NotificationServiceAccount] resource.
  NotificationServiceAccount.reference(String urn)
    : super(
        'gcp:securitycenter/notificationServiceAccount:NotificationServiceAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    organization = registerOutput<String?>('organization');
    project = registerOutput<String>('project');
  }
}
