import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_extended_auditing_policy_args.dart';
import 'database_extended_auditing_policy_state.dart';

/// Manages a MS SQL Database Extended Auditing Policy.
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
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "AdminPassword123!",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "example-db",
///     serverId: exampleServer.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleDatabaseExtendedAuditingPolicy = new azure.mssql.DatabaseExtendedAuditingPolicy("example", {
///     databaseId: exampleDatabase.id,
///     storageEndpoint: exampleAccount.primaryBlobEndpoint,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
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
/// example_server = azure.mssql.Server("example",
///     name="example-sqlserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="AdminPassword123!")
/// example_database = azure.mssql.Database("example",
///     name="example-db",
///     server_id=example_server.id)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_database_extended_auditing_policy = azure.mssql.DatabaseExtendedAuditingPolicy("example",
///     database_id=example_database.id,
///     storage_endpoint=example_account.primary_blob_endpoint,
///     storage_account_access_key=example_account.primary_access_key,
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
///     var exampleServer = new Azure.MSSql.Server("example", new()
///     {
///         Name = "example-sqlserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "AdminPassword123!",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "example-db",
///         ServerId = exampleServer.Id,
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
///     var exampleDatabaseExtendedAuditingPolicy = new Azure.MSSql.DatabaseExtendedAuditingPolicy("example", new()
///     {
///         DatabaseId = exampleDatabase.Id,
///         StorageEndpoint = exampleAccount.PrimaryBlobEndpoint,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
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
/// 		exampleServer, err := mssql.NewServer(ctx, "example", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("example-sqlserver"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("AdminPassword123!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:     pulumi.String("example-db"),
/// 			ServerId: exampleServer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewDatabaseExtendedAuditingPolicy(ctx, "example", &mssql.DatabaseExtendedAuditingPolicyArgs{
/// 			DatabaseId:                         exampleDatabase.ID(),
/// 			StorageEndpoint:                    exampleAccount.PrimaryBlobEndpoint,
/// 			StorageAccountAccessKey:            exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.mssql.DatabaseExtendedAuditingPolicy;
/// import com.pulumi.azure.mssql.DatabaseExtendedAuditingPolicyArgs;
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
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("AdminPassword123!")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example-db")
///             .serverId(exampleServer.id())
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
///         var exampleDatabaseExtendedAuditingPolicy = new DatabaseExtendedAuditingPolicy("exampleDatabaseExtendedAuditingPolicy", DatabaseExtendedAuditingPolicyArgs.builder()
///             .databaseId(exampleDatabase.id())
///             .storageEndpoint(exampleAccount.primaryBlobEndpoint())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
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
///   exampleServer:
///     type: azure:mssql:Server
///     name: example
///     properties:
///       name: example-sqlserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: AdminPassword123!
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: example-db
///       serverId: ${exampleServer.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleDatabaseExtendedAuditingPolicy:
///     type: azure:mssql:DatabaseExtendedAuditingPolicy
///     name: example
///     properties:
///       databaseId: ${exampleDatabase.id}
///       storageEndpoint: ${exampleAccount.primaryBlobEndpoint}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       storageAccountAccessKeyIsSecondary: false
///       retentionInDays: 6
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
/// MS SQL Database Extended Auditing Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/databaseExtendedAuditingPolicy:DatabaseExtendedAuditingPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Sql/servers/sqlServer1/databases/db1/extendedAuditingSettings/default
/// ```
class DatabaseExtendedAuditingPolicy extends pulumi.CustomResource {
  /// The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseId;
  /// Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** If `enabled` is `true`, `storage_endpoint` or `log_monitoring_enabled` are required.
  late final pulumi.Output<bool?> enabled;
  /// Enable audit events to Azure Monitor? Defaults to `true`.
  ///
  /// &gt; **Note:** To enable sending audit events to Log Analytics, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_log_analytics` directory within the GitHub Repository.  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics.
  /// To enable audit events to Eventhub, please refer to the example which can be found in the `./examples/sql-azure/sql_auditing_eventhub` directory within the GitHub Repository.
  late final pulumi.Output<bool?> logMonitoringEnabled;
  /// The number of days to retain logs for in the storage account. Defaults to `0`.
  late final pulumi.Output<int?> retentionInDays;
  /// The access key to use for the auditing storage account.
  late final pulumi.Output<String?> storageAccountAccessKey;
  /// Is `storage_account_access_key` value the storage's secondary key?
  late final pulumi.Output<bool?> storageAccountAccessKeyIsSecondary;
  /// The blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all extended auditing logs.
  late final pulumi.Output<String?> storageEndpoint;

  /// Creates a new [DatabaseExtendedAuditingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseExtendedAuditingPolicy]. {@macro pulumi_mssql_database_extended_auditing_policy_database_extended_auditing_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseExtendedAuditingPolicy(
    String name, {
    DatabaseExtendedAuditingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/databaseExtendedAuditingPolicy:DatabaseExtendedAuditingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    databaseId = registerOutput<String>('databaseId');
    enabled = registerOutput<bool?>('enabled');
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    retentionInDays = registerOutput<int?>('retentionInDays');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageAccountAccessKeyIsSecondary = registerOutput<bool?>('storageAccountAccessKeyIsSecondary');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }

  /// Gets an existing [DatabaseExtendedAuditingPolicy] resource's state with the given [name] and [id].
  static DatabaseExtendedAuditingPolicy get(
    String name,
    pulumi.Input<String> id, {
    DatabaseExtendedAuditingPolicyState? state,
  }) {
    return DatabaseExtendedAuditingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseExtendedAuditingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/databaseExtendedAuditingPolicy:DatabaseExtendedAuditingPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    databaseId = registerOutput<String>('databaseId');
    enabled = registerOutput<bool?>('enabled');
    logMonitoringEnabled = registerOutput<bool?>('logMonitoringEnabled');
    retentionInDays = registerOutput<int?>('retentionInDays');
    storageAccountAccessKey = registerOutput<String?>('storageAccountAccessKey');
    storageAccountAccessKeyIsSecondary = registerOutput<bool?>('storageAccountAccessKeyIsSecondary');
    storageEndpoint = registerOutput<String?>('storageEndpoint');
  }
}
