import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_association_args.dart';
import 'backup_plan_association_state.dart';

/// A Backup and DR BackupPlanAssociation.
///
///
/// To get more information about BackupPlanAssociation, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Bpa
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mySA = new gcp.serviceaccount.Account("mySA", {
///     accountId: "my-custom",
///     displayName: "Custom SA for VM Instance",
/// });
/// const myinstance = new gcp.compute.Instance("myinstance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "test-instance",
///     machineType: "n2-standard-2",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///             labels: {
///                 my_label: "value",
///             },
///         },
///     },
///     scratchDisks: [{
///         "interface": "NVME",
///     }],
///     serviceAccount: {
///         email: mySA.email,
///         scopes: ["cloud-platform"],
///     },
/// });
/// const bv1 = new gcp.backupdisasterrecovery.BackupVault("bv1", {
///     location: "us-central1",
///     backupVaultId: "bv-bpa",
///     backupMinimumEnforcedRetentionDuration: "100000s",
///     forceDelete: true,
/// });
/// const bp1 = new gcp.backupdisasterrecovery.BackupPlan("bp1", {
///     location: "us-central1",
///     backupPlanId: "bp-bpa-test",
///     resourceType: "compute.googleapis.com/Instance",
///     backupVault: bv1.id,
///     backupRules: [{
///         ruleId: "rule-1",
///         backupRetentionDays: 2,
///         standardSchedule: {
///             recurrenceType: "HOURLY",
///             hourlyFrequency: 6,
///             timeZone: "UTC",
///             backupWindow: {
///                 startHourOfDay: 12,
///                 endHourOfDay: 18,
///             },
///         },
///     }],
/// });
/// const my_backup_plan_association = new gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association", {
///     location: "us-central1",
///     resourceType: "compute.googleapis.com/Instance",
///     backupPlanAssociationId: "my-bpa",
///     resource: myinstance.id,
///     backupPlan: bp1.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_sa = gcp.serviceaccount.Account("mySA",
///     account_id="my-custom",
///     display_name="Custom SA for VM Instance")
/// myinstance = gcp.compute.Instance("myinstance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="test-instance",
///     machine_type="n2-standard-2",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///             "labels": {
///                 "my_label": "value",
///             },
///         },
///     },
///     scratch_disks=[{
///         "interface": "NVME",
///     }],
///     service_account={
///         "email": my_sa.email,
///         "scopes": ["cloud-platform"],
///     })
/// bv1 = gcp.backupdisasterrecovery.BackupVault("bv1",
///     location="us-central1",
///     backup_vault_id="bv-bpa",
///     backup_minimum_enforced_retention_duration="100000s",
///     force_delete=True)
/// bp1 = gcp.backupdisasterrecovery.BackupPlan("bp1",
///     location="us-central1",
///     backup_plan_id="bp-bpa-test",
///     resource_type="compute.googleapis.com/Instance",
///     backup_vault=bv1.id,
///     backup_rules=[{
///         "rule_id": "rule-1",
///         "backup_retention_days": 2,
///         "standard_schedule": {
///             "recurrence_type": "HOURLY",
///             "hourly_frequency": 6,
///             "time_zone": "UTC",
///             "backup_window": {
///                 "start_hour_of_day": 12,
///                 "end_hour_of_day": 18,
///             },
///         },
///     }])
/// my_backup_plan_association = gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association",
///     location="us-central1",
///     resource_type="compute.googleapis.com/Instance",
///     backup_plan_association_id="my-bpa",
///     resource=myinstance.id,
///     backup_plan=bp1.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySA = new Gcp.ServiceAccount.Account("mySA", new()
///     {
///         AccountId = "my-custom",
///         DisplayName = "Custom SA for VM Instance",
///     });
///
///     var myinstance = new Gcp.Compute.Instance("myinstance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "test-instance",
///         MachineType = "n2-standard-2",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///                 Labels =
///                 {
///                     { "my_label", "value" },
///                 },
///             },
///         },
///         ScratchDisks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceScratchDiskArgs
///             {
///                 Interface = "NVME",
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
///         {
///             Email = mySA.Email,
///             Scopes = new[]
///             {
///                 "cloud-platform",
///             },
///         },
///     });
///
///     var bv1 = new Gcp.BackupDisasterRecovery.BackupVault("bv1", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-bpa",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///         ForceDelete = true,
///     });
///
///     var bp1 = new Gcp.BackupDisasterRecovery.BackupPlan("bp1", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-bpa-test",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupVault = bv1.Id,
///         BackupRules = new[]
///         {
///             new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleArgs
///             {
///                 RuleId = "rule-1",
///                 BackupRetentionDays = 2,
///                 StandardSchedule = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleArgs
///                 {
///                     RecurrenceType = "HOURLY",
///                     HourlyFrequency = 6,
///                     TimeZone = "UTC",
///                     BackupWindow = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs
///                     {
///                         StartHourOfDay = 12,
///                         EndHourOfDay = 18,
///                     },
///                 },
///             },
///         },
///     });
///
///     var my_backup_plan_association = new Gcp.BackupDisasterRecovery.BackupPlanAssociation("my-backup-plan-association", new()
///     {
///         Location = "us-central1",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupPlanAssociationId = "my-bpa",
///         Resource = myinstance.Id,
///         BackupPlan = bp1.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mySA, err := serviceaccount.NewAccount(ctx, "mySA", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-custom"),
/// 			DisplayName: pulumi.String("Custom SA for VM Instance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myinstance, err := compute.NewInstance(ctx, "myinstance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("test-instance"),
/// 			MachineType: pulumi.String("n2-standard-2"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 					Labels: pulumi.StringMap{
/// 						"my_label": pulumi.String("value"),
/// 					},
/// 				},
/// 			},
/// 			ScratchDisks: compute.InstanceScratchDiskArray{
/// 				&compute.InstanceScratchDiskArgs{
/// 					Interface: pulumi.String("NVME"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceServiceAccountArgs{
/// 				Email: mySA.Email,
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("cloud-platform"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bv1, err := backupdisasterrecovery.NewBackupVault(ctx, "bv1", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-bpa"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 			ForceDelete:                            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bp1, err := backupdisasterrecovery.NewBackupPlan(ctx, "bp1", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-bpa-test"),
/// 			ResourceType: pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupVault:  bv1.ID().ToIDOutput().ToStringOutput(),
/// 			BackupRules: backupdisasterrecovery.BackupPlanBackupRuleArray{
/// 				&backupdisasterrecovery.BackupPlanBackupRuleArgs{
/// 					RuleId:              pulumi.String("rule-1"),
/// 					BackupRetentionDays: pulumi.Int(2),
/// 					StandardSchedule: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleArgs{
/// 						RecurrenceType:  pulumi.String("HOURLY"),
/// 						HourlyFrequency: pulumi.Int(6),
/// 						TimeZone:        pulumi.String("UTC"),
/// 						BackupWindow: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleBackupWindowArgs{
/// 							StartHourOfDay: pulumi.Int(12),
/// 							EndHourOfDay:   pulumi.Int(18),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlanAssociation(ctx, "my-backup-plan-association", &backupdisasterrecovery.BackupPlanAssociationArgs{
/// 			Location:                pulumi.String("us-central1"),
/// 			ResourceType:            pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupPlanAssociationId: pulumi.String("my-bpa"),
/// 			Resource:                myinstance.ID().ToIDOutput().ToStringOutput(),
/// 			BackupPlan:              bp1.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "mySA" {
///   account_id   = "my-custom"
///   display_name = "Custom SA for VM Instance"
/// }
/// resource "gcp_compute_instance" "myinstance" {
///   network_interfaces {
///     access_configs {
///     }
///     network = "default"
///   }
///   name         = "test-instance"
///   machine_type = "n2-standard-2"
///   zone         = "us-central1-a"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///       labels = {
///         "my_label" = "value"
///       }
///     }
///   }
///   scratch_disks {
///     interface = "NVME"
///   }
///   service_account = {
///     email  = gcp_serviceaccount_account.mySA.email
///     scopes = ["cloud-platform"]
///   }
/// }
/// resource "gcp_backupdisasterrecovery_backupvault" "bv1" {
///   location                                   = "us-central1"
///   backup_vault_id                            = "bv-bpa"
///   backup_minimum_enforced_retention_duration = "100000s"
///   force_delete                               = "true"
/// }
/// resource "gcp_backupdisasterrecovery_backupplan" "bp1" {
///   location       = "us-central1"
///   backup_plan_id = "bp-bpa-test"
///   resource_type  = "compute.googleapis.com/Instance"
///   backup_vault   = gcp_backupdisasterrecovery_backupvault.bv1.id
///   backup_rules {
///     rule_id               = "rule-1"
///     backup_retention_days = 2
///     standard_schedule = {
///       recurrence_type  = "HOURLY"
///       hourly_frequency = 6
///       time_zone        = "UTC"
///       backup_window = {
///         start_hour_of_day = 12
///         end_hour_of_day   = 18
///       }
///     }
///   }
/// }
/// resource "gcp_backupdisasterrecovery_backupplanassociation" "my-backup-plan-association" {
///   location                   = "us-central1"
///   resource_type              = "compute.googleapis.com/Instance"
///   backup_plan_association_id = "my-bpa"
///   resource                   = gcp_compute_instance.myinstance.id
///   backup_plan                = gcp_backupdisasterrecovery_backupplan.bp1.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceScratchDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociation;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociationArgs;
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
///         var mySA = new Account("mySA", AccountArgs.builder()
///             .accountId("my-custom")
///             .displayName("Custom SA for VM Instance")
///             .build());
///
///         var myinstance = new Instance("myinstance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("test-instance")
///             .machineType("n2-standard-2")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .labels(Map.of("my_label", "value"))
///                     .build())
///                 .build())
///             .scratchDisks(InstanceScratchDiskArgs.builder()
///                 .interface_("NVME")
///                 .build())
///             .serviceAccount(InstanceServiceAccountArgs.builder()
///                 .email(mySA.email())
///                 .scopes("cloud-platform")
///                 .build())
///             .build());
///
///         var bv1 = new BackupVault("bv1", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-bpa")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .forceDelete(true)
///             .build());
///
///         var bp1 = new BackupPlan("bp1", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-bpa-test")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupVault(bv1.id())
///             .backupRules(BackupPlanBackupRuleArgs.builder()
///                 .ruleId("rule-1")
///                 .backupRetentionDays(2)
///                 .standardSchedule(BackupPlanBackupRuleStandardScheduleArgs.builder()
///                     .recurrenceType("HOURLY")
///                     .hourlyFrequency(6)
///                     .timeZone("UTC")
///                     .backupWindow(BackupPlanBackupRuleStandardScheduleBackupWindowArgs.builder()
///                         .startHourOfDay(12)
///                         .endHourOfDay(18)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var my_backup_plan_association = new BackupPlanAssociation("my-backup-plan-association", BackupPlanAssociationArgs.builder()
///             .location("us-central1")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupPlanAssociationId("my-bpa")
///             .resource(myinstance.id())
///             .backupPlan(bp1.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySA:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-custom
///       displayName: Custom SA for VM Instance
///   myinstance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: test-instance
///       machineType: n2-standard-2
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///           labels:
///             my_label: value
///       scratchDisks:
///         - interface: NVME
///       serviceAccount:
///         email: ${mySA.email}
///         scopes:
///           - cloud-platform
///   bv1:
///     type: gcp:backupdisasterrecovery:BackupVault
///     properties:
///       location: us-central1
///       backupVaultId: bv-bpa
///       backupMinimumEnforcedRetentionDuration: 100000s
///       forceDelete: 'true'
///   bp1:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     properties:
///       location: us-central1
///       backupPlanId: bp-bpa-test
///       resourceType: compute.googleapis.com/Instance
///       backupVault: ${bv1.id}
///       backupRules:
///         - ruleId: rule-1
///           backupRetentionDays: 2
///           standardSchedule:
///             recurrenceType: HOURLY
///             hourlyFrequency: 6
///             timeZone: UTC
///             backupWindow:
///               startHourOfDay: 12
///               endHourOfDay: 18
///   my-backup-plan-association:
///     type: gcp:backupdisasterrecovery:BackupPlanAssociation
///     properties:
///       location: us-central1
///       resourceType: compute.googleapis.com/Instance
///       backupPlanAssociationId: my-bpa
///       resource: ${myinstance.id}
///       backupPlan: ${bp1.name}
/// ```
///
/// ### Backup Dr Bpa Filestore
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFilestoreInstance = new gcp.filestore.Instance("my_filestore_instance", {
///     name: "test-instance-bpa",
///     location: "us-central1",
///     tier: "ENTERPRISE",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const myBackupVault = new gcp.backupdisasterrecovery.BackupVault("my_backup_vault", {
///     location: "us-central1",
///     backupVaultId: "bv-bpa-filestore",
///     backupMinimumEnforcedRetentionDuration: "100000s",
///     forceDelete: true,
/// });
/// const myBackupPlan = new gcp.backupdisasterrecovery.BackupPlan("my_backup_plan", {
///     location: "us-central1",
///     backupPlanId: "bp-bpa-filestore",
///     resourceType: "file.googleapis.com/Instance",
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
/// });
/// const my_backup_plan_association_filestore = new gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association-filestore", {
///     location: "us-central1",
///     resourceType: "file.googleapis.com/Instance",
///     backupPlanAssociationId: "my-bpa-filestore",
///     resource: myFilestoreInstance.id,
///     backupPlan: myBackupPlan.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_filestore_instance = gcp.filestore.Instance("my_filestore_instance",
///     name="test-instance-bpa",
///     location="us-central1",
///     tier="ENTERPRISE",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///     }])
/// my_backup_vault = gcp.backupdisasterrecovery.BackupVault("my_backup_vault",
///     location="us-central1",
///     backup_vault_id="bv-bpa-filestore",
///     backup_minimum_enforced_retention_duration="100000s",
///     force_delete=True)
/// my_backup_plan = gcp.backupdisasterrecovery.BackupPlan("my_backup_plan",
///     location="us-central1",
///     backup_plan_id="bp-bpa-filestore",
///     resource_type="file.googleapis.com/Instance",
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
///     }])
/// my_backup_plan_association_filestore = gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association-filestore",
///     location="us-central1",
///     resource_type="file.googleapis.com/Instance",
///     backup_plan_association_id="my-bpa-filestore",
///     resource=my_filestore_instance.id,
///     backup_plan=my_backup_plan.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFilestoreInstance = new Gcp.Filestore.Instance("my_filestore_instance", new()
///     {
///         Name = "test-instance-bpa",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var myBackupVault = new Gcp.BackupDisasterRecovery.BackupVault("my_backup_vault", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-bpa-filestore",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///         ForceDelete = true,
///     });
///
///     var myBackupPlan = new Gcp.BackupDisasterRecovery.BackupPlan("my_backup_plan", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-bpa-filestore",
///         ResourceType = "file.googleapis.com/Instance",
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
///     });
///
///     var my_backup_plan_association_filestore = new Gcp.BackupDisasterRecovery.BackupPlanAssociation("my-backup-plan-association-filestore", new()
///     {
///         Location = "us-central1",
///         ResourceType = "file.googleapis.com/Instance",
///         BackupPlanAssociationId = "my-bpa-filestore",
///         Resource = myFilestoreInstance.Id,
///         BackupPlan = myBackupPlan.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFilestoreInstance, err := filestore.NewInstance(ctx, "my_filestore_instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("test-instance-bpa"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myBackupVault, err := backupdisasterrecovery.NewBackupVault(ctx, "my_backup_vault", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-bpa-filestore"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 			ForceDelete:                            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myBackupPlan, err := backupdisasterrecovery.NewBackupPlan(ctx, "my_backup_plan", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-bpa-filestore"),
/// 			ResourceType: pulumi.String("file.googleapis.com/Instance"),
/// 			BackupVault:  myBackupVault.ID().ToIDOutput().ToStringOutput(),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlanAssociation(ctx, "my-backup-plan-association-filestore", &backupdisasterrecovery.BackupPlanAssociationArgs{
/// 			Location:                pulumi.String("us-central1"),
/// 			ResourceType:            pulumi.String("file.googleapis.com/Instance"),
/// 			BackupPlanAssociationId: pulumi.String("my-bpa-filestore"),
/// 			Resource:                myFilestoreInstance.ID().ToIDOutput().ToStringOutput(),
/// 			BackupPlan:              myBackupPlan.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_filestore_instance" "my_filestore_instance" {
///   name     = "test-instance-bpa"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = "default"
///     modes   = ["MODE_IPV4"]
///   }
/// }
/// resource "gcp_backupdisasterrecovery_backupvault" "my_backup_vault" {
///   location                                   = "us-central1"
///   backup_vault_id                            = "bv-bpa-filestore"
///   backup_minimum_enforced_retention_duration = "100000s"
///   force_delete                               = true
/// }
/// resource "gcp_backupdisasterrecovery_backupplan" "my_backup_plan" {
///   location       = "us-central1"
///   backup_plan_id = "bp-bpa-filestore"
///   resource_type  = "file.googleapis.com/Instance"
///   backup_vault   = gcp_backupdisasterrecovery_backupvault.my_backup_vault.id
///   backup_rules {
///     rule_id               = "rule-1"
///     backup_retention_days = 5
///     standard_schedule = {
///       recurrence_type  = "HOURLY"
///       hourly_frequency = 6
///       time_zone        = "UTC"
///       backup_window = {
///         start_hour_of_day = 0
///         end_hour_of_day   = 6
///       }
///     }
///   }
/// }
/// resource "gcp_backupdisasterrecovery_backupplanassociation" "my-backup-plan-association-filestore" {
///   location                   = "us-central1"
///   resource_type              = "file.googleapis.com/Instance"
///   backup_plan_association_id = "my-bpa-filestore"
///   resource                   = gcp_filestore_instance.my_filestore_instance.id
///   backup_plan                = gcp_backupdisasterrecovery_backupplan.my_backup_plan.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociation;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociationArgs;
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
///         var myFilestoreInstance = new Instance("myFilestoreInstance", InstanceArgs.builder()
///             .name("test-instance-bpa")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var myBackupVault = new BackupVault("myBackupVault", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-bpa-filestore")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .forceDelete(true)
///             .build());
///
///         var myBackupPlan = new BackupPlan("myBackupPlan", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-bpa-filestore")
///             .resourceType("file.googleapis.com/Instance")
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
///             .build());
///
///         var my_backup_plan_association_filestore = new BackupPlanAssociation("my-backup-plan-association-filestore", BackupPlanAssociationArgs.builder()
///             .location("us-central1")
///             .resourceType("file.googleapis.com/Instance")
///             .backupPlanAssociationId("my-bpa-filestore")
///             .resource(myFilestoreInstance.id())
///             .backupPlan(myBackupPlan.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFilestoreInstance:
///     type: gcp:filestore:Instance
///     name: my_filestore_instance
///     properties:
///       name: test-instance-bpa
///       location: us-central1
///       tier: ENTERPRISE
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
///   myBackupVault:
///     type: gcp:backupdisasterrecovery:BackupVault
///     name: my_backup_vault
///     properties:
///       location: us-central1
///       backupVaultId: bv-bpa-filestore
///       backupMinimumEnforcedRetentionDuration: 100000s
///       forceDelete: true
///   myBackupPlan:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     name: my_backup_plan
///     properties:
///       location: us-central1
///       backupPlanId: bp-bpa-filestore
///       resourceType: file.googleapis.com/Instance
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
///   my-backup-plan-association-filestore:
///     type: gcp:backupdisasterrecovery:BackupPlanAssociation
///     properties:
///       location: us-central1
///       resourceType: file.googleapis.com/Instance
///       backupPlanAssociationId: my-bpa-filestore
///       resource: ${myFilestoreInstance.id}
///       backupPlan: ${myBackupPlan.name}
/// ```
///
///
/// ## Import
///
/// BackupPlanAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}`
/// * `{{project}}/{{location}}/{{backup_plan_association_id}}`
/// * `{{location}}/{{backup_plan_association_id}}`
///
///
/// When using the `pulumi import` command, BackupPlanAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{project}}/{{location}}/{{backup_plan_association_id}}
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{location}}/{{backup_plan_association_id}}
/// ```
class BackupPlanAssociation extends pulumi.CustomResource {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  /// - A Backup Plan configured for 'file.googleapis.com/Instance' can only protect Filestore instances.
  /// - A Backup Plan configured for 'sqladmin.googleapis.com/Instance' can only protect Cloud SQL instances.
  late final pulumi.Output<String> backupPlan;
  /// The id of backupplan association
  late final pulumi.Output<String> backupPlanAssociationId;
  /// The time when the instance was created
  late final pulumi.Output<String> createTime;
  /// Resource name of data source which will be used as storage location for backups taken
  late final pulumi.Output<String> dataSource;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location for the backupplan association
  late final pulumi.Output<String> location;
  /// The name of backup plan association resource created
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resource for which BPA needs to be created
  late final pulumi.Output<String> resource;
  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "compute.googleapis.com/RegionDisk", and "file.googleapis.com/Instance"
  late final pulumi.Output<String> resourceType;
  /// Message for rules config info
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> rulesConfigInfos;
  /// The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BackupPlanAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlanAssociation]. {@macro pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlanAssociation(
    String name, {
    BackupPlanAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPlan = registerOutput<String>('backupPlan');
    backupPlanAssociationId = registerOutput<String>('backupPlanAssociationId');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resource = registerOutput<String>('resource');
    resourceType = registerOutput<String>('resourceType');
    rulesConfigInfos = registerOutput<List<Map<String, dynamic>>>('rulesConfigInfos');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BackupPlanAssociation] resource's state with the given [name] and [id].
  static BackupPlanAssociation get(
    String name,
    pulumi.Input<String> id, {
    BackupPlanAssociationState? state,
  }) {
    return BackupPlanAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPlanAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPlan = registerOutput<String>('backupPlan');
    backupPlanAssociationId = registerOutput<String>('backupPlanAssociationId');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resource = registerOutput<String>('resource');
    resourceType = registerOutput<String>('resourceType');
    rulesConfigInfos = registerOutput<List<Map<String, dynamic>>>('rulesConfigInfos');
    updateTime = registerOutput<String>('updateTime');
  }
}
