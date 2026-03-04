import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_extended_auditing_policy_args.dart';
import 'workspace_extended_auditing_policy_state.dart';

/// Manages a Synapse Workspace Extended Auditing Policy.
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
///     accountKind: "BlobStorage",
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
/// });
/// const auditLogs = new azure.storage.Account("audit_logs", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspaceExtendedAuditingPolicy = new azure.synapse.WorkspaceExtendedAuditingPolicy("example", {
///     synapseWorkspaceId: exampleWorkspace.id,
///     storageEndpoint: auditLogs.primaryBlobEndpoint,
///     storageAccountAccessKey: auditLogs.primaryAccessKey,
///     storageAccountAccessKeyIsSecondary: false,
///     retentionInDays: 6,
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
///     account_kind="BlobStorage")
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
///     })
/// audit_logs = azure.storage.Account("audit_logs",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace_extended_auditing_policy = azure.synapse.WorkspaceExtendedAuditingPolicy("example",
///     synapse_workspace_id=example_workspace.id,
///     storage_endpoint=audit_logs.primary_blob_endpoint,
///     storage_account_access_key=audit_logs.primary_access_key,
///     storage_account_access_key_is_secondary=False,
///     retention_in_days=6)
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
///         AccountKind = "BlobStorage",
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
///     var exampleWorkspaceExtendedAuditingPolicy = new Azure.Synapse.WorkspaceExtendedAuditingPolicy("example", new()
///     {
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         StorageEndpoint = auditLogs.PrimaryBlobEndpoint,
///         StorageAccountAccessKey = auditLogs.PrimaryAccessKey,
///         StorageAccountAccessKeyIsSecondary = false,
///         RetentionInDays = 6,
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
/// 			AccountKind:            pulumi.String("BlobStorage"),
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
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
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
/// 		_, err = synapse.NewWorkspaceExtendedAuditingPolicy(ctx, "example", &synapse.WorkspaceExtendedAuditingPolicyArgs{
/// 			SynapseWorkspaceId:                 exampleWorkspace.ID(),
/// 			StorageEndpoint:                    auditLogs.PrimaryBlobEndpoint,
/// 			StorageAccountAccessKey:            auditLogs.PrimaryAccessKey,
/// 			StorageAccountAccessKeyIsSecondary: pulumi.Bool(false),
/// 			RetentionInDays:                    pulumi.Int(6),
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
/// import com.pulumi.azure.synapse.WorkspaceExtendedAuditingPolicy;
/// import com.pulumi.azure.synapse.WorkspaceExtendedAuditingPolicyArgs;
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
///             .accountKind("BlobStorage")
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
///         var exampleWorkspaceExtendedAuditingPolicy = new WorkspaceExtendedAuditingPolicy("exampleWorkspaceExtendedAuditingPolicy", WorkspaceExtendedAuditingPolicyArgs.builder()
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .storageEndpoint(auditLogs.primaryBlobEndpoint())
///             .storageAccountAccessKey(auditLogs.primaryAccessKey())
///             .storageAccountAccessKeyIsSecondary(false)
///             .retentionInDays(6)
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
///       accountKind: BlobStorage
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
///   auditLogs:
///     type: azure:storage:Account
///     name: audit_logs
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspaceExtendedAuditingPolicy:
///     type: azure:synapse:WorkspaceExtendedAuditingPolicy
///     name: example
///     properties:
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       storageEndpoint: ${auditLogs.primaryBlobEndpoint}
///       storageAccountAccessKey: ${auditLogs.primaryAccessKey}
///       storageAccountAccessKeyIsSecondary: false
///       retentionInDays: 6
/// ```
///
///
/// ## Import
///
/// Synapse Workspace Extended Auditing Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/workspaceExtendedAuditingPolicy:WorkspaceExtendedAuditingPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/extendedAuditingSettings/default
/// ```
class WorkspaceExtendedAuditingPolicy extends pulumi.CustomResource {
  /// Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`.
  late final pulumi.Output<bool?> logMonitoringEnabled;

  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  late final pulumi.Output<int?> retentionInDays;

  /// The access key to use for the auditing storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;

  /// Is `storage_account_access_key` value the storage's secondary key?
  late final pulumi.Output<bool?> storageAccountAccessKeyIsSecondary;

  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  late final pulumi.Output<String?> storageEndpoint;

  /// The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceExtendedAuditingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceExtendedAuditingPolicy]. {@macro pulumi_synapse_workspace_extended_auditing_policy_workspace_extended_auditing_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceExtendedAuditingPolicy(
    String name, {
    WorkspaceExtendedAuditingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/workspaceExtendedAuditingPolicy:WorkspaceExtendedAuditingPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    retentionInDays = registerOutput<int?>('retentionInDays');
    storageAccountAccessKey = registerOutput<String?>(
      'storageAccountAccessKey',
    );
    storageAccountAccessKeyIsSecondary = registerOutput<bool?>(
      'storageAccountAccessKeyIsSecondary',
    );
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }

  /// Gets an existing [WorkspaceExtendedAuditingPolicy] resource's state with the given [name] and [id].
  static WorkspaceExtendedAuditingPolicy get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceExtendedAuditingPolicyState? state,
  }) {
    return WorkspaceExtendedAuditingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceExtendedAuditingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/workspaceExtendedAuditingPolicy:WorkspaceExtendedAuditingPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    retentionInDays = registerOutput<int?>('retentionInDays');
    storageAccountAccessKey = registerOutput<String?>(
      'storageAccountAccessKey',
    );
    storageAccountAccessKeyIsSecondary = registerOutput<bool?>(
      'storageAccountAccessKeyIsSecondary',
    );
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }
}
