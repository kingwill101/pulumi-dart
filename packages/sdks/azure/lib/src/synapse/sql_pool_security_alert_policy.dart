import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_security_alert_policy_args.dart';
import 'sql_pool_security_alert_policy_state.dart';

/// Manages a Security Alert Policy for a Synapse SQL Pool.
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
///     aadAdmin: [{
///         login: "AzureAD Admin",
///         objectId: "00000000-0000-0000-0000-000000000000",
///         tenantId: "00000000-0000-0000-0000-000000000000",
///     }],
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Env: "production",
///     },
/// });
/// const exampleSqlPool = new azure.synapse.SqlPool("example", {
///     name: "examplesqlpool",
///     synapseWorkspaceId: exampleWorkspace.id,
///     skuName: "DW100c",
///     createMode: "Default",
/// });
/// const auditLogs = new azure.storage.Account("audit_logs", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleSqlPoolSecurityAlertPolicy = new azure.synapse.SqlPoolSecurityAlertPolicy("example", {
///     sqlPoolId: exampleSqlPool.id,
///     policyState: "Enabled",
///     storageEndpoint: auditLogs.primaryBlobEndpoint,
///     storageAccountAccessKey: auditLogs.primaryAccessKey,
///     disabledAlerts: [
///         "Sql_Injection",
///         "Data_Exfiltration",
///     ],
///     retentionDays: 20,
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
///     aad_admin=[{
///         "login": "AzureAD Admin",
///         "objectId": "00000000-0000-0000-0000-000000000000",
///         "tenantId": "00000000-0000-0000-0000-000000000000",
///     }],
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Env": "production",
///     })
/// example_sql_pool = azure.synapse.SqlPool("example",
///     name="examplesqlpool",
///     synapse_workspace_id=example_workspace.id,
///     sku_name="DW100c",
///     create_mode="Default")
/// audit_logs = azure.storage.Account("audit_logs",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_sql_pool_security_alert_policy = azure.synapse.SqlPoolSecurityAlertPolicy("example",
///     sql_pool_id=example_sql_pool.id,
///     policy_state="Enabled",
///     storage_endpoint=audit_logs.primary_blob_endpoint,
///     storage_account_access_key=audit_logs.primary_access_key,
///     disabled_alerts=[
///         "Sql_Injection",
///         "Data_Exfiltration",
///     ],
///     retention_days=20)
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
///         AadAdmin = new[]
///         {
///
///             {
///                 { "login", "AzureAD Admin" },
///                 { "objectId", "00000000-0000-0000-0000-000000000000" },
///                 { "tenantId", "00000000-0000-0000-0000-000000000000" },
///             },
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
///     var exampleSqlPool = new Azure.Synapse.SqlPool("example", new()
///     {
///         Name = "examplesqlpool",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         SkuName = "DW100c",
///         CreateMode = "Default",
///     });
///
///     var auditLogs = new Azure.Storage.Account("audit_logs", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleSqlPoolSecurityAlertPolicy = new Azure.Synapse.SqlPoolSecurityAlertPolicy("example", new()
///     {
///         SqlPoolId = exampleSqlPool.Id,
///         PolicyState = "Enabled",
///         StorageEndpoint = auditLogs.PrimaryBlobEndpoint,
///         StorageAccountAccessKey = auditLogs.PrimaryAccessKey,
///         DisabledAlerts = new[]
///         {
///             "Sql_Injection",
///             "Data_Exfiltration",
///         },
///         RetentionDays = 20,
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
/// 			StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID().ToIDOutput().ToStringOutput(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			AadAdmin: []map[string]string{
/// 				{
/// 					"login":    "AzureAD Admin",
/// 					"objectId": "00000000-0000-0000-0000-000000000000",
/// 					"tenantId": "00000000-0000-0000-0000-000000000000",
/// 				},
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
/// 		exampleSqlPool, err := synapse.NewSqlPool(ctx, "example", &synapse.SqlPoolArgs{
/// 			Name:               pulumi.String("examplesqlpool"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			SkuName:            pulumi.String("DW100c"),
/// 			CreateMode:         pulumi.String("Default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		auditLogs, err := storage.NewAccount(ctx, "audit_logs", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewSqlPoolSecurityAlertPolicy(ctx, "example", &synapse.SqlPoolSecurityAlertPolicyArgs{
/// 			SqlPoolId:               exampleSqlPool.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyState:             pulumi.String("Enabled"),
/// 			StorageEndpoint:         auditLogs.PrimaryBlobEndpoint,
/// 			StorageAccountAccessKey: auditLogs.PrimaryAccessKey,
/// 			DisabledAlerts: pulumi.StringArray{
/// 				pulumi.String("Sql_Injection"),
/// 				pulumi.String("Data_Exfiltration"),
/// 			},
/// 			RetentionDays: pulumi.Int(20),
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
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageacc"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   account_kind             = "StorageV2"
///   is_hns_enabled           = "true"
/// }
/// resource "azure_storage_datalakegen2filesystem" "example" {
///   name               = "example"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_synapse_workspace" "example" {
///   name                                 = "example"
///   resource_group_name                  = azure_core_resourcegroup.example.name
///   location                             = azure_core_resourcegroup.example.location
///   storage_data_lake_gen2_filesystem_id = azure_storage_datalakegen2filesystem.example.id
///   sql_administrator_login              = "sqladminuser"
///   sql_administrator_login_password     = "H@Sh1CoR3!"
///   aad_admin = [{
///     "login"    = "AzureAD Admin"
///     "objectId" = "00000000-0000-0000-0000-000000000000"
///     "tenantId" = "00000000-0000-0000-0000-000000000000"
///   }]
///   identity = {
///     type = "SystemAssigned"
///   }
///   tags = {
///     "Env" = "production"
///   }
/// }
/// resource "azure_synapse_sqlpool" "example" {
///   name                 = "examplesqlpool"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   sku_name             = "DW100c"
///   create_mode          = "Default"
/// }
/// resource "azure_storage_account" "audit_logs" {
///   name                     = "examplesa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_synapse_sqlpoolsecurityalertpolicy" "example" {
///   sql_pool_id                = azure_synapse_sqlpool.example.id
///   policy_state               = "Enabled"
///   storage_endpoint           = azure_storage_account.audit_logs.primary_blob_endpoint
///   storage_account_access_key = azure_storage_account.audit_logs.primary_access_key
///   disabled_alerts            = ["Sql_Injection", "Data_Exfiltration"]
///   retention_days             = 20
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
/// import com.pulumi.azure.synapse.SqlPool;
/// import com.pulumi.azure.synapse.SqlPoolArgs;
/// import com.pulumi.azure.synapse.SqlPoolSecurityAlertPolicy;
/// import com.pulumi.azure.synapse.SqlPoolSecurityAlertPolicyArgs;
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
///             .aadAdmin(Arrays.asList(Map.ofEntries(
///                 Map.entry("login", "AzureAD Admin"),
///                 Map.entry("objectId", "00000000-0000-0000-0000-000000000000"),
///                 Map.entry("tenantId", "00000000-0000-0000-0000-000000000000")
///             )))
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Env", "production"))
///             .build());
///
///         var exampleSqlPool = new SqlPool("exampleSqlPool", SqlPoolArgs.builder()
///             .name("examplesqlpool")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .skuName("DW100c")
///             .createMode("Default")
///             .build());
///
///         var auditLogs = new Account("auditLogs", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleSqlPoolSecurityAlertPolicy = new SqlPoolSecurityAlertPolicy("exampleSqlPoolSecurityAlertPolicy", SqlPoolSecurityAlertPolicyArgs.builder()
///             .sqlPoolId(exampleSqlPool.id())
///             .policyState("Enabled")
///             .storageEndpoint(auditLogs.primaryBlobEndpoint())
///             .storageAccountAccessKey(auditLogs.primaryAccessKey())
///             .disabledAlerts(
///                 "Sql_Injection",
///                 "Data_Exfiltration")
///             .retentionDays(20)
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
///       aadAdmin:
///         - login: AzureAD Admin
///           objectId: 00000000-0000-0000-0000-000000000000
///           tenantId: 00000000-0000-0000-0000-000000000000
///       identity:
///         type: SystemAssigned
///       tags:
///         Env: production
///   exampleSqlPool:
///     type: azure:synapse:SqlPool
///     name: example
///     properties:
///       name: examplesqlpool
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       skuName: DW100c
///       createMode: Default
///   auditLogs:
///     type: azure:storage:Account
///     name: audit_logs
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleSqlPoolSecurityAlertPolicy:
///     type: azure:synapse:SqlPoolSecurityAlertPolicy
///     name: example
///     properties:
///       sqlPoolId: ${exampleSqlPool.id}
///       policyState: Enabled
///       storageEndpoint: ${auditLogs.primaryBlobEndpoint}
///       storageAccountAccessKey: ${auditLogs.primaryAccessKey}
///       disabledAlerts:
///         - Sql_Injection
///         - Data_Exfiltration
///       retentionDays: 20
/// ```
///
///
/// ## Import
///
/// Synapse SQL Pool Security Alert Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/sqlPoolSecurityAlertPolicy:SqlPoolSecurityAlertPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/sqlPools/sqlPool1/securityAlertPolicies/default
/// ```
class SqlPoolSecurityAlertPolicy extends pulumi.CustomResource {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  late final pulumi.Output<List<String>?> disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  late final pulumi.Output<bool?> emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are `Disabled`, `Enabled` and `New`.
  late final pulumi.Output<String> policyState;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the ID of the Synapse SQL Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sqlPoolId;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all Threat Detection audit logs.
  late final pulumi.Output<String?> storageEndpoint;

