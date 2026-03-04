import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'server_azuread_administrator.dart';
import 'server_identity.dart';
import 'server_state.dart';

/// Manages a Microsoft SQL Azure Database Server.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "database-rg",
///     location: "West Europe",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="database-rg",
///     location="West Europe")
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
///         Name = "database-rg",
///         Location = "West Europe",
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
/// 			Name:     pulumi.String("database-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewServer(ctx, "example", &mssql.ServerArgs{
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.inputs.ServerAzureadAdministratorArgs;
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
///             .name("database-rg")
///             .location("West Europe")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: database-rg
///       location: West Europe
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
/// ```
///
///
///
/// ### Transparent Data Encryption (TDE) With A Customer Managed Key (CMK) During Create
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-admin",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// // Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "mssqltdeexample",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: exampleUserAssignedIdentity.tenantId,
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: true,
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
///             tenantId: exampleUserAssignedIdentity.tenantId,
///             objectId: exampleUserAssignedIdentity.principalId,
///             keyPermissions: [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "example-key",
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
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-resource",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "Example-Administrator",
///     administratorLoginPassword: "Example_Password!",
///     minimumTlsVersion: "1.2",
///     azureadAdministrator: {
///         loginUsername: exampleUserAssignedIdentity.name,
///         objectId: exampleUserAssignedIdentity.principalId,
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     primaryUserAssignedIdentityId: exampleUserAssignedIdentity.id,
///     transparentDataEncryptionKeyVaultKeyId: exampleKey.id,
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
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-admin",
///     location=example.location,
///     resource_group_name=example.name)
/// # Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="mssqltdeexample",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=example_user_assigned_identity.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=True,
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
///             "tenant_id": example_user_assigned_identity.tenant_id,
///             "object_id": example_user_assigned_identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="example-key",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_key_vault]))
/// example_server = azure.mssql.Server("example",
///     name="example-resource",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="Example-Administrator",
///     administrator_login_password="Example_Password!",
///     minimum_tls_version="1.2",
///     azuread_administrator={
///         "login_username": example_user_assigned_identity.name,
///         "object_id": example_user_assigned_identity.principal_id,
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     primary_user_assigned_identity_id=example_user_assigned_identity.id,
///     transparent_data_encryption_key_vault_key_id=example_key.id)
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-admin",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     // Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "mssqltdeexample",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = exampleUserAssignedIdentity.TenantId,
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = true,
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
///                 TenantId = exampleUserAssignedIdentity.TenantId,
///                 ObjectId = exampleUserAssignedIdentity.PrincipalId,
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
///         Name = "example-key",
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
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-resource",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "Example-Administrator",
///         AdministratorLoginPassword = "Example_Password!",
///         MinimumTlsVersion = "1.2",
///         AzureadAdministrator = new Azure.MSSql.Inputs.ServerAzureadAdministratorArgs
///         {
///             LoginUsername = exampleUserAssignedIdentity.Name,
///             ObjectId = exampleUserAssignedIdentity.PrincipalId,
///         },
///         Identity = new Azure.MSSql.Inputs.ServerIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         PrimaryUserAssignedIdentityId = exampleUserAssignedIdentity.Id,
///         TransparentDataEncryptionKeyVaultKeyId = exampleKey.Id,
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
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-admin"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("mssqltdeexample"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 exampleUserAssignedIdentity.TenantId,
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
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
/// 					TenantId: exampleUserAssignedIdentity.TenantId,
/// 					ObjectId: exampleUserAssignedIdentity.PrincipalId,
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
/// 			Name:       pulumi.String("example-key"),
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
/// 		_, err = mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-resource"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("Example-Administrator"),
/// 			AdministratorLoginPassword: pulumi.String("Example_Password!"),
/// 			MinimumTlsVersion:          pulumi.String("1.2"),
/// 			AzureadAdministrator: &mssql.ServerAzureadAdministratorArgs{
/// 				LoginUsername: exampleUserAssignedIdentity.Name,
/// 				ObjectId:      exampleUserAssignedIdentity.PrincipalId,
/// 			},
/// 			Identity: &mssql.ServerIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 			PrimaryUserAssignedIdentityId:          exampleUserAssignedIdentity.ID(),
/// 			TransparentDataEncryptionKeyVaultKeyId: exampleKey.ID(),
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.inputs.ServerAzureadAdministratorArgs;
/// import com.pulumi.azure.mssql.inputs.ServerIdentityArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-admin")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         // Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("mssqltdeexample")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(exampleUserAssignedIdentity.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(true)
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
///                     .tenantId(exampleUserAssignedIdentity.tenantId())
///                     .objectId(exampleUserAssignedIdentity.principalId())
///                     .keyPermissions(
///                         "Get",
///                         "WrapKey",
///                         "UnwrapKey")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("example-key")
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-resource")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("Example-Administrator")
///             .administratorLoginPassword("Example_Password!")
///             .minimumTlsVersion("1.2")
///             .azureadAdministrator(ServerAzureadAdministratorArgs.builder()
///                 .loginUsername(exampleUserAssignedIdentity.name())
///                 .objectId(exampleUserAssignedIdentity.principalId())
///                 .build())
///             .identity(ServerIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .primaryUserAssignedIdentityId(exampleUserAssignedIdentity.id())
///             .transparentDataEncryptionKeyVaultKeyId(exampleKey.id())
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
///       name: example-admin
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-resource
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: Example-Administrator
///       administratorLoginPassword: Example_Password!
///       minimumTlsVersion: '1.2'
///       azureadAdministrator:
///         loginUsername: ${exampleUserAssignedIdentity.name}
///         objectId: ${exampleUserAssignedIdentity.principalId}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       primaryUserAssignedIdentityId: ${exampleUserAssignedIdentity.id}
///       transparentDataEncryptionKeyVaultKeyId: ${exampleKey.id}
///   # Create a key vault with access policies which allow for the current user to get, list, create, delete, update, recover, purge and getRotationPolicy for the key vault key and also add a key vault access policy for the Microsoft Sql Server instance User Managed Identity to get, wrap, and unwrap key(s)
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: mssqltdeexample
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${exampleUserAssignedIdentity.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: true
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
///         - tenantId: ${exampleUserAssignedIdentity.tenantId}
///           objectId: ${exampleUserAssignedIdentity.principalId}
///           keyPermissions:
///             - Get
///             - WrapKey
///             - UnwrapKey
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: example-key
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///     options:
///       dependsOn:
///         - ${exampleKeyVault}
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
/// SQL Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/server:Server example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/servers/myserver
/// ```
class Server extends pulumi.CustomResource {
  /// The administrator login name for the new server. Required unless `azuread_authentication_only` in the `azuread_administrator` block is `true`. When omitted, Azure will generate a default username which cannot be subsequently changed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> administratorLogin;

  /// The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx).
  late final pulumi.Output<String?> administratorLoginPassword;

  /// An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  late final pulumi.Output<int?> administratorLoginPasswordWoVersion;

  /// An `azuread_administrator` block as defined below.
  late final pulumi.Output<ServerAzureadAdministrator?> azureadAdministrator;

  /// The connection policy the server will use. Possible values are `Default`, `Proxy`, and `Redirect`. Defaults to `Default`.
  late final pulumi.Output<String?> connectionPolicy;

  /// Whether to enable the Express Vulnerability Assessment Configuration. Defaults to `false`.
  ///
  /// &gt; **Note:** If you have enabled the Classic SQL Vulnerability Assessment configuration using the `azure.mssql.ServerVulnerabilityAssessment` resource, you must first delete it before enabling `express_vulnerability_assessment_enabled`. If you wish to revert back to using the Classic SQL Vulnerability Assessment configuration you must first disable this setting.
  late final pulumi.Output<bool?> expressVulnerabilityAssessmentEnabled;

  /// The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)
  late final pulumi.Output<String> fullyQualifiedDomainName;

  /// An `identity` block as defined below.
  late final pulumi.Output<ServerIdentity?> identity;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: `1.0`, `1.1` , `1.2` and `Disabled`. Defaults to `1.2`.
  ///
  /// &gt; **Note:** The `minimum_tls_version` is set to `Disabled` means all TLS versions are allowed. After you enforce a version of `minimum_tls_version`, it's not possible to revert to `Disabled`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;

  /// The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Whether outbound network traffic is restricted for this server. Defaults to `false`.
  late final pulumi.Output<bool?> outboundNetworkRestrictionEnabled;

  /// Specifies the primary user managed identity id. Required if `type` within the `identity` block is set to either `SystemAssigned, UserAssigned` or `UserAssigned` and should be set at same time as setting `identity_ids`.
  late final pulumi.Output<String> primaryUserAssignedIdentityId;

  /// Whether public network access is allowed for this server. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A list of dropped restorable database IDs on the server.
  late final pulumi.Output<List<String>> restorableDroppedDatabaseIds;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// &gt; **Note:** To successfully deploy a `Microsoft SQL Server` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  ///
  /// &gt; **Note:** Cross-tenant `Key Vault` and `Microsoft SQL Server` interactions are not supported. Please see the [product documentation](https://learn.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview?view=azuresql#requirements-for-configuring-customer-managed-tde) for more information.
  ///
  /// &gt; **Note:** When using a firewall with a `Key Vault`, you must enable the option `Allow trusted Microsoft services to bypass the firewall`.
  late final pulumi.Output<String?> transparentDataEncryptionKeyVaultKeyId;

  /// The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_mssql_server_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(String name, {ServerArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:mssql/server:Server',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>(
      'administratorLoginPassword',
    );
    administratorLoginPasswordWoVersion = registerOutput<int?>(
      'administratorLoginPasswordWoVersion',
    );
    azureadAdministrator = registerOutput<ServerAzureadAdministrator?>(
      'azureadAdministrator',
    );
    connectionPolicy = registerOutput<String?>('connectionPolicy');
    expressVulnerabilityAssessmentEnabled = registerOutput<bool?>(
      'expressVulnerabilityAssessmentEnabled',
    );
    fullyQualifiedDomainName = registerOutput<String>(
      'fullyQualifiedDomainName',
    );
    identity = registerOutput<ServerIdentity?>('identity');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    outboundNetworkRestrictionEnabled = registerOutput<bool?>(
      'outboundNetworkRestrictionEnabled',
    );
    primaryUserAssignedIdentityId = registerOutput<String>(
      'primaryUserAssignedIdentityId',
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restorableDroppedDatabaseIds = registerOutput<List<String>>(
      'restorableDroppedDatabaseIds',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    transparentDataEncryptionKeyVaultKeyId = registerOutput<String?>(
      'transparentDataEncryptionKeyVaultKeyId',
    );
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Server] resource's state with the given [name] and [id].
  static Server get(
    String name,
    pulumi.Input<String> id, {
    ServerState? state,
  }) {
    return Server._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Server._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/server:Server',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>(
      'administratorLoginPassword',
    );
    administratorLoginPasswordWoVersion = registerOutput<int?>(
      'administratorLoginPasswordWoVersion',
    );
    azureadAdministrator = registerOutput<ServerAzureadAdministrator?>(
      'azureadAdministrator',
    );
    connectionPolicy = registerOutput<String?>('connectionPolicy');
    expressVulnerabilityAssessmentEnabled = registerOutput<bool?>(
      'expressVulnerabilityAssessmentEnabled',
    );
    fullyQualifiedDomainName = registerOutput<String>(
      'fullyQualifiedDomainName',
    );
    identity = registerOutput<ServerIdentity?>('identity');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    outboundNetworkRestrictionEnabled = registerOutput<bool?>(
      'outboundNetworkRestrictionEnabled',
    );
    primaryUserAssignedIdentityId = registerOutput<String>(
      'primaryUserAssignedIdentityId',
    );
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restorableDroppedDatabaseIds = registerOutput<List<String>>(
      'restorableDroppedDatabaseIds',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    transparentDataEncryptionKeyVaultKeyId = registerOutput<String?>(
      'transparentDataEncryptionKeyVaultKeyId',
    );
    version = registerOutput<String>('version');
  }
}
