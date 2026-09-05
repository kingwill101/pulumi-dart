import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_store_args.dart';
import 'configuration_store_encryption.dart';
import 'configuration_store_identity.dart';
import 'configuration_store_primary_read_key.dart';
import 'configuration_store_primary_write_key.dart';
import 'configuration_store_replica.dart';
import 'configuration_store_secondary_read_key.dart';
import 'configuration_store_secondary_write_key.dart';
import 'configuration_store_state.dart';

/// Manages an Azure App Configuration.
///
/// ## Disclaimers
///
/// &gt; **Note:** Version 3.27.0 and later of the Azure Provider include a Feature Toggle which will purge an App Configuration resource on destroy, rather than the default soft-delete. The Provider will automatically recover a soft-deleted App Configuration during creation if one is found. See the Features block documentation for more information on Feature Toggles within Terraform.
///
/// &gt; **Note:** Reading and purging soft-deleted App Configurations requires the `Microsoft.AppConfiguration/locations/deletedConfigurationStores/read` and `Microsoft.AppConfiguration/locations/deletedConfigurationStores/purge/action` permission on Subscription scope. Recovering a soft-deleted App Configuration requires the `Microsoft.AppConfiguration/configurationStores/write` permission on Subscription or Resource Group scope. [More information can be found in the Azure Documentation for App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-soft-delete#permissions-to-recover-a-deleted-store). See the following links for more information on assigning [Azure custom roles](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles) or using the `azure.authorization.Assignment` resource to assign a custom role.
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
/// const appconf = new azure.appconfiguration.ConfigurationStore("appconf", {
///     name: "appConf1",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// appconf = azure.appconfiguration.ConfigurationStore("appconf",
///     name="appConf1",
///     resource_group_name=example.name,
///     location=example.location)
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
///     var appconf = new Azure.AppConfiguration.ConfigurationStore("appconf", new()
///     {
///         Name = "appConf1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = appconfiguration.NewConfigurationStore(ctx, "appconf", &appconfiguration.ConfigurationStoreArgs{
/// 			Name:              pulumi.String("appConf1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// resource "azure_appconfiguration_configurationstore" "appconf" {
///   name                = "appConf1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
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
/// import com.pulumi.azure.appconfiguration.ConfigurationStore;
/// import com.pulumi.azure.appconfiguration.ConfigurationStoreArgs;
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
///         var appconf = new ConfigurationStore("appconf", ConfigurationStoreArgs.builder()
///             .name("appConf1")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   appconf:
///     type: azure:appconfiguration:ConfigurationStore
///     properties:
///       name: appConf1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
///
/// ### Encryption)
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-identity",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "exampleKVt123",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: true,
/// });
/// const server = new azure.keyvault.AccessPolicy("server", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: exampleUserAssignedIdentity.principalId,
///     keyPermissions: [
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secretPermissions: ["Get"],
/// });
/// const client = new azure.keyvault.AccessPolicy("client", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
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
///     ],
///     secretPermissions: ["Get"],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "exampleKVkey",
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
///         server,
///     ],
/// });
/// const exampleConfigurationStore = new azure.appconfiguration.ConfigurationStore("example", {
///     name: "appConf2",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
///     localAuthEnabled: true,
///     publicNetworkAccess: "Enabled",
///     purgeProtectionEnabled: false,
///     softDeleteRetentionDays: 1,
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     encryption: {
///         keyVaultKeyIdentifier: exampleKey.id,
///         identityClientId: exampleUserAssignedIdentity.clientId,
///     },
///     replicas: [{
///         name: "replica1",
///         location: "West US",
///     }],
///     tags: {
///         environment: "development",
///     },
/// }, {
///     dependsOn: [
///         client,
///         server,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-identity",
///     location=example.location,
///     resource_group_name=example.name)
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="exampleKVt123",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7,
///     purge_protection_enabled=True)
/// server = azure.keyvault.AccessPolicy("server",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=example_user_assigned_identity.principal_id,
///     key_permissions=[
///         "Get",
///         "UnwrapKey",
///         "WrapKey",
///     ],
///     secret_permissions=["Get"])
/// client = azure.keyvault.AccessPolicy("client",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
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
///     ],
///     secret_permissions=["Get"])
/// example_key = azure.keyvault.Key("example",
///     name="exampleKVkey",
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
///             server,
///         ]))
/// example_configuration_store = azure.appconfiguration.ConfigurationStore("example",
///     name="appConf2",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard",
///     local_auth_enabled=True,
///     public_network_access="Enabled",
///     purge_protection_enabled=False,
///     soft_delete_retention_days=1,
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     encryption={
///         "key_vault_key_identifier": example_key.id,
///         "identity_client_id": example_user_assigned_identity.client_id,
///     },
///     replicas=[{
///         "name": "replica1",
///         "location": "West US",
///     }],
///     tags={
///         "environment": "development",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             client,
///             server,
///         ]))
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-identity",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "exampleKVt123",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = true,
///     });
///
///     var server = new Azure.KeyVault.AccessPolicy("server", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = exampleUserAssignedIdentity.PrincipalId,
///         KeyPermissions = new[]
///         {
///             "Get",
///             "UnwrapKey",
///             "WrapKey",
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var client = new Azure.KeyVault.AccessPolicy("client", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
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
///         },
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "exampleKVkey",
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
///             server,
///         },
///     });
///
///     var exampleConfigurationStore = new Azure.AppConfiguration.ConfigurationStore("example", new()
///     {
///         Name = "appConf2",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///         LocalAuthEnabled = true,
///         PublicNetworkAccess = "Enabled",
///         PurgeProtectionEnabled = false,
///         SoftDeleteRetentionDays = 1,
///         Identity = new Azure.AppConfiguration.Inputs.ConfigurationStoreIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         Encryption = new Azure.AppConfiguration.Inputs.ConfigurationStoreEncryptionArgs
///         {
///             KeyVaultKeyIdentifier = exampleKey.Id,
///             IdentityClientId = exampleUserAssignedIdentity.ClientId,
///         },
///         Replicas = new[]
///         {
///             new Azure.AppConfiguration.Inputs.ConfigurationStoreReplicaArgs
///             {
///                 Name = "replica1",
///                 Location = "West US",
///             },
///         },
///         Tags =
///         {
///             { "environment", "development" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             client,
///             server,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-identity"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("exampleKVt123"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("standard"),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		server, err := keyvault.NewAccessPolicy(ctx, "server", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   exampleUserAssignedIdentity.PrincipalId,
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("UnwrapKey"),
/// 				pulumi.String("WrapKey"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := keyvault.NewAccessPolicy(ctx, "client", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
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
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("exampleKVkey"),
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
/// 			client,
/// 			server,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewConfigurationStore(ctx, "example", &appconfiguration.ConfigurationStoreArgs{
/// 			Name:                    pulumi.String("appConf2"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			Sku:                     pulumi.String("standard"),
/// 			LocalAuthEnabled:        pulumi.Bool(true),
/// 			PublicNetworkAccess:     pulumi.String("Enabled"),
/// 			PurgeProtectionEnabled:  pulumi.Bool(false),
/// 			SoftDeleteRetentionDays: pulumi.Int(1),
/// 			Identity: &appconfiguration.ConfigurationStoreIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Encryption: &appconfiguration.ConfigurationStoreEncryptionArgs{
/// 				KeyVaultKeyIdentifier: exampleKey.ID().ToIDOutput().ToStringOutput(),
/// 				IdentityClientId:      exampleUserAssignedIdentity.ClientId,
/// 			},
/// 			Replicas: appconfiguration.ConfigurationStoreReplicaArray{
/// 				&appconfiguration.ConfigurationStoreReplicaArgs{
/// 					Name:     pulumi.String("replica1"),
/// 					Location: pulumi.String("West US"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("development"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			client,
/// 			server,
/// 		}))
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
/// resource "azure_authorization_userassignedidentity" "example" {
///   name                = "example-identity"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "exampleKVt123"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "standard"
///   soft_delete_retention_days = 7
///   purge_protection_enabled   = true
/// }
/// resource "azure_keyvault_accesspolicy" "server" {
///   key_vault_id       = azure_keyvault_keyvault.example.id
///   tenant_id          = data.azure_core_getclientconfig.current.tenant_id
///   object_id          = azure_authorization_userassignedidentity.example.principal_id
///   key_permissions    = ["Get", "UnwrapKey", "WrapKey"]
///   secret_permissions = ["Get"]
/// }
/// resource "azure_keyvault_accesspolicy" "client" {
///   key_vault_id       = azure_keyvault_keyvault.example.id
///   tenant_id          = data.azure_core_getclientconfig.current.tenant_id
///   object_id          = data.azure_core_getclientconfig.current.object_id
///   key_permissions    = ["Get", "Create", "Delete", "List", "Restore", "Recover", "UnwrapKey", "WrapKey", "Purge", "Encrypt", "Decrypt", "Sign", "Verify", "GetRotationPolicy"]
///   secret_permissions = ["Get"]
/// }
/// resource "azure_keyvault_key" "example" {
///   depends_on   = [azure_keyvault_accesspolicy.client, azure_keyvault_accesspolicy.server]
///   name         = "exampleKVkey"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_type     = "RSA"
///   key_size     = 2048
///   key_opts     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
/// }
/// resource "azure_appconfiguration_configurationstore" "example" {
///   depends_on                 = [azure_keyvault_accesspolicy.client, azure_keyvault_accesspolicy.server]
///   name                       = "appConf2"
///   resource_group_name        = azure_core_resourcegroup.example.name
///   location                   = azure_core_resourcegroup.example.location
///   sku                        = "standard"
///   local_auth_enabled         = true
///   public_network_access      = "Enabled"
///   purge_protection_enabled   = false
///   soft_delete_retention_days = 1
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
///   encryption = {
///     key_vault_key_identifier = azure_keyvault_key.example.id
///     identity_client_id       = azure_authorization_userassignedidentity.example.client_id
///   }
///   replicas {
///     name     = "replica1"
///     location = "West US"
///   }
///   tags = {
///     "environment" = "development"
///   }
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.appconfiguration.ConfigurationStore;
/// import com.pulumi.azure.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azure.appconfiguration.inputs.ConfigurationStoreIdentityArgs;
/// import com.pulumi.azure.appconfiguration.inputs.ConfigurationStoreEncryptionArgs;
/// import com.pulumi.azure.appconfiguration.inputs.ConfigurationStoreReplicaArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-identity")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("exampleKVt123")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var server = new AccessPolicy("server", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(exampleUserAssignedIdentity.principalId())
///             .keyPermissions(
///                 "Get",
///                 "UnwrapKey",
///                 "WrapKey")
///             .secretPermissions("Get")
///             .build());
///
///         var client = new AccessPolicy("client", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
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
///                 "GetRotationPolicy")
///             .secretPermissions("Get")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("exampleKVkey")
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
///                     server)
///                 .build());
///
///         var exampleConfigurationStore = new ConfigurationStore("exampleConfigurationStore", ConfigurationStoreArgs.builder()
///             .name("appConf2")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .localAuthEnabled(true)
///             .publicNetworkAccess("Enabled")
///             .purgeProtectionEnabled(false)
///             .softDeleteRetentionDays(1)
///             .identity(ConfigurationStoreIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .encryption(ConfigurationStoreEncryptionArgs.builder()
///                 .keyVaultKeyIdentifier(exampleKey.id())
///                 .identityClientId(exampleUserAssignedIdentity.clientId())
///                 .build())
///             .replicas(ConfigurationStoreReplicaArgs.builder()
///                 .name("replica1")
///                 .location("West US")
///                 .build())
///             .tags(Map.of("environment", "development"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     client,
///                     server)
///                 .build());
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
///       name: example-identity
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: exampleKVt123
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: true
///   server:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${exampleUserAssignedIdentity.principalId}
///       keyPermissions:
///         - Get
///         - UnwrapKey
///         - WrapKey
///       secretPermissions:
///         - Get
///   client:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
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
///       secretPermissions:
///         - Get
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: exampleKVkey
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
///         - ${server}
///   exampleConfigurationStore:
///     type: azure:appconfiguration:ConfigurationStore
///     name: example
///     properties:
///       name: appConf2
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///       localAuthEnabled: true
///       publicNetworkAccess: Enabled
///       purgeProtectionEnabled: false
///       softDeleteRetentionDays: 1
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       encryption:
///         keyVaultKeyIdentifier: ${exampleKey.id}
///         identityClientId: ${exampleUserAssignedIdentity.clientId}
///       replicas:
///         - name: replica1
///           location: West US
///       tags:
///         environment: development
///     options:
///       dependsOn:
///         - ${client}
///         - ${server}
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
/// * `Microsoft.AppConfiguration` - 2024-05-01
///
/// ## Import
///
/// App Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/configurationStore:ConfigurationStore appconf /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppConfiguration/configurationStores/appConf1
/// ```
class ConfigurationStore extends pulumi.CustomResource {
  /// The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  late final pulumi.Output<String?> dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** `dataPlaneProxyPrivateLinkDelegationEnabled` cannot be set to `true` when `dataPlaneProxyAuthenticationMode` is set to `Local`.
  late final pulumi.Output<bool?> dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  late final pulumi.Output<ConfigurationStoreEncryption?> encryption;
  /// The URL of the App Configuration Replica.
  late final pulumi.Output<String> endpoint;
  /// An `identity` block as defined below.
  late final pulumi.Output<ConfigurationStoreIdentity?> identity;
  /// Whether local authentication methods is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `primaryReadKey` block as defined below containing the primary read access key.
  late final pulumi.Output<List<ConfigurationStorePrimaryReadKey>> primaryReadKeys;
  /// A `primaryWriteKey` block as defined below containing the primary write access key.
  late final pulumi.Output<List<ConfigurationStorePrimaryWriteKey>> primaryWriteKeys;
  /// The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  ///
  /// &gt; **Note:** If `publicNetworkAccess` is not specified, the App Configuration will be created as  `Automatic`. However, once a different value is defined, can not be set again as automatic.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  ///
  /// &gt; **Note:** Once Purge Protection has been enabled it's not possible to disable it. Deleting the App Configuration with Purge Protection enabled will schedule the App Configuration to be deleted (which will happen by Azure in the configured number of days).
  late final pulumi.Output<bool?> purgeProtectionEnabled;
  /// One or more `replica` blocks as defined below.
  late final pulumi.Output<List<ConfigurationStoreReplica>?> replicas;
  /// The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `secondaryReadKey` block as defined below containing the secondary read access key.
  late final pulumi.Output<List<ConfigurationStoreSecondaryReadKey>> secondaryReadKeys;
  /// A `secondaryWriteKey` block as defined below containing the secondary write access key.
  late final pulumi.Output<List<ConfigurationStoreSecondaryWriteKey>> secondaryWriteKeys;
  /// The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  ///
  /// &gt; **Note:** Azure does not support downgrading `sku` to a lower tier, except from `premium` to `standard`. Downgrading will force a new resource to be created.
  late final pulumi.Output<String?> sku;
  /// The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If Purge Protection is enabled, this field can only be configured one time and cannot be updated.
  late final pulumi.Output<int?> softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ConfigurationStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationStore]. {@macro pulumi_appconfiguration_configuration_store_configuration_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationStore(
    String name, {
    ConfigurationStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/configurationStore:ConfigurationStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    dataPlaneProxyAuthenticationMode = registerOutput<String?>('dataPlaneProxyAuthenticationMode');
    dataPlaneProxyPrivateLinkDelegationEnabled = registerOutput<bool?>('dataPlaneProxyPrivateLinkDelegationEnabled');
    encryption = registerOutput<ConfigurationStoreEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    identity = registerOutput<ConfigurationStoreIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryReadKeys = registerOutput<List<ConfigurationStorePrimaryReadKey>>('primaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryReadKey>(guardedValue, (value) => ConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    primaryWriteKeys = registerOutput<List<ConfigurationStorePrimaryWriteKey>>('primaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryWriteKey>(guardedValue, (value) => ConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    replicas = registerOutput<List<ConfigurationStoreReplica>?>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreReplica>(guardedValue, (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryReadKeys = registerOutput<List<ConfigurationStoreSecondaryReadKey>>('secondaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryReadKey>(guardedValue, (value) => ConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    secondaryWriteKeys = registerOutput<List<ConfigurationStoreSecondaryWriteKey>>('secondaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryWriteKey>(guardedValue, (value) => ConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ConfigurationStore] resource's state with the given [name] and [id].
  static ConfigurationStore get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigurationStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigurationStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/configurationStore:ConfigurationStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataPlaneProxyAuthenticationMode = registerOutput<String?>('dataPlaneProxyAuthenticationMode');
    dataPlaneProxyPrivateLinkDelegationEnabled = registerOutput<bool?>('dataPlaneProxyPrivateLinkDelegationEnabled');
    encryption = registerOutput<ConfigurationStoreEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    identity = registerOutput<ConfigurationStoreIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryReadKeys = registerOutput<List<ConfigurationStorePrimaryReadKey>>('primaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryReadKey>(guardedValue, (value) => ConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    primaryWriteKeys = registerOutput<List<ConfigurationStorePrimaryWriteKey>>('primaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryWriteKey>(guardedValue, (value) => ConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    replicas = registerOutput<List<ConfigurationStoreReplica>?>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreReplica>(guardedValue, (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryReadKeys = registerOutput<List<ConfigurationStoreSecondaryReadKey>>('secondaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryReadKey>(guardedValue, (value) => ConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    secondaryWriteKeys = registerOutput<List<ConfigurationStoreSecondaryWriteKey>>('secondaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryWriteKey>(guardedValue, (value) => ConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ConfigurationStore] resource.
  ConfigurationStore.reference(String urn)
    : super(
        'azure:appconfiguration/configurationStore:ConfigurationStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataPlaneProxyAuthenticationMode = registerOutput<String?>('dataPlaneProxyAuthenticationMode');
    dataPlaneProxyPrivateLinkDelegationEnabled = registerOutput<bool?>('dataPlaneProxyPrivateLinkDelegationEnabled');
    encryption = registerOutput<ConfigurationStoreEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    identity = registerOutput<ConfigurationStoreIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationStoreIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryReadKeys = registerOutput<List<ConfigurationStorePrimaryReadKey>>('primaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryReadKey>(guardedValue, (value) => ConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    primaryWriteKeys = registerOutput<List<ConfigurationStorePrimaryWriteKey>>('primaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStorePrimaryWriteKey>(guardedValue, (value) => ConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purgeProtectionEnabled = registerOutput<bool?>('purgeProtectionEnabled');
    replicas = registerOutput<List<ConfigurationStoreReplica>?>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreReplica>(guardedValue, (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryReadKeys = registerOutput<List<ConfigurationStoreSecondaryReadKey>>('secondaryReadKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryReadKey>(guardedValue, (value) => ConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>())); });
    secondaryWriteKeys = registerOutput<List<ConfigurationStoreSecondaryWriteKey>>('secondaryWriteKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationStoreSecondaryWriteKey>(guardedValue, (value) => ConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<String?>('sku');
    softDeleteRetentionDays = registerOutput<int?>('softDeleteRetentionDays');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