  /// Creates a new [SqlPoolSecurityAlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolSecurityAlertPolicy]. {@macro pulumi_synapse_sql_pool_security_alert_policy_sql_pool_security_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolSecurityAlertPolicy(
    String name, {
    SqlPoolSecurityAlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolSecurityAlertPolicy:SqlPoolSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['storageAccountAccessKey'],
        ) {
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailAccountAdminsEnabled = registerOutput<bool?>('emailAccountAdminsEnabled');
    emailAddresses = registerOutput<List<String>?>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyState = registerOutput<String>('policyState');
    retentionDays = registerOutput<int?>('retentionDays');
    sqlPoolId = registerOutput<String>('sqlPoolId');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }

  /// Gets an existing [SqlPoolSecurityAlertPolicy] resource's state with the given [name] and [id].
  static SqlPoolSecurityAlertPolicy get(
    String name,
    pulumi.Input<String> id, {
    SqlPoolSecurityAlertPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SqlPoolSecurityAlertPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SqlPoolSecurityAlertPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolSecurityAlertPolicy:SqlPoolSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailAccountAdminsEnabled = registerOutput<bool?>('emailAccountAdminsEnabled');
    emailAddresses = registerOutput<List<String>?>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyState = registerOutput<String>('policyState');
    retentionDays = registerOutput<int?>('retentionDays');
    sqlPoolId = registerOutput<String>('sqlPoolId');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }

  /// Creates a typed reference to an existing [SqlPoolSecurityAlertPolicy] resource.
  SqlPoolSecurityAlertPolicy.reference(String urn)
    : super(
        'azure:synapse/sqlPoolSecurityAlertPolicy:SqlPoolSecurityAlertPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['storageAccountAccessKey'],
        isResourceReference: true,
      ) {
    disabledAlerts = registerOutput<List<String>?>('disabledAlerts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailAccountAdminsEnabled = registerOutput<bool?>('emailAccountAdminsEnabled');
    emailAddresses = registerOutput<List<String>?>('emailAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    policyState = registerOutput<String>('policyState');
    retentionDays = registerOutput<int?>('retentionDays');
    sqlPoolId = registerOutput<String>('sqlPoolId');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey', isSecret: true);
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }
}
