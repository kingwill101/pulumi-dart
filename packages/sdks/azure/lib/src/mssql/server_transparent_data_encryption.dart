import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_transparent_data_encryption_args.dart';
import 'server_transparent_data_encryption_state.dart';

/// Manages the transparent data encryption configuration for a MSSQL Server
///
/// &gt; **Note:** This resource can be used to configure Transparent Data Encryption for MS SQL instances with Customer Managed Keys. For MS SQL instances that are System Managed, it should only be used with pre-existing MS SQL Instances that are over 3 years old. For new System Managed MS SQL Instances that will be created through the use of the `azure.mssql.Server` resource, please enable Transparent Data Encryption through `azure.mssql.Server` resource itself by configuring an identity block. By default, all new MS SQL Instances are deployed with System Managed Transparent Data Encryption enabled.
///
/// &gt; **Note:** Once transparent data encryption is enabled on a MS SQL instance, it is not possible to remove TDE. You will be able to switch between 'ServiceManaged' and 'CustomerManaged' keys, but will not be able to remove encryption. For safety when this resource is deleted, the TDE mode will automatically be set to 'ServiceManaged'. As SQL Server only supports a single configuration for encryption settings, this resource will replace the current encryption settings on the server.
///
/// &gt; **Note:** See [documentation](https://docs.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview) for important information on how handle lifecycle management of the keys to prevent data lockout.
///
/// ## Example Usage
///
/// ### With Service Managed Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "EastUs",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "mssqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "thisIsKat11",
///     minimumTlsVersion: "1.2",
///     azureadAdministrator: {
///         loginUsername: "AzureAD Admin",
///         objectId: "00000000-0000-0000-0000-000000000000",
///     },
///     tags: {
///         environment: "production",
///     },
/// });
/// const exampleServerTransparentDataEncryption = new azure.mssql.ServerTransparentDataEncryption("example", {serverId: exampleServer.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="EastUs")
/// example_server = azure.mssql.Server("example",
///     name="mssqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="thisIsKat11",
///     minimum_tls_version="1.2",
///     azuread_administrator={
///         "login_username": "AzureAD Admin",
///         "object_id": "00000000-0000-0000-0000-000000000000",
///     },
///     tags={
///         "environment": "production",
///     })
/// example_server_transparent_data_encryption = azure.mssql.ServerTransparentDataEncryption("example", server_id=example_server.id)
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
///         Location = "EastUs",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "mssqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "thisIsKat11",
///         MinimumTlsVersion = "1.2",
///         AzureadAdministrator = new Azure.MSSql.Inputs.ServerAzureadAdministratorArgs
///         {
///             LoginUsername = "AzureAD Admin",
///             ObjectId = "00000000-0000-0000-0000-000000000000",
///         },
///         Tags =
///         {
///             { "environment", "production" },
///         },
///     });
///
///     var exampleServerTransparentDataEncryption = new Azure.MSSql.ServerTransparentDataEncryption("example", new()
///     {
///         ServerId = exampleServer.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("EastUs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("mssqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsKat11"),
/// 			MinimumTlsVersion:          pulumi.String("1.2"),
/// 			AzureadAdministrator: &mssql.ServerAzureadAdministratorArgs{
/// 				LoginUsername: pulumi.String("AzureAD Admin"),
/// 				ObjectId:      pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerTransparentDataEncryption(ctx, "example", &mssql.ServerTransparentDataEncryptionArgs{
/// 			ServerId: exampleServer.ID(),
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
///   location = "EastUs"
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "mssqlserver"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   version                      = "12.0"
///   administrator_login          = "missadministrator"
///   administrator_login_password = "thisIsKat11"
///   minimum_tls_version          = "1.2"
///   azuread_administrator = {
///     login_username = "AzureAD Admin"
///     object_id      = "00000000-0000-0000-0000-000000000000"
///   }
///   tags = {
///     "environment" = "production"
///   }
/// }
/// resource "azure_mssql_servertransparentdataencryption" "example" {
///   server_id = azure_mssql_server.example.id
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.inputs.ServerAzureadAdministratorArgs;
/// import com.pulumi.azure.mssql.ServerTransparentDataEncryption;
/// import com.pulumi.azure.mssql.ServerTransparentDataEncryptionArgs;
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
///             .location("EastUs")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("mssqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("thisIsKat11")
///             .minimumTlsVersion("1.2")
///             .azureadAdministrator(ServerAzureadAdministratorArgs.builder()
///                 .loginUsername("AzureAD Admin")
///                 .objectId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .tags(Map.of("environment", "production"))
///             .build());
///
///         var exampleServerTransparentDataEncryption = new ServerTransparentDataEncryption("exampleServerTransparentDataEncryption", ServerTransparentDataEncryptionArgs.builder()
///             .serverId(exampleServer.id())
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
///       location: EastUs
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: mssqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: thisIsKat11
///       minimumTlsVersion: '1.2'
///       azureadAdministrator:
///         loginUsername: AzureAD Admin
///         objectId: 00000000-0000-0000-0000-000000000000
///       tags:
///         environment: production
///   exampleServerTransparentDataEncryption:
///     type: azure:mssql:ServerTransparentDataEncryption
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
/// ```
///
///
///
/// ### With Customer Managed Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "EastUs",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "mssqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "thisIsKat11",
///     minimumTlsVersion: "1.2",
///     azureadAdministrator: {
///         loginUsername: "AzureAD Admin",
///         objectId: "00000000-0000-0000-0000-000000000000",
///     },
///     tags: {
///         environment: "production",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// // Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: false,
///     skuName: "standard",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Get",
///                 "List",
///                 "Create",
///                 "Delete",
///                 "Update",
///                 "Recover",
///                 "Purge",
///                 "GetRotationPolicy",
///             ],
///         },
///         {
///             tenantId: exampleServer.identity.apply(identity => identity?.tenantId),
///             objectId: exampleServer.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "byok",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [exampleKeyVault],
/// });
/// const exampleServerTransparentDataEncryption = new azure.mssql.ServerTransparentDataEncryption("example", {
///     serverId: exampleServer.id,
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
///     location="EastUs")
/// example_server = azure.mssql.Server("example",
///     name="mssqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="thisIsKat11",
///     minimum_tls_version="1.2",
///     azuread_administrator={
///         "login_username": "AzureAD Admin",
///         "object_id": "00000000-0000-0000-0000-000000000000",
///     },
///     tags={
///         "environment": "production",
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// # Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=False,
///     sku_name="standard",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Get",
///                 "List",
///                 "Create",
///                 "Delete",
///                 "Update",
///                 "Recover",
///                 "Purge",
///                 "GetRotationPolicy",
///             ],
///         },
///         {
///             "tenant_id": example_server.identity.tenant_id,
///             "object_id": example_server.identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="byok",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_key_vault]))
/// example_server_transparent_data_encryption = azure.mssql.ServerTransparentDataEncryption("example",
///     server_id=example_server.id,
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
///         Location = "EastUs",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "mssqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "thisIsKat11",
///         MinimumTlsVersion = "1.2",
///         AzureadAdministrator = new Azure.MSSql.Inputs.ServerAzureadAdministratorArgs
///         {
///             LoginUsername = "AzureAD Admin",
///             ObjectId = "00000000-0000-0000-0000-000000000000",
///         },
///         Tags =
///         {
///             { "environment", "production" },
///         },
///         Identity = new Azure.MSSql.Inputs.ServerIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     // Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = false,
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                     "Create",
///                     "Delete",
///                     "Update",
///                     "Recover",
///                     "Purge",
///                     "GetRotationPolicy",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleServer.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleServer.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "WrapKey",
///                     "UnwrapKey",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "byok",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "unwrapKey",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleKeyVault,
///         },
///     });
///
///     var exampleServerTransparentDataEncryption = new Azure.MSSql.ServerTransparentDataEncryption("example", new()
///     {
///         ServerId = exampleServer.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
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
/// 			Location: pulumi.String("EastUs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("mssqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsKat11"),
/// 			MinimumTlsVersion:          pulumi.String("1.2"),
/// 			AzureadAdministrator: &mssql.ServerAzureadAdministratorArgs{
/// 				LoginUsername: pulumi.String("AzureAD Admin"),
/// 				ObjectId:      pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 			},
/// 			Identity: &mssql.ServerIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(false),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleServer.Identity.ApplyT(func(identity mssql.ServerIdentity) (*string, error) {
/// 						return identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleServer.Identity.ApplyT(func(identity mssql.ServerIdentity) (*string, error) {
/// 						return identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("UnwrapKey"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("byok"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleKeyVault,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServerTransparentDataEncryption(ctx, "example", &mssql.ServerTransparentDataEncryptionArgs{
/// 			ServerId:      exampleServer.ID(),
/// 			KeyVaultKeyId: exampleKey.ID(),
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
///   location = "EastUs"
/// }
/// resource "azure_mssql_server" "example" {
///   name                         = "mssqlserver"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   version                      = "12.0"
///   administrator_login          = "missadministrator"
///   administrator_login_password = "thisIsKat11"
///   minimum_tls_version          = "1.2"
///   azuread_administrator = {
///     login_username = "AzureAD Admin"
///     object_id      = "00000000-0000-0000-0000-000000000000"
///   }
///   tags = {
///     "environment" = "production"
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// # Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
/// resource "azure_keyvault_keyvault" "example" {
///   name                        = "example"
///   location                    = azure_core_resourcegroup.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   enabled_for_disk_encryption = true
///   tenant_id                   = data.azure_core_getclientconfig.current.tenant_id
///   soft_delete_retention_days  = 7
///   purge_protection_enabled    = false
///   sku_name                    = "standard"
///   access_policies {
///     tenant_id       = data.azure_core_getclientconfig.current.tenant_id
///     object_id       = data.azure_core_getclientconfig.current.object_id
///     key_permissions = ["Get", "List", "Create", "Delete", "Update", "Recover", "Purge", "GetRotationPolicy"]
///   }
///   access_policies {
///     tenant_id       = azure_mssql_server.example.identity.tenant_id
///     object_id       = azure_mssql_server.example.identity.principal_id
///     key_permissions = ["Get", "WrapKey", "UnwrapKey"]
///   }
/// }
/// resource "azure_keyvault_key" "example" {
///   depends_on   = [azure_keyvault_keyvault.example]
///   name         = "byok"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   key_type     = "RSA"
///   key_size     = 2048
///   key_opts     = ["unwrapKey", "wrapKey"]
/// }
/// resource "azure_mssql_servertransparentdataencryption" "example" {
///   server_id        = azure_mssql_server.example.id
///   key_vault_key_id = azure_keyvault_key.example.id
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.inputs.ServerAzureadAdministratorArgs;
/// import com.pulumi.azure.mssql.inputs.ServerIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.mssql.ServerTransparentDataEncryption;
/// import com.pulumi.azure.mssql.ServerTransparentDataEncryptionArgs;
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
///             .location("EastUs")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("mssqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("thisIsKat11")
///             .minimumTlsVersion("1.2")
///             .azureadAdministrator(ServerAzureadAdministratorArgs.builder()
///                 .loginUsername("AzureAD Admin")
///                 .objectId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .tags(Map.of("environment", "production"))
///             .identity(ServerIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         // Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(false)
///             .skuName("standard")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Get",
///                         "List",
///                         "Create",
///                         "Delete",
///                         "Update",
///                         "Recover",
///                         "Purge",
///                         "GetRotationPolicy")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleServer.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleServer.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Get",
///                         "WrapKey",
///                         "UnwrapKey")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("byok")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleKeyVault)
///                 .build());
///
///         var exampleServerTransparentDataEncryption = new ServerTransparentDataEncryption("exampleServerTransparentDataEncryption", ServerTransparentDataEncryptionArgs.builder()
///             .serverId(exampleServer.id())
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
///       location: EastUs
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: mssqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: thisIsKat11
///       minimumTlsVersion: '1.2'
///       azureadAdministrator:
///         loginUsername: AzureAD Admin
///         objectId: 00000000-0000-0000-0000-000000000000
///       tags:
///         environment: production
///       identity:
///         type: SystemAssigned
///   # Create a key vault with policies for the deployer to create a key & SQL Server to wrap/unwrap/get key
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: false
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///             - List
///             - Create
///             - Delete
///             - Update
///             - Recover
///             - Purge
///             - GetRotationPolicy
///         - tenantId: ${exampleServer.identity.tenantId}
///           objectId: ${exampleServer.identity.principalId}
///           keyPermissions:
///             - Get
///             - WrapKey
///             - UnwrapKey
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: byok
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///     options:
///       dependsOn:
///         - ${exampleKeyVault}
///   exampleServerTransparentDataEncryption:
///     type: azure:mssql:ServerTransparentDataEncryption
///     name: example
///     properties:
///       serverId: ${exampleServer.id}
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// &gt; **Note:** This resource does not need to be imported to manage it, however the import will work.
///
/// SQL Server Transparent Data Encryption can be imported using the resource id, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/serverTransparentDataEncryption:ServerTransparentDataEncryption example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/encryptionProtector/current
/// ```
class ServerTransparentDataEncryption extends pulumi.CustomResource {
  /// When enabled, the server will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the server will be automatically rotated to the latest key version within 60 minutes.
  late final pulumi.Output<bool?> autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// &gt; **Note:** In order to use customer managed keys, the identity of the MSSQL server must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// &gt; **Note:** If `serverId` denotes a secondary server deployed for disaster recovery purposes, then the `keyVaultKeyId` should be the same key used for the primary server's transparent data encryption. Both primary and secondary servers should be encrypted with same key material.
  late final pulumi.Output<String?> keyVaultKeyId;
  late final pulumi.Output<String?> managedHsmKeyId;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;

  /// Creates a new [ServerTransparentDataEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerTransparentDataEncryption]. {@macro pulumi_mssql_server_transparent_data_encryption_server_transparent_data_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerTransparentDataEncryption(
    String name, {
    ServerTransparentDataEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverTransparentDataEncryption:ServerTransparentDataEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRotationEnabled = registerOutput<bool?>('autoRotationEnabled');
    keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    serverId = registerOutput<String>('serverId');
  }

  /// Gets an existing [ServerTransparentDataEncryption] resource's state with the given [name] and [id].
  static ServerTransparentDataEncryption get(
    String name,
    pulumi.Input<String> id, {
    ServerTransparentDataEncryptionState? state,
  }) {
    return ServerTransparentDataEncryption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerTransparentDataEncryption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/serverTransparentDataEncryption:ServerTransparentDataEncryption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRotationEnabled = registerOutput<bool?>('autoRotationEnabled');
    keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    serverId = registerOutput<String>('serverId');
  }
}
