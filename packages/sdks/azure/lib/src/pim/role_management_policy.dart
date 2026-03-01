import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_activation_rules.dart';
import 'role_management_policy_active_assignment_rules.dart';
import 'role_management_policy_args.dart';
import 'role_management_policy_eligible_assignment_rules.dart';
import 'role_management_policy_notification_rules.dart';
import 'role_management_policy_state.dart';

/// Manage a role policy for an Azure Management Group, Subscription, Resource Group or resource.
///
/// ## Example Usage
///
/// ### Management Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.management.Group("example", {name: "example-group"});
/// const mgContributor = azure.authorization.getRoleDefinitionOutput({
///     name: "Contributor",
///     scope: example.id,
/// });
/// const exampleRoleManagementPolicy = new azure.pim.RoleManagementPolicy("example", {
///     scope: example.id,
///     roleDefinitionId: mgContributor.apply(mgContributor => mgContributor.id),
///     eligibleAssignmentRules: {
///         expirationRequired: false,
///     },
///     activeAssignmentRules: {
///         expireAfter: "P90D",
///     },
///     activationRules: {
///         maximumDuration: "PT1H",
///         requireApproval: true,
///     },
///     notificationRules: {
///         activeAssignments: {
///             adminNotifications: {
///                 notificationLevel: "Critical",
///                 defaultRecipients: false,
///                 additionalRecipients: ["someone@example.com"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.Group("example", name="example-group")
/// mg_contributor = azure.authorization.get_role_definition_output(name="Contributor",
///     scope=example.id)
/// example_role_management_policy = azure.pim.RoleManagementPolicy("example",
///     scope=example.id,
///     role_definition_id=mg_contributor.id,
///     eligible_assignment_rules={
///         "expiration_required": False,
///     },
///     active_assignment_rules={
///         "expire_after": "P90D",
///     },
///     activation_rules={
///         "maximum_duration": "PT1H",
///         "require_approval": True,
///     },
///     notification_rules={
///         "active_assignments": {
///             "admin_notifications": {
///                 "notification_level": "Critical",
///                 "default_recipients": False,
///                 "additional_recipients": ["someone@example.com"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Management.Group("example", new()
///     {
///         Name = "example-group",
///     });
///
///     var mgContributor = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Contributor",
///         Scope = example.Id,
///     });
///
///     var exampleRoleManagementPolicy = new Azure.Pim.RoleManagementPolicy("example", new()
///     {
///         Scope = example.Id,
///         RoleDefinitionId = mgContributor.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///         EligibleAssignmentRules = new Azure.Pim.Inputs.RoleManagementPolicyEligibleAssignmentRulesArgs
///         {
///             ExpirationRequired = false,
///         },
///         ActiveAssignmentRules = new Azure.Pim.Inputs.RoleManagementPolicyActiveAssignmentRulesArgs
///         {
///             ExpireAfter = "P90D",
///         },
///         ActivationRules = new Azure.Pim.Inputs.RoleManagementPolicyActivationRulesArgs
///         {
///             MaximumDuration = "PT1H",
///             RequireApproval = true,
///         },
///         NotificationRules = new Azure.Pim.Inputs.RoleManagementPolicyNotificationRulesArgs
///         {
///             ActiveAssignments = new Azure.Pim.Inputs.RoleManagementPolicyNotificationRulesActiveAssignmentsArgs
///             {
///                 AdminNotifications = new Azure.Pim.Inputs.RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotificationsArgs
///                 {
///                     NotificationLevel = "Critical",
///                     DefaultRecipients = false,
///                     AdditionalRecipients = new[]
///                     {
///                         "someone@example.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			Name: pulumi.String("example-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mgContributor := authorization.LookupRoleDefinitionOutput(ctx, authorization.GetRoleDefinitionOutputArgs{
/// 			Name:  pulumi.String("Contributor"),
/// 			Scope: example.ID(),
/// 		}, nil)
/// 		_, err = pim.NewRoleManagementPolicy(ctx, "example", &pim.RoleManagementPolicyArgs{
/// 			Scope: example.ID(),
/// 			RoleDefinitionId: pulumi.String(mgContributor.ApplyT(func(mgContributor authorization.GetRoleDefinitionResult) (*string, error) {
/// 				return &mgContributor.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			EligibleAssignmentRules: &pim.RoleManagementPolicyEligibleAssignmentRulesArgs{
/// 				ExpirationRequired: pulumi.Bool(false),
/// 			},
/// 			ActiveAssignmentRules: &pim.RoleManagementPolicyActiveAssignmentRulesArgs{
/// 				ExpireAfter: pulumi.String("P90D"),
/// 			},
/// 			ActivationRules: &pim.RoleManagementPolicyActivationRulesArgs{
/// 				MaximumDuration: pulumi.String("PT1H"),
/// 				RequireApproval: pulumi.Bool(true),
/// 			},
/// 			NotificationRules: &pim.RoleManagementPolicyNotificationRulesArgs{
/// 				ActiveAssignments: &pim.RoleManagementPolicyNotificationRulesActiveAssignmentsArgs{
/// 					AdminNotifications: &pim.RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotificationsArgs{
/// 						NotificationLevel: pulumi.String("Critical"),
/// 						DefaultRecipients: pulumi.Bool(false),
/// 						AdditionalRecipients: pulumi.StringArray{
/// 							pulumi.String("someone@example.com"),
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
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.pim.RoleManagementPolicy;
/// import com.pulumi.azure.pim.RoleManagementPolicyArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyEligibleAssignmentRulesArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyActiveAssignmentRulesArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyActivationRulesArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyNotificationRulesArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyNotificationRulesActiveAssignmentsArgs;
/// import com.pulumi.azure.pim.inputs.RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotificationsArgs;
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
///             .name("example-group")
///             .build());
///
///         final var mgContributor = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .scope(example.id())
///             .build());
///
///         var exampleRoleManagementPolicy = new RoleManagementPolicy("exampleRoleManagementPolicy", RoleManagementPolicyArgs.builder()
///             .scope(example.id())
///             .roleDefinitionId(mgContributor.applyValue(_mgContributor -> _mgContributor.id()))
///             .eligibleAssignmentRules(RoleManagementPolicyEligibleAssignmentRulesArgs.builder()
///                 .expirationRequired(false)
///                 .build())
///             .activeAssignmentRules(RoleManagementPolicyActiveAssignmentRulesArgs.builder()
///                 .expireAfter("P90D")
///                 .build())
///             .activationRules(RoleManagementPolicyActivationRulesArgs.builder()
///                 .maximumDuration("PT1H")
///                 .requireApproval(true)
///                 .build())
///             .notificationRules(RoleManagementPolicyNotificationRulesArgs.builder()
///                 .activeAssignments(RoleManagementPolicyNotificationRulesActiveAssignmentsArgs.builder()
///                     .adminNotifications(RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotificationsArgs.builder()
///                         .notificationLevel("Critical")
///                         .defaultRecipients(false)
///                         .additionalRecipients("someone@example.com")
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
///     type: azure:management:Group
///     properties:
///       name: example-group
///   exampleRoleManagementPolicy:
///     type: azure:pim:RoleManagementPolicy
///     name: example
///     properties:
///       scope: ${example.id}
///       roleDefinitionId: ${mgContributor.id}
///       eligibleAssignmentRules:
///         expirationRequired: false
///       activeAssignmentRules:
///         expireAfter: P90D
///       activationRules:
///         maximumDuration: PT1H
///         requireApproval: true
///       notificationRules:
///         activeAssignments:
///           adminNotifications:
///             notificationLevel: Critical
///             defaultRecipients: false
///             additionalRecipients:
///               - someone@example.com
/// variables:
///   mgContributor:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Contributor
///         scope: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2020-10-01
///
/// ## Import
///
/// Because these policies are created automatically by Azure, they will auto-import on first use. They can be imported using the `resource id` of the role definition, combined with the scope id, e.g.
///
/// ```sh
/// $ pulumi import azure:pim/roleManagementPolicy:RoleManagementPolicy example "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleDefinitions/00000000-0000-0000-0000-000000000000|<scope>"
/// ```
class RoleManagementPolicy extends pulumi.CustomResource {
  /// An `activation_rules` block as defined below.
  late final pulumi.Output<RoleManagementPolicyActivationRules> activationRules;
  /// An `active_assignment_rules` block as defined below.
  late final pulumi.Output<RoleManagementPolicyActiveAssignmentRules> activeAssignmentRules;
  /// (String) The description of this policy.
  late final pulumi.Output<String> description;
  /// An `eligible_assignment_rules` block as defined below.
  late final pulumi.Output<RoleManagementPolicyEligibleAssignmentRules> eligibleAssignmentRules;
  /// (String) The name of this policy, which is typically a UUID and may change over time.
  late final pulumi.Output<String> name;
  /// A `notification_rules` block as defined below.
  late final pulumi.Output<RoleManagementPolicyNotificationRules> notificationRules;
  /// The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;
  /// The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [RoleManagementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleManagementPolicy]. {@macro pulumi_pim_role_management_policy_role_management_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleManagementPolicy(
    String name, {
    RoleManagementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:pim/roleManagementPolicy:RoleManagementPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationRules = registerOutput<RoleManagementPolicyActivationRules>('activationRules');
    this.activeAssignmentRules = registerOutput<RoleManagementPolicyActiveAssignmentRules>('activeAssignmentRules');
    this.description = registerOutput<String>('description');
    this.eligibleAssignmentRules = registerOutput<RoleManagementPolicyEligibleAssignmentRules>('eligibleAssignmentRules');
    this.name = registerOutput<String>('name');
    this.notificationRules = registerOutput<RoleManagementPolicyNotificationRules>('notificationRules');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
  }

  /// Gets an existing [RoleManagementPolicy] resource's state with the given [name] and [id].
  static RoleManagementPolicy get(
    String name,
    pulumi.Input<String> id, {
    RoleManagementPolicyState? state,
  }) {
    return RoleManagementPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleManagementPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:pim/roleManagementPolicy:RoleManagementPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationRules = registerOutput<RoleManagementPolicyActivationRules>('activationRules');
    this.activeAssignmentRules = registerOutput<RoleManagementPolicyActiveAssignmentRules>('activeAssignmentRules');
    this.description = registerOutput<String>('description');
    this.eligibleAssignmentRules = registerOutput<RoleManagementPolicyEligibleAssignmentRules>('eligibleAssignmentRules');
    this.name = registerOutput<String>('name');
    this.notificationRules = registerOutput<RoleManagementPolicyNotificationRules>('notificationRules');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
  }
}
