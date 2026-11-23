import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_binding_args.dart';
import 'auto_protection_policy_binding_binding_evaluation_summary.dart';
import 'auto_protection_policy_binding_state.dart';

/// An AutoProtectionPolicyBinding applies an AutoProtectionPolicy to a scope, such as a
/// project. Once bound, the policy automatically protects the eligible resources in that
/// scope that match its criteria.
///
///
/// To get more information about AutoProtectionPolicyBinding, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest/v1/projects.locations.autoProtectionPolicies.bindings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// &gt; **Note:** Deleting a binding is asynchronous: `:initiateDelete` transitions the binding to the
/// `DELETION_INITIATED` state while the API unprotects the resources in the binding's scope
/// in the background before removing the binding. By default (`waitForDelete = false`),
/// Terraform returns as soon as `:initiateDelete` completes. While a binding is in
/// `DELETION_INITIATED`, the parent `AutoProtectionPolicy` cannot be deleted. Set
/// `waitForDelete = true` to wait until background unprotection finishes and the binding
/// is completely removed.
///
///
/// ## Example Usage
///
/// ### Backup Dr Auto Protection Policy Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "bv-app-binding",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const myBackupPlan = new gcp.backupdisasterrecovery.BackupPlan("my_backup_plan", {
///     location: "us-central1",
///     backupPlanId: "bp-app-binding",
///     resourceType: "compute.googleapis.com/Instance",
///     backupVault: myBackupVault.id,
///     backupRules: [{
///         ruleId: "rule-1",
///         backupRetentionDays: 5,
///         standardSchedule: {
///             recurrenceType: "HOURLY",
///             hourlyFrequency: 6,
///             timeZone: "UTC",
///             backupWindow: {
///                 startHourOfDay: 0,
///                 endHourOfDay: 24,
///             },
///         },
///     }],
/// });
/// const myPolicy = new gcp.backupdisasterrecovery.AutoProtectionPolicy("my_policy", {
///     location: "us-central1",
///     autoProtectionPolicyId: "app-binding",
///     criteria: {
///         matchingConditions: [{
///             labelCondition: {
///                 key: "backup-policy",
///                 values: ["gold"],
///             },
///         }],
///     },
///     backupPlanDetails: [{
///         resourceType: "compute.googleapis.com/Instance",
///         backupPlan: myBackupPlan.name,
///     }],
/// });
/// const my_binding = new gcp.backupdisasterrecovery.AutoProtectionPolicyBinding("my-binding", {
///     location: "us-central1",
///     autoProtectionPolicyId: myPolicy.autoProtectionPolicyId,
///     autoProtectionPolicyBindingId: "my-project-binding",
///     scope: project.then(project => `projects/${project.projectId}`),
///     waitForDelete: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="bv-app-binding",
///     backup_minimum_enforced_retention_duration="100000s")
/// my_backup_plan = gcp.backupdisasterrecovery.BackupPlan("my_backup_plan",
///     location="us-central1",
///     backup_plan_id="bp-app-binding",
///     resource_type="compute.googleapis.com/Instance",
///     backup_vault=my_backup_vault.id,
///     backup_rules=[{
///         "rule_id": "rule-1",
///         "backup_retention_days": 5,
///         "standard_schedule": {
///             "recurrence_type": "HOURLY",
///             "hourly_frequency": 6,
///             "time_zone": "UTC",
///             "backup_window": {
///                 "start_hour_of_day": 0,
///                 "end_hour_of_day": 24,
///             },
///         },
///     }])
/// my_policy = gcp.backupdisasterrecovery.AutoProtectionPolicy("my_policy",
///     location="us-central1",
///     auto_protection_policy_id="app-binding",
///     criteria={
///         "matching_conditions": [{
///             "label_condition": {
///                 "key": "backup-policy",
///                 "values": ["gold"],
///             },
///         }],
///     },
///     backup_plan_details=[{
///         "resource_type": "compute.googleapis.com/Instance",
///         "backup_plan": my_backup_plan.name,
///     }])
/// my_binding = gcp.backupdisasterrecovery.AutoProtectionPolicyBinding("my-binding",
///     location="us-central1",
///     auto_protection_policy_id=my_policy.auto_protection_policy_id,
///     auto_protection_policy_binding_id="my-project-binding",
///     scope=f"projects/{project.project_id}",
///     wait_for_delete=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var myBackupVault = new Gcp.BackupDisasterRecovery.BackupVault("my_backup_vault", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-app-binding",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var myBackupPlan = new Gcp.BackupDisasterRecovery.BackupPlan("my_backup_plan", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-app-binding",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupVault = myBackupVault.Id,
///         BackupRules = new[]
///         {
///             new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleArgs
///             {
///                 RuleId = "rule-1",
///                 BackupRetentionDays = 5,
///                 StandardSchedule = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleArgs
///                 {
///                     RecurrenceType = "HOURLY",
///                     HourlyFrequency = 6,
///                     TimeZone = "UTC",
///                     BackupWindow = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs
///                     {
///                         StartHourOfDay = 0,
///                         EndHourOfDay = 24,
///                     },
///                 },
///             },
///         },
///     });
///
///     var myPolicy = new Gcp.BackupDisasterRecovery.AutoProtectionPolicy("my_policy", new()
///     {
///         Location = "us-central1",
///         AutoProtectionPolicyId = "app-binding",
///         Criteria = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaArgs
///         {
///             MatchingConditions = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionArgs
///                 {
///                     LabelCondition = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs
///                     {
///                         Key = "backup-policy",
///                         Values = new[]
///                         {
///                             "gold",
///                         },
///                     },
///                 },
///             },
///         },
///         BackupPlanDetails = new[]
///         {
///             new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyBackupPlanDetailArgs
///             {
///                 ResourceType = "compute.googleapis.com/Instance",
///                 BackupPlan = myBackupPlan.Name,
///             },
///         },
///     });
///
///     var my_binding = new Gcp.BackupDisasterRecovery.AutoProtectionPolicyBinding("my-binding", new()
///     {
///         Location = "us-central1",
///         AutoProtectionPolicyId = myPolicy.AutoProtectionPolicyId,
///         AutoProtectionPolicyBindingId = "my-project-binding",
///         Scope = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///         WaitForDelete = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-app-binding"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myBackupPlan, err := backupdisasterrecovery.NewBackupPlan(ctx, "my_backup_plan", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-app-binding"),
/// 			ResourceType: pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupVault:  myBackupVault.ID(),
/// 			BackupRules: backupdisasterrecovery.BackupPlanBackupRuleArray{
/// 				&backupdisasterrecovery.BackupPlanBackupRuleArgs{
/// 					RuleId:              pulumi.String("rule-1"),
/// 					BackupRetentionDays: pulumi.Int(5),
/// 					StandardSchedule: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleArgs{
/// 						RecurrenceType:  pulumi.String("HOURLY"),
/// 						HourlyFrequency: pulumi.Int(6),
/// 						TimeZone:        pulumi.String("UTC"),
/// 						BackupWindow: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleBackupWindowArgs{
/// 							StartHourOfDay: pulumi.Int(0),
/// 							EndHourOfDay:   pulumi.Int(24),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myPolicy, err := backupdisasterrecovery.NewAutoProtectionPolicy(ctx, "my_policy", &backupdisasterrecovery.AutoProtectionPolicyArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			AutoProtectionPolicyId: pulumi.String("app-binding"),
/// 			Criteria: &backupdisasterrecovery.AutoProtectionPolicyCriteriaArgs{
/// 				MatchingConditions: backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArray{
/// 					&backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArgs{
/// 						LabelCondition: &backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs{
/// 							Key: pulumi.String("backup-policy"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("gold"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackupPlanDetails: backupdisasterrecovery.AutoProtectionPolicyBackupPlanDetailArray{
/// 				&backupdisasterrecovery.AutoProtectionPolicyBackupPlanDetailArgs{
/// 					ResourceType: pulumi.String("compute.googleapis.com/Instance"),
/// 					BackupPlan:   myBackupPlan.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewAutoProtectionPolicyBinding(ctx, "my-binding", &backupdisasterrecovery.AutoProtectionPolicyBindingArgs{
/// 			Location:                      pulumi.String("us-central1"),
/// 			AutoProtectionPolicyId:        myPolicy.AutoProtectionPolicyId,
/// 			AutoProtectionPolicyBindingId: pulumi.String("my-project-binding"),
/// 			Scope:                         pulumi.Sprintf("projects/%v", project.ProjectId),
/// 			WaitForDelete:                 pulumi.Bool(false),
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_backupdisasterrecovery_backup_vault" "my_backup_vault" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                                   = "us-central1"
///   backup_vault_id                            = "bv-app-binding"
///   backup_minimum_enforced_retention_duration = "100000s"
/// }
/// resource "gcp_backupdisasterrecovery_backup_plan" "my_backup_plan" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location       = "us-central1"
///   backup_plan_id = "bp-app-binding"
///   resource_type  = "compute.googleapis.com/Instance"
///   backup_vault   = gcp_backupdisasterrecovery_backup_vault.my_backup_vault.id
///   backup_rules {
///     rule_id               = "rule-1"
///     backup_retention_days = 5
///     standard_schedule = {
///       recurrence_type  = "HOURLY"
///       hourly_frequency = 6
///       time_zone        = "UTC"
///       backup_window = {
///         start_hour_of_day = 0
///         end_hour_of_day   = 24
///       }
///     }
///   }
/// }
/// resource "gcp_backupdisasterrecovery_auto_protection_policy" "my_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                  = "us-central1"
///   auto_protection_policy_id = "app-binding"
///   criteria = {
///     matching_conditions = [{
///       label_condition = {
///         key    = "backup-policy"
///         values = ["gold"]
///       }
///     }]
///   }
///   backup_plan_details {
///     resource_type = "compute.googleapis.com/Instance"
///     backup_plan   = gcp_backupdisasterrecovery_backup_plan.my_backup_plan.name
///   }
/// }
/// resource "gcp_backupdisasterrecovery_auto_protection_policy_binding" "my-binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                          = "us-central1"
///   auto_protection_policy_id         = gcp_backupdisasterrecovery_auto_protection_policy.my_policy.auto_protection_policy_id
///   auto_protection_policy_binding_id = "my-project-binding"
///   scope                             ="projects/${data.gcp_organizations_project.project.project_id}"
///   wait_for_delete                   = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.AutoProtectionPolicy;
/// import com.pulumi.gcp.backupdisasterrecovery.AutoProtectionPolicyArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.AutoProtectionPolicyCriteriaArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.AutoProtectionPolicyCriteriaMatchingConditionArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.AutoProtectionPolicyBackupPlanDetailArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.AutoProtectionPolicyBinding;
/// import com.pulumi.gcp.backupdisasterrecovery.AutoProtectionPolicyBindingArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-app-binding")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var myBackupPlan = new BackupPlan("myBackupPlan", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-app-binding")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupVault(myBackupVault.id())
///             .backupRules(BackupPlanBackupRuleArgs.builder()
///                 .ruleId("rule-1")
///                 .backupRetentionDays(5)
///                 .standardSchedule(BackupPlanBackupRuleStandardScheduleArgs.builder()
///                     .recurrenceType("HOURLY")
///                     .hourlyFrequency(6)
///                     .timeZone("UTC")
///                     .backupWindow(BackupPlanBackupRuleStandardScheduleBackupWindowArgs.builder()
///                         .startHourOfDay(0)
///                         .endHourOfDay(24)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var myPolicy = new AutoProtectionPolicy("myPolicy", AutoProtectionPolicyArgs.builder()
///             .location("us-central1")
///             .autoProtectionPolicyId("app-binding")
///             .criteria(AutoProtectionPolicyCriteriaArgs.builder()
///                 .matchingConditions(AutoProtectionPolicyCriteriaMatchingConditionArgs.builder()
///                     .labelCondition(AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs.builder()
///                         .key("backup-policy")
///                         .values("gold")
///                         .build())
///                     .build())
///                 .build())
///             .backupPlanDetails(AutoProtectionPolicyBackupPlanDetailArgs.builder()
///                 .resourceType("compute.googleapis.com/Instance")
///                 .backupPlan(myBackupPlan.name())
///                 .build())
///             .build());
///
///         var my_binding = new AutoProtectionPolicyBinding("my-binding", AutoProtectionPolicyBindingArgs.builder()
///             .location("us-central1")
///             .autoProtectionPolicyId(myPolicy.autoProtectionPolicyId())
///             .autoProtectionPolicyBindingId("my-project-binding")
///             .scope(String.format("projects/%s", project.projectId()))
///             .waitForDelete(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myBackupVault:
///     type: gcp:backupdisasterrecovery:BackupVault
///     name: my_backup_vault
///     properties:
///       location: us-central1
///       backupVaultId: bv-app-binding
///       backupMinimumEnforcedRetentionDuration: 100000s
///   myBackupPlan:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     name: my_backup_plan
///     properties:
///       location: us-central1
///       backupPlanId: bp-app-binding
///       resourceType: compute.googleapis.com/Instance
///       backupVault: ${myBackupVault.id}
///       backupRules:
///         - ruleId: rule-1
///           backupRetentionDays: 5
///           standardSchedule:
///             recurrenceType: HOURLY
///             hourlyFrequency: 6
///             timeZone: UTC
///             backupWindow:
///               startHourOfDay: 0
///               endHourOfDay: 24
///   myPolicy:
///     type: gcp:backupdisasterrecovery:AutoProtectionPolicy
///     name: my_policy
///     properties:
///       location: us-central1
///       autoProtectionPolicyId: app-binding
///       criteria:
///         matchingConditions:
///           - labelCondition:
///               key: backup-policy
///               values:
///                 - gold
///       backupPlanDetails:
///         - resourceType: compute.googleapis.com/Instance
///           backupPlan: ${myBackupPlan.name}
///   my-binding:
///     type: gcp:backupdisasterrecovery:AutoProtectionPolicyBinding
///     properties:
///       location: us-central1
///       autoProtectionPolicyId: ${myPolicy.autoProtectionPolicyId}
///       autoProtectionPolicyBindingId: my-project-binding
///       scope: projects/${project.projectId}
///       waitForDelete: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// AutoProtectionPolicyBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autoProtectionPolicies/{{auto_protection_policy_id}}/bindings/{{auto_protection_policy_binding_id}}`
/// * `{{project}}/{{location}}/{{auto_protection_policy_id}}/{{auto_protection_policy_binding_id}}`
/// * `{{location}}/{{auto_protection_policy_id}}/{{auto_protection_policy_binding_id}}`
///
///
/// When using the `pulumi import` command, AutoProtectionPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding default projects/{{project}}/locations/{{location}}/autoProtectionPolicies/{{auto_protection_policy_id}}/bindings/{{auto_protection_policy_binding_id}}
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding default {{project}}/{{location}}/{{auto_protection_policy_id}}/{{auto_protection_policy_binding_id}}
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding default {{location}}/{{auto_protection_policy_id}}/{{auto_protection_policy_binding_id}}
/// ```
class AutoProtectionPolicyBinding extends pulumi.CustomResource {
  /// The ID of the binding. This becomes the final component of the binding's resource name.
  late final pulumi.Output<String> autoProtectionPolicyBindingId;
  /// The ID of the auto protection policy to bind.
  late final pulumi.Output<String> autoProtectionPolicyId;
  /// A summary of the last run of the job that applies the policy to matching resources within the binding's scope.
  /// Structure is documented below.
  late final pulumi.Output<List<AutoProtectionPolicyBindingBindingEvaluationSummary>> bindingEvaluationSummaries;
  /// The time when the binding was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The etag of the binding, used for optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// The location of the auto protection policy.
  late final pulumi.Output<String> location;
  /// The resource name of the binding, in the format
  /// `projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}/bindings/{auto_protection_policy_binding_id}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The container that the policy is applied to, in the format `projects/{project}`.
  late final pulumi.Output<String> scope;
  /// The current state of the binding.
  /// Possible values are `CREATING`, `ACTIVE`, and `DELETION_INITIATED`.
  late final pulumi.Output<String> state;
  /// The time when the binding was last updated.
  late final pulumi.Output<String> updateTime;
  /// Whether Terraform should wait for the binding and all associated background resource
  /// unprotection operations to be completely deleted before returning. Setting
  /// `waitForDelete = true` will block the Terraform script/execution until all resources
  /// are unprotected and the binding is fully removed.
  late final pulumi.Output<bool?> waitForDelete;

