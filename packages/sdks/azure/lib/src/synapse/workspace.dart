import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_azure_devops_repo.dart';
import 'workspace_customer_managed_key.dart';
import 'workspace_github_repo.dart';
import 'workspace_identity.dart';
import 'workspace_state.dart';

/// Manages a Synapse Workspace.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Env: "production",
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
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Env": "production",
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Env", "production" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("production"),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Env", "production"))
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
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       identity:
///         type: SystemAssigned
///       tags:
///         Env: production
/// ```
///
///
/// ### Creating A Workspace With Customer Managed Key And Azure AD Admin
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
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const deployer = new azure.keyvault.AccessPolicy("deployer", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "workspaceencryptionkey",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [deployer],
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     customerManagedKey: {
///         keyVersionlessId: exampleKey.versionlessId,
///         keyName: "enckey",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Env: "production",
///     },
/// });
/// const workspacePolicy = new azure.keyvault.AccessPolicy("workspace_policy", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleWorkspace.identity.apply(identity => identity?.tenantId),
///     objectId: exampleWorkspace.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Get",
///         "WrapKey",
///         "UnwrapKey",
///     ],
/// });
/// const exampleWorkspaceKey = new azure.synapse.WorkspaceKey("example", {
///     customerManagedKeyVersionlessId: exampleKey.versionlessId,
///     synapseWorkspaceId: exampleWorkspace.id,
///     active: true,
///     customerManagedKeyName: "enckey",
/// }, {
///     dependsOn: [workspacePolicy],
/// });
/// const exampleWorkspaceAadAdmin = new azure.synapse.WorkspaceAadAdmin("example", {
///     synapseWorkspaceId: exampleWorkspace.id,
///     login: "AzureAD Admin",
///     objectId: "00000000-0000-0000-0000-000000000000",
///     tenantId: "00000000-0000-0000-0000-000000000000",
/// }, {
///     dependsOn: [exampleWorkspaceKey],
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
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// deployer = azure.keyvault.AccessPolicy("deployer",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="workspaceencryptionkey",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[deployer]))
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     customer_managed_key={
///         "key_versionless_id": example_key.versionless_id,
///         "key_name": "enckey",
///     },
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Env": "production",
///     })
/// workspace_policy = azure.keyvault.AccessPolicy("workspace_policy",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_workspace.identity.tenant_id,
///     object_id=example_workspace.identity.principal_id,
///     key_permissions=[
///         "Get",
///         "WrapKey",
///         "UnwrapKey",
///     ])
/// example_workspace_key = azure.synapse.WorkspaceKey("example",
///     customer_managed_key_versionless_id=example_key.versionless_id,
///     synapse_workspace_id=example_workspace.id,
///     active=True,
///     customer_managed_key_name="enckey",
///     opts = pulumi.ResourceOptions(depends_on=[workspace_policy]))
/// example_workspace_aad_admin = azure.synapse.WorkspaceAadAdmin("example",
///     synapse_workspace_id=example_workspace.id,
///     login="AzureAD Admin",
///     object_id="00000000-0000-0000-0000-000000000000",
///     tenant_id="00000000-0000-0000-0000-000000000000",
///     opts = pulumi.ResourceOptions(depends_on=[example_workspace_key]))
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
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var deployer = new Azure.KeyVault.AccessPolicy("deployer", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Get",
///             "Delete",
///             "Purge",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "workspaceencryptionkey",
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
///             deployer,
///         },
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         CustomerManagedKey = new Azure.Synapse.Inputs.WorkspaceCustomerManagedKeyArgs
///         {
///             KeyVersionlessId = exampleKey.VersionlessId,
///             KeyName = "enckey",
///         },
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Env", "production" },
///         },
///     });
///
///     var workspacePolicy = new Azure.KeyVault.AccessPolicy("workspace_policy", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleWorkspace.Identity.Apply(identity => identity?.TenantId),
///         ObjectId = exampleWorkspace.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "WrapKey",
///             "UnwrapKey",
///         },
///     });
///
///     var exampleWorkspaceKey = new Azure.Synapse.WorkspaceKey("example", new()
///     {
///         CustomerManagedKeyVersionlessId = exampleKey.VersionlessId,
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Active = true,
///         CustomerManagedKeyName = "enckey",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             workspacePolicy,
///         },
///     });
///
///     var exampleWorkspaceAadAdmin = new Azure.Synapse.WorkspaceAadAdmin("example", new()
///     {
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Login = "AzureAD Admin",
///         ObjectId = "00000000-0000-0000-0000-000000000000",
///         TenantId = "00000000-0000-0000-0000-000000000000",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleWorkspaceKey,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
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
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployer, err := keyvault.NewAccessPolicy(ctx, "deployer", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("workspaceencryptionkey"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deployer,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			CustomerManagedKey: &synapse.WorkspaceCustomerManagedKeyArgs{
/// 				KeyVersionlessId: exampleKey.VersionlessId,
/// 				KeyName:          pulumi.String("enckey"),
/// 			},
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspacePolicy, err := keyvault.NewAccessPolicy(ctx, "workspace_policy", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleWorkspace.Identity.ApplyT(func(identity synapse.WorkspaceIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleWorkspace.Identity.ApplyT(func(identity synapse.WorkspaceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("UnwrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspaceKey, err := synapse.NewWorkspaceKey(ctx, "example", &synapse.WorkspaceKeyArgs{
/// 			CustomerManagedKeyVersionlessId: exampleKey.VersionlessId,
/// 			SynapseWorkspaceId:              exampleWorkspace.ID(),
/// 			Active:                          pulumi.Bool(true),
/// 			CustomerManagedKeyName:          pulumi.String("enckey"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			workspacePolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewWorkspaceAadAdmin(ctx, "example", &synapse.WorkspaceAadAdminArgs{
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			Login:              pulumi.String("AzureAD Admin"),
/// 			ObjectId:           pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			TenantId:           pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleWorkspaceKey,
/// 		}))
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceCustomerManagedKeyArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.WorkspaceKey;
/// import com.pulumi.azure.synapse.WorkspaceKeyArgs;
/// import com.pulumi.azure.synapse.WorkspaceAadAdmin;
/// import com.pulumi.azure.synapse.WorkspaceAadAdminArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var deployer = new AccessPolicy("deployer", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("workspaceencryptionkey")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deployer)
///                 .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .customerManagedKey(WorkspaceCustomerManagedKeyArgs.builder()
///                 .keyVersionlessId(exampleKey.versionlessId())
///                 .keyName("enckey")
///                 .build())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Env", "production"))
///             .build());
///
///         var workspacePolicy = new AccessPolicy("workspacePolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleWorkspace.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleWorkspace.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey")
///             .build());
///
///         var exampleWorkspaceKey = new WorkspaceKey("exampleWorkspaceKey", WorkspaceKeyArgs.builder()
///             .customerManagedKeyVersionlessId(exampleKey.versionlessId())
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .active(true)
///             .customerManagedKeyName("enckey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(workspacePolicy)
///                 .build());
///
///         var exampleWorkspaceAadAdmin = new WorkspaceAadAdmin("exampleWorkspaceAadAdmin", WorkspaceAadAdminArgs.builder()
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .login("AzureAD Admin")
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .tenantId("00000000-0000-0000-0000-000000000000")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleWorkspaceKey)
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   deployer:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Get
///         - Delete
///         - Purge
///         - GetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: workspaceencryptionkey
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///     options:
///       dependsOn:
///         - ${deployer}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       customerManagedKey:
///         keyVersionlessId: ${exampleKey.versionlessId}
///         keyName: enckey
///       identity:
///         type: SystemAssigned
///       tags:
///         Env: production
///   workspacePolicy:
///     type: azure:keyvault:AccessPolicy
///     name: workspace_policy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleWorkspace.identity.tenantId}
///       objectId: ${exampleWorkspace.identity.principalId}
///       keyPermissions:
///         - Get
///         - WrapKey
///         - UnwrapKey
///   exampleWorkspaceKey:
///     type: azure:synapse:WorkspaceKey
///     name: example
///     properties:
///       customerManagedKeyVersionlessId: ${exampleKey.versionlessId}
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       active: true
///       customerManagedKeyName: enckey
///     options:
///       dependsOn:
///         - ${workspacePolicy}
///   exampleWorkspaceAadAdmin:
///     type: azure:synapse:WorkspaceAadAdmin
///     name: example
///     properties:
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       login: AzureAD Admin
///       objectId: 00000000-0000-0000-0000-000000000000
///       tenantId: 00000000-0000-0000-0000-000000000000
///     options:
///       dependsOn:
///         - ${exampleWorkspaceKey}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Synapse Workspace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/workspace:Workspace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1
/// ```
class Workspace extends pulumi.CustomResource {
  /// An `azure_devops_repo` block as defined below.
  late final pulumi.Output<WorkspaceAzureDevopsRepo?> azureDevopsRepo;
  /// Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`.
  late final pulumi.Output<bool?> azureadAuthenticationOnly;
  /// Subnet ID used for computes in workspace Changing this forces a new resource to be created.
  late final pulumi.Output<String?> computeSubnetId;
  /// A map of Connectivity endpoints for this Synapse Workspace. Possible key values are `dev`, `sql`, `sqlOnDemand`, and `web`.
  late final pulumi.Output<Map<String, String>> connectivityEndpoints;
  /// A `customer_managed_key` block as defined below.
  late final pulumi.Output<WorkspaceCustomerManagedKey?> customerManagedKey;
  /// Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> dataExfiltrationProtectionEnabled;
  /// A `github_repo` block as defined below.
  late final pulumi.Output<WorkspaceGithubRepo?> githubRepo;
  /// An `identity` block as defined below.
  late final pulumi.Output<WorkspaceIdentity?> identity;
  /// Allowed AAD Tenant Ids For Linking.
  late final pulumi.Output<List<String>?> linkingAllowedForAadTenantIds;
  /// Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Workspace managed resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedResourceGroupName;
  /// Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> managedVirtualNetworkEnabled;
  /// Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The ID of purview account.
  late final pulumi.Output<String?> purviewId;
  /// Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `customer_managed_key` must be provided.
  late final pulumi.Output<String?> sqlAdministratorLogin;
  /// The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `customer_managed_key` must be provided.
  late final pulumi.Output<String?> sqlAdministratorLoginPassword;
  /// Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?
  late final pulumi.Output<bool?> sqlIdentityControlEnabled;
  /// Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageDataLakeGen2FilesystemId;
  /// A mapping of tags which should be assigned to the Synapse Workspace.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_synapse_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureDevopsRepo = registerOutput<WorkspaceAzureDevopsRepo?>('azureDevopsRepo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceAzureDevopsRepo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureadAuthenticationOnly = registerOutput<bool?>('azureadAuthenticationOnly');
    computeSubnetId = registerOutput<String?>('computeSubnetId');
    connectivityEndpoints = registerOutput<Map<String, String>>('connectivityEndpoints');
    customerManagedKey = registerOutput<WorkspaceCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataExfiltrationProtectionEnabled = registerOutput<bool?>('dataExfiltrationProtectionEnabled');
    githubRepo = registerOutput<WorkspaceGithubRepo?>('githubRepo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceGithubRepo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<WorkspaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkingAllowedForAadTenantIds = registerOutput<List<String>?>('linkingAllowedForAadTenantIds');
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    managedVirtualNetworkEnabled = registerOutput<bool?>('managedVirtualNetworkEnabled');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purviewId = registerOutput<String?>('purviewId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sqlAdministratorLogin = registerOutput<String?>('sqlAdministratorLogin');
    sqlAdministratorLoginPassword = registerOutput<String?>('sqlAdministratorLoginPassword');
    sqlIdentityControlEnabled = registerOutput<bool?>('sqlIdentityControlEnabled');
    storageDataLakeGen2FilesystemId = registerOutput<String>('storageDataLakeGen2FilesystemId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureDevopsRepo = registerOutput<WorkspaceAzureDevopsRepo?>('azureDevopsRepo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceAzureDevopsRepo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureadAuthenticationOnly = registerOutput<bool?>('azureadAuthenticationOnly');
    computeSubnetId = registerOutput<String?>('computeSubnetId');
    connectivityEndpoints = registerOutput<Map<String, String>>('connectivityEndpoints');
    customerManagedKey = registerOutput<WorkspaceCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataExfiltrationProtectionEnabled = registerOutput<bool?>('dataExfiltrationProtectionEnabled');
    githubRepo = registerOutput<WorkspaceGithubRepo?>('githubRepo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceGithubRepo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<WorkspaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkingAllowedForAadTenantIds = registerOutput<List<String>?>('linkingAllowedForAadTenantIds');
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    managedVirtualNetworkEnabled = registerOutput<bool?>('managedVirtualNetworkEnabled');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    purviewId = registerOutput<String?>('purviewId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sqlAdministratorLogin = registerOutput<String?>('sqlAdministratorLogin');
    sqlAdministratorLoginPassword = registerOutput<String?>('sqlAdministratorLoginPassword');
    sqlIdentityControlEnabled = registerOutput<bool?>('sqlIdentityControlEnabled');
    storageDataLakeGen2FilesystemId = registerOutput<String>('storageDataLakeGen2FilesystemId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
