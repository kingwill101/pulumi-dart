import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_args.dart';
import 'settings_email_notification_settings.dart';
import 'settings_service_account_approver_settings.dart';
import 'settings_state.dart';

/// Settings resource defines the properties, applied directly to the resource or inherited through the hierarchy, to enable consistent, federated use of PAM.
///
/// To get more information about Settings, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/pam/rest/v1beta/folders.locations/updateSettings)
/// * How-to Guides
/// * [Configure Privileged Access Manager settings](https://cloud.google.com/iam/docs/pam-configure-settings)
/// * [Official Documentation](https://cloud.google.com/iam/docs/pam-overview)
///
/// ## Example Usage
///
/// ### Privileged Access Manager Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     name: "your-project-name",
///     projectId: "your-project-id",
///     orgId: "1234567",
/// });
/// const settings = new gcp.privilegedaccessmanager.Settings("settings", {
///     location: "global",
///     parent: pulumi.interpolate`projects/${project.projectId}`,
///     serviceAccountApproverSettings: {
///         enabled: false,
///     },
///     emailNotificationSettings: {
///         customNotificationBehavior: {
///             requesterNotifications: {
///                 entitlementAssigned: "DISABLED",
///                 grantActivated: "DISABLED",
///                 grantDenied: "ENABLED",
///                 grantExpired: "DISABLED",
///                 grantEnded: "DISABLED",
///                 grantRevoked: "DISABLED",
///                 grantExternallyModified: "DISABLED",
///                 grantActivationFailed: "DISABLED",
///             },
///         },
///     },
/// }, {
///     dependsOn: [wait90s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     name="your-project-name",
///     project_id="your-project-id",
///     org_id="1234567")
/// settings = gcp.privilegedaccessmanager.Settings("settings",
///     location="global",
///     parent=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     service_account_approver_settings={
///         "enabled": False,
///     },
///     email_notification_settings={
///         "custom_notification_behavior": {
///             "requester_notifications": {
///                 "entitlement_assigned": "DISABLED",
///                 "grant_activated": "DISABLED",
///                 "grant_denied": "ENABLED",
///                 "grant_expired": "DISABLED",
///                 "grant_ended": "DISABLED",
///                 "grant_revoked": "DISABLED",
///                 "grant_externally_modified": "DISABLED",
///                 "grant_activation_failed": "DISABLED",
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait90s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         Name = "your-project-name",
///         ProjectId = "your-project-id",
///         OrgId = "1234567",
///     });
///
///     var settings = new Gcp.PrivilegedAccessManager.Settings("settings", new()
///     {
///         Location = "global",
///         Parent = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         ServiceAccountApproverSettings = new Gcp.PrivilegedAccessManager.Inputs.SettingsServiceAccountApproverSettingsArgs
///         {
///             Enabled = false,
///         },
///         EmailNotificationSettings = new Gcp.PrivilegedAccessManager.Inputs.SettingsEmailNotificationSettingsArgs
///         {
///             CustomNotificationBehavior = new Gcp.PrivilegedAccessManager.Inputs.SettingsEmailNotificationSettingsCustomNotificationBehaviorArgs
///             {
///                 RequesterNotifications = new Gcp.PrivilegedAccessManager.Inputs.SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsArgs
///                 {
///                     EntitlementAssigned = "DISABLED",
///                     GrantActivated = "DISABLED",
///                     GrantDenied = "ENABLED",
///                     GrantExpired = "DISABLED",
///                     GrantEnded = "DISABLED",
///                     GrantRevoked = "DISABLED",
///                     GrantExternallyModified = "DISABLED",
///                     GrantActivationFailed = "DISABLED",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait90s,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/privilegedaccessmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			Name:      pulumi.String("your-project-name"),
/// 			ProjectId: pulumi.String("your-project-id"),
/// 			OrgId:     pulumi.String("1234567"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privilegedaccessmanager.NewSettings(ctx, "settings", &privilegedaccessmanager.SettingsArgs{
/// 			Location: pulumi.String("global"),
/// 			Parent: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			ServiceAccountApproverSettings: &privilegedaccessmanager.SettingsServiceAccountApproverSettingsArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			EmailNotificationSettings: &privilegedaccessmanager.SettingsEmailNotificationSettingsArgs{
/// 				CustomNotificationBehavior: &privilegedaccessmanager.SettingsEmailNotificationSettingsCustomNotificationBehaviorArgs{
/// 					RequesterNotifications: &privilegedaccessmanager.SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsArgs{
/// 						EntitlementAssigned:     pulumi.String("DISABLED"),
/// 						GrantActivated:          pulumi.String("DISABLED"),
/// 						GrantDenied:             pulumi.String("ENABLED"),
/// 						GrantExpired:            pulumi.String("DISABLED"),
/// 						GrantEnded:              pulumi.String("DISABLED"),
/// 						GrantRevoked:            pulumi.String("DISABLED"),
/// 						GrantExternallyModified: pulumi.String("DISABLED"),
/// 						GrantActivationFailed:   pulumi.String("DISABLED"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait90s,
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.Settings;
/// import com.pulumi.gcp.privilegedaccessmanager.SettingsArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.SettingsServiceAccountApproverSettingsArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.SettingsEmailNotificationSettingsArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.SettingsEmailNotificationSettingsCustomNotificationBehaviorArgs;
/// import com.pulumi.gcp.privilegedaccessmanager.inputs.SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .name("your-project-name")
///             .projectId("your-project-id")
///             .orgId("1234567")
///             .build());
///
///         var settings = new Settings("settings", SettingsArgs.builder()
///             .location("global")
///             .parent(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .serviceAccountApproverSettings(SettingsServiceAccountApproverSettingsArgs.builder()
///                 .enabled(false)
///                 .build())
///             .emailNotificationSettings(SettingsEmailNotificationSettingsArgs.builder()
///                 .customNotificationBehavior(SettingsEmailNotificationSettingsCustomNotificationBehaviorArgs.builder()
///                     .requesterNotifications(SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotificationsArgs.builder()
///                         .entitlementAssigned("DISABLED")
///                         .grantActivated("DISABLED")
///                         .grantDenied("ENABLED")
///                         .grantExpired("DISABLED")
///                         .grantEnded("DISABLED")
///                         .grantRevoked("DISABLED")
///                         .grantExternallyModified("DISABLED")
///                         .grantActivationFailed("DISABLED")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait90s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       name: your-project-name
///       projectId: your-project-id
///       orgId: '1234567'
///   settings:
///     type: gcp:privilegedaccessmanager:Settings
///     properties:
///       location: global
///       parent: projects/${project.projectId}
///       serviceAccountApproverSettings:
///         enabled: false
///       emailNotificationSettings:
///         customNotificationBehavior:
///           requesterNotifications:
///             entitlementAssigned: DISABLED
///             grantActivated: DISABLED
///             grantDenied: ENABLED
///             grantExpired: DISABLED
///             grantEnded: DISABLED
///             grantRevoked: DISABLED
///             grantExternallyModified: DISABLED
///             grantActivationFailed: DISABLED
///     options:
///       dependsOn:
///         - ${wait90s}
/// ```
///
///
/// ## Import
///
/// Settings can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/settings`
///
/// When using the `pulumi import` command, Settings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:privilegedaccessmanager/settings:Settings default {{parent}}/locations/{{location}}/settings
/// ```
class Settings extends pulumi.CustomResource {
  /// Create timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;

  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  late final pulumi.Output<SettingsEmailNotificationSettings?>
  emailNotificationSettings;

