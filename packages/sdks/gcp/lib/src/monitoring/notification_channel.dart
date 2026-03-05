import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_args.dart';
import 'notification_channel_sensitive_labels.dart';
import 'notification_channel_state.dart';

/// A NotificationChannel is a medium through which an alert is delivered
/// when a policy violation is detected. Examples of channels include email, SMS,
/// and third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on retrieval.
///
/// Notification Channels are designed to be flexible and are made up of a supported `type`
/// and labels to configure that channel. Each `type` has specific labels that need to be
/// present for that channel to be correctly configured. The labels that are required to be
/// present for one channel `type` are often different than those required for another.
/// Due to these loose constraints it's often best to set up a channel through the UI
/// and import it to the provider when setting up a brand new channel type to determine which
/// labels are required.
///
/// A list of supported channels per project the `list` endpoint can be
/// accessed programmatically or through the api explorer at  https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list .
/// This provides the channel type and all of the required labels that must be passed.
///
///
/// To get more information about NotificationChannel, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannels)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Notification Options](https://cloud.google.com/monitoring/support/notification-options)
///
///
///
/// ## Example Usage
///
/// ### Notification Channel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.monitoring.NotificationChannel("basic", {
///     displayName: "Test Notification Channel",
///     type: "email",
///     labels: {
///         email_address: "fake_email@blahblah.com",
///     },
///     forceDelete: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.monitoring.NotificationChannel("basic",
///     display_name="Test Notification Channel",
///     type="email",
///     labels={
///         "email_address": "fake_email@blahblah.com",
///     },
///     force_delete=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Monitoring.NotificationChannel("basic", new()
///     {
///         DisplayName = "Test Notification Channel",
///         Type = "email",
///         Labels =
///         {
///             { "email_address", "fake_email@blahblah.com" },
///         },
///         ForceDelete = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewNotificationChannel(ctx, "basic", &monitoring.NotificationChannelArgs{
/// 			DisplayName: pulumi.String("Test Notification Channel"),
/// 			Type:        pulumi.String("email"),
/// 			Labels: pulumi.StringMap{
/// 				"email_address": pulumi.String("fake_email@blahblah.com"),
/// 			},
/// 			ForceDelete: pulumi.Bool(false),
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
/// import com.pulumi.gcp.monitoring.NotificationChannel;
/// import com.pulumi.gcp.monitoring.NotificationChannelArgs;
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
///         var basic = new NotificationChannel("basic", NotificationChannelArgs.builder()
///             .displayName("Test Notification Channel")
///             .type("email")
///             .labels(Map.of("email_address", "fake_email@blahblah.com"))
///             .forceDelete(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:monitoring:NotificationChannel
///     properties:
///       displayName: Test Notification Channel
///       type: email
///       labels:
///         email_address: fake_email@blahblah.com
///       forceDelete: false
/// ```
///
/// ### Notification Channel Sensitive
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.monitoring.NotificationChannel("default", {
///     displayName: "Test Slack Channel",
///     type: "slack",
///     labels: {
///         channel_name: "#foobar",
///     },
///     sensitiveLabels: {
///         authToken: "one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.monitoring.NotificationChannel("default",
///     display_name="Test Slack Channel",
///     type="slack",
///     labels={
///         "channel_name": "#foobar",
///     },
///     sensitive_labels={
///         "auth_token": "one",
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
///     var @default = new Gcp.Monitoring.NotificationChannel("default", new()
///     {
///         DisplayName = "Test Slack Channel",
///         Type = "slack",
///         Labels =
///         {
///             { "channel_name", "#foobar" },
///         },
///         SensitiveLabels = new Gcp.Monitoring.Inputs.NotificationChannelSensitiveLabelsArgs
///         {
///             AuthToken = "one",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewNotificationChannel(ctx, "default", &monitoring.NotificationChannelArgs{
/// 			DisplayName: pulumi.String("Test Slack Channel"),
/// 			Type:        pulumi.String("slack"),
/// 			Labels: pulumi.StringMap{
/// 				"channel_name": pulumi.String("#foobar"),
/// 			},
/// 			SensitiveLabels: &monitoring.NotificationChannelSensitiveLabelsArgs{
/// 				AuthToken: pulumi.String("one"),
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
/// import com.pulumi.gcp.monitoring.NotificationChannel;
/// import com.pulumi.gcp.monitoring.NotificationChannelArgs;
/// import com.pulumi.gcp.monitoring.inputs.NotificationChannelSensitiveLabelsArgs;
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
///         var default_ = new NotificationChannel("default", NotificationChannelArgs.builder()
///             .displayName("Test Slack Channel")
///             .type("slack")
///             .labels(Map.of("channel_name", "#foobar"))
///             .sensitiveLabels(NotificationChannelSensitiveLabelsArgs.builder()
///                 .authToken("one")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:monitoring:NotificationChannel
///     properties:
///       displayName: Test Slack Channel
///       type: slack
///       labels:
///         channel_name: '#foobar'
///       sensitiveLabels:
///         authToken: one
/// ```
///
///
/// ## Import
///
/// NotificationChannel can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NotificationChannel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/notificationChannel:NotificationChannel default {{name}}
/// ```
class NotificationChannel extends pulumi.CustomResource {
  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  late final pulumi.Output<String?> description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  late final pulumi.Output<String?> displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  late final pulumi.Output<bool?> enabled;

  /// If true, the notification channel will be deleted regardless
  /// of its use in alert policies (the policies will be updated
  /// to remove the channel). If false, channels that are still
  /// referenced by an existing alerting policy will fail to be
  /// deleted in a delete operation.
  late final pulumi.Output<bool?> forceDelete;

  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor corresponding to the type field.
  /// Labels with sensitive data are obfuscated by the API and therefore the provider cannot
  /// determine if there are upstream changes to these fields. They can also be configured via
  /// the sensitive_labels block, but cannot be configured in both places.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The full REST resource name for this channel. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  /// The [CHANNEL_ID] is automatically assigned by the server on creation.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Different notification type behaviors are configured primarily using the the `labels` field on this
  /// resource. This block contains the labels which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
  /// in the `labels` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  late final pulumi.Output<NotificationChannelSensitiveLabels?> sensitiveLabels;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  late final pulumi.Output<String> type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  late final pulumi.Output<String> verificationStatus;

  /// Creates a new [NotificationChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationChannel]. {@macro pulumi_monitoring_notification_channel_notification_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:monitoring/notificationChannel:NotificationChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    forceDelete = registerOutput<bool?>('forceDelete');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sensitiveLabels = registerOutput<NotificationChannelSensitiveLabels?>(
      'sensitiveLabels',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationChannelSensitiveLabels.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    userLabels = registerOutput<Map<String, String>?>('userLabels');
    verificationStatus = registerOutput<String>('verificationStatus');
  }

  /// Gets an existing [NotificationChannel] resource's state with the given [name] and [id].
  static NotificationChannel get(
    String name,
    pulumi.Input<String> id, {
    NotificationChannelState? state,
  }) {
    return NotificationChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:monitoring/notificationChannel:NotificationChannel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    forceDelete = registerOutput<bool?>('forceDelete');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sensitiveLabels = registerOutput<NotificationChannelSensitiveLabels?>(
      'sensitiveLabels',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NotificationChannelSensitiveLabels.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    userLabels = registerOutput<Map<String, String>?>('userLabels');
    verificationStatus = registerOutput<String>('verificationStatus');
  }
}
