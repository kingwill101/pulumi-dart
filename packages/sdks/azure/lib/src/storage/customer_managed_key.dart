import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_key_args.dart';
import 'customer_managed_key_state.dart';

/// Manages a Customer Managed Key for a Storage Account.
///
/// > **Note:** It's possible to define a Customer Managed Key both within the `azure.storage.Account` resource via the `customer_managed_key` block and by using the `azure.storage.CustomerManagedKey` resource. However it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since there'll be conflicts.
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
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestor",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const storage = new azure.keyvault.AccessPolicy("storage", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleAccount.identity.apply(identity => identity?.principalId),
///     secretPermissions: ["Get"],
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
/// });
/// const client = new azure.keyvault.AccessPolicy("client", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     secretPermissions: ["Get"],
///     keyPermissions: [
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///         "SetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "tfex-key",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [
///         client,
///         storage,
///     ],
/// });
/// const exampleCustomerManagedKey = new azure.storage.CustomerManagedKey("example", {
///     storageAccountId: exampleAccount.id,
///     keyVaultKeyId: exampleKey.id,
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_account = azure.storage.Account("example",
///     name="examplestor",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     identity={
///         "type": "SystemAssigned",
///     })
/// storage = azure.keyvault.AccessPolicy("storage",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=example_account.identity.principal_id,
///     secret_permissions=["Get"],
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ])
/// client = azure.keyvault.AccessPolicy("client",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     secret_permissions=["Get"],
///     key_permissions=[
///         "Get",
///         "Create",
///         "Delete",
///         "List",
///         "Restore",
///         "Recover",
///         "UnwrapKey",
///         "WrapKey",
///         "Purge",
///         "Encrypt",
///         "Decrypt",
///         "Sign",
///         "Verify",
///         "GetRotationPolicy",
///         "SetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="tfex-key",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             client,
///             storage,
///         ]))
/// example_customer_managed_key = azure.storage.CustomerManagedKey("example",
///     storage_account_id=example_account.id,
///     key_vault_key_id=example_key.id)
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestor",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Identity = new Azure.Storage.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var storage = new Azure.KeyVault.AccessPolicy("storage", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///     });
///
///     var client = new Azure.KeyVault.AccessPolicy("client", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///         KeyPermissions = new[]
///         {
///             "Get",
///             "Create",
///             "Delete",
///             "List",
///             "Restore",
///             "Recover",
///             "UnwrapKey",
///             "WrapKey",
///             "Purge",
///             "Encrypt",
///             "Decrypt",
///             "Sign",
///             "Verify",
///             "GetRotationPolicy",
///             "SetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "tfex-key",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             client,
///             storage,
///         },
///     });
///
///     var exampleCustomerManagedKey = new Azure.Storage.CustomerManagedKey("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         KeyVaultKeyId = exampleKey.Id,
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("examplekv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestor"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Identity: &storage.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		storage, err := keyvault.NewAccessPolicy(ctx, "storage", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId: pulumi.String(exampleAccount.Identity.ApplyT(func(identity storage.AccountIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := keyvault.NewAccessPolicy(ctx, "client", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Restore"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Encrypt"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("Verify"),
/// 				pulumi.String("GetRotationPolicy"),
/// 				pulumi.String("SetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("tfex-key"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			client,
/// 			storage,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewCustomerManagedKey(ctx, "example", &storage.CustomerManagedKeyArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			KeyVaultKeyId:    exampleKey.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.storage.CustomerManagedKey;
/// import com.pulumi.azure.storage.CustomerManagedKeyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestor")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var storage = new AccessPolicy("storage", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .secretPermissions("Get")
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .build());
///
///         var client = new AccessPolicy("client", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .secretPermissions("Get")
///             .keyPermissions(
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("tfex-key")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     client,
///                     storage)
///                 .build());
///
///         var exampleCustomerManagedKey = new CustomerManagedKey("exampleCustomerManagedKey", CustomerManagedKeyArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .keyVaultKeyId(exampleKey.id())
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   storage:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleAccount.identity.principalId}
///       secretPermissions:
///         - Get
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///   client:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       secretPermissions:
///         - Get
///       keyPermissions:
///         - Get
///         - Create
///         - Delete
///         - List
///         - Restore
///         - Recover
///         - UnwrapKey
///         - WrapKey
///         - Purge
///         - Encrypt
///         - Decrypt
///         - Sign
///         - Verify
///         - GetRotationPolicy
///         - SetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: tfex-key
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///     options:
///       dependsOn:
///         - ${client}
///         - ${storage}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestor
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       identity:
///         type: SystemAssigned
///   exampleCustomerManagedKey:
///     type: azure:storage:CustomerManagedKey
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       keyVaultKeyId: ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
///
/// ## Import
///
/// Customer Managed Keys for a Storage Account can be imported using the `resource id` of the Storage Account, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/customerManagedKey:CustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class CustomerManagedKey extends pulumi.CustomResource {
  /// The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  late final pulumi.Output<String?> federatedIdentityClientId;
  late final pulumi.Output<String> keyName;
  late final pulumi.Output<String> keyVaultId;
  /// The ID of the Key Vault Key.
  late final pulumi.Output<String> keyVaultKeyId;
  late final pulumi.Output<String> keyVaultUri;
  late final pulumi.Output<String> keyVersion;
  late final pulumi.Output<String> managedHsmKeyId;
  /// The ID of the Storage Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;
  /// The ID of a user assigned identity.
  late final pulumi.Output<String?> userAssignedIdentityId;

  /// Creates a new [CustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerManagedKey]. {@macro pulumi_storage_customer_managed_key_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerManagedKey(
    String name, {
    CustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/customerManagedKey:CustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.federatedIdentityClientId = registerOutput<String?>('federatedIdentityClientId');
    this.keyName = registerOutput<String>('keyName');
    this.keyVaultId = registerOutput<String>('keyVaultId');
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    this.keyVaultUri = registerOutput<String>('keyVaultUri');
    this.keyVersion = registerOutput<String>('keyVersion');
    this.managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }

  /// Gets an existing [CustomerManagedKey] resource's state with the given [name] and [id].
  static CustomerManagedKey get(
    String name,
    pulumi.Input<String> id, {
    CustomerManagedKeyState? state,
  }) {
    return CustomerManagedKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomerManagedKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/customerManagedKey:CustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.federatedIdentityClientId = registerOutput<String?>('federatedIdentityClientId');
    this.keyName = registerOutput<String>('keyName');
    this.keyVaultId = registerOutput<String>('keyVaultId');
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    this.keyVaultUri = registerOutput<String>('keyVaultUri');
    this.keyVersion = registerOutput<String>('keyVersion');
    this.managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }
}
