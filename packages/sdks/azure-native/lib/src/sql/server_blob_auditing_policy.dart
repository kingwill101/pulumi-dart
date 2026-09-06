import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_blob_auditing_policy_args.dart';

/// A server blob auditing policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a server's blob auditing policy with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverBlobAuditingPolicy = new AzureNative.Sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy", new()
///     {
///         AuditActionsAndGroups = new[]
///         {
///             "SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP",
///             "FAILED_DATABASE_AUTHENTICATION_GROUP",
///             "BATCH_COMPLETED_GROUP",
///         },
///         BlobAuditingPolicyName = "default",
///         IsAzureMonitorTargetEnabled = true,
///         IsStorageSecondaryKeyInUse = false,
///         QueueDelayMs = 4000,
///         ResourceGroupName = "blobauditingtest-4799",
///         RetentionDays = 6,
///         ServerName = "blobauditingtest-6440",
///         State = AzureNative.Sql.BlobAuditingPolicyState.Enabled,
///         StorageAccountAccessKey = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///         StorageAccountSubscriptionId = "00000000-1234-0000-5678-000000000000",
///         StorageEndpoint = "https://mystorage.blob.core.windows.net",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerBlobAuditingPolicy(ctx, "serverBlobAuditingPolicy", &sql.ServerBlobAuditingPolicyArgs{
/// 			AuditActionsAndGroups: pulumi.StringArray{
/// 				pulumi.String("SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP"),
/// 				pulumi.String("FAILED_DATABASE_AUTHENTICATION_GROUP"),
/// 				pulumi.String("BATCH_COMPLETED_GROUP"),
/// 			},
/// 			BlobAuditingPolicyName:       pulumi.String("default"),
/// 			IsAzureMonitorTargetEnabled:  pulumi.Bool(true),
/// 			IsStorageSecondaryKeyInUse:   pulumi.Bool(false),
/// 			QueueDelayMs:                 pulumi.Int(4000),
/// 			ResourceGroupName:            pulumi.String("blobauditingtest-4799"),
/// 			RetentionDays:                pulumi.Int(6),
/// 			ServerName:                   pulumi.String("blobauditingtest-6440"),
/// 			State:                        sql.BlobAuditingPolicyStateEnabled,
/// 			StorageAccountAccessKey:      pulumi.String("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="),
/// 			StorageAccountSubscriptionId: pulumi.String("00000000-1234-0000-5678-000000000000"),
/// 			StorageEndpoint:              pulumi.String("https://mystorage.blob.core.windows.net"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_serverblobauditingpolicy" "serverBlobAuditingPolicy" {
///   audit_actions_and_groups        = ["SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP", "FAILED_DATABASE_AUTHENTICATION_GROUP", "BATCH_COMPLETED_GROUP"]
///   blob_auditing_policy_name       = "default"
///   is_azure_monitor_target_enabled = true
///   is_storage_secondary_key_in_use = false
///   queue_delay_ms                  = 4000
///   resource_group_name             = "blobauditingtest-4799"
///   retention_days                  = 6
///   server_name                     = "blobauditingtest-6440"
///   state                           = "Enabled"
///   storage_account_access_key      = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="
///   storage_account_subscription_id = "00000000-1234-0000-5678-000000000000"
///   storage_endpoint                = "https://mystorage.blob.core.windows.net"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ServerBlobAuditingPolicy;
/// import com.pulumi.azurenative.sql.ServerBlobAuditingPolicyArgs;
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
///         var serverBlobAuditingPolicy = new ServerBlobAuditingPolicy("serverBlobAuditingPolicy", ServerBlobAuditingPolicyArgs.builder()
///             .auditActionsAndGroups(
///                 "SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP",
///                 "FAILED_DATABASE_AUTHENTICATION_GROUP",
///                 "BATCH_COMPLETED_GROUP")
///             .blobAuditingPolicyName("default")
///             .isAzureMonitorTargetEnabled(true)
///             .isStorageSecondaryKeyInUse(false)
///             .queueDelayMs(4000)
///             .resourceGroupName("blobauditingtest-4799")
///             .retentionDays(6)
///             .serverName("blobauditingtest-6440")
///             .state("Enabled")
///             .storageAccountAccessKey("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==")
///             .storageAccountSubscriptionId("00000000-1234-0000-5678-000000000000")
///             .storageEndpoint("https://mystorage.blob.core.windows.net")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serverBlobAuditingPolicy = new azure_native.sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy", {
///     auditActionsAndGroups: [
///         "SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP",
///         "FAILED_DATABASE_AUTHENTICATION_GROUP",
///         "BATCH_COMPLETED_GROUP",
///     ],
///     blobAuditingPolicyName: "default",
///     isAzureMonitorTargetEnabled: true,
///     isStorageSecondaryKeyInUse: false,
///     queueDelayMs: 4000,
///     resourceGroupName: "blobauditingtest-4799",
///     retentionDays: 6,
///     serverName: "blobauditingtest-6440",
///     state: azure_native.sql.BlobAuditingPolicyState.Enabled,
///     storageAccountAccessKey: "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storageAccountSubscriptionId: "00000000-1234-0000-5678-000000000000",
///     storageEndpoint: "https://mystorage.blob.core.windows.net",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_blob_auditing_policy = azure_native.sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy",
///     audit_actions_and_groups=[
///         "SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP",
///         "FAILED_DATABASE_AUTHENTICATION_GROUP",
///         "BATCH_COMPLETED_GROUP",
///     ],
///     blob_auditing_policy_name="default",
///     is_azure_monitor_target_enabled=True,
///     is_storage_secondary_key_in_use=False,
///     queue_delay_ms=4000,
///     resource_group_name="blobauditingtest-4799",
///     retention_days=6,
///     server_name="blobauditingtest-6440",
///     state=azure_native.sql.BlobAuditingPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_account_subscription_id="00000000-1234-0000-5678-000000000000",
///     storage_endpoint="https://mystorage.blob.core.windows.net")
///
/// ```
///
/// ```yaml
/// resources:
///   serverBlobAuditingPolicy:
///     type: azure-native:sql:ServerBlobAuditingPolicy
///     properties:
///       auditActionsAndGroups:
///         - SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP
///         - FAILED_DATABASE_AUTHENTICATION_GROUP
///         - BATCH_COMPLETED_GROUP
///       blobAuditingPolicyName: default
///       isAzureMonitorTargetEnabled: true
///       isStorageSecondaryKeyInUse: false
///       queueDelayMs: 4000
///       resourceGroupName: blobauditingtest-4799
///       retentionDays: 6
///       serverName: blobauditingtest-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageAccountSubscriptionId: 00000000-1234-0000-5678-000000000000
///       storageEndpoint: https://mystorage.blob.core.windows.net
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a server's blob auditing policy with minimal parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverBlobAuditingPolicy = new AzureNative.Sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy", new()
///     {
///         BlobAuditingPolicyName = "default",
///         ResourceGroupName = "blobauditingtest-4799",
///         ServerName = "blobauditingtest-6440",
///         State = AzureNative.Sql.BlobAuditingPolicyState.Enabled,
///         StorageAccountAccessKey = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///         StorageEndpoint = "https://mystorage.blob.core.windows.net",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerBlobAuditingPolicy(ctx, "serverBlobAuditingPolicy", &sql.ServerBlobAuditingPolicyArgs{
/// 			BlobAuditingPolicyName:  pulumi.String("default"),
/// 			ResourceGroupName:       pulumi.String("blobauditingtest-4799"),
/// 			ServerName:              pulumi.String("blobauditingtest-6440"),
/// 			State:                   sql.BlobAuditingPolicyStateEnabled,
/// 			StorageAccountAccessKey: pulumi.String("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="),
/// 			StorageEndpoint:         pulumi.String("https://mystorage.blob.core.windows.net"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_serverblobauditingpolicy" "serverBlobAuditingPolicy" {
///   blob_auditing_policy_name  = "default"
///   resource_group_name        = "blobauditingtest-4799"
///   server_name                = "blobauditingtest-6440"
///   state                      = "Enabled"
///   storage_account_access_key = "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD=="
///   storage_endpoint           = "https://mystorage.blob.core.windows.net"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ServerBlobAuditingPolicy;
/// import com.pulumi.azurenative.sql.ServerBlobAuditingPolicyArgs;
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
///         var serverBlobAuditingPolicy = new ServerBlobAuditingPolicy("serverBlobAuditingPolicy", ServerBlobAuditingPolicyArgs.builder()
///             .blobAuditingPolicyName("default")
///             .resourceGroupName("blobauditingtest-4799")
///             .serverName("blobauditingtest-6440")
///             .state("Enabled")
///             .storageAccountAccessKey("sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==")
///             .storageEndpoint("https://mystorage.blob.core.windows.net")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serverBlobAuditingPolicy = new azure_native.sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy", {
///     blobAuditingPolicyName: "default",
///     resourceGroupName: "blobauditingtest-4799",
///     serverName: "blobauditingtest-6440",
///     state: azure_native.sql.BlobAuditingPolicyState.Enabled,
///     storageAccountAccessKey: "sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storageEndpoint: "https://mystorage.blob.core.windows.net",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_blob_auditing_policy = azure_native.sql.ServerBlobAuditingPolicy("serverBlobAuditingPolicy",
///     blob_auditing_policy_name="default",
///     resource_group_name="blobauditingtest-4799",
///     server_name="blobauditingtest-6440",
///     state=azure_native.sql.BlobAuditingPolicyState.ENABLED,
///     storage_account_access_key="sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==",
///     storage_endpoint="https://mystorage.blob.core.windows.net")
///
/// ```
///
/// ```yaml
/// resources:
///   serverBlobAuditingPolicy:
///     type: azure-native:sql:ServerBlobAuditingPolicy
///     properties:
///       blobAuditingPolicyName: default
///       resourceGroupName: blobauditingtest-4799
///       serverName: blobauditingtest-6440
///       state: Enabled
///       storageAccountAccessKey: sdlfkjabc+sdlfkjsdlkfsjdfLDKFTERLKFDFKLjsdfksjdflsdkfD2342309432849328476458/3RSD==
///       storageEndpoint: https://mystorage.blob.core.windows.net
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:ServerBlobAuditingPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/auditingSettings/{blobAuditingPolicyName}
/// ```
class ServerBlobAuditingPolicy extends pulumi.CustomResource {
  /// Specifies the Actions-Groups and Actions to audit.
  ///
  /// The recommended set of action groups to use is the following combination - this will audit all the queries and stored procedures executed against the database, as well as successful and failed logins:
  ///
  /// BATCH_COMPLETED_GROUP,
  /// SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP,
  /// FAILED_DATABASE_AUTHENTICATION_GROUP.
  ///
  /// This above combination is also the set that is configured by default when enabling auditing from the Azure portal.
  ///
  /// The supported action groups to audit are (note: choose only specific groups that cover your auditing needs. Using unnecessary groups could lead to very large quantities of audit records):
  ///
  /// APPLICATION_ROLE_CHANGE_PASSWORD_GROUP
  /// BACKUP_RESTORE_GROUP
  /// DATABASE_LOGOUT_GROUP
  /// DATABASE_OBJECT_CHANGE_GROUP
  /// DATABASE_OBJECT_OWNERSHIP_CHANGE_GROUP
  /// DATABASE_OBJECT_PERMISSION_CHANGE_GROUP
  /// DATABASE_OPERATION_GROUP
  /// DATABASE_PERMISSION_CHANGE_GROUP
  /// DATABASE_PRINCIPAL_CHANGE_GROUP
  /// DATABASE_PRINCIPAL_IMPERSONATION_GROUP
  /// DATABASE_ROLE_MEMBER_CHANGE_GROUP
  /// FAILED_DATABASE_AUTHENTICATION_GROUP
  /// SCHEMA_OBJECT_ACCESS_GROUP
  /// SCHEMA_OBJECT_CHANGE_GROUP
  /// SCHEMA_OBJECT_OWNERSHIP_CHANGE_GROUP
  /// SCHEMA_OBJECT_PERMISSION_CHANGE_GROUP
  /// SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP
  /// USER_CHANGE_PASSWORD_GROUP
  /// BATCH_STARTED_GROUP
  /// BATCH_COMPLETED_GROUP
  /// DBCC_GROUP
  /// DATABASE_OWNERSHIP_CHANGE_GROUP
  /// DATABASE_CHANGE_GROUP
  /// LEDGER_OPERATION_GROUP
  ///
  /// These are groups that cover all sql statements and stored procedures executed against the database, and should not be used in combination with other groups as this will result in duplicate audit logs.
  ///
  /// For more information, see [Database-Level Audit Action Groups](https://docs.microsoft.com/en-us/sql/relational-databases/security/auditing/sql-server-audit-action-groups-and-actions#database-level-audit-action-groups).
  ///
  /// For Database auditing policy, specific Actions can also be specified (note that Actions cannot be specified for Server auditing policy). The supported actions to audit are:
  /// SELECT
  /// UPDATE
  /// INSERT
  /// DELETE
  /// EXECUTE
  /// RECEIVE
  /// REFERENCES
  ///
  /// The general form for defining an action to be audited is:
  /// {action} ON {object} BY {principal}
  ///
  /// Note that &lt;object&gt; in the above format can refer to an object like a table, view, or stored procedure, or an entire database or schema. For the latter cases, the forms DATABASE::{db_name} and SCHEMA::{schema_name} are used, respectively.
  ///
  /// For example:
  /// SELECT on dbo.myTable by public
  /// SELECT on DATABASE::myDatabase by public
  /// SELECT on SCHEMA::mySchema by public
  ///
  /// For more information, see [Database-Level Audit Actions](https://docs.microsoft.com/en-us/sql/relational-databases/security/auditing/sql-server-audit-action-groups-and-actions#database-level-audit-actions)
  late final pulumi.Output<List<String>?> auditActionsAndGroups;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies whether audit events are sent to Azure Monitor.
  /// In order to send the events to Azure Monitor, specify 'State' as 'Enabled' and 'IsAzureMonitorTargetEnabled' as true.
  ///
  /// When using REST API to configure auditing, Diagnostic Settings with 'SQLSecurityAuditEvents' diagnostic logs category on the database should be also created.
  /// Note that for server level audit you should use the 'master' database as {databaseName}.
  ///
  /// Diagnostic Settings URI format:
  /// PUT https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/providers/microsoft.insights/diagnosticSettings/{settingsName}?api-version=2017-05-01-preview
  ///
  /// For more information, see [Diagnostic Settings REST API](https://go.microsoft.com/fwlink/?linkid=2033207)
  /// or [Diagnostic Settings PowerShell](https://go.microsoft.com/fwlink/?linkid=2033043)
  late final pulumi.Output<bool?> isAzureMonitorTargetEnabled;
  /// Specifies the state of devops audit. If state is Enabled, devops logs will be sent to Azure Monitor.
  /// In order to send the events to Azure Monitor, specify 'State' as 'Enabled', 'IsAzureMonitorTargetEnabled' as true and 'IsDevopsAuditEnabled' as true
  ///
  /// When using REST API to configure auditing, Diagnostic Settings with 'DevOpsOperationsAudit' diagnostic logs category on the master database should also be created.
  ///
  /// Diagnostic Settings URI format:
  /// PUT https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Sql/servers/{serverName}/databases/master/providers/microsoft.insights/diagnosticSettings/{settingsName}?api-version=2017-05-01-preview
  ///
  /// For more information, see [Diagnostic Settings REST API](https://go.microsoft.com/fwlink/?linkid=2033207)
  /// or [Diagnostic Settings PowerShell](https://go.microsoft.com/fwlink/?linkid=2033043)
  late final pulumi.Output<bool?> isDevopsAuditEnabled;
  /// Specifies whether Managed Identity is used to access blob storage
  late final pulumi.Output<bool?> isManagedIdentityInUse;
  /// Specifies whether storageAccountAccessKey value is the storage's secondary key.
  late final pulumi.Output<bool?> isStorageSecondaryKeyInUse;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Specifies the amount of time in milliseconds that can elapse before audit actions are forced to be processed.
  /// The default minimum value is 1000 (1 second). The maximum is 2,147,483,647.
  late final pulumi.Output<int?> queueDelayMs;
  /// Specifies the number of days to keep in the audit logs in the storage account.
  late final pulumi.Output<int?> retentionDays;
  /// Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
  late final pulumi.Output<String> state;
  /// Specifies the blob storage subscription Id.
  late final pulumi.Output<String?> storageAccountSubscriptionId;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled is required.
  late final pulumi.Output<String?> storageEndpoint;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerBlobAuditingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerBlobAuditingPolicy]. {@macro pulumi_sql_server_blob_auditing_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerBlobAuditingPolicy(
    String name, {
    ServerBlobAuditingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerBlobAuditingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditActionsAndGroups = registerOutput<List<String>?>('auditActionsAndGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isAzureMonitorTargetEnabled = registerOutput<bool?>('isAzureMonitorTargetEnabled');
    isDevopsAuditEnabled = registerOutput<bool?>('isDevopsAuditEnabled');
    isManagedIdentityInUse = registerOutput<bool?>('isManagedIdentityInUse');
    isStorageSecondaryKeyInUse = registerOutput<bool?>('isStorageSecondaryKeyInUse');
    this.name = registerOutput<String>('name');
    queueDelayMs = registerOutput<int?>('queueDelayMs');
    retentionDays = registerOutput<int?>('retentionDays');
    state = registerOutput<String>('state');
    storageAccountSubscriptionId = registerOutput<String?>('storageAccountSubscriptionId');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerBlobAuditingPolicy] resource.
  ServerBlobAuditingPolicy.reference(String urn)
    : super(
        'azure-native:sql:ServerBlobAuditingPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditActionsAndGroups = registerOutput<List<String>?>('auditActionsAndGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isAzureMonitorTargetEnabled = registerOutput<bool?>('isAzureMonitorTargetEnabled');
    isDevopsAuditEnabled = registerOutput<bool?>('isDevopsAuditEnabled');
    isManagedIdentityInUse = registerOutput<bool?>('isManagedIdentityInUse');
    isStorageSecondaryKeyInUse = registerOutput<bool?>('isStorageSecondaryKeyInUse');
    this.name = registerOutput<String>('name');
    queueDelayMs = registerOutput<int?>('queueDelayMs');
    retentionDays = registerOutput<int?>('retentionDays');
    state = registerOutput<String>('state');
    storageAccountSubscriptionId = registerOutput<String?>('storageAccountSubscriptionId');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
    type = registerOutput<String>('type');
  }
}
