import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption_args.dart';
import 'account_encryption_state.dart';

/// Manages a NetApp Account Encryption Resource.
///
/// For more information about Azure NetApp Files Customer-Managed Keys feature, please refer to [Configure customer-managed keys for Azure NetApp Files volume encryption](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-customer-managed-keys)
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
/// const current = azure.core.getClientConfig({});
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "anf-user-assigned-identity",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "anfcmkakv",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     enabledForDeployment: true,
///     enabledForTemplateDeployment: true,
///     purgeProtectionEnabled: true,
///     tenantId: "00000000-0000-0000-0000-000000000000",
///     skuName: "standard",
///     accessPolicies: [
///         {
///             tenantId: "00000000-0000-0000-0000-000000000000",
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "WrapKey",
///                 "UnwrapKey",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             tenantId: "00000000-0000-0000-0000-000000000000",
///             objectId: exampleUserAssignedIdentity.principalId,
///             keyPermissions: [
///                 "Get",
///                 "Encrypt",
///                 "Decrypt",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "anfencryptionkey",
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
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const exampleAccountEncryption = new azure.netapp.AccountEncryption("example", {
///     netappAccountId: exampleAccount.id,
///     userAssignedIdentityId: exampleUserAssignedIdentity.id,
///     encryptionKey: exampleKey.versionlessId,
///     federatedClientId: exampleUserAssignedIdentity.clientId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="anf-user-assigned-identity",
///     location=example.location,
///     resource_group_name=example.name)
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="anfcmkakv",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     enabled_for_deployment=True,
///     enabled_for_template_deployment=True,
///     purge_protection_enabled=True,
///     tenant_id="00000000-0000-0000-0000-000000000000",
///     sku_name="standard",
///     access_policies=[
///         {
///             "tenant_id": "00000000-0000-0000-0000-000000000000",
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "WrapKey",
///                 "UnwrapKey",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             "tenant_id": "00000000-0000-0000-0000-000000000000",
///             "object_id": example_user_assigned_identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "Encrypt",
///                 "Decrypt",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="anfencryptionkey",
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
///     ])
/// example_account = azure.netapp.Account("example",
///     name="netappaccount",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// example_account_encryption = azure.netapp.AccountEncryption("example",
///     netapp_account_id=example_account.id,
///     user_assigned_identity_id=example_user_assigned_identity.id,
///     encryption_key=example_key.versionless_id,
///     federated_client_id=example_user_assigned_identity.client_id)
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "anf-user-assigned-identity",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "anfcmkakv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         EnabledForDeployment = true,
///         EnabledForTemplateDeployment = true,
///         PurgeProtectionEnabled = true,
///         TenantId = "00000000-0000-0000-0000-000000000000",
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = "00000000-0000-0000-0000-000000000000",
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Create",
///                     "Delete",
///                     "WrapKey",
///                     "UnwrapKey",
///                     "GetRotationPolicy",
///                     "SetRotationPolicy",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = "00000000-0000-0000-0000-000000000000",
///                 ObjectId = exampleUserAssignedIdentity.PrincipalId,
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Encrypt",
///                     "Decrypt",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "anfencryptionkey",
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
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.NetApp.Inputs.AccountIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleAccountEncryption = new Azure.NetApp.AccountEncryption("example", new()
///     {
///         NetappAccountId = exampleAccount.Id,
///         UserAssignedIdentityId = exampleUserAssignedIdentity.Id,
///         EncryptionKey = exampleKey.VersionlessId,
///         FederatedClientId = exampleUserAssignedIdentity.ClientId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("anf-user-assigned-identity"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                         pulumi.String("anfcmkakv"),
/// 			Location:                     example.Location,
/// 			ResourceGroupName:            example.Name,
/// 			EnabledForDiskEncryption:     pulumi.Bool(true),
/// 			EnabledForDeployment:         pulumi.Bool(true),
/// 			EnabledForTemplateDeployment: pulumi.Bool(true),
/// 			PurgeProtectionEnabled:       pulumi.Bool(true),
/// 			TenantId:                     pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			SkuName:                      pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("GetRotationPolicy"),
/// 						pulumi.String("SetRotationPolicy"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					ObjectId: exampleUserAssignedIdentity.PrincipalId,
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Decrypt"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("anfencryptionkey"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &netapp.AccountIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewAccountEncryption(ctx, "example", &netapp.AccountEncryptionArgs{
/// 			NetappAccountId:        exampleAccount.ID(),
/// 			UserAssignedIdentityId: exampleUserAssignedIdentity.ID(),
/// 			EncryptionKey:          exampleKey.VersionlessId,
/// 			FederatedClientId:      exampleUserAssignedIdentity.ClientId,
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.netapp.AccountEncryption;
/// import com.pulumi.azure.netapp.AccountEncryptionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("anf-user-assigned-identity")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("anfcmkakv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .enabledForDeployment(true)
///             .enabledForTemplateDeployment(true)
///             .purgeProtectionEnabled(true)
///             .tenantId("00000000-0000-0000-0000-000000000000")
///             .skuName("standard")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId("00000000-0000-0000-0000-000000000000")
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Get",
///                         "Create",
///                         "Delete",
///                         "WrapKey",
///                         "UnwrapKey",
///                         "GetRotationPolicy",
///                         "SetRotationPolicy")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId("00000000-0000-0000-0000-000000000000")
///                     .objectId(exampleUserAssignedIdentity.principalId())
///                     .keyPermissions(
///                         "Get",
///                         "Encrypt",
///                         "Decrypt")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("anfencryptionkey")
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
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleAccountEncryption = new AccountEncryption("exampleAccountEncryption", AccountEncryptionArgs.builder()
///             .netappAccountId(exampleAccount.id())
///             .userAssignedIdentityId(exampleUserAssignedIdentity.id())
///             .encryptionKey(exampleKey.versionlessId())
///             .federatedClientId(exampleUserAssignedIdentity.clientId())
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
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: anf-user-assigned-identity
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: anfcmkakv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       enabledForDeployment: true
///       enabledForTemplateDeployment: true
///       purgeProtectionEnabled: true
///       tenantId: 00000000-0000-0000-0000-000000000000
///       skuName: standard
///       accessPolicies:
///         - tenantId: 00000000-0000-0000-0000-000000000000
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///             - Create
///             - Delete
///             - WrapKey
///             - UnwrapKey
///             - GetRotationPolicy
///             - SetRotationPolicy
///         - tenantId: 00000000-0000-0000-0000-000000000000
///           objectId: ${exampleUserAssignedIdentity.principalId}
///           keyPermissions:
///             - Get
///             - Encrypt
///             - Decrypt
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: anfencryptionkey
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
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleAccountEncryption:
///     type: azure:netapp:AccountEncryption
///     name: example
///     properties:
///       netappAccountId: ${exampleAccount.id}
///       userAssignedIdentityId: ${exampleUserAssignedIdentity.id}
///       encryptionKey: ${exampleKey.versionlessId}
///       federatedClientId: ${exampleUserAssignedIdentity.clientId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Cross-Tenant Usage
///
/// For scenarios where the key vault is in a different Entra ID tenant:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const crossTenant = new azure.netapp.AccountEncryption("cross_tenant", {
///     netappAccountId: example.id,
///     userAssignedIdentityId: exampleAzurermUserAssignedIdentity.id,
///     encryptionKey: "https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key",
///     federatedClientId: "12345678-1234-1234-1234-123456789012",
///     crossTenantKeyVaultResourceId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// cross_tenant = azure.netapp.AccountEncryption("cross_tenant",
///     netapp_account_id=example["id"],
///     user_assigned_identity_id=example_azurerm_user_assigned_identity["id"],
///     encryption_key="https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key",
///     federated_client_id="12345678-1234-1234-1234-123456789012",
///     cross_tenant_key_vault_resource_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var crossTenant = new Azure.NetApp.AccountEncryption("cross_tenant", new()
///     {
///         NetappAccountId = example.Id,
///         UserAssignedIdentityId = exampleAzurermUserAssignedIdentity.Id,
///         EncryptionKey = "https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key",
///         FederatedClientId = "12345678-1234-1234-1234-123456789012",
///         CrossTenantKeyVaultResourceId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewAccountEncryption(ctx, "cross_tenant", &netapp.AccountEncryptionArgs{
/// 			NetappAccountId:               pulumi.Any(example.Id),
/// 			UserAssignedIdentityId:        pulumi.Any(exampleAzurermUserAssignedIdentity.Id),
/// 			EncryptionKey:                 pulumi.String("https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key"),
/// 			FederatedClientId:             pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 			CrossTenantKeyVaultResourceId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant"),
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
/// import com.pulumi.azure.netapp.AccountEncryption;
/// import com.pulumi.azure.netapp.AccountEncryptionArgs;
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
///         var crossTenant = new AccountEncryption("crossTenant", AccountEncryptionArgs.builder()
///             .netappAccountId(example.id())
///             .userAssignedIdentityId(exampleAzurermUserAssignedIdentity.id())
///             .encryptionKey("https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key")
///             .federatedClientId("12345678-1234-1234-1234-123456789012")
///             .crossTenantKeyVaultResourceId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   crossTenant:
///     type: azure:netapp:AccountEncryption
///     name: cross_tenant
///     properties:
///       netappAccountId: ${example.id}
///       userAssignedIdentityId: ${exampleAzurermUserAssignedIdentity.id}
///       encryptionKey: https://keyvault-in-other-tenant.vault.azure.net/keys/encryption-key
///       federatedClientId: 12345678-1234-1234-1234-123456789012
///       crossTenantKeyVaultResourceId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/remote-rg/providers/Microsoft.KeyVault/vaults/keyvault-in-other-tenant
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// Account Encryption Resources can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/accountEncryption:AccountEncryption example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1
/// ```
class AccountEncryption extends pulumi.CustomResource {
  /// The full resource ID of the cross-tenant key vault. This is recommended when using `federated_client_id` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  late final pulumi.Output<String?> crossTenantKeyVaultResourceId;
  /// Specify the versionless ID of the encryption key.
  late final pulumi.Output<String> encryptionKey;
  /// The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  late final pulumi.Output<String?> federatedClientId;
  /// The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  late final pulumi.Output<String> netappAccountId;
  /// The ID of the System Assigned Manged Identity. Conflicts with `user_assigned_identity_id`.
  late final pulumi.Output<String?> systemAssignedIdentityPrincipalId;
  /// The ID of the User Assigned Managed Identity. Conflicts with `system_assigned_identity_principal_id`.
  late final pulumi.Output<String?> userAssignedIdentityId;

  /// Creates a new [AccountEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountEncryption]. {@macro pulumi_netapp_account_encryption_account_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountEncryption(
    String name, {
    AccountEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/accountEncryption:AccountEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    crossTenantKeyVaultResourceId = registerOutput<String?>('crossTenantKeyVaultResourceId');
    encryptionKey = registerOutput<String>('encryptionKey');
    federatedClientId = registerOutput<String?>('federatedClientId');
    netappAccountId = registerOutput<String>('netappAccountId');
    systemAssignedIdentityPrincipalId = registerOutput<String?>('systemAssignedIdentityPrincipalId');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }

  /// Gets an existing [AccountEncryption] resource's state with the given [name] and [id].
  static AccountEncryption get(
    String name,
    pulumi.Input<String> id, {
    AccountEncryptionState? state,
  }) {
    return AccountEncryption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountEncryption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/accountEncryption:AccountEncryption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    crossTenantKeyVaultResourceId = registerOutput<String?>('crossTenantKeyVaultResourceId');
    encryptionKey = registerOutput<String>('encryptionKey');
    federatedClientId = registerOutput<String?>('federatedClientId');
    netappAccountId = registerOutput<String>('netappAccountId');
    systemAssignedIdentityPrincipalId = registerOutput<String?>('systemAssignedIdentityPrincipalId');
    userAssignedIdentityId = registerOutput<String?>('userAssignedIdentityId');
  }
}
