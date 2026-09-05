import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_args.dart';
import 'backup_vault_state.dart';

/// Manages a NetApp Backup Vault.
///
/// ## NetApp Backup Vault Usage
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
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "example-netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleBackupVault = new azure.netapp.BackupVault("example", {
///     name: "example-netappbackupvault",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountName: exampleAccount.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.netapp.Account("example",
///     name="example-netappaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_backup_vault = azure.netapp.BackupVault("example",
///     name="example-netappbackupvault",
///     resource_group_name=example.name,
///     location=example.location,
///     account_name=example_account.name)
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
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "example-netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleBackupVault = new Azure.NetApp.BackupVault("example", new()
///     {
///         Name = "example-netappbackupvault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountName = exampleAccount.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
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
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewBackupVault(ctx, "example", &netapp.BackupVaultArgs{
/// 			Name:              pulumi.String("example-netappbackupvault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AccountName:       exampleAccount.Name,
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "example-netappaccount"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_netapp_backupvault" "example" {
///   name                = "example-netappbackupvault"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   account_name        = azure_netapp_account.example.name
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
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.BackupVault;
/// import com.pulumi.azure.netapp.BackupVaultArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-netappbackupvault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountName(exampleAccount.name())
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
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleBackupVault:
///     type: azure:netapp:BackupVault
///     name: example
///     properties:
///       name: example-netappbackupvault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountName: ${exampleAccount.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2026-01-01
///
/// ## Import
///
/// NetApp Backup Vault can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/backupVault:BackupVault example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/backupVaults/backupVault1
/// ```
class BackupVault extends pulumi.CustomResource {
  /// The name of the NetApp account in which the NetApp Vault should be created under. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the NetApp Backup Vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group where the NetApp Backup Vault should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [BackupVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupVault]. {@macro pulumi_netapp_backup_vault_backup_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupVault(
    String name, {
    BackupVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/backupVault:BackupVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [BackupVault] resource's state with the given [name] and [id].
  static BackupVault get(
    String name,
    pulumi.Input<String> id, {
    BackupVaultState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupVault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupVault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/backupVault:BackupVault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [BackupVault] resource.
  BackupVault.reference(String urn)
    : super(
        'azure:netapp/backupVault:BackupVault',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
