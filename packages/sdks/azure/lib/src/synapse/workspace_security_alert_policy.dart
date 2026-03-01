import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_security_alert_policy_args.dart';
import 'workspace_security_alert_policy_state.dart';

/// Manages a Security Alert Policy for a Synapse Workspace.
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
/// const auditLogs = new azure.storage.Account("audit_logs", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspaceSecurityAlertPolicy = new azure.synapse.WorkspaceSecurityAlertPolicy("example", {
///     synapseWorkspaceId: exampleWorkspace.id,
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
/// audit_logs = azure.storage.Account("audit_logs",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace_security_alert_policy = azure.synapse.WorkspaceSecurityAlertPolicy("example",
///     synapse_workspace_id=example_workspace.id,
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
///     var auditLogs = new Azure.Storage.Account("audit_logs", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleWorkspaceSecurityAlertPolicy = new Azure.Synapse.WorkspaceSecurityAlertPolicy("example", new()
///     {
///         SynapseWorkspaceId = exampleWorkspace.Id,
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
/// 			AadAdmin: []map[string]interface{}{
/// 				map[string]interface{}{
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
/// 		_, err = synapse.NewWorkspaceSecurityAlertPolicy(ctx, "example", &synapse.WorkspaceSecurityAlertPolicyArgs{
/// 			SynapseWorkspaceId:      exampleWorkspace.ID(),
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
/// import com.pulumi.azure.synapse.WorkspaceSecurityAlertPolicy;
/// import com.pulumi.azure.synapse.WorkspaceSecurityAlertPolicyArgs;
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
///             .aadAdmin(List.of(Map.ofEntries(
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
///         var auditLogs = new Account("auditLogs", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleWorkspaceSecurityAlertPolicy = new WorkspaceSecurityAlertPolicy("exampleWorkspaceSecurityAlertPolicy", WorkspaceSecurityAlertPolicyArgs.builder()
///             .synapseWorkspaceId(exampleWorkspace.id())
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
///   auditLogs:
///     type: azure:storage:Account
///     name: audit_logs
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspaceSecurityAlertPolicy:
///     type: azure:synapse:WorkspaceSecurityAlertPolicy
///     name: example
///     properties:
///       synapseWorkspaceId: ${exampleWorkspace.id}
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
/// Synapse Workspace Security Alert Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/workspaceSecurityAlertPolicy:WorkspaceSecurityAlertPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/securityAlertPolicies/Default
/// ```
class WorkspaceSecurityAlertPolicy extends pulumi.CustomResource {
  /// Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`.
  late final pulumi.Output<List<String>?> disabledAlerts;
  /// Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`.
  late final pulumi.Output<bool?> emailAccountAdminsEnabled;
  /// Specifies an array of email addresses to which the alert is sent.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`.
  late final pulumi.Output<String> policyState;
  /// Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs.
  late final pulumi.Output<String?> storageEndpoint;
  /// Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceSecurityAlertPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceSecurityAlertPolicy]. {@macro pulumi_synapse_workspace_security_alert_policy_workspace_security_alert_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceSecurityAlertPolicy(
    String name, {
    WorkspaceSecurityAlertPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/workspaceSecurityAlertPolicy:WorkspaceSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabledAlerts = registerOutput<List<String>?>('disabledAlerts');
    this.emailAccountAdminsEnabled = registerOutput<bool?>('emailAccountAdminsEnabled');
    this.emailAddresses = registerOutput<List<String>?>('emailAddresses');
    this.policyState = registerOutput<String>('policyState');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    this.storageEndpoint = registerOutput<String?>('storageEndpoint');
    this.synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }

  /// Gets an existing [WorkspaceSecurityAlertPolicy] resource's state with the given [name] and [id].
  static WorkspaceSecurityAlertPolicy get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceSecurityAlertPolicyState? state,
  }) {
    return WorkspaceSecurityAlertPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceSecurityAlertPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/workspaceSecurityAlertPolicy:WorkspaceSecurityAlertPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabledAlerts = registerOutput<List<String>?>('disabledAlerts');
    this.emailAccountAdminsEnabled = registerOutput<bool?>('emailAccountAdminsEnabled');
    this.emailAddresses = registerOutput<List<String>?>('emailAddresses');
    this.policyState = registerOutput<String>('policyState');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    this.storageEndpoint = registerOutput<String?>('storageEndpoint');
    this.synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }
}
