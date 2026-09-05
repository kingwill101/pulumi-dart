import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_storage_account_args.dart';
import 'managed_storage_account_state.dart';

/// Manages a Key Vault Managed Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "keyvaultname",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         secretPermissions: [
///             "Get",
///             "Delete",
///         ],
///         storagePermissions: [
///             "Get",
///             "List",
///             "Set",
///             "SetSAS",
///             "GetSAS",
///             "DeleteSAS",
///             "Update",
///             "RegenerateKey",
///         ],
///     }],
/// });
/// const exampleManagedStorageAccount = new azure.keyvault.ManagedStorageAccount("example", {
///     name: "examplemanagedstorage",
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     storageAccountKey: "key1",
///     regenerateKeyAutomatically: false,
///     regenerationPeriod: "P1D",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="keyvaultname",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "secret_permissions": [
///             "Get",
///             "Delete",
///         ],
///         "storage_permissions": [
///             "Get",
///             "List",
///             "Set",
///             "SetSAS",
///             "GetSAS",
///             "DeleteSAS",
///             "Update",
///             "RegenerateKey",
///         ],
///     }])
/// example_managed_storage_account = azure.keyvault.ManagedStorageAccount("example",
///     name="examplemanagedstorage",
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     storage_account_key="key1",
///     regenerate_key_automatically=False,
///     regeneration_period="P1D")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "keyvaultname",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                     "Delete",
///                 },
///                 StoragePermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                     "Set",
///                     "SetSAS",
///                     "GetSAS",
///                     "DeleteSAS",
///                     "Update",
///                     "RegenerateKey",
///                 },
///             },
///         },
///     });
///
///     var exampleManagedStorageAccount = new Azure.KeyVault.ManagedStorageAccount("example", new()
///     {
///         Name = "examplemanagedstorage",
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountKey = "key1",
///         RegenerateKeyAutomatically = false,
///         RegenerationPeriod = "P1D",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("keyvaultname"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Delete"),
/// 					},
/// 					StoragePermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Set"),
/// 						pulumi.String("SetSAS"),
/// 						pulumi.String("GetSAS"),
/// 						pulumi.String("DeleteSAS"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("RegenerateKey"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedStorageAccount(ctx, "example", &keyvault.ManagedStorageAccountArgs{
/// 			Name:                       pulumi.String("examplemanagedstorage"),
/// 			KeyVaultId:                 exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountId:           exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			StorageAccountKey:          pulumi.String("key1"),
/// 			RegenerateKeyAutomatically: pulumi.Bool(false),
/// 			RegenerationPeriod:         pulumi.String("P1D"),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "keyvaultname"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   access_policies {
///     tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///     object_id           = data.azure_core_getclientconfig.current.object_id
///     secret_permissions  = ["Get", "Delete"]
///     storage_permissions = ["Get", "List", "Set", "SetSAS", "GetSAS", "DeleteSAS", "Update", "RegenerateKey"]
///   }
/// }
/// resource "azure_keyvault_managedstorageaccount" "example" {
///   name                         = "examplemanagedstorage"
///   key_vault_id                 = azure_keyvault_keyvault.example.id
///   storage_account_id           = azure_storage_account.example.id
///   storage_account_key          = "key1"
///   regenerate_key_automatically = false
///   regeneration_period          = "P1D"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.ManagedStorageAccount;
/// import com.pulumi.azure.keyvault.ManagedStorageAccountArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("keyvaultname")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .secretPermissions(
///                     "Get",
///                     "Delete")
///                 .storagePermissions(
///                     "Get",
///                     "List",
///                     "Set",
///                     "SetSAS",
///                     "GetSAS",
///                     "DeleteSAS",
///                     "Update",
///                     "RegenerateKey")
///                 .build())
///             .build());
///
///         var exampleManagedStorageAccount = new ManagedStorageAccount("exampleManagedStorageAccount", ManagedStorageAccountArgs.builder()
///             .name("examplemanagedstorage")
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .storageAccountKey("key1")
///             .regenerateKeyAutomatically(false)
///             .regenerationPeriod("P1D")
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
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: keyvaultname
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           secretPermissions:
///             - Get
///             - Delete
///           storagePermissions:
///             - Get
///             - List
///             - Set
///             - SetSAS
///             - GetSAS
///             - DeleteSAS
///             - Update
///             - RegenerateKey
///   exampleManagedStorageAccount:
///     type: azure:keyvault:ManagedStorageAccount
///     name: example
///     properties:
///       name: examplemanagedstorage
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       storageAccountKey: key1
///       regenerateKeyAutomatically: false
///       regenerationPeriod: P1D
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ## Import
///
/// Key Vault Managed Storage Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedStorageAccount:ManagedStorageAccount example https://example-keyvault.vault.azure.net/storage/exampleStorageAcc01
/// ```
class ManagedStorageAccount extends pulumi.CustomResource {
  /// The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;
  /// The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created.
  late final pulumi.Output<String> name;
  /// Should Storage Account access key be regenerated periodically?
  ///
  /// &gt; **Note:** Azure Key Vault application needs to have access to Storage Account for auto regeneration to work. Example can be found above.
  late final pulumi.Output<bool?> regenerateKeyAutomatically;
  /// How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  late final pulumi.Output<String?> regenerationPeriod;
  /// The ID of the Storage Account.
  late final pulumi.Output<String> storageAccountId;
  /// Which Storage Account access key that is managed by Key Vault. Possible values are `key1` and `key2`.
  late final pulumi.Output<String> storageAccountKey;
  /// A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ManagedStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedStorageAccount]. {@macro pulumi_keyvault_managed_storage_account_managed_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedStorageAccount(
    String name, {
    ManagedStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedStorageAccount:ManagedStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    regenerateKeyAutomatically = registerOutput<bool?>('regenerateKeyAutomatically');
    regenerationPeriod = registerOutput<String?>('regenerationPeriod');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageAccountKey = registerOutput<String>('storageAccountKey');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ManagedStorageAccount] resource's state with the given [name] and [id].
  static ManagedStorageAccount get(
    String name,
    pulumi.Input<String> id, {
    ManagedStorageAccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedStorageAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedStorageAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedStorageAccount:ManagedStorageAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    regenerateKeyAutomatically = registerOutput<bool?>('regenerateKeyAutomatically');
    regenerationPeriod = registerOutput<String?>('regenerationPeriod');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageAccountKey = registerOutput<String>('storageAccountKey');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ManagedStorageAccount] resource.
  ManagedStorageAccount.reference(String urn)
    : super(
        'azure:keyvault/managedStorageAccount:ManagedStorageAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    regenerateKeyAutomatically = registerOutput<bool?>('regenerateKeyAutomatically');
    regenerationPeriod = registerOutput<String?>('regenerationPeriod');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageAccountKey = registerOutput<String>('storageAccountKey');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