  /// Fingerprint for optimistic concurrency returned in the response of GetSettings. Must be provided in the requests to UpdateSettings. If the value provided does not match the value known to the server, ABORTED will be thrown, and the client should retry the read-modify-write cycle.
  late final pulumi.Output<String> etag;

  /// The region of the PAM settings resource.
  late final pulumi.Output<String> location;

  /// Name of the settings resource. Possible formats:
  /// projects/{project-id|project-number}/locations/{location}/settings folders/{folder-number}/locations/{location}/settings organizations/{organization-number}/locations/{location}/settings
  late final pulumi.Output<String> name;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  late final pulumi.Output<String> parent;

  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  late final pulumi.Output<SettingsServiceAccountApproverSettings?>
  serviceAccountApproverSettings;

  /// Update timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Settings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Settings]. {@macro pulumi_privilegedaccessmanager_settings_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Settings(
    String name, {
    SettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:privilegedaccessmanager/settings:Settings',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    emailNotificationSettings =
        registerOutput<SettingsEmailNotificationSettings?>(
          'emailNotificationSettings',
        );
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    serviceAccountApproverSettings =
        registerOutput<SettingsServiceAccountApproverSettings?>(
          'serviceAccountApproverSettings',
        );
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Settings] resource's state with the given [name] and [id].
  static Settings get(
    String name,
    pulumi.Input<String> id, {
    SettingsState? state,
  }) {
    return Settings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Settings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:privilegedaccessmanager/settings:Settings',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    emailNotificationSettings =
        registerOutput<SettingsEmailNotificationSettings?>(
          'emailNotificationSettings',
        );
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    serviceAccountApproverSettings =
        registerOutput<SettingsServiceAccountApproverSettings?>(
          'serviceAccountApproverSettings',
        );
    updateTime = registerOutput<String>('updateTime');
  }
}
