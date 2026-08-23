import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'backup_ontap_source.dart';
import 'backup_state.dart';

/// NetApp Volumes supports volume backups, which are copies of your volumes
/// stored independently from the volume. Backups are stored in backup vaults,
/// which are containers for backups. If a volume is lost or deleted, you can
/// use backups to restore your data to a new volume.
///
/// When you create the first backup of a volume, all of the volume's used
/// data is sent to the backup vault. Subsequent backups of the same volume
/// only include data that has changed from the previous backup. This allows
/// for fast incremental-forever backups and reduces the required capacity
/// inside the backup vault.
///
/// You can create manual and scheduled backups. Manual backups can be taken
/// from a volume or from an existing volume snapshot. Scheduled backups
/// require a backup policy.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupVaults.backups)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups)
///
/// ## Example Usage
///
/// ### Netapp Backup
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "network",
/// });
/// const defaultStoragePool = new gcp.netapp.StoragePool("default", {
///     name: "backup-pool",
///     location: "us-central1",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: _default.then(_default => _default.id),
/// });
/// const defaultBackupVault = new gcp.netapp.BackupVault("default", {
///     name: "backup-vault",
///     location: defaultStoragePool.location,
/// });
/// const defaultVolume = new gcp.netapp.Volume("default", {
///     name: "backup-volume",
///     location: defaultStoragePool.location,
///     capacityGib: "100",
///     shareName: "backup-volume",
///     storagePool: defaultStoragePool.name,
///     protocols: ["NFSV3"],
///     deletionPolicy: "FORCE",
///     backupConfig: {
///         backupVault: defaultBackupVault.id,
///     },
/// });
/// const testBackup = new gcp.netapp.Backup("test_backup", {
///     name: "test-backup",
///     location: defaultBackupVault.location,
///     vaultName: defaultBackupVault.name,
///     sourceVolume: defaultVolume.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="network")
/// default_storage_pool = gcp.netapp.StoragePool("default",
///     name="backup-pool",
///     location="us-central1",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=default.id)
/// default_backup_vault = gcp.netapp.BackupVault("default",
///     name="backup-vault",
///     location=default_storage_pool.location)
/// default_volume = gcp.netapp.Volume("default",
///     name="backup-volume",
///     location=default_storage_pool.location,
///     capacity_gib="100",
///     share_name="backup-volume",
///     storage_pool=default_storage_pool.name,
///     protocols=["NFSV3"],
///     deletion_policy="FORCE",
///     backup_config={
///         "backup_vault": default_backup_vault.id,
///     })
/// test_backup = gcp.netapp.Backup("test_backup",
///     name="test-backup",
///     location=default_backup_vault.location,
///     vault_name=default_backup_vault.name,
///     source_volume=default_volume.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "network",
///     });
///
///     var defaultStoragePool = new Gcp.Netapp.StoragePool("default", new()
///     {
///         Name = "backup-pool",
///         Location = "us-central1",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///     });
///
///     var defaultBackupVault = new Gcp.Netapp.BackupVault("default", new()
///     {
///         Name = "backup-vault",
///         Location = defaultStoragePool.Location,
///     });
///
///     var defaultVolume = new Gcp.Netapp.Volume("default", new()
///     {
///         Name = "backup-volume",
///         Location = defaultStoragePool.Location,
///         CapacityGib = "100",
///         ShareName = "backup-volume",
///         StoragePool = defaultStoragePool.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///         DeletionPolicy = "FORCE",
///         BackupConfig = new Gcp.Netapp.Inputs.VolumeBackupConfigArgs
///         {
///             BackupVault = defaultBackupVault.Id,
///         },
///     });
///
///     var testBackup = new Gcp.Netapp.Backup("test_backup", new()
///     {
///         Name = "test-backup",
///         Location = defaultBackupVault.Location,
///         VaultName = defaultBackupVault.Name,
///         SourceVolume = defaultVolume.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("network"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStoragePool, err := netapp.NewStoragePool(ctx, "default", &netapp.StoragePoolArgs{
/// 			Name:         pulumi.String("backup-pool"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceLevel: pulumi.String("PREMIUM"),
/// 			CapacityGib:  pulumi.String("2048"),
/// 			Network:      pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackupVault, err := netapp.NewBackupVault(ctx, "default", &netapp.BackupVaultArgs{
/// 			Name:     pulumi.String("backup-vault"),
/// 			Location: defaultStoragePool.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVolume, err := netapp.NewVolume(ctx, "default", &netapp.VolumeArgs{
/// 			Name:        pulumi.String("backup-volume"),
/// 			Location:    defaultStoragePool.Location,
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("backup-volume"),
/// 			StoragePool: defaultStoragePool.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 			DeletionPolicy: pulumi.String("FORCE"),
/// 			BackupConfig: &netapp.VolumeBackupConfigArgs{
/// 				BackupVault: defaultBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewBackup(ctx, "test_backup", &netapp.BackupArgs{
/// 			Name:         pulumi.String("test-backup"),
/// 			Location:     defaultBackupVault.Location,
/// 			VaultName:    defaultBackupVault.Name,
/// 			SourceVolume: defaultVolume.ID().ToIDOutput().ToStringOutput(),
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
/// data "gcp_compute_getnetwork" "default" {
///   name = "network"
/// }
///
/// resource "gcp_netapp_storagepool" "default" {
///   name          = "backup-pool"
///   location      = "us-central1"
///   service_level = "PREMIUM"
///   capacity_gib  = "2048"
///   network       = data.gcp_compute_getnetwork.default.id
/// }
/// resource "gcp_netapp_volume" "default" {
///   name            = "backup-volume"
///   location        = gcp_netapp_storagepool.default.location
///   capacity_gib    = "100"
///   share_name      = "backup-volume"
///   storage_pool    = gcp_netapp_storagepool.default.name
///   protocols       = ["NFSV3"]
///   deletion_policy = "FORCE"
///   backup_config = {
///     backup_vault = gcp_netapp_backupvault.default.id
///   }
/// }
/// resource "gcp_netapp_backupvault" "default" {
///   name     = "backup-vault"
///   location = gcp_netapp_storagepool.default.location
/// }
/// resource "gcp_netapp_backup" "test_backup" {
///   name          = "test-backup"
///   location      = gcp_netapp_backupvault.default.location
///   vault_name    = gcp_netapp_backupvault.default.name
///   source_volume = gcp_netapp_volume.default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.BackupVault;
/// import com.pulumi.gcp.netapp.BackupVaultArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.netapp.inputs.VolumeBackupConfigArgs;
/// import com.pulumi.gcp.netapp.Backup;
/// import com.pulumi.gcp.netapp.BackupArgs;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var defaultStoragePool = new StoragePool("defaultStoragePool", StoragePoolArgs.builder()
///             .name("backup-pool")
///             .location("us-central1")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(default_.id())
///             .build());
///
///         var defaultBackupVault = new BackupVault("defaultBackupVault", BackupVaultArgs.builder()
///             .name("backup-vault")
///             .location(defaultStoragePool.location())
///             .build());
///
///         var defaultVolume = new Volume("defaultVolume", VolumeArgs.builder()
///             .name("backup-volume")
///             .location(defaultStoragePool.location())
///             .capacityGib("100")
///             .shareName("backup-volume")
///             .storagePool(defaultStoragePool.name())
///             .protocols("NFSV3")
///             .deletionPolicy("FORCE")
///             .backupConfig(VolumeBackupConfigArgs.builder()
///                 .backupVault(defaultBackupVault.id())
///                 .build())
///             .build());
///
///         var testBackup = new Backup("testBackup", BackupArgs.builder()
///             .name("test-backup")
///             .location(defaultBackupVault.location())
///             .vaultName(defaultBackupVault.name())
///             .sourceVolume(defaultVolume.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultStoragePool:
///     type: gcp:netapp:StoragePool
///     name: default
///     properties:
///       name: backup-pool
///       location: us-central1
///       serviceLevel: PREMIUM
///       capacityGib: '2048'
///       network: ${default.id}
///   defaultVolume:
///     type: gcp:netapp:Volume
///     name: default
///     properties:
///       name: backup-volume
///       location: ${defaultStoragePool.location}
///       capacityGib: '100'
///       shareName: backup-volume
///       storagePool: ${defaultStoragePool.name}
///       protocols:
///         - NFSV3
///       deletionPolicy: FORCE
///       backupConfig:
///         backupVault: ${defaultBackupVault.id}
///   defaultBackupVault:
///     type: gcp:netapp:BackupVault
///     name: default
///     properties:
///       name: backup-vault
///       location: ${defaultStoragePool.location}
///   testBackup:
///     type: gcp:netapp:Backup
///     name: test_backup
///     properties:
///       name: test-backup
///       location: ${defaultBackupVault.location}
///       vaultName: ${defaultBackupVault.name}
///       sourceVolume: ${defaultVolume.id}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: network
/// ```
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupVaults/{{vault_name}}/backups/{{name}}`
/// * `{{project}}/{{location}}/{{vault_name}}/{{name}}`
/// * `{{location}}/{{vault_name}}/{{name}}`
///
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backup:Backup default projects/{{project}}/locations/{{location}}/backupVaults/{{vault_name}}/backups/{{name}}
/// $ pulumi import gcp:netapp/backup:Backup default {{project}}/{{location}}/{{vault_name}}/{{name}}
/// $ pulumi import gcp:netapp/backup:Backup default {{location}}/{{vault_name}}/{{name}}
/// ```
class Backup extends pulumi.CustomResource {
  /// Region in which backup is stored.
  late final pulumi.Output<String> backupRegion;
  /// Type of backup, manually created or created by a backup policy. Possible Values : [TYPE_UNSPECIFIED, MANUAL, SCHEDULED]
  late final pulumi.Output<String> backupType;
  /// Backups of a volume build incrementally on top of each other. They form a "backup chain".
  /// Total size of all backups in a chain in bytes = baseline backup size + sum(incremental backup size)
  late final pulumi.Output<String> chainStorageBytes;
  /// Create time of the backup. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location of the backup.
  late final pulumi.Output<String> location;
  /// The resource name of the backup. Needs to be unique per location.
  late final pulumi.Output<String> name;
  /// Details of the ONTAP source volume and snapshot.
  /// Structure is documented below.
  late final pulumi.Output<BackupOntapSource?> ontapSource;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  late final pulumi.Output<String?> sourceSnapshot;
  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  late final pulumi.Output<String?> sourceVolume;
  /// The state of the Backup Vault. Possible Values : [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING, ERROR, UPDATING]
  late final pulumi.Output<String> state;
  /// Name of the backup vault to store the backup in.
  late final pulumi.Output<String> vaultName;
  /// Region of the volume from which the backup was created.
  late final pulumi.Output<String> volumeRegion;
  /// Size of the file system when the backup was created. When creating a new volume from the backup, the volume capacity will have to be at least as big.
  late final pulumi.Output<String> volumeUsageBytes;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_netapp_backup_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backup:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRegion = registerOutput<String>('backupRegion');
    backupType = registerOutput<String>('backupType');
    chainStorageBytes = registerOutput<String>('chainStorageBytes');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ontapSource = registerOutput<BackupOntapSource?>('ontapSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupOntapSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    sourceVolume = registerOutput<String?>('sourceVolume');
    state = registerOutput<String>('state');
    vaultName = registerOutput<String>('vaultName');
    volumeRegion = registerOutput<String>('volumeRegion');
    volumeUsageBytes = registerOutput<String>('volumeUsageBytes');
  }

  /// Gets an existing [Backup] resource's state with the given [name] and [id].
  static Backup get(
    String name,
    pulumi.Input<String> id, {
    BackupState? state,
  }) {
    return Backup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Backup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backup:Backup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRegion = registerOutput<String>('backupRegion');
    backupType = registerOutput<String>('backupType');
    chainStorageBytes = registerOutput<String>('chainStorageBytes');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ontapSource = registerOutput<BackupOntapSource?>('ontapSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupOntapSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    sourceVolume = registerOutput<String?>('sourceVolume');
    this.state = registerOutput<String>('state');
    vaultName = registerOutput<String>('vaultName');
    volumeRegion = registerOutput<String>('volumeRegion');
    volumeUsageBytes = registerOutput<String>('volumeUsageBytes');
  }
}
