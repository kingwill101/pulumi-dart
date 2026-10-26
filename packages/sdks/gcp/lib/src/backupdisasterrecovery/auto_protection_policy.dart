import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_args.dart';
import 'auto_protection_policy_backup_plan_detail.dart';
import 'auto_protection_policy_binding_summary.dart';
import 'auto_protection_policy_criteria.dart';
import 'auto_protection_policy_policy_evaluation_summary.dart';
import 'auto_protection_policy_state.dart';

/// An AutoProtectionPolicy automates backup management by applying a backup plan to all
/// eligible resources that match the policy's criteria, instead of protecting each resource
/// individually. A policy takes effect only after it is attached to a scope, such as a
/// project, with a `googleBackupDrAutoProtectionPolicyBinding`.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about AutoProtectionPolicy, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest/v1beta/projects.locations.autoProtectionPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Auto Protection Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "bv-app",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const myBackupPlan = new gcp.backupdisasterrecovery.BackupPlan("my_backup_plan", {
///     location: "us-central1",
///     backupPlanId: "bp-app",
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
/// const my_auto_protection_policy = new gcp.backupdisasterrecovery.AutoProtectionPolicy("my-auto-protection-policy", {
///     location: "us-central1",
///     autoProtectionPolicyId: "app",
///     criteria: {
///         matchingConditions: [{
///             labelCondition: {
///                 key: "env",
///                 values: ["prod"],
///             },
///         }],
///     },
///     backupPlanDetails: [{
///         resourceType: "compute.googleapis.com/Instance",
///         backupPlan: myBackupPlan.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="bv-app",
///     backup_minimum_enforced_retention_duration="100000s")
/// my_backup_plan = gcp.backupdisasterrecovery.BackupPlan("my_backup_plan",
///     location="us-central1",
///     backup_plan_id="bp-app",
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
/// my_auto_protection_policy = gcp.backupdisasterrecovery.AutoProtectionPolicy("my-auto-protection-policy",
///     location="us-central1",
///     auto_protection_policy_id="app",
///     criteria={
///         "matching_conditions": [{
///             "label_condition": {
///                 "key": "env",
///                 "values": ["prod"],
///             },
///         }],
///     },
///     backup_plan_details=[{
///         "resource_type": "compute.googleapis.com/Instance",
///         "backup_plan": my_backup_plan.name,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myBackupVault = new Gcp.BackupDisasterRecovery.BackupVault("my_backup_vault", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-app",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var myBackupPlan = new Gcp.BackupDisasterRecovery.BackupPlan("my_backup_plan", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-app",
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
///     var my_auto_protection_policy = new Gcp.BackupDisasterRecovery.AutoProtectionPolicy("my-auto-protection-policy", new()
///     {
///         Location = "us-central1",
///         AutoProtectionPolicyId = "app",
///         Criteria = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaArgs
///         {
///             MatchingConditions = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionArgs
///                 {
///                     LabelCondition = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs
///                     {
///                         Key = "env",
///                         Values = new[]
///                         {
///                             "prod",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-app"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myBackupPlan, err := backupdisasterrecovery.NewBackupPlan(ctx, "my_backup_plan", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-app"),
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
/// 		_, err = backupdisasterrecovery.NewAutoProtectionPolicy(ctx, "my-auto-protection-policy", &backupdisasterrecovery.AutoProtectionPolicyArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			AutoProtectionPolicyId: pulumi.String("app"),
/// 			Criteria: &backupdisasterrecovery.AutoProtectionPolicyCriteriaArgs{
/// 				MatchingConditions: backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArray{
/// 					&backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArgs{
/// 						LabelCondition: &backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs{
/// 							Key: pulumi.String("env"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("prod"),
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
/// resource "gcp_backupdisasterrecovery_backup_vault" "my_backup_vault" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                                   = "us-central1"
///   backup_vault_id                            = "bv-app"
///   backup_minimum_enforced_retention_duration = "100000s"
/// }
/// resource "gcp_backupdisasterrecovery_backup_plan" "my_backup_plan" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location       = "us-central1"
///   backup_plan_id = "bp-app"
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
/// resource "gcp_backupdisasterrecovery_auto_protection_policy" "my-auto-protection-policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                  = "us-central1"
///   auto_protection_policy_id = "app"
///   criteria = {
///     matching_conditions = [{
///       label_condition = {
///         key    = "env"
///         values = ["prod"]
///       }
///     }]
///   }
///   backup_plan_details {
///     resource_type = "compute.googleapis.com/Instance"
///     backup_plan   = gcp_backupdisasterrecovery_backup_plan.my_backup_plan.name
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-app")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var myBackupPlan = new BackupPlan("myBackupPlan", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-app")
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
///         var my_auto_protection_policy = new AutoProtectionPolicy("my-auto-protection-policy", AutoProtectionPolicyArgs.builder()
///             .location("us-central1")
///             .autoProtectionPolicyId("app")
///             .criteria(AutoProtectionPolicyCriteriaArgs.builder()
///                 .matchingConditions(AutoProtectionPolicyCriteriaMatchingConditionArgs.builder()
///                     .labelCondition(AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs.builder()
///                         .key("env")
///                         .values("prod")
///                         .build())
///                     .build())
///                 .build())
///             .backupPlanDetails(AutoProtectionPolicyBackupPlanDetailArgs.builder()
///                 .resourceType("compute.googleapis.com/Instance")
///                 .backupPlan(myBackupPlan.name())
///                 .build())
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
///       backupVaultId: bv-app
///       backupMinimumEnforcedRetentionDuration: 100000s
///   myBackupPlan:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     name: my_backup_plan
///     properties:
///       location: us-central1
///       backupPlanId: bp-app
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
///   my-auto-protection-policy:
///     type: gcp:backupdisasterrecovery:AutoProtectionPolicy
///     properties:
///       location: us-central1
///       autoProtectionPolicyId: app
///       criteria:
///         matchingConditions:
///           - labelCondition:
///               key: env
///               values:
///                 - prod
///       backupPlanDetails:
///         - resourceType: compute.googleapis.com/Instance
///           backupPlan: ${myBackupPlan.name}
/// ```
///
/// ### Backup Dr Auto Protection Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "bv-app-update",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const instanceBackupPlan = new gcp.backupdisasterrecovery.BackupPlan("instance_backup_plan", {
///     location: "us-central1",
///     backupPlanId: "bp-app-update-vm",
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
/// const my_auto_protection_policy = new gcp.backupdisasterrecovery.AutoProtectionPolicy("my-auto-protection-policy", {
///     location: "us-central1",
///     autoProtectionPolicyId: "app-update",
///     description: "Protects production VMs.",
///     criteria: {
///         matchingConditions: [{
///             labelCondition: {
///                 key: "env",
///                 values: ["prod"],
///             },
///         }],
///     },
///     backupPlanDetails: [{
///         resourceType: "compute.googleapis.com/Instance",
///         backupPlan: instanceBackupPlan.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="bv-app-update",
///     backup_minimum_enforced_retention_duration="100000s")
/// instance_backup_plan = gcp.backupdisasterrecovery.BackupPlan("instance_backup_plan",
///     location="us-central1",
///     backup_plan_id="bp-app-update-vm",
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
/// my_auto_protection_policy = gcp.backupdisasterrecovery.AutoProtectionPolicy("my-auto-protection-policy",
///     location="us-central1",
///     auto_protection_policy_id="app-update",
///     description="Protects production VMs.",
///     criteria={
///         "matching_conditions": [{
///             "label_condition": {
///                 "key": "env",
///                 "values": ["prod"],
///             },
///         }],
///     },
///     backup_plan_details=[{
///         "resource_type": "compute.googleapis.com/Instance",
///         "backup_plan": instance_backup_plan.name,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myBackupVault = new Gcp.BackupDisasterRecovery.BackupVault("my_backup_vault", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-app-update",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var instanceBackupPlan = new Gcp.BackupDisasterRecovery.BackupPlan("instance_backup_plan", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-app-update-vm",
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
///     var my_auto_protection_policy = new Gcp.BackupDisasterRecovery.AutoProtectionPolicy("my-auto-protection-policy", new()
///     {
///         Location = "us-central1",
///         AutoProtectionPolicyId = "app-update",
///         Description = "Protects production VMs.",
///         Criteria = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaArgs
///         {
///             MatchingConditions = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionArgs
///                 {
///                     LabelCondition = new Gcp.BackupDisasterRecovery.Inputs.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs
///                     {
///                         Key = "env",
///                         Values = new[]
///                         {
///                             "prod",
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
///                 BackupPlan = instanceBackupPlan.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-app-update"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instanceBackupPlan, err := backupdisasterrecovery.NewBackupPlan(ctx, "instance_backup_plan", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-app-update-vm"),
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
/// 		_, err = backupdisasterrecovery.NewAutoProtectionPolicy(ctx, "my-auto-protection-policy", &backupdisasterrecovery.AutoProtectionPolicyArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			AutoProtectionPolicyId: pulumi.String("app-update"),
/// 			Description:            pulumi.String("Protects production VMs."),
/// 			Criteria: &backupdisasterrecovery.AutoProtectionPolicyCriteriaArgs{
/// 				MatchingConditions: backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArray{
/// 					&backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionArgs{
/// 						LabelCondition: &backupdisasterrecovery.AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs{
/// 							Key: pulumi.String("env"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("prod"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackupPlanDetails: backupdisasterrecovery.AutoProtectionPolicyBackupPlanDetailArray{
/// 				&backupdisasterrecovery.AutoProtectionPolicyBackupPlanDetailArgs{
/// 					ResourceType: pulumi.String("compute.googleapis.com/Instance"),
/// 					BackupPlan:   instanceBackupPlan.Name,
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_backup_vault" "my_backup_vault" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                                   = "us-central1"
///   backup_vault_id                            = "bv-app-update"
///   backup_minimum_enforced_retention_duration = "100000s"
/// }
/// resource "gcp_backupdisasterrecovery_backup_plan" "instance_backup_plan" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location       = "us-central1"
///   backup_plan_id = "bp-app-update-vm"
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
/// resource "gcp_backupdisasterrecovery_auto_protection_policy" "my-auto-protection-policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location                  = "us-central1"
///   auto_protection_policy_id = "app-update"
///   description               = "Protects production VMs."
///   criteria = {
///     matching_conditions = [{
///       label_condition = {
///         key    = "env"
///         values = ["prod"]
///       }
///     }]
///   }
///   backup_plan_details {
///     resource_type = "compute.googleapis.com/Instance"
///     backup_plan   = gcp_backupdisasterrecovery_backup_plan.instance_backup_plan.name
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-app-update")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var instanceBackupPlan = new BackupPlan("instanceBackupPlan", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-app-update-vm")
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
///         var my_auto_protection_policy = new AutoProtectionPolicy("my-auto-protection-policy", AutoProtectionPolicyArgs.builder()
///             .location("us-central1")
///             .autoProtectionPolicyId("app-update")
///             .description("Protects production VMs.")
///             .criteria(AutoProtectionPolicyCriteriaArgs.builder()
///                 .matchingConditions(AutoProtectionPolicyCriteriaMatchingConditionArgs.builder()
///                     .labelCondition(AutoProtectionPolicyCriteriaMatchingConditionLabelConditionArgs.builder()
///                         .key("env")
///                         .values("prod")
///                         .build())
///                     .build())
///                 .build())
///             .backupPlanDetails(AutoProtectionPolicyBackupPlanDetailArgs.builder()
///                 .resourceType("compute.googleapis.com/Instance")
///                 .backupPlan(instanceBackupPlan.name())
///                 .build())
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
///       backupVaultId: bv-app-update
///       backupMinimumEnforcedRetentionDuration: 100000s
///   instanceBackupPlan:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     name: instance_backup_plan
///     properties:
///       location: us-central1
///       backupPlanId: bp-app-update-vm
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
///   my-auto-protection-policy:
///     type: gcp:backupdisasterrecovery:AutoProtectionPolicy
///     properties:
///       location: us-central1
///       autoProtectionPolicyId: app-update
///       description: Protects production VMs.
///       criteria:
///         matchingConditions:
///           - labelCondition:
///               key: env
///               values:
///                 - prod
///       backupPlanDetails:
///         - resourceType: compute.googleapis.com/Instance
///           backupPlan: ${instanceBackupPlan.name}
/// ```
///
///
/// ## Import
///
/// AutoProtectionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autoProtectionPolicies/{{auto_protection_policy_id}}`
/// * `{{project}}/{{location}}/{{auto_protection_policy_id}}`
/// * `{{location}}/{{auto_protection_policy_id}}`
///
///
/// When using the `pulumi import` command, AutoProtectionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy default projects/{{project}}/locations/{{location}}/autoProtectionPolicies/{{auto_protection_policy_id}}
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy default {{project}}/{{location}}/{{auto_protection_policy_id}}
/// $ pulumi import gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy default {{location}}/{{auto_protection_policy_id}}
/// ```
class AutoProtectionPolicy extends pulumi.CustomResource {
  /// The ID of the auto protection policy. This becomes the final component of the policy's resource name.
  late final pulumi.Output<String> autoProtectionPolicyId;
  /// The backup plans to apply to the resources that match the policy's criteria. Each entry
  /// specifies a resource type and the backup plan that protects resources of that type.
  /// Currently, only one entry is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<AutoProtectionPolicyBackupPlanDetail>> backupPlanDetails;
  /// A summary of the scopes that the policy is applied to through bindings.
  /// Structure is documented below.
  late final pulumi.Output<List<AutoProtectionPolicyBindingSummary>> bindingSummaries;
  /// The time when the auto protection policy was created.
  late final pulumi.Output<String> createTime;
  /// The criteria that a resource must meet to be protected by the policy.
  /// Structure is documented below.
  late final pulumi.Output<AutoProtectionPolicyCriteria> criteria;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the auto protection policy.
  late final pulumi.Output<String?> description;
  /// The etag of the auto protection policy, used for optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// The location of the auto protection policy.
  late final pulumi.Output<String> location;
  /// The resource name of the auto protection policy, in the format
  /// `projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}`.
  late final pulumi.Output<String> name;
  /// A summary of the last run of the job that applies the policy to matching resources.
  /// Structure is documented below.
  late final pulumi.Output<List<AutoProtectionPolicyPolicyEvaluationSummary>> policyEvaluationSummaries;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current state of the auto protection policy.
  /// Possible values are `CREATING`, `ACTIVE`, `UPDATING`, and `DELETING`.
  late final pulumi.Output<String> state;
  /// The time when the auto protection policy was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AutoProtectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoProtectionPolicy]. {@macro pulumi_backupdisasterrecovery_auto_protection_policy_auto_protection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoProtectionPolicy(
    String name, {
    AutoProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    backupPlanDetails = registerOutput<List<AutoProtectionPolicyBackupPlanDetail>>('backupPlanDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBackupPlanDetail>(guardedValue, (value) => AutoProtectionPolicyBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>())); });
    bindingSummaries = registerOutput<List<AutoProtectionPolicyBindingSummary>>('bindingSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingSummary>(guardedValue, (value) => AutoProtectionPolicyBindingSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    criteria = registerOutput<AutoProtectionPolicyCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoProtectionPolicyCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyEvaluationSummaries = registerOutput<List<AutoProtectionPolicyPolicyEvaluationSummary>>('policyEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyPolicyEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyPolicyEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AutoProtectionPolicy] resource's state with the given [name] and [id].
  static AutoProtectionPolicy get(
    String name,
    pulumi.Input<String> id, {
    AutoProtectionPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoProtectionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoProtectionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    backupPlanDetails = registerOutput<List<AutoProtectionPolicyBackupPlanDetail>>('backupPlanDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBackupPlanDetail>(guardedValue, (value) => AutoProtectionPolicyBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>())); });
    bindingSummaries = registerOutput<List<AutoProtectionPolicyBindingSummary>>('bindingSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingSummary>(guardedValue, (value) => AutoProtectionPolicyBindingSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    criteria = registerOutput<AutoProtectionPolicyCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoProtectionPolicyCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyEvaluationSummaries = registerOutput<List<AutoProtectionPolicyPolicyEvaluationSummary>>('policyEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyPolicyEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyPolicyEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AutoProtectionPolicy] resource.
  AutoProtectionPolicy.reference(String urn)
    : super(
        'gcp:backupdisasterrecovery/autoProtectionPolicy:AutoProtectionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoProtectionPolicyId = registerOutput<String>('autoProtectionPolicyId');
    backupPlanDetails = registerOutput<List<AutoProtectionPolicyBackupPlanDetail>>('backupPlanDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBackupPlanDetail>(guardedValue, (value) => AutoProtectionPolicyBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>())); });
    bindingSummaries = registerOutput<List<AutoProtectionPolicyBindingSummary>>('bindingSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyBindingSummary>(guardedValue, (value) => AutoProtectionPolicyBindingSummary.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    criteria = registerOutput<AutoProtectionPolicyCriteria>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoProtectionPolicyCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policyEvaluationSummaries = registerOutput<List<AutoProtectionPolicyPolicyEvaluationSummary>>('policyEvaluationSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoProtectionPolicyPolicyEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyPolicyEvaluationSummary.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
