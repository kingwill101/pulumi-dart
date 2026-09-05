import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_args.dart';
import 'disk_encryption_set_identity.dart';
import 'disk_encryption_set_state.dart';

/// Manages a Disk Encryption Set.
///
/// &gt; **NOTE:** At this time the Key Vault used to store the Active Key for this Disk Encryption Set must have both Soft Delete & Purge Protection enabled - which are not yet supported by this provider.
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
///     name: "des-example-keyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     enabledForDiskEncryption: true,
///     purgeProtectionEnabled: true,
/// });
/// const example_user = new azure.keyvault.AccessPolicy("example-user", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "des-example-key",
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
///     dependsOn: [example_user],
/// });
/// const exampleDiskEncryptionSet = new azure.compute.DiskEncryptionSet("example", {
///     name: "des",
///     resourceGroupName: example.name,
///     location: example.location,
///     keyVaultKeyId: exampleKey.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const example_disk = new azure.keyvault.AccessPolicy("example-disk", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleDiskEncryptionSet.identity.tenantId,
///     objectId: exampleDiskEncryptionSet.identity.principalId,
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ],
/// });
/// const example_diskAssignment = new azure.authorization.Assignment("example-disk", {
///     scope: exampleKeyVault.id,
///     roleDefinitionName: "Key Vault Crypto Service Encryption User",
///     principalId: exampleDiskEncryptionSet.identity.principalId,
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
///     name="des-example-keyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     enabled_for_disk_encryption=True,
///     purge_protection_enabled=True)
/// example_user = azure.keyvault.AccessPolicy("example-user",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="des-example-key",
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
///     opts = pulumi.ResourceOptions(depends_on=[example_user]))
/// example_disk_encryption_set = azure.compute.DiskEncryptionSet("example",
///     name="des",
///     resource_group_name=example.name,
///     location=example.location,
///     key_vault_key_id=example_key.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_disk = azure.keyvault.AccessPolicy("example-disk",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_disk_encryption_set.identity.tenant_id,
///     object_id=example_disk_encryption_set.identity.principal_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ])
/// example_disk_assignment = azure.authorization.Assignment("example-disk",
///     scope=example_key_vault.id,
///     role_definition_name="Key Vault Crypto Service Encryption User",
///     principal_id=example_disk_encryption_set.identity.principal_id)
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
///         Name = "des-example-keyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         EnabledForDiskEncryption = true,
///         PurgeProtectionEnabled = true,
///     });
///
///     var example_user = new Azure.KeyVault.AccessPolicy("example-user", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "des-example-key",
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
///             example_user,
///         },
///     });
///
///     var exampleDiskEncryptionSet = new Azure.Compute.DiskEncryptionSet("example", new()
///     {
///         Name = "des",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         KeyVaultKeyId = exampleKey.Id,
///         Identity = new Azure.Compute.Inputs.DiskEncryptionSetIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var example_disk = new Azure.KeyVault.AccessPolicy("example-disk", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.TenantId),
///         ObjectId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///         },
///     });
///
///     var example_diskAssignment = new Azure.Authorization.Assignment("example-disk", new()
///     {
///         Scope = exampleKeyVault.Id,
///         RoleDefinitionName = "Key Vault Crypto Service Encryption User",
///         PrincipalId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.PrincipalId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 			Name:                     pulumi.String("des-example-keyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_user, err := keyvault.NewAccessPolicy(ctx, "example-user", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("des-example-key"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
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
/// 			example_user,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDiskEncryptionSet, err := compute.NewDiskEncryptionSet(ctx, "example", &compute.DiskEncryptionSetArgs{
/// 			Name:              pulumi.String("des"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			KeyVaultKeyId:     exampleKey.ID().ToIDOutput().ToStringOutput(),
/// 			Identity: &compute.DiskEncryptionSetIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "example-disk", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   exampleDiskEncryptionSet.Identity.TenantId(),
/// 			ObjectId:   exampleDiskEncryptionSet.Identity.PrincipalId(),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example-disk", &authorization.AssignmentArgs{
/// 			Scope:              exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Key Vault Crypto Service Encryption User"),
/// 			PrincipalId:        exampleDiskEncryptionSet.Identity.PrincipalId(),
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
/// resource "azure_keyvault_keyvault" "example" {
///   name                        = "des-example-keyvault"
///   location                    = azure_core_resourcegroup.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled  = false
///   tenant_id                   = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                    = "premium"
///   enabled_for_disk_encryption = true
///   purge_protection_enabled    = true
/// }
/// resource "azure_keyvault_key" "example" {
///   depends_on   = [azure_keyvault_accesspolicy.example-user]
///   name         = "des-example-key"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_type     = "RSA"
///   key_size     = 2048
///   key_opts     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
/// }
/// resource "azure_compute_diskencryptionset" "example" {
///   name                = "des"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   key_vault_key_id    = azure_keyvault_key.example.id
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_keyvault_accesspolicy" "example-disk" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = azure_compute_diskencryptionset.example.identity.tenant_id
///   object_id       = azure_compute_diskencryptionset.example.identity.principal_id
///   key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "List", "Decrypt", "Sign"]
/// }
/// resource "azure_keyvault_accesspolicy" "example-user" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///   object_id       = data.azure_core_getclientconfig.current.object_id
///   key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "List", "Decrypt", "Sign", "GetRotationPolicy"]
/// }
/// resource "azure_authorization_assignment" "example-disk" {
///   scope                = azure_keyvault_keyvault.example.id
///   role_definition_name = "Key Vault Crypto Service Encryption User"
///   principal_id         = azure_compute_diskencryptionset.example.identity.principal_id
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
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.compute.DiskEncryptionSet;
/// import com.pulumi.azure.compute.DiskEncryptionSetArgs;
/// import com.pulumi.azure.compute.inputs.DiskEncryptionSetIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("des-example-keyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .enabledForDiskEncryption(true)
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var example_user = new AccessPolicy("example-user", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("des-example-key")
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
///                 .dependsOn(example_user)
///                 .build());
///
///         var exampleDiskEncryptionSet = new DiskEncryptionSet("exampleDiskEncryptionSet", DiskEncryptionSetArgs.builder()
///             .name("des")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .keyVaultKeyId(exampleKey.id())
///             .identity(DiskEncryptionSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var example_disk = new AccessPolicy("example-disk", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign")
///             .build());
///
///         var example_diskAssignment = new Assignment("example-diskAssignment", AssignmentArgs.builder()
///             .scope(exampleKeyVault.id())
///             .roleDefinitionName("Key Vault Crypto Service Encryption User")
///             .principalId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.principalId()))
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
///       name: des-example-keyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: premium
///       enabledForDiskEncryption: true
///       purgeProtectionEnabled: true
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: des-example-key
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
///         - ${["example-user"]}
///   exampleDiskEncryptionSet:
///     type: azure:compute:DiskEncryptionSet
///     name: example
///     properties:
///       name: des
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       keyVaultKeyId: ${exampleKey.id}
///       identity:
///         type: SystemAssigned
///   example-disk:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleDiskEncryptionSet.identity.tenantId}
///       objectId: ${exampleDiskEncryptionSet.identity.principalId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///   example-user:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///         - GetRotationPolicy
///   example-diskAssignment:
///     type: azure:authorization:Assignment
///     name: example-disk
///     properties:
///       scope: ${exampleKeyVault.id}
///       roleDefinitionName: Key Vault Crypto Service Encryption User
///       principalId: ${exampleDiskEncryptionSet.identity.principalId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### With Automatic Key Rotation Enabled
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
///     name: "des-example-keyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     enabledForDiskEncryption: true,
///     purgeProtectionEnabled: true,
/// });
/// const example_user = new azure.keyvault.AccessPolicy("example-user", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "des-example-key",
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
///     dependsOn: [example_user],
/// });
/// const exampleDiskEncryptionSet = new azure.compute.DiskEncryptionSet("example", {
///     name: "des",
///     resourceGroupName: example.name,
///     location: example.location,
///     keyVaultKeyId: exampleKey.versionlessId,
///     autoKeyRotationEnabled: true,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const example_disk = new azure.keyvault.AccessPolicy("example-disk", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleDiskEncryptionSet.identity.tenantId,
///     objectId: exampleDiskEncryptionSet.identity.principalId,
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ],
/// });
/// const example_diskAssignment = new azure.authorization.Assignment("example-disk", {
///     scope: exampleKeyVault.id,
///     roleDefinitionName: "Key Vault Crypto Service Encryption User",
///     principalId: exampleDiskEncryptionSet.identity.principalId,
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
///     name="des-example-keyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     enabled_for_disk_encryption=True,
///     purge_protection_enabled=True)
/// example_user = azure.keyvault.AccessPolicy("example-user",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="des-example-key",
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
///     opts = pulumi.ResourceOptions(depends_on=[example_user]))
/// example_disk_encryption_set = azure.compute.DiskEncryptionSet("example",
///     name="des",
///     resource_group_name=example.name,
///     location=example.location,
///     key_vault_key_id=example_key.versionless_id,
///     auto_key_rotation_enabled=True,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_disk = azure.keyvault.AccessPolicy("example-disk",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_disk_encryption_set.identity.tenant_id,
///     object_id=example_disk_encryption_set.identity.principal_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ])
/// example_disk_assignment = azure.authorization.Assignment("example-disk",
///     scope=example_key_vault.id,
///     role_definition_name="Key Vault Crypto Service Encryption User",
///     principal_id=example_disk_encryption_set.identity.principal_id)
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
///         Name = "des-example-keyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         EnabledForDiskEncryption = true,
///         PurgeProtectionEnabled = true,
///     });
///
///     var example_user = new Azure.KeyVault.AccessPolicy("example-user", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "des-example-key",
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
///             example_user,
///         },
///     });
///
///     var exampleDiskEncryptionSet = new Azure.Compute.DiskEncryptionSet("example", new()
///     {
///         Name = "des",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         KeyVaultKeyId = exampleKey.VersionlessId,
///         AutoKeyRotationEnabled = true,
///         Identity = new Azure.Compute.Inputs.DiskEncryptionSetIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var example_disk = new Azure.KeyVault.AccessPolicy("example-disk", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.TenantId),
///         ObjectId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///         },
///     });
///
///     var example_diskAssignment = new Azure.Authorization.Assignment("example-disk", new()
///     {
///         Scope = exampleKeyVault.Id,
///         RoleDefinitionName = "Key Vault Crypto Service Encryption User",
///         PrincipalId = exampleDiskEncryptionSet.Identity.Apply(identity => identity.PrincipalId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 			Name:                     pulumi.String("des-example-keyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_user, err := keyvault.NewAccessPolicy(ctx, "example-user", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("des-example-key"),
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
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
/// 			example_user,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDiskEncryptionSet, err := compute.NewDiskEncryptionSet(ctx, "example", &compute.DiskEncryptionSetArgs{
/// 			Name:                   pulumi.String("des"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			KeyVaultKeyId:          exampleKey.VersionlessId,
/// 			AutoKeyRotationEnabled: pulumi.Bool(true),
/// 			Identity: &compute.DiskEncryptionSetIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "example-disk", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   exampleDiskEncryptionSet.Identity.TenantId(),
/// 			ObjectId:   exampleDiskEncryptionSet.Identity.PrincipalId(),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example-disk", &authorization.AssignmentArgs{
/// 			Scope:              exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Key Vault Crypto Service Encryption User"),
/// 			PrincipalId:        exampleDiskEncryptionSet.Identity.PrincipalId(),
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
/// resource "azure_keyvault_keyvault" "example" {
///   name                        = "des-example-keyvault"
///   location                    = azure_core_resourcegroup.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled  = false
///   tenant_id                   = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                    = "premium"
///   enabled_for_disk_encryption = true
///   purge_protection_enabled    = true
/// }
/// resource "azure_keyvault_key" "example" {
///   depends_on   = [azure_keyvault_accesspolicy.example-user]
///   name         = "des-example-key"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_type     = "RSA"
///   key_size     = 2048
///   key_opts     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
/// }
/// resource "azure_compute_diskencryptionset" "example" {
///   name                      = "des"
///   resource_group_name       = azure_core_resourcegroup.example.name
///   location                  = azure_core_resourcegroup.example.location
///   key_vault_key_id          = azure_keyvault_key.example.versionless_id
///   auto_key_rotation_enabled = true
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_keyvault_accesspolicy" "example-disk" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = azure_compute_diskencryptionset.example.identity.tenant_id
///   object_id       = azure_compute_diskencryptionset.example.identity.principal_id
///   key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "List", "Decrypt", "Sign"]
/// }
/// resource "azure_keyvault_accesspolicy" "example-user" {
///   key_vault_id    = azure_keyvault_keyvault.example.id
///   tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///   object_id       = data.azure_core_getclientconfig.current.object_id
///   key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "List", "Decrypt", "Sign", "GetRotationPolicy"]
/// }
/// resource "azure_authorization_assignment" "example-disk" {
///   scope                = azure_keyvault_keyvault.example.id
///   role_definition_name = "Key Vault Crypto Service Encryption User"
///   principal_id         = azure_compute_diskencryptionset.example.identity.principal_id
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
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.compute.DiskEncryptionSet;
/// import com.pulumi.azure.compute.DiskEncryptionSetArgs;
/// import com.pulumi.azure.compute.inputs.DiskEncryptionSetIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("des-example-keyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .enabledForDiskEncryption(true)
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var example_user = new AccessPolicy("example-user", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("des-example-key")
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
///                 .dependsOn(example_user)
///                 .build());
///
///         var exampleDiskEncryptionSet = new DiskEncryptionSet("exampleDiskEncryptionSet", DiskEncryptionSetArgs.builder()
///             .name("des")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .keyVaultKeyId(exampleKey.versionlessId())
///             .autoKeyRotationEnabled(true)
///             .identity(DiskEncryptionSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var example_disk = new AccessPolicy("example-disk", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign")
///             .build());
///
///         var example_diskAssignment = new Assignment("example-diskAssignment", AssignmentArgs.builder()
///             .scope(exampleKeyVault.id())
///             .roleDefinitionName("Key Vault Crypto Service Encryption User")
///             .principalId(exampleDiskEncryptionSet.identity().applyValue(_identity -> _identity.principalId()))
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
///       name: des-example-keyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: premium
///       enabledForDiskEncryption: true
///       purgeProtectionEnabled: true
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: des-example-key
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
///         - ${["example-user"]}
///   exampleDiskEncryptionSet:
///     type: azure:compute:DiskEncryptionSet
///     name: example
///     properties:
///       name: des
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       keyVaultKeyId: ${exampleKey.versionlessId}
///       autoKeyRotationEnabled: true
///       identity:
///         type: SystemAssigned
///   example-disk:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleDiskEncryptionSet.identity.tenantId}
///       objectId: ${exampleDiskEncryptionSet.identity.principalId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///   example-user:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///         - GetRotationPolicy
///   example-diskAssignment:
///     type: azure:authorization:Assignment
///     name: example-disk
///     properties:
///       scope: ${exampleKeyVault.id}
///       roleDefinitionName: Key Vault Crypto Service Encryption User
///       principalId: ${exampleDiskEncryptionSet.identity.principalId}
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
///
/// ## Import
///
/// Disk Encryption Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/diskEncryptionSet:DiskEncryptionSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/diskEncryptionSets/encryptionSet1
/// ```
class DiskEncryptionSet extends pulumi.CustomResource {
  /// Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** When `autoKeyRotationEnabled` is set to `true` the `keyVaultKeyId` or `managedHsmKeyId` must use the `versionlessId`.
  ///
  /// &gt; **Note:** To validate which Key Vault Key version is currently being used by the service it is recommended that you use the `azure.compute.DiskEncryptionSet` data source or run a `terraform refresh` command and check the value of the exported `keyVaultKeyUrl` or `managedHsmKeyId` field.
  ///
  /// &gt; **Note:** It may take between 10 to 20 minutes for the service to update the Key Vault Key URL once the keys have been rotated.
  late final pulumi.Output<bool?> autoKeyRotationEnabled;
  /// The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> encryptionType;
  /// Multi-tenant application client id to access key vault in a different tenant.
  late final pulumi.Output<String?> federatedClientId;
  /// An `identity` block as defined below.
  late final pulumi.Output<DiskEncryptionSetIdentity> identity;
  /// Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  ///
  /// &gt; **Note:** Access to the KeyVault must be granted for this Disk Encryption Set, if you want to further use this Disk Encryption Set in a Managed Disk or Virtual Machine, or Virtual Machine Scale Set. For instructions, please refer to the doc of [Server side encryption of Azure managed disks](https://docs.microsoft.com/azure/virtual-machines/linux/disk-encryption).
  ///
  /// &gt; **Note:** A KeyVault or Managed HSM using enableRbacAuthorization requires to use `azure.authorization.Assignment` to assign the role `Key Vault Crypto Service Encryption User` to this Disk Encryption Set.
  /// In this case, `azure.keyvault.AccessPolicy` is not needed.
  late final pulumi.Output<String> keyVaultKeyId;
  /// The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  late final pulumi.Output<String> keyVaultKeyUrl;
  /// Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Key ID of a key in a managed HSM. Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  late final pulumi.Output<String> managedHsmKeyId;
  /// The name of the Disk Encryption Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the Disk Encryption Set.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DiskEncryptionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskEncryptionSet]. {@macro pulumi_compute_disk_encryption_set_disk_encryption_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskEncryptionSet(
    String name, {
    DiskEncryptionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/diskEncryptionSet:DiskEncryptionSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    autoKeyRotationEnabled = registerOutput<bool?>('autoKeyRotationEnabled');
    encryptionType = registerOutput<String?>('encryptionType');
    federatedClientId = registerOutput<String?>('federatedClientId');
    identity = registerOutput<DiskEncryptionSetIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskEncryptionSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    keyVaultKeyUrl = registerOutput<String>('keyVaultKeyUrl');
    location = registerOutput<String>('location');
    managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DiskEncryptionSet] resource's state with the given [name] and [id].
  static DiskEncryptionSet get(
    String name,
    pulumi.Input<String> id, {
    DiskEncryptionSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DiskEncryptionSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DiskEncryptionSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/diskEncryptionSet:DiskEncryptionSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoKeyRotationEnabled = registerOutput<bool?>('autoKeyRotationEnabled');
    encryptionType = registerOutput<String?>('encryptionType');
    federatedClientId = registerOutput<String?>('federatedClientId');
    identity = registerOutput<DiskEncryptionSetIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskEncryptionSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    keyVaultKeyUrl = registerOutput<String>('keyVaultKeyUrl');
    location = registerOutput<String>('location');
    managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DiskEncryptionSet] resource.
  DiskEncryptionSet.reference(String urn)
    : super(
        'azure:compute/diskEncryptionSet:DiskEncryptionSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoKeyRotationEnabled = registerOutput<bool?>('autoKeyRotationEnabled');
    encryptionType = registerOutput<String?>('encryptionType');
    federatedClientId = registerOutput<String?>('federatedClientId');
    identity = registerOutput<DiskEncryptionSetIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiskEncryptionSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    keyVaultKeyUrl = registerOutput<String>('keyVaultKeyUrl');
    location = registerOutput<String>('location');
    managedHsmKeyId = registerOutput<String>('managedHsmKeyId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
