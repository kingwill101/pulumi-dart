import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_identity.dart';
import 'database_import.dart';
import 'database_long_term_retention_policy.dart';
import 'database_short_term_retention_policy.dart';
import 'database_state.dart';
import 'database_threat_detection_policy.dart';

/// Manages a MS SQL Database.
///
/// !&gt; **Note:** To mitigate the possibility of accidental data loss it is highly recommended that you use the `prevent_destroy` lifecycle argument in your configuration file for this resource. For more information on the `prevent_destroy` lifecycle argument please see the terraform documentation.
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
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-sqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "example-db",
///     serverId: exampleServer.id,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     licenseType: "LicenseIncluded",
///     maxSizeGb: 2,
///     skuName: "S0",
///     enclaveType: "VBS",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd")
/// example_database = azure.mssql.Database("example",
///     name="example-db",
///     server_id=example_server.id,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     license_type="LicenseIncluded",
///     max_size_gb=2,
///     sku_name="S0",
///     enclave_type="VBS",
///     tags={
///         "foo": "bar",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "example-db",
///         ServerId = exampleServer.Id,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         LicenseType = "LicenseIncluded",
///         MaxSizeGb = 2,
///         SkuName = "S0",
///         EnclaveType = "VBS",
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:        pulumi.String("example-db"),
/// 			ServerId:    exampleServer.ID(),
/// 			Collation:   pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			LicenseType: pulumi.String("LicenseIncluded"),
/// 			MaxSizeGb:   pulumi.Float64(2),
/// 			SkuName:     pulumi.String("S0"),
/// 			EnclaveType: pulumi.String("VBS"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
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
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-db")
///             .serverId(exampleServer.id())
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .licenseType("LicenseIncluded")
///             .maxSizeGb(2.0)
///             .skuName("S0")
///             .enclaveType("VBS")
///             .tags(Map.of("foo", "bar"))
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
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: example-db
///       serverId: ${exampleServer.id}
///       collation: SQL_Latin1_General_CP1_CI_AS
///       licenseType: LicenseIncluded
///       maxSizeGb: 2
///       skuName: S0
///       enclaveType: VBS
///       tags:
///         foo: bar
/// ```
///
///
///
/// ### Transparent Data Encryption(TDE) With A Customer Managed Key(CMK) During Create
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
///     name: "example-admin",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServer = new azure.mssql.Server("example", {
///     name: "example-sqlserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "4dm1n157r470r",
///     administratorLoginPassword: "4-v3ry-53cr37-p455w0rd",
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
///             tenantId: current.tenantId,
///             objectId: current.objectId,
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
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "example-db",
///     serverId: exampleServer.id,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     licenseType: "LicenseIncluded",
///     maxSizeGb: 4,
///     readScale: true,
///     skuName: "S0",
///     zoneRedundant: true,
///     enclaveType: "VBS",
///     tags: {
///         foo: "bar",
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     transparentDataEncryptionKeyVaultKeyId: exampleKey.id,
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
///     name="example-admin",
///     location=example.location,
///     resource_group_name=example.name)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="4dm1n157r470r",
///     administrator_login_password="4-v3ry-53cr37-p455w0rd")
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
///             "tenant_id": current["tenantId"],
///             "object_id": current["objectId"],
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
/// example_database = azure.mssql.Database("example",
///     name="example-db",
///     server_id=example_server.id,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     license_type="LicenseIncluded",
///     max_size_gb=4,
///     read_scale=True,
///     sku_name="S0",
///     zone_redundant=True,
///     enclave_type="VBS",
///     tags={
///         "foo": "bar",
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "4dm1n157r470r",
///         AdministratorLoginPassword = "4-v3ry-53cr37-p455w0rd",
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
///                 TenantId = current.TenantId,
///                 ObjectId = current.ObjectId,
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
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "example-db",
///         ServerId = exampleServer.Id,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         LicenseType = "LicenseIncluded",
///         MaxSizeGb = 4,
///         ReadScale = true,
///         SkuName = "S0",
///         ZoneRedundant = true,
///         EnclaveType = "VBS",
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///         Identity = new Azure.MSSql.Inputs.DatabaseIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 			Name:              pulumi.String("example-admin"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("4dm1n157r470r"),
/// 			AdministratorLoginPassword: pulumi.String("4-v3ry-53cr37-p455w0rd"),
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
/// 					TenantId: pulumi.Any(current.TenantId),
/// 					ObjectId: pulumi.Any(current.ObjectId),
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
/// 		_, err = mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:          pulumi.String("example-db"),
/// 			ServerId:      exampleServer.ID(),
/// 			Collation:     pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			LicenseType:   pulumi.String("LicenseIncluded"),
/// 			MaxSizeGb:     pulumi.Float64(4),
/// 			ReadScale:     pulumi.Bool(true),
/// 			SkuName:       pulumi.String("S0"),
/// 			ZoneRedundant: pulumi.Bool(true),
/// 			EnclaveType:   pulumi.String("VBS"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Identity: &mssql.DatabaseIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
/// import com.pulumi.azure.mssql.inputs.DatabaseIdentityArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example-sqlserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("4dm1n157r470r")
///             .administratorLoginPassword("4-v3ry-53cr37-p455w0rd")
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
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-db")
///             .serverId(exampleServer.id())
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .licenseType("LicenseIncluded")
///             .maxSizeGb(4.0)
///             .readScale(true)
///             .skuName("S0")
///             .zoneRedundant(true)
///             .enclaveType("VBS")
///             .tags(Map.of("foo", "bar"))
///             .identity(DatabaseIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: 4dm1n157r470r
///       administratorLoginPassword: 4-v3ry-53cr37-p455w0rd
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: example-db
///       serverId: ${exampleServer.id}
///       collation: SQL_Latin1_General_CP1_CI_AS
///       licenseType: LicenseIncluded
///       maxSizeGb: 4
///       readScale: true
///       skuName: S0
///       zoneRedundant: true
///       enclaveType: VBS
///       tags:
///         foo: bar
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
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
/// ```
///
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
/// SQL Database can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/database:Database example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Sql/servers/server1/databases/example1
/// ```
class Database extends pulumi.CustomResource {
  /// Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases.
  late final pulumi.Output<int> autoPauseDelayInMinutes;
  /// Specifies the collation of the database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> collation;
  /// The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`.
  late final pulumi.Output<String?> createMode;
  /// The ID of the source database from which to create the new database. This should only be used for databases with `create_mode` values that use another database as reference. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When configuring a secondary database, please be aware of the constraints for the `sku_name` property, as noted below, for both the primary and secondary databases. The `sku_name` of the secondary database may be inadvertently changed to match that of the primary when an incompatible combination of SKUs is detected by the provider.
  late final pulumi.Output<String> creationSourceDatabaseId;
  /// Specifies the ID of the elastic pool containing this database.
  late final pulumi.Output<String?> elasticPoolId;
  /// Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// &gt; **Note:** `enclave_type` is currently not supported for DW (e.g, DataWarehouse) and DC-series SKUs.
  ///
  /// &gt; **Note:** Geo Replicated and Failover databases must have the same `enclave_type`.
  ///
  /// &gt; **Note:** The default value for the `enclave_type` field is unset not `Default`.
  late final pulumi.Output<String> enclaveType;
  /// A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** `geo_backup_enabled` is only applicable for DataWarehouse SKUs (DW*). This setting is ignored for all other SKUs.
  late final pulumi.Output<bool?> geoBackupEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<DatabaseIdentity?> identity;
  /// A `import` block as documented below. Mutually exclusive with `create_mode`.
  late final pulumi.Output<DatabaseImport?> import;
  /// A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool> ledgerEnabled;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  late final pulumi.Output<String> licenseType;
  /// A `long_term_retention_policy` block as defined below.
  late final pulumi.Output<DatabaseLongTermRetentionPolicy> longTermRetentionPolicy;
  /// The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  ///
  /// &gt; **Note:** `maintenance_configuration_name` is only applicable if `elastic_pool_id` is not set.
  late final pulumi.Output<String> maintenanceConfigurationName;
  /// The max size of the database in gigabytes.
  ///
  /// &gt; **Note:** This value should not be configured when the `create_mode` is `Secondary` or `OnlineSecondary`, as the sizing of the primary is then used as per [Azure documentation](https://docs.microsoft.com/azure/azure-sql/database/single-database-scale#geo-replicated-database). The value of `max_size_gb` accepts `0.1`, `0.5` and positive integers greater than or equal to 1. `0.1` means `100MB`, and `0.5` means `500MB`.
  late final pulumi.Output<double> maxSizeGb;
  /// Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases.
  late final pulumi.Output<double> minCapacity;
  /// The name of the MS SQL Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
  late final pulumi.Output<int> readReplicaCount;
  /// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
  late final pulumi.Output<bool> readScale;
  /// The ID of the database to be recovered. This property is only applicable when the `create_mode` is `Recovery`.
  late final pulumi.Output<String?> recoverDatabaseId;
  /// The ID of the Recovery Services Recovery Point Id to be restored. This property is only applicable when the `create_mode` is `Recovery`.
  late final pulumi.Output<String?> recoveryPointId;
  /// The ID of the database to be restored. This property is only applicable when the `create_mode` is `Restore`.
  late final pulumi.Output<String?> restoreDroppedDatabaseId;
  /// The ID of the long term retention backup to be restored. This property is only applicable when the `create_mode` is `RestoreLongTermRetentionBackup`.
  late final pulumi.Output<String?> restoreLongTermRetentionBackupId;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `create_mode`= `PointInTimeRestore` databases.
  late final pulumi.Output<String> restorePointInTime;
  /// Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`.
  late final pulumi.Output<String> sampleName;
  /// How do you want your replica to be made? Valid values include `Geo`, `Named` and `Standby`. Defaults to `Geo`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> secondaryType;
  /// The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This setting is still required for "Serverless" SKUs
  late final pulumi.Output<String> serverId;
  /// A `short_term_retention_policy` block as defined below.
  late final pulumi.Output<DatabaseShortTermRetentionPolicy> shortTermRetentionPolicy;
  /// Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource.
  ///
  /// &gt; **Note:** A full list of supported SKU names by region can be retrieved using the Azure CLI: `az sql db list-editions -l &lt;region&gt; -o table`
  ///
  /// &gt; **Note:** The default `sku_name` value may differ between Azure locations depending on local availability of Gen4/Gen5 capacity. When databases are replicated using the `creation_source_database_id` property, the source (primary) database cannot have a higher SKU service tier than any secondary databases. When changing the `sku_name` of a database having one or more secondary databases, this resource will first update any secondary databases as necessary. In such cases it's recommended to use the same `sku_name` in your configuration for all related databases, as not doing so may cause an unresolvable diff during subsequent plans.
  late final pulumi.Output<String> skuName;
  /// Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`.
  late final pulumi.Output<String?> storageAccountType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Threat detection policy configuration. The `threat_detection_policy` block supports fields documented below.
  late final pulumi.Output<DatabaseThreatDetectionPolicy> threatDetectionPolicy;
  /// If set to true, Transparent Data Encryption will be enabled on the database. Defaults to `true`.
  ///
  /// &gt; **Note:** `transparent_data_encryption_enabled` can only be set to `false` on DW (e.g, DataWarehouse) server SKUs.
  late final pulumi.Output<bool?> transparentDataEncryptionEnabled;
  /// Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** When the `sku_name` is `DW100c`, the `transparent_data_encryption_key_automatic_rotation_enabled` and the `transparent_data_encryption_key_vault_key_id` properties should not be specified, as database-level CMK is not supported for Data Warehouse SKUs.
  late final pulumi.Output<bool?> transparentDataEncryptionKeyAutomaticRotationEnabled;
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// &gt; **Note:** To successfully deploy a `Microsoft SQL Database` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  late final pulumi.Output<String?> transparentDataEncryptionKeyVaultKeyId;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
  late final pulumi.Output<bool> zoneRedundant;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_mssql_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPauseDelayInMinutes = registerOutput<int>('autoPauseDelayInMinutes');
    collation = registerOutput<String>('collation');
    createMode = registerOutput<String?>('createMode');
    creationSourceDatabaseId = registerOutput<String>('creationSourceDatabaseId');
    elasticPoolId = registerOutput<String?>('elasticPoolId');
    enclaveType = registerOutput<String>('enclaveType');
    geoBackupEnabled = registerOutput<bool?>('geoBackupEnabled');
    identity = registerOutput<DatabaseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    import = registerOutput<DatabaseImport?>('import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseImport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ledgerEnabled = registerOutput<bool>('ledgerEnabled');
    licenseType = registerOutput<String>('licenseType');
    longTermRetentionPolicy = registerOutput<DatabaseLongTermRetentionPolicy>('longTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceConfigurationName = registerOutput<String>('maintenanceConfigurationName');
    maxSizeGb = registerOutput<double>('maxSizeGb');
    minCapacity = registerOutput<double>('minCapacity');
    this.name = registerOutput<String>('name');
    readReplicaCount = registerOutput<int>('readReplicaCount');
    readScale = registerOutput<bool>('readScale');
    recoverDatabaseId = registerOutput<String?>('recoverDatabaseId');
    recoveryPointId = registerOutput<String?>('recoveryPointId');
    restoreDroppedDatabaseId = registerOutput<String?>('restoreDroppedDatabaseId');
    restoreLongTermRetentionBackupId = registerOutput<String?>('restoreLongTermRetentionBackupId');
    restorePointInTime = registerOutput<String>('restorePointInTime');
    sampleName = registerOutput<String>('sampleName');
    secondaryType = registerOutput<String>('secondaryType');
    serverId = registerOutput<String>('serverId');
    shortTermRetentionPolicy = registerOutput<DatabaseShortTermRetentionPolicy>('shortTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseShortTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String?>('storageAccountType');
    tags = registerOutput<Map<String, String>?>('tags');
    threatDetectionPolicy = registerOutput<DatabaseThreatDetectionPolicy>('threatDetectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transparentDataEncryptionEnabled = registerOutput<bool?>('transparentDataEncryptionEnabled');
    transparentDataEncryptionKeyAutomaticRotationEnabled = registerOutput<bool?>('transparentDataEncryptionKeyAutomaticRotationEnabled');
    transparentDataEncryptionKeyVaultKeyId = registerOutput<String?>('transparentDataEncryptionKeyVaultKeyId');
    zoneRedundant = registerOutput<bool>('zoneRedundant');
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPauseDelayInMinutes = registerOutput<int>('autoPauseDelayInMinutes');
    collation = registerOutput<String>('collation');
    createMode = registerOutput<String?>('createMode');
    creationSourceDatabaseId = registerOutput<String>('creationSourceDatabaseId');
    elasticPoolId = registerOutput<String?>('elasticPoolId');
    enclaveType = registerOutput<String>('enclaveType');
    geoBackupEnabled = registerOutput<bool?>('geoBackupEnabled');
    identity = registerOutput<DatabaseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    import = registerOutput<DatabaseImport?>('import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseImport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ledgerEnabled = registerOutput<bool>('ledgerEnabled');
    licenseType = registerOutput<String>('licenseType');
    longTermRetentionPolicy = registerOutput<DatabaseLongTermRetentionPolicy>('longTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceConfigurationName = registerOutput<String>('maintenanceConfigurationName');
    maxSizeGb = registerOutput<double>('maxSizeGb');
    minCapacity = registerOutput<double>('minCapacity');
    this.name = registerOutput<String>('name');
    readReplicaCount = registerOutput<int>('readReplicaCount');
    readScale = registerOutput<bool>('readScale');
    recoverDatabaseId = registerOutput<String?>('recoverDatabaseId');
    recoveryPointId = registerOutput<String?>('recoveryPointId');
    restoreDroppedDatabaseId = registerOutput<String?>('restoreDroppedDatabaseId');
    restoreLongTermRetentionBackupId = registerOutput<String?>('restoreLongTermRetentionBackupId');
    restorePointInTime = registerOutput<String>('restorePointInTime');
    sampleName = registerOutput<String>('sampleName');
    secondaryType = registerOutput<String>('secondaryType');
    serverId = registerOutput<String>('serverId');
    shortTermRetentionPolicy = registerOutput<DatabaseShortTermRetentionPolicy>('shortTermRetentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseShortTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String?>('storageAccountType');
    tags = registerOutput<Map<String, String>?>('tags');
    threatDetectionPolicy = registerOutput<DatabaseThreatDetectionPolicy>('threatDetectionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transparentDataEncryptionEnabled = registerOutput<bool?>('transparentDataEncryptionEnabled');
    transparentDataEncryptionKeyAutomaticRotationEnabled = registerOutput<bool?>('transparentDataEncryptionKeyAutomaticRotationEnabled');
    transparentDataEncryptionKeyVaultKeyId = registerOutput<String?>('transparentDataEncryptionKeyVaultKeyId');
    zoneRedundant = registerOutput<bool>('zoneRedundant');
  }
}
