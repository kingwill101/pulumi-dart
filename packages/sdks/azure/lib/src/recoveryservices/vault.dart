import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_args.dart';
import 'vault_encryption.dart';
import 'vault_identity.dart';
import 'vault_monitoring.dart';
import 'vault_state.dart';

/// Manages a Recovery Services Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-recovery_vault",
///     location: "West Europe",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     softDeleteEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-recovery_vault",
///     location="West Europe")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     soft_delete_enabled=True)
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
///         Name = "tfex-recovery_vault",
///         Location = "West Europe",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         SoftDeleteEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-recovery_vault"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			SoftDeleteEnabled: pulumi.Bool(true),
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
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
///             .name("tfex-recovery_vault")
///             .location("West Europe")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .softDeleteEnabled(true)
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
///       name: tfex-recovery_vault
///       location: West Europe
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       softDeleteEnabled: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01, 2024-01-01
///
/// ## Import
///
/// Recovery Services Vaults can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:recoveryservices/vault:Vault vault1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/vault1
/// ```
class Vault extends pulumi.CustomResource {
  /// Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> classicVmwareReplicationEnabled;
  /// Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`.
  ///
  /// &gt; **Note:** Once `cross_region_restore_enabled` is set to `true`, changing it back to `false` forces a new Recovery Service Vault to be created.
  late final pulumi.Output<bool?> crossRegionRestoreEnabled;
  /// An `encryption` block as defined below. Required with `identity`.
  ///
  /// !&gt; **Note:** Once Encryption with your own key has been Enabled it's not possible to Disable it.
  late final pulumi.Output<VaultEncryption?> encryption;
  /// An `identity` block as defined below.
  late final pulumi.Output<VaultIdentity?> identity;
  /// Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`.
  ///
  /// &gt; **Note:** Once `immutability` is set to `Locked`, changing it to other values forces a new Recovery Services Vault to be created.
  late final pulumi.Output<String> immutability;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `monitoring` block as defined below.
  late final pulumi.Output<VaultMonitoring?> monitoring;
  /// Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Is it enabled to access the vault from public networks. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Sets the vault's SKU. Possible values include: `Standard`, `RS0`.
  late final pulumi.Output<String> sku;
  /// Is soft delete enable for this Vault? Defaults to `true`.
  late final pulumi.Output<bool?> softDeleteEnabled;
  /// The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`.
  late final pulumi.Output<String?> storageModeType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_recoveryservices_vault_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(
    String name, {
    VaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:recoveryservices/vault:Vault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    classicVmwareReplicationEnabled = registerOutput<bool?>('classicVmwareReplicationEnabled');
    crossRegionRestoreEnabled = registerOutput<bool?>('crossRegionRestoreEnabled');
    encryption = registerOutput<VaultEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<VaultIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutability = registerOutput<String>('immutability');
    location = registerOutput<String>('location');
    monitoring = registerOutput<VaultMonitoring?>('monitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    softDeleteEnabled = registerOutput<bool?>('softDeleteEnabled');
    storageModeType = registerOutput<String?>('storageModeType');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Vault] resource's state with the given [name] and [id].
  static Vault get(
    String name,
    pulumi.Input<String> id, {
    VaultState? state,
  }) {
    return Vault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:recoveryservices/vault:Vault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    classicVmwareReplicationEnabled = registerOutput<bool?>('classicVmwareReplicationEnabled');
    crossRegionRestoreEnabled = registerOutput<bool?>('crossRegionRestoreEnabled');
    encryption = registerOutput<VaultEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<VaultIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    immutability = registerOutput<String>('immutability');
    location = registerOutput<String>('location');
    monitoring = registerOutput<VaultMonitoring?>('monitoring', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    softDeleteEnabled = registerOutput<bool?>('softDeleteEnabled');
    storageModeType = registerOutput<String?>('storageModeType');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
