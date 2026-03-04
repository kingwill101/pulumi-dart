import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_args.dart';
import 'backup_plan_state.dart';

/// A backup plan defines when and how to back up a resource, including the backup's schedule, retention, and location.
///
///
/// To get more information about BackupPlan, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Backup Plan Simple
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "backup-vault-simple-test",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const my_backup_plan_1 = new gcp.backupdisasterrecovery.BackupPlan("my-backup-plan-1", {
///     location: "us-central1",
///     backupPlanId: "backup-plan-simple-test",
///     resourceType: "compute.googleapis.com/Instance",
///     backupVault: myBackupVault.id,
///     maxCustomOnDemandRetentionDays: 30,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="backup-vault-simple-test",
///     backup_minimum_enforced_retention_duration="100000s")
/// my_backup_plan_1 = gcp.backupdisasterrecovery.BackupPlan("my-backup-plan-1",
///     location="us-central1",
///     backup_plan_id="backup-plan-simple-test",
///     resource_type="compute.googleapis.com/Instance",
///     backup_vault=my_backup_vault.id,
///     max_custom_on_demand_retention_days=30,
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
///         BackupVaultId = "backup-vault-simple-test",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var my_backup_plan_1 = new Gcp.BackupDisasterRecovery.BackupPlan("my-backup-plan-1", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "backup-plan-simple-test",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupVault = myBackupVault.Id,
///         MaxCustomOnDemandRetentionDays = 30,
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("backup-vault-simple-test"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlan(ctx, "my-backup-plan-1", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:                       pulumi.String("us-central1"),
/// 			BackupPlanId:                   pulumi.String("backup-plan-simple-test"),
/// 			ResourceType:                   pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupVault:                    myBackupVault.ID(),
/// 			MaxCustomOnDemandRetentionDays: pulumi.Int(30),
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
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
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
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault-simple-test")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var my_backup_plan_1 = new BackupPlan("my-backup-plan-1", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("backup-plan-simple-test")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupVault(myBackupVault.id())
///             .maxCustomOnDemandRetentionDays(30)
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
///       backupVaultId: backup-vault-simple-test
///       backupMinimumEnforcedRetentionDuration: 100000s
///   my-backup-plan-1:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     properties:
///       location: us-central1
///       backupPlanId: backup-plan-simple-test
///       resourceType: compute.googleapis.com/Instance
///       backupVault: ${myBackupVault.id}
///       maxCustomOnDemandRetentionDays: 30
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
/// ```
///
/// ### Backup Dr Backup Plan For Disk Resource
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "backup-vault-disk-test",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const my_disk_backup_plan_1 = new gcp.backupdisasterrecovery.BackupPlan("my-disk-backup-plan-1", {
///     location: "us-central1",
///     backupPlanId: "backup-plan-disk-test",
///     resourceType: "compute.googleapis.com/Disk",
///     backupVault: myBackupVault.id,
///     maxCustomOnDemandRetentionDays: 30,
///     backupRules: [{
///         ruleId: "rule-1",
///         backupRetentionDays: 5,
///         standardSchedule: {
///             recurrenceType: "HOURLY",
///             hourlyFrequency: 1,
///             timeZone: "UTC",
///             backupWindow: {
///                 startHourOfDay: 0,
///                 endHourOfDay: 6,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="backup-vault-disk-test",
///     backup_minimum_enforced_retention_duration="100000s")
/// my_disk_backup_plan_1 = gcp.backupdisasterrecovery.BackupPlan("my-disk-backup-plan-1",
///     location="us-central1",
///     backup_plan_id="backup-plan-disk-test",
///     resource_type="compute.googleapis.com/Disk",
///     backup_vault=my_backup_vault.id,
///     max_custom_on_demand_retention_days=30,
///     backup_rules=[{
///         "rule_id": "rule-1",
///         "backup_retention_days": 5,
///         "standard_schedule": {
///             "recurrence_type": "HOURLY",
///             "hourly_frequency": 1,
///             "time_zone": "UTC",
///             "backup_window": {
///                 "start_hour_of_day": 0,
///                 "end_hour_of_day": 6,
///             },
///         },
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
///         BackupVaultId = "backup-vault-disk-test",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var my_disk_backup_plan_1 = new Gcp.BackupDisasterRecovery.BackupPlan("my-disk-backup-plan-1", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "backup-plan-disk-test",
///         ResourceType = "compute.googleapis.com/Disk",
///         BackupVault = myBackupVault.Id,
///         MaxCustomOnDemandRetentionDays = 30,
///         BackupRules = new[]
///         {
///             new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleArgs
///             {
///                 RuleId = "rule-1",
///                 BackupRetentionDays = 5,
///                 StandardSchedule = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleArgs
///                 {
///                     RecurrenceType = "HOURLY",
///                     HourlyFrequency = 1,
///                     TimeZone = "UTC",
///                     BackupWindow = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs
///                     {
///                         StartHourOfDay = 0,
///                         EndHourOfDay = 6,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("backup-vault-disk-test"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlan(ctx, "my-disk-backup-plan-1", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:                       pulumi.String("us-central1"),
/// 			BackupPlanId:                   pulumi.String("backup-plan-disk-test"),
/// 			ResourceType:                   pulumi.String("compute.googleapis.com/Disk"),
/// 			BackupVault:                    myBackupVault.ID(),
/// 			MaxCustomOnDemandRetentionDays: pulumi.Int(30),
/// 			BackupRules: backupdisasterrecovery.BackupPlanBackupRuleArray{
/// 				&backupdisasterrecovery.BackupPlanBackupRuleArgs{
/// 					RuleId:              pulumi.String("rule-1"),
/// 					BackupRetentionDays: pulumi.Int(5),
/// 					StandardSchedule: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleArgs{
/// 						RecurrenceType:  pulumi.String("HOURLY"),
/// 						HourlyFrequency: pulumi.Int(1),
/// 						TimeZone:        pulumi.String("UTC"),
/// 						BackupWindow: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleBackupWindowArgs{
/// 							StartHourOfDay: pulumi.Int(0),
/// 							EndHourOfDay:   pulumi.Int(6),
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
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
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
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault-disk-test")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var my_disk_backup_plan_1 = new BackupPlan("my-disk-backup-plan-1", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("backup-plan-disk-test")
///             .resourceType("compute.googleapis.com/Disk")
///             .backupVault(myBackupVault.id())
///             .maxCustomOnDemandRetentionDays(30)
///             .backupRules(BackupPlanBackupRuleArgs.builder()
///                 .ruleId("rule-1")
///                 .backupRetentionDays(5)
///                 .standardSchedule(BackupPlanBackupRuleStandardScheduleArgs.builder()
///                     .recurrenceType("HOURLY")
///                     .hourlyFrequency(1)
///                     .timeZone("UTC")
///                     .backupWindow(BackupPlanBackupRuleStandardScheduleBackupWindowArgs.builder()
///                         .startHourOfDay(0)
///                         .endHourOfDay(6)
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
///   myBackupVault:
///     type: gcp:backupdisasterrecovery:BackupVault
///     name: my_backup_vault
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault-disk-test
///       backupMinimumEnforcedRetentionDuration: 100000s
///   my-disk-backup-plan-1:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     properties:
///       location: us-central1
///       backupPlanId: backup-plan-disk-test
///       resourceType: compute.googleapis.com/Disk
///       backupVault: ${myBackupVault.id}
///       maxCustomOnDemandRetentionDays: 30
///       backupRules:
///         - ruleId: rule-1
///           backupRetentionDays: 5
///           standardSchedule:
///             recurrenceType: HOURLY
///             hourlyFrequency: 1
///             timeZone: UTC
///             backupWindow:
///               startHourOfDay: 0
///               endHourOfDay: 6
/// ```
///
/// ### Backup Dr Backup Plan For Csql Resource
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "backup-vault-csql-test",
///     backupMinimumEnforcedRetentionDuration: "100000s",
/// });
/// const my_csql_backup_plan_1 = new gcp.backupdisasterrecovery.BackupPlan("my-csql-backup-plan-1", {
///     location: "us-central1",
///     backupPlanId: "backup-plan-csql-test",
///     resourceType: "sqladmin.googleapis.com/Instance",
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
///                 endHourOfDay: 6,
///             },
///         },
///     }],
///     logRetentionDays: 4,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="backup-vault-csql-test",
///     backup_minimum_enforced_retention_duration="100000s")
/// my_csql_backup_plan_1 = gcp.backupdisasterrecovery.BackupPlan("my-csql-backup-plan-1",
///     location="us-central1",
///     backup_plan_id="backup-plan-csql-test",
///     resource_type="sqladmin.googleapis.com/Instance",
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
///                 "end_hour_of_day": 6,
///             },
///         },
///     }],
///     log_retention_days=4)
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
///         BackupVaultId = "backup-vault-csql-test",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///     });
///
///     var my_csql_backup_plan_1 = new Gcp.BackupDisasterRecovery.BackupPlan("my-csql-backup-plan-1", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "backup-plan-csql-test",
///         ResourceType = "sqladmin.googleapis.com/Instance",
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
///                         EndHourOfDay = 6,
///                     },
///                 },
///             },
///         },
///         LogRetentionDays = 4,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("backup-vault-csql-test"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlan(ctx, "my-csql-backup-plan-1", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("backup-plan-csql-test"),
/// 			ResourceType: pulumi.String("sqladmin.googleapis.com/Instance"),
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
/// 							EndHourOfDay:   pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LogRetentionDays: pulumi.Int(4),
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
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
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
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault-csql-test")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .build());
///
///         var my_csql_backup_plan_1 = new BackupPlan("my-csql-backup-plan-1", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("backup-plan-csql-test")
///             .resourceType("sqladmin.googleapis.com/Instance")
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
///                         .endHourOfDay(6)
///                         .build())
///                     .build())
///                 .build())
///             .logRetentionDays(4)
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
///       backupVaultId: backup-vault-csql-test
///       backupMinimumEnforcedRetentionDuration: 100000s
///   my-csql-backup-plan-1:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     properties:
///       location: us-central1
///       backupPlanId: backup-plan-csql-test
///       resourceType: sqladmin.googleapis.com/Instance
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
///               endHourOfDay: 6
///       logRetentionDays: 4
/// ```
///
///
/// ## Import
///
/// BackupPlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan_id}}`
///
/// * `{{project}}/{{location}}/{{backup_plan_id}}`
///
/// * `{{location}}/{{backup_plan_id}}`
///
/// When using the `pulumi import` command, BackupPlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default {{project}}/{{location}}/{{backup_plan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default {{location}}/{{backup_plan_id}}
/// ```
class BackupPlan extends pulumi.CustomResource {
  /// The ID of the backup plan
  late final pulumi.Output<String> backupPlanId;

  /// The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> backupRules;

  /// Backup vault where the backups gets stored using this Backup plan.
  late final pulumi.Output<String> backupVault;

  /// The Google Cloud Platform Service Account to be used by the BackupVault for taking backups.
  late final pulumi.Output<String> backupVaultServiceAccount;

  /// When the `BackupPlan` was created.
  late final pulumi.Output<String> createTime;

  /// The description allows for additional details about `BackupPlan` and its use cases to be provided.
  late final pulumi.Output<String?> description;

  /// The location for the backup plan
  late final pulumi.Output<String> location;

  /// This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  late final pulumi.Output<int?> logRetentionDays;

  /// The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  late final pulumi.Output<int?> maxCustomOnDemandRetentionDays;

  /// The name of backup plan resource created
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource type to which the `BackupPlan` will be applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "sqladmin.googleapis.com/Instance" and "storage.googleapis.com/Bucket".
  late final pulumi.Output<String> resourceType;

  /// The list of all resource types to which the `BackupPlan` can be applied.
  late final pulumi.Output<List<String>> supportedResourceTypes;

  /// When the `BackupPlan` was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlan]. {@macro pulumi_backupdisasterrecovery_backup_plan_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:backupdisasterrecovery/backupPlan:BackupPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupPlanId = registerOutput<String>('backupPlanId');
    backupRules = registerOutput<List<Map<String, dynamic>>>('backupRules');
    backupVault = registerOutput<String>('backupVault');
    backupVaultServiceAccount = registerOutput<String>(
      'backupVaultServiceAccount',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    logRetentionDays = registerOutput<int?>('logRetentionDays');
    maxCustomOnDemandRetentionDays = registerOutput<int?>(
      'maxCustomOnDemandRetentionDays',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resourceType = registerOutput<String>('resourceType');
    supportedResourceTypes = registerOutput<List<String>>(
      'supportedResourceTypes',
    );
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BackupPlan] resource's state with the given [name] and [id].
  static BackupPlan get(
    String name,
    pulumi.Input<String> id, {
    BackupPlanState? state,
  }) {
    return BackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:backupdisasterrecovery/backupPlan:BackupPlan',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupPlanId = registerOutput<String>('backupPlanId');
    backupRules = registerOutput<List<Map<String, dynamic>>>('backupRules');
    backupVault = registerOutput<String>('backupVault');
    backupVaultServiceAccount = registerOutput<String>(
      'backupVaultServiceAccount',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    logRetentionDays = registerOutput<int?>('logRetentionDays');
    maxCustomOnDemandRetentionDays = registerOutput<int?>(
      'maxCustomOnDemandRetentionDays',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resourceType = registerOutput<String>('resourceType');
    supportedResourceTypes = registerOutput<List<String>>(
      'supportedResourceTypes',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}