  /// Creates a new [AutoProtectionPolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoProtectionPolicyBinding]. {@macro pulumi_backupdisasterrecovery_auto_protection_policy_binding_auto_protection_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoProtectionPolicyBinding(
    String name, {
    AutoProtectionPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    autoProtectionPolicyBindingId = registerOutput<String>('autoProtectionPolicyBindingId');
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    bindingEvaluationSummaries = registerOutput<List<AutoProtectionPolicyBindingBindingEvaluationSummary>>('bindingEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingBindingEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyBindingBindingEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    waitForDelete = registerOutput<bool?>('waitForDelete');
  }

  /// Gets an existing [AutoProtectionPolicyBinding] resource's state with the given [name] and [id].
  static AutoProtectionPolicyBinding get(
    String name,
    pulumi.Input<String> id, {
    AutoProtectionPolicyBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoProtectionPolicyBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoProtectionPolicyBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProtectionPolicyBindingId = registerOutput<String>('autoProtectionPolicyBindingId');
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    bindingEvaluationSummaries = registerOutput<List<AutoProtectionPolicyBindingBindingEvaluationSummary>>('bindingEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingBindingEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyBindingBindingEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    waitForDelete = registerOutput<bool?>('waitForDelete');
  }

  /// Creates a typed reference to an existing [AutoProtectionPolicyBinding] resource.
  AutoProtectionPolicyBinding.reference(String urn)
    : super(
        'gcp:backupdisasterrecovery/autoProtectionPolicyBinding:AutoProtectionPolicyBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoProtectionPolicyBindingId = registerOutput<String>('autoProtectionPolicyBindingId');
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    bindingEvaluationSummaries = registerOutput<List<AutoProtectionPolicyBindingBindingEvaluationSummary>>('bindingEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingBindingEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyBindingBindingEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    waitForDelete = registerOutput<bool?>('waitForDelete');
  }
}
