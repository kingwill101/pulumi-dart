import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_args.dart';
import 'restore_workload_compute_instance_restore_properties.dart';
import 'restore_workload_compute_instance_target_environment.dart';
import 'restore_workload_disk_restore_properties.dart';
import 'restore_workload_disk_target_environment.dart';
import 'restore_workload_region_disk_target_environment.dart';
import 'restore_workload_state.dart';

/// An imperative resource that triggers a GCBDR restoration event.
/// Creating this resource will initiate a restore operation from a specified backup.
/// The resource represents the restore operation and its result.
///
///
///
///
///
/// ## Example Usage
///
/// ### Backup Dr Restore Workload Compute Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const restoreComputeBasic = new gcp.backupdisasterrecovery.RestoreWorkload("restore_compute_basic", {
///     location: "us-central1",
///     backupVaultId: "backup-vault",
///     dataSourceId: "data-source",
///     backupId: "backup",
///     computeInstanceTargetEnvironment: {
///         project: "my-project-name",
///         zone: "us-central1-a",
///     },
///     computeInstanceRestoreProperties: {
///         name: "restored-instance",
///         machineType: "zones/us-central1-a/machineTypes/e2-medium",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// restore_compute_basic = gcp.backupdisasterrecovery.RestoreWorkload("restore_compute_basic",
///     location="us-central1",
///     backup_vault_id="backup-vault",
///     data_source_id="data-source",
///     backup_id="backup",
///     compute_instance_target_environment={
///         "project": "my-project-name",
///         "zone": "us-central1-a",
///     },
///     compute_instance_restore_properties={
///         "name": "restored-instance",
///         "machine_type": "zones/us-central1-a/machineTypes/e2-medium",
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
///     var restoreComputeBasic = new Gcp.BackupDisasterRecovery.RestoreWorkload("restore_compute_basic", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault",
///         DataSourceId = "data-source",
///         BackupId = "backup",
///         ComputeInstanceTargetEnvironment = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceTargetEnvironmentArgs
///         {
///             Project = "my-project-name",
///             Zone = "us-central1-a",
///         },
///         ComputeInstanceRestoreProperties = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesArgs
///         {
///             Name = "restored-instance",
///             MachineType = "zones/us-central1-a/machineTypes/e2-medium",
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
/// 		_, err := backupdisasterrecovery.NewRestoreWorkload(ctx, "restore_compute_basic", &backupdisasterrecovery.RestoreWorkloadArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			BackupVaultId: pulumi.String("backup-vault"),
/// 			DataSourceId:  pulumi.String("data-source"),
/// 			BackupId:      pulumi.String("backup"),
/// 			ComputeInstanceTargetEnvironment: &backupdisasterrecovery.RestoreWorkloadComputeInstanceTargetEnvironmentArgs{
/// 				Project: pulumi.String("my-project-name"),
/// 				Zone:    pulumi.String("us-central1-a"),
/// 			},
/// 			ComputeInstanceRestoreProperties: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesArgs{
/// 				Name:        pulumi.String("restored-instance"),
/// 				MachineType: pulumi.String("zones/us-central1-a/machineTypes/e2-medium"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_restoreworkload" "restore_compute_basic" {
///   location        = "us-central1"
///   backup_vault_id = "backup-vault"
///   data_source_id  = "data-source"
///   backup_id       = "backup"
///   compute_instance_target_environment = {
///     project = "my-project-name"
///     zone    = "us-central1-a"
///   }
///   compute_instance_restore_properties = {
///     name         = "restored-instance"
///     machine_type = "zones/us-central1-a/machineTypes/e2-medium"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkload;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkloadArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceTargetEnvironmentArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesArgs;
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
///         var restoreComputeBasic = new RestoreWorkload("restoreComputeBasic", RestoreWorkloadArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault")
///             .dataSourceId("data-source")
///             .backupId("backup")
///             .computeInstanceTargetEnvironment(RestoreWorkloadComputeInstanceTargetEnvironmentArgs.builder()
///                 .project("my-project-name")
///                 .zone("us-central1-a")
///                 .build())
///             .computeInstanceRestoreProperties(RestoreWorkloadComputeInstanceRestorePropertiesArgs.builder()
///                 .name("restored-instance")
///                 .machineType("zones/us-central1-a/machineTypes/e2-medium")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restoreComputeBasic:
///     type: gcp:backupdisasterrecovery:RestoreWorkload
///     name: restore_compute_basic
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault
///       dataSourceId: data-source
///       backupId: backup
///       computeInstanceTargetEnvironment:
///         project: my-project-name
///         zone: us-central1-a
///       computeInstanceRestoreProperties:
///         name: restored-instance
///         machineType: zones/us-central1-a/machineTypes/e2-medium
/// ```
///
/// ### Backup Dr Restore Workload Compute Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const restoreComputeFull = new gcp.backupdisasterrecovery.RestoreWorkload("restore_compute_full", {
///     location: "us-central1",
///     backupVaultId: "backup-vault",
///     dataSourceId: "data-source",
///     backupId: "backup",
///     computeInstanceTargetEnvironment: {
///         project: "my-project-name",
///         zone: "us-central1-a",
///     },
///     computeInstanceRestoreProperties: {
///         name: "restored-instance-full",
///         machineType: "zones/us-central1-a/machineTypes/e2-medium",
///         description: "Restored compute instance with advanced configuration",
///         canIpForward: true,
///         deletionProtection: false,
///         labels: [
///             {
///                 key: "environment",
///                 value: "production",
///             },
///             {
///                 key: "restored",
///                 value: "true",
///             },
///             {
///                 key: "team",
///                 value: "infrastructure",
///             },
///         ],
///         tags: {
///             items: [
///                 "web",
///                 "https-server",
///                 "restored",
///             ],
///         },
///         networkInterfaces: [{
///             network: "projects/my-project-name/global/networks/default",
///             subnetwork: "projects/my-project-name/regions/us-central1/subnetworks/default",
///             accessConfigs: [{
///                 name: "ONE_TO_ONE_NAT",
///                 networkTier: "PREMIUM",
///             }],
///         }],
///         scheduling: {
///             automaticRestart: true,
///             onHostMaintenance: "MIGRATE",
///             preemptible: false,
///             provisioningModel: "STANDARD",
///         },
///         serviceAccounts: [{
///             email: "default",
///             scopes: [
///                 "https://www.googleapis.com/auth/cloud-platform",
///                 "https://www.googleapis.com/auth/compute",
///             ],
///         }],
///         shieldedInstanceConfig: {
///             enableSecureBoot: true,
///             enableVtpm: true,
///             enableIntegrityMonitoring: true,
///         },
///         advancedMachineFeatures: {
///             enableNestedVirtualization: false,
///             threadsPerCore: 1,
///         },
///         metadata: {
///             items: [
///                 {
///                     key: "startup-script",
///                     value: `#!/bin/bash
/// echo 'Instance restored' > /tmp/restored.txt`,
///                 },
///                 {
///                     key: "enable-oslogin",
///                     value: "TRUE",
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// restore_compute_full = gcp.backupdisasterrecovery.RestoreWorkload("restore_compute_full",
///     location="us-central1",
///     backup_vault_id="backup-vault",
///     data_source_id="data-source",
///     backup_id="backup",
///     compute_instance_target_environment={
///         "project": "my-project-name",
///         "zone": "us-central1-a",
///     },
///     compute_instance_restore_properties={
///         "name": "restored-instance-full",
///         "machine_type": "zones/us-central1-a/machineTypes/e2-medium",
///         "description": "Restored compute instance with advanced configuration",
///         "can_ip_forward": True,
///         "deletion_protection": False,
///         "labels": [
///             {
///                 "key": "environment",
///                 "value": "production",
///             },
///             {
///                 "key": "restored",
///                 "value": "true",
///             },
///             {
///                 "key": "team",
///                 "value": "infrastructure",
///             },
///         ],
///         "tags": {
///             "items": [
///                 "web",
///                 "https-server",
///                 "restored",
///             ],
///         },
///         "network_interfaces": [{
///             "network": "projects/my-project-name/global/networks/default",
///             "subnetwork": "projects/my-project-name/regions/us-central1/subnetworks/default",
///             "access_configs": [{
///                 "name": "ONE_TO_ONE_NAT",
///                 "network_tier": "PREMIUM",
///             }],
///         }],
///         "scheduling": {
///             "automatic_restart": True,
///             "on_host_maintenance": "MIGRATE",
///             "preemptible": False,
///             "provisioning_model": "STANDARD",
///         },
///         "service_accounts": [{
///             "email": "default",
///             "scopes": [
///                 "https://www.googleapis.com/auth/cloud-platform",
///                 "https://www.googleapis.com/auth/compute",
///             ],
///         }],
///         "shielded_instance_config": {
///             "enable_secure_boot": True,
///             "enable_vtpm": True,
///             "enable_integrity_monitoring": True,
///         },
///         "advanced_machine_features": {
///             "enable_nested_virtualization": False,
///             "threads_per_core": 1,
///         },
///         "metadata": {
///             "items": [
///                 {
///                     "key": "startup-script",
///                     "value": """#!/bin/bash
/// echo 'Instance restored' > /tmp/restored.txt""",
///                 },
///                 {
///                     "key": "enable-oslogin",
///                     "value": "TRUE",
///                 },
///             ],
///         },
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
///     var restoreComputeFull = new Gcp.BackupDisasterRecovery.RestoreWorkload("restore_compute_full", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault",
///         DataSourceId = "data-source",
///         BackupId = "backup",
///         ComputeInstanceTargetEnvironment = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceTargetEnvironmentArgs
///         {
///             Project = "my-project-name",
///             Zone = "us-central1-a",
///         },
///         ComputeInstanceRestoreProperties = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesArgs
///         {
///             Name = "restored-instance-full",
///             MachineType = "zones/us-central1-a/machineTypes/e2-medium",
///             Description = "Restored compute instance with advanced configuration",
///             CanIpForward = true,
///             DeletionProtection = false,
///             Labels = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs
///                 {
///                     Key = "environment",
///                     Value = "production",
///                 },
///                 new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs
///                 {
///                     Key = "restored",
///                     Value = "true",
///                 },
///                 new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs
///                 {
///                     Key = "team",
///                     Value = "infrastructure",
///                 },
///             },
///             Tags = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesTagsArgs
///             {
///                 Items = new[]
///                 {
///                     "web",
///                     "https-server",
///                     "restored",
///                 },
///             },
///             NetworkInterfaces = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceArgs
///                 {
///                     Network = "projects/my-project-name/global/networks/default",
///                     Subnetwork = "projects/my-project-name/regions/us-central1/subnetworks/default",
///                     AccessConfigs = new[]
///                     {
///                         new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfigArgs
///                         {
///                             Name = "ONE_TO_ONE_NAT",
///                             NetworkTier = "PREMIUM",
///                         },
///                     },
///                 },
///             },
///             Scheduling = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesSchedulingArgs
///             {
///                 AutomaticRestart = true,
///                 OnHostMaintenance = "MIGRATE",
///                 Preemptible = false,
///                 ProvisioningModel = "STANDARD",
///             },
///             ServiceAccounts = new[]
///             {
///                 new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesServiceAccountArgs
///                 {
///                     Email = "default",
///                     Scopes = new[]
///                     {
///                         "https://www.googleapis.com/auth/cloud-platform",
///                         "https://www.googleapis.com/auth/compute",
///                     },
///                 },
///             },
///             ShieldedInstanceConfig = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfigArgs
///             {
///                 EnableSecureBoot = true,
///                 EnableVtpm = true,
///                 EnableIntegrityMonitoring = true,
///             },
///             AdvancedMachineFeatures = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeaturesArgs
///             {
///                 EnableNestedVirtualization = false,
///                 ThreadsPerCore = 1,
///             },
///             Metadata = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesMetadataArgs
///             {
///                 Items = new[]
///                 {
///                     new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs
///                     {
///                         Key = "startup-script",
///                         Value = @"#!/bin/bash
/// echo 'Instance restored' > /tmp/restored.txt",
///                     },
///                     new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs
///                     {
///                         Key = "enable-oslogin",
///                         Value = "TRUE",
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
/// 		_, err := backupdisasterrecovery.NewRestoreWorkload(ctx, "restore_compute_full", &backupdisasterrecovery.RestoreWorkloadArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			BackupVaultId: pulumi.String("backup-vault"),
/// 			DataSourceId:  pulumi.String("data-source"),
/// 			BackupId:      pulumi.String("backup"),
/// 			ComputeInstanceTargetEnvironment: &backupdisasterrecovery.RestoreWorkloadComputeInstanceTargetEnvironmentArgs{
/// 				Project: pulumi.String("my-project-name"),
/// 				Zone:    pulumi.String("us-central1-a"),
/// 			},
/// 			ComputeInstanceRestoreProperties: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesArgs{
/// 				Name:               pulumi.String("restored-instance-full"),
/// 				MachineType:        pulumi.String("zones/us-central1-a/machineTypes/e2-medium"),
/// 				Description:        pulumi.String("Restored compute instance with advanced configuration"),
/// 				CanIpForward:       pulumi.Bool(true),
/// 				DeletionProtection: pulumi.Bool(false),
/// 				Labels: backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesLabelArray{
/// 					&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs{
/// 						Key:   pulumi.String("environment"),
/// 						Value: pulumi.String("production"),
/// 					},
/// 					&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs{
/// 						Key:   pulumi.String("restored"),
/// 						Value: pulumi.String("true"),
/// 					},
/// 					&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs{
/// 						Key:   pulumi.String("team"),
/// 						Value: pulumi.String("infrastructure"),
/// 					},
/// 				},
/// 				Tags: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesTagsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("web"),
/// 						pulumi.String("https-server"),
/// 						pulumi.String("restored"),
/// 					},
/// 				},
/// 				NetworkInterfaces: backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceArray{
/// 					&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceArgs{
/// 						Network:    pulumi.String("projects/my-project-name/global/networks/default"),
/// 						Subnetwork: pulumi.String("projects/my-project-name/regions/us-central1/subnetworks/default"),
/// 						AccessConfigs: backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfigArray{
/// 							&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfigArgs{
/// 								Name:        pulumi.String("ONE_TO_ONE_NAT"),
/// 								NetworkTier: pulumi.String("PREMIUM"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Scheduling: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesSchedulingArgs{
/// 					AutomaticRestart:  pulumi.Bool(true),
/// 					OnHostMaintenance: pulumi.String("MIGRATE"),
/// 					Preemptible:       pulumi.Bool(false),
/// 					ProvisioningModel: pulumi.String("STANDARD"),
/// 				},
/// 				ServiceAccounts: backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesServiceAccountArray{
/// 					&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesServiceAccountArgs{
/// 						Email: pulumi.String("default"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 							pulumi.String("https://www.googleapis.com/auth/compute"),
/// 						},
/// 					},
/// 				},
/// 				ShieldedInstanceConfig: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfigArgs{
/// 					EnableSecureBoot:          pulumi.Bool(true),
/// 					EnableVtpm:                pulumi.Bool(true),
/// 					EnableIntegrityMonitoring: pulumi.Bool(true),
/// 				},
/// 				AdvancedMachineFeatures: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeaturesArgs{
/// 					EnableNestedVirtualization: pulumi.Bool(false),
/// 					ThreadsPerCore:             pulumi.Int(1),
/// 				},
/// 				Metadata: &backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesMetadataArgs{
/// 					Items: backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArray{
/// 						&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs{
/// 							Key:   pulumi.String("startup-script"),
/// 							Value: pulumi.String("#!/bin/bash\necho 'Instance restored' > /tmp/restored.txt"),
/// 						},
/// 						&backupdisasterrecovery.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs{
/// 							Key:   pulumi.String("enable-oslogin"),
/// 							Value: pulumi.String("TRUE"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_restoreworkload" "restore_compute_full" {
///   location        = "us-central1"
///   backup_vault_id = "backup-vault"
///   data_source_id  = "data-source"
///   backup_id       = "backup"
///   compute_instance_target_environment = {
///     project = "my-project-name"
///     zone    = "us-central1-a"
///   }
///   compute_instance_restore_properties = {
///     name                = "restored-instance-full"
///     machine_type        = "zones/us-central1-a/machineTypes/e2-medium"
///     description         = "Restored compute instance with advanced configuration"
///     can_ip_forward      = true
///     deletion_protection = false
///     labels = [{
///       "key"   = "environment"
///       "value" = "production"
///       }, {
///       "key"   = "restored"
///       "value" = "true"
///       }, {
///       "key"   = "team"
///       "value" = "infrastructure"
///     }]
///     tags = {
///       items = ["web", "https-server", "restored"]
///     }
///     network_interfaces = [{
///       "network"    = "projects/my-project-name/global/networks/default"
///       "subnetwork" = "projects/my-project-name/regions/us-central1/subnetworks/default"
///       "accessConfigs" = [{
///         "name"        = "ONE_TO_ONE_NAT"
///         "networkTier" = "PREMIUM"
///       }]
///     }]
///     scheduling = {
///       automatic_restart   = true
///       on_host_maintenance = "MIGRATE"
///       preemptible         = false
///       provisioning_model  = "STANDARD"
///     }
///     service_accounts = [{
///       "email"  = "default"
///       "scopes" = ["https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/compute"]
///     }]
///     shielded_instance_config = {
///       enable_secure_boot          = true
///       enable_vtpm                 = true
///       enable_integrity_monitoring = true
///     }
///     advanced_machine_features = {
///       enable_nested_virtualization = false
///       threads_per_core             = 1
///     }
///     metadata = {
///       items = [{
///         "key"   = "startup-script"
///         "value" = "#!/bin/bash\necho 'Instance restored' > /tmp/restored.txt"
///         }, {
///         "key"   = "enable-oslogin"
///         "value" = "TRUE"
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkload;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkloadArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceTargetEnvironmentArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesTagsArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesSchedulingArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesServiceAccountArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeaturesArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesMetadataArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs;
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
///         var restoreComputeFull = new RestoreWorkload("restoreComputeFull", RestoreWorkloadArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault")
///             .dataSourceId("data-source")
///             .backupId("backup")
///             .computeInstanceTargetEnvironment(RestoreWorkloadComputeInstanceTargetEnvironmentArgs.builder()
///                 .project("my-project-name")
///                 .zone("us-central1-a")
///                 .build())
///             .computeInstanceRestoreProperties(RestoreWorkloadComputeInstanceRestorePropertiesArgs.builder()
///                 .name("restored-instance-full")
///                 .machineType("zones/us-central1-a/machineTypes/e2-medium")
///                 .description("Restored compute instance with advanced configuration")
///                 .canIpForward(true)
///                 .deletionProtection(false)
///                 .labels(
///                     RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs.builder()
///                         .key("environment")
///                         .value("production")
///                         .build(),
///                     RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs.builder()
///                         .key("restored")
///                         .value("true")
///                         .build(),
///                     RestoreWorkloadComputeInstanceRestorePropertiesLabelArgs.builder()
///                         .key("team")
///                         .value("infrastructure")
///                         .build())
///                 .tags(RestoreWorkloadComputeInstanceRestorePropertiesTagsArgs.builder()
///                     .items(
///                         "web",
///                         "https-server",
///                         "restored")
///                     .build())
///                 .networkInterfaces(RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceArgs.builder()
///                     .network("projects/my-project-name/global/networks/default")
///                     .subnetwork("projects/my-project-name/regions/us-central1/subnetworks/default")
///                     .accessConfigs(RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfigArgs.builder()
///                         .name("ONE_TO_ONE_NAT")
///                         .networkTier("PREMIUM")
///                         .build())
///                     .build())
///                 .scheduling(RestoreWorkloadComputeInstanceRestorePropertiesSchedulingArgs.builder()
///                     .automaticRestart(true)
///                     .onHostMaintenance("MIGRATE")
///                     .preemptible(false)
///                     .provisioningModel("STANDARD")
///                     .build())
///                 .serviceAccounts(RestoreWorkloadComputeInstanceRestorePropertiesServiceAccountArgs.builder()
///                     .email("default")
///                     .scopes(
///                         "https://www.googleapis.com/auth/cloud-platform",
///                         "https://www.googleapis.com/auth/compute")
///                     .build())
///                 .shieldedInstanceConfig(RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfigArgs.builder()
///                     .enableSecureBoot(true)
///                     .enableVtpm(true)
///                     .enableIntegrityMonitoring(true)
///                     .build())
///                 .advancedMachineFeatures(RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeaturesArgs.builder()
///                     .enableNestedVirtualization(false)
///                     .threadsPerCore(1)
///                     .build())
///                 .metadata(RestoreWorkloadComputeInstanceRestorePropertiesMetadataArgs.builder()
///                     .items(
///                         RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs.builder()
///                             .key("startup-script")
///                             .value("""
/// #!/bin/bash
/// echo 'Instance restored' > /tmp/restored.txt                            """)
///                             .build(),
///                         RestoreWorkloadComputeInstanceRestorePropertiesMetadataItemArgs.builder()
///                             .key("enable-oslogin")
///                             .value("TRUE")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restoreComputeFull:
///     type: gcp:backupdisasterrecovery:RestoreWorkload
///     name: restore_compute_full
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault
///       dataSourceId: data-source
///       backupId: backup
///       computeInstanceTargetEnvironment:
///         project: my-project-name
///         zone: us-central1-a
///       computeInstanceRestoreProperties:
///         name: restored-instance-full
///         machineType: zones/us-central1-a/machineTypes/e2-medium
///         description: Restored compute instance with advanced configuration
///         canIpForward: true
///         deletionProtection: false
///         labels:
///           - key: environment
///             value: production
///           - key: restored
///             value: 'true'
///           - key: team
///             value: infrastructure
///         tags:
///           items:
///             - web
///             - https-server
///             - restored
///         networkInterfaces:
///           - network: projects/my-project-name/global/networks/default
///             subnetwork: projects/my-project-name/regions/us-central1/subnetworks/default
///             accessConfigs:
///               - name: ONE_TO_ONE_NAT
///                 networkTier: PREMIUM
///         scheduling:
///           automaticRestart: true
///           onHostMaintenance: MIGRATE
///           preemptible: false
///           provisioningModel: STANDARD
///         serviceAccounts:
///           - email: default
///             scopes:
///               - https://www.googleapis.com/auth/cloud-platform
///               - https://www.googleapis.com/auth/compute
///         shieldedInstanceConfig:
///           enableSecureBoot: true
///           enableVtpm: true
///           enableIntegrityMonitoring: true
///         advancedMachineFeatures:
///           enableNestedVirtualization: false
///           threadsPerCore: 1
///         metadata:
///           items:
///             - key: startup-script
///               value: |-
///                 #!/bin/bash
///                 echo 'Instance restored' > /tmp/restored.txt
///             - key: enable-oslogin
///               value: TRUE
/// ```
///
/// ### Backup Dr Restore Workload Disk Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const restoreDiskBasic = new gcp.backupdisasterrecovery.RestoreWorkload("restore_disk_basic", {
///     location: "us-central1",
///     backupVaultId: "backup-vault",
///     dataSourceId: "data-source",
///     backupId: "backup",
///     diskTargetEnvironment: {
///         project: "my-project-name",
///         zone: "us-central1-a",
///     },
///     diskRestoreProperties: {
///         name: "restored-disk",
///         sizeGb: 100,
///         type: "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
///         description: "Restored persistent disk from backup",
///         labels: {
///             environment: "production",
///             restored: "true",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// restore_disk_basic = gcp.backupdisasterrecovery.RestoreWorkload("restore_disk_basic",
///     location="us-central1",
///     backup_vault_id="backup-vault",
///     data_source_id="data-source",
///     backup_id="backup",
///     disk_target_environment={
///         "project": "my-project-name",
///         "zone": "us-central1-a",
///     },
///     disk_restore_properties={
///         "name": "restored-disk",
///         "size_gb": 100,
///         "type": "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
///         "description": "Restored persistent disk from backup",
///         "labels": {
///             "environment": "production",
///             "restored": "true",
///         },
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
///     var restoreDiskBasic = new Gcp.BackupDisasterRecovery.RestoreWorkload("restore_disk_basic", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault",
///         DataSourceId = "data-source",
///         BackupId = "backup",
///         DiskTargetEnvironment = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadDiskTargetEnvironmentArgs
///         {
///             Project = "my-project-name",
///             Zone = "us-central1-a",
///         },
///         DiskRestoreProperties = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadDiskRestorePropertiesArgs
///         {
///             Name = "restored-disk",
///             SizeGb = 100,
///             Type = "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
///             Description = "Restored persistent disk from backup",
///             Labels =
///             {
///                 { "environment", "production" },
///                 { "restored", "true" },
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
/// 		_, err := backupdisasterrecovery.NewRestoreWorkload(ctx, "restore_disk_basic", &backupdisasterrecovery.RestoreWorkloadArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			BackupVaultId: pulumi.String("backup-vault"),
/// 			DataSourceId:  pulumi.String("data-source"),
/// 			BackupId:      pulumi.String("backup"),
/// 			DiskTargetEnvironment: &backupdisasterrecovery.RestoreWorkloadDiskTargetEnvironmentArgs{
/// 				Project: pulumi.String("my-project-name"),
/// 				Zone:    pulumi.String("us-central1-a"),
/// 			},
/// 			DiskRestoreProperties: &backupdisasterrecovery.RestoreWorkloadDiskRestorePropertiesArgs{
/// 				Name:        pulumi.String("restored-disk"),
/// 				SizeGb:      pulumi.Int(100),
/// 				Type:        pulumi.String("projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard"),
/// 				Description: pulumi.String("Restored persistent disk from backup"),
/// 				Labels: backupdisasterrecovery.RestoreWorkloadDiskRestorePropertiesLabelArray{
/// 					Environment: "production",
/// 					Restored:    "true",
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_restoreworkload" "restore_disk_basic" {
///   location        = "us-central1"
///   backup_vault_id = "backup-vault"
///   data_source_id  = "data-source"
///   backup_id       = "backup"
///   disk_target_environment = {
///     project = "my-project-name"
///     zone    = "us-central1-a"
///   }
///   disk_restore_properties = {
///     name        = "restored-disk"
///     size_gb     = 100
///     type        = "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard"
///     description = "Restored persistent disk from backup"
///     labels = {
///       "environment" = "production"
///       "restored"    = "true"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkload;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkloadArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskTargetEnvironmentArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskRestorePropertiesArgs;
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
///         var restoreDiskBasic = new RestoreWorkload("restoreDiskBasic", RestoreWorkloadArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault")
///             .dataSourceId("data-source")
///             .backupId("backup")
///             .diskTargetEnvironment(RestoreWorkloadDiskTargetEnvironmentArgs.builder()
///                 .project("my-project-name")
///                 .zone("us-central1-a")
///                 .build())
///             .diskRestoreProperties(RestoreWorkloadDiskRestorePropertiesArgs.builder()
///                 .name("restored-disk")
///                 .sizeGb(100)
///                 .type("projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard")
///                 .description("Restored persistent disk from backup")
///                 .labels(com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskRestorePropertiesLabelArgs.builder()
///                     .environment("production")
///                     .restored("true")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restoreDiskBasic:
///     type: gcp:backupdisasterrecovery:RestoreWorkload
///     name: restore_disk_basic
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault
///       dataSourceId: data-source
///       backupId: backup
///       diskTargetEnvironment:
///         project: my-project-name
///         zone: us-central1-a
///       diskRestoreProperties:
///         name: restored-disk
///         sizeGb: 100
///         type: projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard
///         description: Restored persistent disk from backup
///         labels:
///           environment: production
///           restored: 'true'
/// ```
///
/// ### Backup Dr Restore Workload Regional Disk
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const restoreRegionalDisk = new gcp.backupdisasterrecovery.RestoreWorkload("restore_regional_disk", {
///     location: "us-central1",
///     backupVaultId: "backup-vault",
///     dataSourceId: "data-source",
///     backupId: "backup",
///     regionDiskTargetEnvironment: {
///         project: "my-project-name",
///         region: "us-central1",
///         replicaZones: [
///             "projects/my-project-name/zones/us-central1-a",
///             "projects/my-project-name/zones/us-central1-b",
///         ],
///     },
///     diskRestoreProperties: {
///         name: "restored-regional-disk",
///         sizeGb: 200,
///         type: "pd-balanced",
///         description: "Restored regional persistent disk",
///         labels: {
///             type: "regional",
///             environment: "production",
///         },
///         provisionedIops: 3000,
///         provisionedThroughput: 140,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// restore_regional_disk = gcp.backupdisasterrecovery.RestoreWorkload("restore_regional_disk",
///     location="us-central1",
///     backup_vault_id="backup-vault",
///     data_source_id="data-source",
///     backup_id="backup",
///     region_disk_target_environment={
///         "project": "my-project-name",
///         "region": "us-central1",
///         "replica_zones": [
///             "projects/my-project-name/zones/us-central1-a",
///             "projects/my-project-name/zones/us-central1-b",
///         ],
///     },
///     disk_restore_properties={
///         "name": "restored-regional-disk",
///         "size_gb": 200,
///         "type": "pd-balanced",
///         "description": "Restored regional persistent disk",
///         "labels": {
///             "type": "regional",
///             "environment": "production",
///         },
///         "provisioned_iops": 3000,
///         "provisioned_throughput": 140,
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
///     var restoreRegionalDisk = new Gcp.BackupDisasterRecovery.RestoreWorkload("restore_regional_disk", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault",
///         DataSourceId = "data-source",
///         BackupId = "backup",
///         RegionDiskTargetEnvironment = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadRegionDiskTargetEnvironmentArgs
///         {
///             Project = "my-project-name",
///             Region = "us-central1",
///             ReplicaZones = new[]
///             {
///                 "projects/my-project-name/zones/us-central1-a",
///                 "projects/my-project-name/zones/us-central1-b",
///             },
///         },
///         DiskRestoreProperties = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadDiskRestorePropertiesArgs
///         {
///             Name = "restored-regional-disk",
///             SizeGb = 200,
///             Type = "pd-balanced",
///             Description = "Restored regional persistent disk",
///             Labels =
///             {
///                 { "type", "regional" },
///                 { "environment", "production" },
///             },
///             ProvisionedIops = 3000,
///             ProvisionedThroughput = 140,
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
/// 		_, err := backupdisasterrecovery.NewRestoreWorkload(ctx, "restore_regional_disk", &backupdisasterrecovery.RestoreWorkloadArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			BackupVaultId: pulumi.String("backup-vault"),
/// 			DataSourceId:  pulumi.String("data-source"),
/// 			BackupId:      pulumi.String("backup"),
/// 			RegionDiskTargetEnvironment: &backupdisasterrecovery.RestoreWorkloadRegionDiskTargetEnvironmentArgs{
/// 				Project: pulumi.String("my-project-name"),
/// 				Region:  pulumi.String("us-central1"),
/// 				ReplicaZones: pulumi.StringArray{
/// 					pulumi.String("projects/my-project-name/zones/us-central1-a"),
/// 					pulumi.String("projects/my-project-name/zones/us-central1-b"),
/// 				},
/// 			},
/// 			DiskRestoreProperties: &backupdisasterrecovery.RestoreWorkloadDiskRestorePropertiesArgs{
/// 				Name:        pulumi.String("restored-regional-disk"),
/// 				SizeGb:      pulumi.Int(200),
/// 				Type:        pulumi.String("pd-balanced"),
/// 				Description: pulumi.String("Restored regional persistent disk"),
/// 				Labels: backupdisasterrecovery.RestoreWorkloadDiskRestorePropertiesLabelArray{
/// 					Type:        "regional",
/// 					Environment: "production",
/// 				},
/// 				ProvisionedIops:       pulumi.Int(3000),
/// 				ProvisionedThroughput: pulumi.Int(140),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_restoreworkload" "restore_regional_disk" {
///   location        = "us-central1"
///   backup_vault_id = "backup-vault"
///   data_source_id  = "data-source"
///   backup_id       = "backup"
///   region_disk_target_environment = {
///     project       = "my-project-name"
///     region        = "us-central1"
///     replica_zones = ["projects/my-project-name/zones/us-central1-a", "projects/my-project-name/zones/us-central1-b"]
///   }
///   disk_restore_properties = {
///     name        = "restored-regional-disk"
///     size_gb     = 200
///     type        = "pd-balanced"
///     description = "Restored regional persistent disk"
///     labels = {
///       "type"        = "regional"
///       "environment" = "production"
///     }
///     provisioned_iops       = 3000
///     provisioned_throughput = 140
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkload;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkloadArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadRegionDiskTargetEnvironmentArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskRestorePropertiesArgs;
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
///         var restoreRegionalDisk = new RestoreWorkload("restoreRegionalDisk", RestoreWorkloadArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault")
///             .dataSourceId("data-source")
///             .backupId("backup")
///             .regionDiskTargetEnvironment(RestoreWorkloadRegionDiskTargetEnvironmentArgs.builder()
///                 .project("my-project-name")
///                 .region("us-central1")
///                 .replicaZones(
///                     "projects/my-project-name/zones/us-central1-a",
///                     "projects/my-project-name/zones/us-central1-b")
///                 .build())
///             .diskRestoreProperties(RestoreWorkloadDiskRestorePropertiesArgs.builder()
///                 .name("restored-regional-disk")
///                 .sizeGb(200)
///                 .type("pd-balanced")
///                 .description("Restored regional persistent disk")
///                 .labels(com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskRestorePropertiesLabelArgs.builder()
///                     .type("regional")
///                     .environment("production")
///                     .build())
///                 .provisionedIops(3000)
///                 .provisionedThroughput(140)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restoreRegionalDisk:
///     type: gcp:backupdisasterrecovery:RestoreWorkload
///     name: restore_regional_disk
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault
///       dataSourceId: data-source
///       backupId: backup
///       regionDiskTargetEnvironment:
///         project: my-project-name
///         region: us-central1
///         replicaZones:
///           - projects/my-project-name/zones/us-central1-a
///           - projects/my-project-name/zones/us-central1-b
///       diskRestoreProperties:
///         name: restored-regional-disk
///         sizeGb: 200
///         type: pd-balanced
///         description: Restored regional persistent disk
///         labels:
///           type: regional
///           environment: production
///         provisionedIops: 3000
///         provisionedThroughput: 140
/// ```
///
/// ### Backup Dr Restore Workload Without Delete
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const restoreWithoutDelete = new gcp.backupdisasterrecovery.RestoreWorkload("restore_without_delete", {
///     location: "us-central1",
///     backupVaultId: "backup-vault",
///     dataSourceId: "data-source",
///     backupId: "backup",
///     deleteRestoredInstance: false,
///     diskTargetEnvironment: {
///         project: "my-project-name",
///         zone: "us-central1-a",
///     },
///     diskRestoreProperties: {
///         name: "persistent-disk",
///         sizeGb: 100,
///         type: "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// restore_without_delete = gcp.backupdisasterrecovery.RestoreWorkload("restore_without_delete",
///     location="us-central1",
///     backup_vault_id="backup-vault",
///     data_source_id="data-source",
///     backup_id="backup",
///     delete_restored_instance=False,
///     disk_target_environment={
///         "project": "my-project-name",
///         "zone": "us-central1-a",
///     },
///     disk_restore_properties={
///         "name": "persistent-disk",
///         "size_gb": 100,
///         "type": "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
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
///     var restoreWithoutDelete = new Gcp.BackupDisasterRecovery.RestoreWorkload("restore_without_delete", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "backup-vault",
///         DataSourceId = "data-source",
///         BackupId = "backup",
///         DeleteRestoredInstance = false,
///         DiskTargetEnvironment = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadDiskTargetEnvironmentArgs
///         {
///             Project = "my-project-name",
///             Zone = "us-central1-a",
///         },
///         DiskRestoreProperties = new Gcp.BackupDisasterRecovery.Inputs.RestoreWorkloadDiskRestorePropertiesArgs
///         {
///             Name = "persistent-disk",
///             SizeGb = 100,
///             Type = "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard",
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
/// 		_, err := backupdisasterrecovery.NewRestoreWorkload(ctx, "restore_without_delete", &backupdisasterrecovery.RestoreWorkloadArgs{
/// 			Location:               pulumi.String("us-central1"),
/// 			BackupVaultId:          pulumi.String("backup-vault"),
/// 			DataSourceId:           pulumi.String("data-source"),
/// 			BackupId:               pulumi.String("backup"),
/// 			DeleteRestoredInstance: pulumi.Bool(false),
/// 			DiskTargetEnvironment: &backupdisasterrecovery.RestoreWorkloadDiskTargetEnvironmentArgs{
/// 				Project: pulumi.String("my-project-name"),
/// 				Zone:    pulumi.String("us-central1-a"),
/// 			},
/// 			DiskRestoreProperties: &backupdisasterrecovery.RestoreWorkloadDiskRestorePropertiesArgs{
/// 				Name:   pulumi.String("persistent-disk"),
/// 				SizeGb: pulumi.Int(100),
/// 				Type:   pulumi.String("projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_backupdisasterrecovery_restoreworkload" "restore_without_delete" {
///   location                 = "us-central1"
///   backup_vault_id          = "backup-vault"
///   data_source_id           = "data-source"
///   backup_id                = "backup"
///   delete_restored_instance = false
///   disk_target_environment = {
///     project = "my-project-name"
///     zone    = "us-central1-a"
///   }
///   disk_restore_properties = {
///     name    = "persistent-disk"
///     size_gb = 100
///     type    = "projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkload;
/// import com.pulumi.gcp.backupdisasterrecovery.RestoreWorkloadArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskTargetEnvironmentArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.RestoreWorkloadDiskRestorePropertiesArgs;
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
///         var restoreWithoutDelete = new RestoreWorkload("restoreWithoutDelete", RestoreWorkloadArgs.builder()
///             .location("us-central1")
///             .backupVaultId("backup-vault")
///             .dataSourceId("data-source")
///             .backupId("backup")
///             .deleteRestoredInstance(false)
///             .diskTargetEnvironment(RestoreWorkloadDiskTargetEnvironmentArgs.builder()
///                 .project("my-project-name")
///                 .zone("us-central1-a")
///                 .build())
///             .diskRestoreProperties(RestoreWorkloadDiskRestorePropertiesArgs.builder()
///                 .name("persistent-disk")
///                 .sizeGb(100)
///                 .type("projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restoreWithoutDelete:
///     type: gcp:backupdisasterrecovery:RestoreWorkload
///     name: restore_without_delete
///     properties:
///       location: us-central1
///       backupVaultId: backup-vault
///       dataSourceId: data-source
///       backupId: backup
///       deleteRestoredInstance: false
///       diskTargetEnvironment:
///         project: my-project-name
///         zone: us-central1-a
///       diskRestoreProperties:
///         name: persistent-disk
///         sizeGb: 100
///         type: projects/my-project-name/zones/us-central1-a/diskTypes/pd-standard
/// ```
///
///
/// ## Import
///
/// RestoreWorkload can be imported using any of these accepted formats:
///
/// * `/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RestoreWorkload can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload default /{{name}}
/// $ pulumi import gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload default {{name}}
/// ```
class RestoreWorkload extends pulumi.CustomResource {
  /// Required. The ID of the backup to restore from.
  late final pulumi.Output<String> backupId;
  /// Required. The ID of the backup vault.
  late final pulumi.Output<String> backupVaultId;
  /// Optional. A field mask used to clear server-side default values during restore.
  late final pulumi.Output<String?> clearOverridesFieldMask;
  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadComputeInstanceRestoreProperties?> computeInstanceRestoreProperties;
  /// The destination environment for GCE VM restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadComputeInstanceTargetEnvironment?> computeInstanceTargetEnvironment;
  /// Required. The ID of the data source.
  late final pulumi.Output<String> dataSourceId;
  /// Optional. If true (default), running terraform destroy will delete the live resource in GCP.
  /// If false, only the restore record is removed from the state, leaving the resource active.
  late final pulumi.Output<bool?> deleteRestoredInstance;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadDiskRestoreProperties?> diskRestoreProperties;
  /// The destination environment for zonal disk restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadDiskTargetEnvironment?> diskTargetEnvironment;
  /// Required. The location for the backup vault.
  late final pulumi.Output<String> location;
  /// (Optional, Deprecated)
  /// The resource name of the backup instance.
  ///
  /// &gt; **Warning:** `name` is deprecated and will be removed in a future major release. The backup is identified by the parameters (location, backup_vault_id, data_source_id, backup_id).
  late final pulumi.Output<String> name;
  /// The destination environment for regional disk restoration.
  /// Structure is documented below.
  late final pulumi.Output<RestoreWorkloadRegionDiskTargetEnvironment?> regionDiskTargetEnvironment;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  late final pulumi.Output<String?> requestId;
  /// Output only. Details of the target resource created/modified as part of restore.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> targetResources;

  /// Creates a new [RestoreWorkload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestoreWorkload]. {@macro pulumi_backupdisasterrecovery_restore_workload_restore_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestoreWorkload(
    String name, {
    RestoreWorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupId = registerOutput<String>('backupId');
    backupVaultId = registerOutput<String>('backupVaultId');
    clearOverridesFieldMask = registerOutput<String?>('clearOverridesFieldMask');
    computeInstanceRestoreProperties = registerOutput<RestoreWorkloadComputeInstanceRestoreProperties?>('computeInstanceRestoreProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadComputeInstanceRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeInstanceTargetEnvironment = registerOutput<RestoreWorkloadComputeInstanceTargetEnvironment?>('computeInstanceTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadComputeInstanceTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    deleteRestoredInstance = registerOutput<bool?>('deleteRestoredInstance');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    diskRestoreProperties = registerOutput<RestoreWorkloadDiskRestoreProperties?>('diskRestoreProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadDiskRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskTargetEnvironment = registerOutput<RestoreWorkloadDiskTargetEnvironment?>('diskTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    regionDiskTargetEnvironment = registerOutput<RestoreWorkloadRegionDiskTargetEnvironment?>('regionDiskTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadRegionDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestId = registerOutput<String?>('requestId');
    targetResources = registerOutput<List<Map<String, dynamic>>>('targetResources');
  }

  /// Gets an existing [RestoreWorkload] resource's state with the given [name] and [id].
  static RestoreWorkload get(
    String name,
    pulumi.Input<String> id, {
    RestoreWorkloadState? state,
  }) {
    return RestoreWorkload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RestoreWorkload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/restoreWorkload:RestoreWorkload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupId = registerOutput<String>('backupId');
    backupVaultId = registerOutput<String>('backupVaultId');
    clearOverridesFieldMask = registerOutput<String?>('clearOverridesFieldMask');
    computeInstanceRestoreProperties = registerOutput<RestoreWorkloadComputeInstanceRestoreProperties?>('computeInstanceRestoreProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadComputeInstanceRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeInstanceTargetEnvironment = registerOutput<RestoreWorkloadComputeInstanceTargetEnvironment?>('computeInstanceTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadComputeInstanceTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    deleteRestoredInstance = registerOutput<bool?>('deleteRestoredInstance');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    diskRestoreProperties = registerOutput<RestoreWorkloadDiskRestoreProperties?>('diskRestoreProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadDiskRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskTargetEnvironment = registerOutput<RestoreWorkloadDiskTargetEnvironment?>('diskTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    regionDiskTargetEnvironment = registerOutput<RestoreWorkloadRegionDiskTargetEnvironment?>('regionDiskTargetEnvironment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreWorkloadRegionDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestId = registerOutput<String?>('requestId');
    targetResources = registerOutput<List<Map<String, dynamic>>>('targetResources');
  }
}
