import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_args.dart';
import 'backup_vault_identity.dart';
import 'backup_vault_state.dart';

/// Manages a Backup Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example-backup-vault",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example-backup-vault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example-backup-vault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-backup-vault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example-backup-vault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Backup Vaults can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupVault:BackupVault example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1
/// ```
class BackupVault extends pulumi.CustomResource {
  /// Whether to enable cross-region restore for the Backup Vault.
  ///
  /// &gt; **Note:** The `cross_region_restore_enabled` can only be specified when `redundancy` is specified for `GeoRedundant`. Once `cross_region_restore_enabled` is enabled, it cannot be disabled.
  late final pulumi.Output<bool?> crossRegionRestoreEnabled;

  /// Specifies the type of the data store. Possible values are `ArchiveStore`, `OperationalStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `SnapshotStore` will be removed in version 4.0 as it has been replaced by `OperationalStore`.
  late final pulumi.Output<String> datastoreType;

  /// An `identity` block as defined below.
  late final pulumi.Output<BackupVaultIdentity?> identity;

  /// The state of immutability for this Backup Vault. Possible values are `Disabled`, `Locked`, and `Unlocked`. Defaults to `Disabled`.
  late final pulumi.Output<String?> immutability;

  /// The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created.
  late final pulumi.Output<String> name;

  /// Specifies the backup storage redundancy. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Changing this forces a new Backup Vault to be created.
  late final pulumi.Output<String> redundancy;

  /// The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The soft delete retention duration for this Backup Vault. Possible values are between `14` and `180`. Defaults to `14`.
  ///
  /// &gt; **Note:** The `retention_duration_in_days` is the number of days for which deleted data is retained before being permanently deleted. Retention period till 14 days are free of cost, however, retention beyond 14 days may incur additional charges. The `retention_duration_in_days` is required when the `soft_delete` is set to `On`.
  late final pulumi.Output<double?> retentionDurationInDays;

  /// The state of soft delete for this Backup Vault. Possible values are `AlwaysOn`, `Off`, and `On`. Defaults to `On`.
  ///
  /// &gt; **Note:** Once the `soft_delete` is set to `AlwaysOn`, the setting cannot be changed.
  late final pulumi.Output<String?> softDelete;

  /// A mapping of tags which should be assigned to the Backup Vault.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [BackupVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupVault]. {@macro pulumi_dataprotection_backup_vault_backup_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupVault(
    String name, {
    BackupVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dataprotection/backupVault:BackupVault',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    crossRegionRestoreEnabled = registerOutput<bool?>(
      'crossRegionRestoreEnabled',
    );
    datastoreType = registerOutput<String>('datastoreType');
    identity = registerOutput<BackupVaultIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BackupVaultIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    immutability = registerOutput<String?>('immutability');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    redundancy = registerOutput<String>('redundancy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDurationInDays = registerOutput<double?>(
      'retentionDurationInDays',
    );
    softDelete = registerOutput<String?>('softDelete');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [BackupVault] resource's state with the given [name] and [id].
  static BackupVault get(
    String name,
    pulumi.Input<String> id, {
    BackupVaultState? state,
  }) {
    return BackupVault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupVault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dataprotection/backupVault:BackupVault',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    crossRegionRestoreEnabled = registerOutput<bool?>(
      'crossRegionRestoreEnabled',
    );
    datastoreType = registerOutput<String>('datastoreType');
    identity = registerOutput<BackupVaultIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BackupVaultIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    immutability = registerOutput<String?>('immutability');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    redundancy = registerOutput<String>('redundancy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDurationInDays = registerOutput<double?>(
      'retentionDurationInDays',
    );
    softDelete = registerOutput<String?>('softDelete');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
