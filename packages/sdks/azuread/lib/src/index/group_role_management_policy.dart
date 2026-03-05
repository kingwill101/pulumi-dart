import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_activation_rules.dart';
import 'group_role_management_policy_active_assignment_rules.dart';
import 'group_role_management_policy_args.dart';
import 'group_role_management_policy_eligible_assignment_rules.dart';
import 'group_role_management_policy_notification_rules.dart';
import 'group_role_management_policy_state.dart';

/// Manage a role policy for an Azure AD group.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the `RoleManagementPolicy.ReadWrite.AzureADGroup` Microsoft Graph API permissions.
///
/// When authenticated with a user principal, this resource requires `Global Administrator` directory role, or the `Privileged Role Administrator` role in Identity Governance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "group-name",
///     securityEnabled: true,
/// });
/// const member = new azuread.User("member", {
///     userPrincipalName: "jdoe@example.com",
///     displayName: "J. Doe",
///     mailNickname: "jdoe",
///     password: "SecretP@sswd99!",
/// });
/// const exampleGroupRoleManagementPolicy = new azuread.GroupRoleManagementPolicy("example", {
///     groupId: example.id,
///     roleId: "member",
///     activeAssignmentRules: {
///         expireAfter: "P365D",
///     },
///     eligibleAssignmentRules: {
///         expirationRequired: false,
///     },
///     notificationRules: {
///         eligibleAssignments: {
///             approverNotifications: {
///                 notificationLevel: "Critical",
///                 defaultRecipients: false,
///                 additionalRecipients: [
///                     "someone@example.com",
///                     "someone.else@example.com",
///                 ],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="group-name",
///     security_enabled=True)
/// member = azuread.User("member",
///     user_principal_name="jdoe@example.com",
///     display_name="J. Doe",
///     mail_nickname="jdoe",
///     password="SecretP@sswd99!")
/// example_group_role_management_policy = azuread.GroupRoleManagementPolicy("example",
///     group_id=example.id,
///     role_id="member",
///     active_assignment_rules={
///         "expire_after": "P365D",
///     },
///     eligible_assignment_rules={
///         "expiration_required": False,
///     },
///     notification_rules={
///         "eligible_assignments": {
///             "approver_notifications": {
///                 "notification_level": "Critical",
///                 "default_recipients": False,
///                 "additional_recipients": [
///                     "someone@example.com",
///                     "someone.else@example.com",
///                 ],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "group-name",
///         SecurityEnabled = true,
///     });
///
///     var member = new AzureAD.User("member", new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///         DisplayName = "J. Doe",
///         MailNickname = "jdoe",
///         Password = "SecretP@sswd99!",
///     });
///
///     var exampleGroupRoleManagementPolicy = new AzureAD.GroupRoleManagementPolicy("example", new()
///     {
///         GroupId = example.Id,
///         RoleId = "member",
///         ActiveAssignmentRules = new AzureAD.Inputs.GroupRoleManagementPolicyActiveAssignmentRulesArgs
///         {
///             ExpireAfter = "P365D",
///         },
///         EligibleAssignmentRules = new AzureAD.Inputs.GroupRoleManagementPolicyEligibleAssignmentRulesArgs
///         {
///             ExpirationRequired = false,
///         },
///         NotificationRules = new AzureAD.Inputs.GroupRoleManagementPolicyNotificationRulesArgs
///         {
///             EligibleAssignments = new AzureAD.Inputs.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsArgs
///             {
///                 ApproverNotifications = new AzureAD.Inputs.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotificationsArgs
///                 {
///                     NotificationLevel = "Critical",
///                     DefaultRecipients = false,
///                     AdditionalRecipients = new[]
///                     {
///                         "someone@example.com",
///                         "someone.else@example.com",
///                     },
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
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("group-name"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewUser(ctx, "member", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("jdoe@example.com"),
/// 			DisplayName:       pulumi.String("J. Doe"),
/// 			MailNickname:      pulumi.String("jdoe"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroupRoleManagementPolicy(ctx, "example", &azuread.GroupRoleManagementPolicyArgs{
/// 			GroupId: example.ID(),
/// 			RoleId:  pulumi.String("member"),
/// 			ActiveAssignmentRules: &azuread.GroupRoleManagementPolicyActiveAssignmentRulesArgs{
/// 				ExpireAfter: pulumi.String("P365D"),
/// 			},
/// 			EligibleAssignmentRules: &azuread.GroupRoleManagementPolicyEligibleAssignmentRulesArgs{
/// 				ExpirationRequired: pulumi.Bool(false),
/// 			},
/// 			NotificationRules: &azuread.GroupRoleManagementPolicyNotificationRulesArgs{
/// 				EligibleAssignments: &azuread.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsArgs{
/// 					ApproverNotifications: &azuread.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotificationsArgs{
/// 						NotificationLevel: pulumi.String("Critical"),
/// 						DefaultRecipients: pulumi.Bool(false),
/// 						AdditionalRecipients: pulumi.StringArray{
/// 							pulumi.String("someone@example.com"),
/// 							pulumi.String("someone.else@example.com"),
/// 						},
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.GroupRoleManagementPolicy;
/// import com.pulumi.azuread.GroupRoleManagementPolicyArgs;
/// import com.pulumi.azuread.inputs.GroupRoleManagementPolicyActiveAssignmentRulesArgs;
/// import com.pulumi.azuread.inputs.GroupRoleManagementPolicyEligibleAssignmentRulesArgs;
/// import com.pulumi.azuread.inputs.GroupRoleManagementPolicyNotificationRulesArgs;
/// import com.pulumi.azuread.inputs.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsArgs;
/// import com.pulumi.azuread.inputs.GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotificationsArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("group-name")
///             .securityEnabled(true)
///             .build());
///
///         var member = new User("member", UserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .displayName("J. Doe")
///             .mailNickname("jdoe")
///             .password("SecretP@sswd99!")
///             .build());
///
///         var exampleGroupRoleManagementPolicy = new GroupRoleManagementPolicy("exampleGroupRoleManagementPolicy", GroupRoleManagementPolicyArgs.builder()
///             .groupId(example.id())
///             .roleId("member")
///             .activeAssignmentRules(GroupRoleManagementPolicyActiveAssignmentRulesArgs.builder()
///                 .expireAfter("P365D")
///                 .build())
///             .eligibleAssignmentRules(GroupRoleManagementPolicyEligibleAssignmentRulesArgs.builder()
///                 .expirationRequired(false)
///                 .build())
///             .notificationRules(GroupRoleManagementPolicyNotificationRulesArgs.builder()
///                 .eligibleAssignments(GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsArgs.builder()
///                     .approverNotifications(GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotificationsArgs.builder()
///                         .notificationLevel("Critical")
///                         .defaultRecipients(false)
///                         .additionalRecipients(
///                             "someone@example.com",
///                             "someone.else@example.com")
///                         .build())
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
///     type: azuread:Group
///     properties:
///       displayName: group-name
///       securityEnabled: true
///   member:
///     type: azuread:User
///     properties:
///       userPrincipalName: jdoe@example.com
///       displayName: J. Doe
///       mailNickname: jdoe
///       password: SecretP@sswd99!
///   exampleGroupRoleManagementPolicy:
///     type: azuread:GroupRoleManagementPolicy
///     name: example
///     properties:
///       groupId: ${example.id}
///       roleId: member
///       activeAssignmentRules:
///         expireAfter: P365D
///       eligibleAssignmentRules:
///         expirationRequired: false
///       notificationRules:
///         eligibleAssignments:
///           approverNotifications:
///             notificationLevel: Critical
///             defaultRecipients: false
///             additionalRecipients:
///               - someone@example.com
///               - someone.else@example.com
/// ```
///
///
/// ## Import
///
/// Because these policies are created automatically by Entra ID, they will auto-import on first use.
class GroupRoleManagementPolicy extends pulumi.CustomResource {
  /// An `activation_rules` block as defined below.
  late final pulumi.Output<GroupRoleManagementPolicyActivationRules>
  activationRules;

  /// An `active_assignment_rules` block as defined below.
  late final pulumi.Output<GroupRoleManagementPolicyActiveAssignmentRules>
  activeAssignmentRules;

  /// (String) The description of this policy.
  late final pulumi.Output<String> description;

  /// (String) The display name of this policy.
  late final pulumi.Output<String> displayName;

  /// An `eligible_assignment_rules` block as defined below.
  late final pulumi.Output<GroupRoleManagementPolicyEligibleAssignmentRules>
  eligibleAssignmentRules;

  /// The ID of the Azure AD group for which the policy applies.
  late final pulumi.Output<String> groupId;

  /// A `notification_rules` block as defined below.
  late final pulumi.Output<GroupRoleManagementPolicyNotificationRules>
  notificationRules;

  /// The type of assignment this policy coveres. Can be either `member` or `owner`.
  late final pulumi.Output<String> roleId;

  /// Creates a new [GroupRoleManagementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupRoleManagementPolicy]. {@macro pulumi_index_group_role_management_policy_group_role_management_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupRoleManagementPolicy(
    String name, {
    GroupRoleManagementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/groupRoleManagementPolicy:GroupRoleManagementPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationRules = registerOutput<GroupRoleManagementPolicyActivationRules>(
      'activationRules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupRoleManagementPolicyActivationRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    activeAssignmentRules =
        registerOutput<GroupRoleManagementPolicyActiveAssignmentRules>(
          'activeAssignmentRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyActiveAssignmentRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    eligibleAssignmentRules =
        registerOutput<GroupRoleManagementPolicyEligibleAssignmentRules>(
          'eligibleAssignmentRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyEligibleAssignmentRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    groupId = registerOutput<String>('groupId');
    notificationRules =
        registerOutput<GroupRoleManagementPolicyNotificationRules>(
          'notificationRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyNotificationRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    roleId = registerOutput<String>('roleId');
  }

  /// Gets an existing [GroupRoleManagementPolicy] resource's state with the given [name] and [id].
  static GroupRoleManagementPolicy get(
    String name,
    pulumi.Input<String> id, {
    GroupRoleManagementPolicyState? state,
  }) {
    return GroupRoleManagementPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupRoleManagementPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/groupRoleManagementPolicy:GroupRoleManagementPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationRules = registerOutput<GroupRoleManagementPolicyActivationRules>(
      'activationRules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupRoleManagementPolicyActivationRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    activeAssignmentRules =
        registerOutput<GroupRoleManagementPolicyActiveAssignmentRules>(
          'activeAssignmentRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyActiveAssignmentRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    eligibleAssignmentRules =
        registerOutput<GroupRoleManagementPolicyEligibleAssignmentRules>(
          'eligibleAssignmentRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyEligibleAssignmentRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    groupId = registerOutput<String>('groupId');
    notificationRules =
        registerOutput<GroupRoleManagementPolicyNotificationRules>(
          'notificationRules',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GroupRoleManagementPolicyNotificationRules.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    roleId = registerOutput<String>('roleId');
  }
}
