import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_short_term_retention_policy_args.dart';

/// A short term retention policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update the short term retention policy for the database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupShortTermRetentionPolicy = new AzureNative.Sql.BackupShortTermRetentionPolicy("backupShortTermRetentionPolicy", new()
///     {
///         DatabaseName = "testdb",
///         DiffBackupIntervalInHours = 24,
///         PolicyName = "default",
///         ResourceGroupName = "resourceGroup",
///         RetentionDays = 7,
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewBackupShortTermRetentionPolicy(ctx, "backupShortTermRetentionPolicy", &sql.BackupShortTermRetentionPolicyArgs{
/// 			DatabaseName:              pulumi.String("testdb"),
/// 			DiffBackupIntervalInHours: pulumi.Int(24),
/// 			PolicyName:                pulumi.String("default"),
/// 			ResourceGroupName:         pulumi.String("resourceGroup"),
/// 			RetentionDays:             pulumi.Int(7),
/// 			ServerName:                pulumi.String("testsvr"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.BackupShortTermRetentionPolicy;
/// import com.pulumi.azurenative.sql.BackupShortTermRetentionPolicyArgs;
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
///         var backupShortTermRetentionPolicy = new BackupShortTermRetentionPolicy("backupShortTermRetentionPolicy", BackupShortTermRetentionPolicyArgs.builder()
///             .databaseName("testdb")
///             .diffBackupIntervalInHours(24)
///             .policyName("default")
///             .resourceGroupName("resourceGroup")
///             .retentionDays(7)
///             .serverName("testsvr")
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
/// const backupShortTermRetentionPolicy = new azure_native.sql.BackupShortTermRetentionPolicy("backupShortTermRetentionPolicy", {
///     databaseName: "testdb",
///     diffBackupIntervalInHours: 24,
///     policyName: "default",
///     resourceGroupName: "resourceGroup",
///     retentionDays: 7,
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_short_term_retention_policy = azure_native.sql.BackupShortTermRetentionPolicy("backupShortTermRetentionPolicy",
///     database_name="testdb",
///     diff_backup_interval_in_hours=24,
///     policy_name="default",
///     resource_group_name="resourceGroup",
///     retention_days=7,
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   backupShortTermRetentionPolicy:
///     type: azure-native:sql:BackupShortTermRetentionPolicy
///     properties:
///       databaseName: testdb
///       diffBackupIntervalInHours: 24
///       policyName: default
///       resourceGroupName: resourceGroup
///       retentionDays: 7
///       serverName: testsvr
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
/// $ pulumi import azure-native:sql:BackupShortTermRetentionPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/backupShortTermRetentionPolicies/{policyName}
/// ```
class BackupShortTermRetentionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The differential backup interval in hours. This is how many interval hours between each differential backup will be supported. This is only applicable to live databases but not dropped databases.
  late final pulumi.Output<int?> diffBackupIntervalInHours;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  late final pulumi.Output<int?> retentionDays;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [BackupShortTermRetentionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupShortTermRetentionPolicy]. {@macro pulumi_sql_backup_short_term_retention_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupShortTermRetentionPolicy(
    String name, {
    BackupShortTermRetentionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:BackupShortTermRetentionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.diffBackupIntervalInHours = registerOutput<int?>('diffBackupIntervalInHours');
    this.name = registerOutput<String>('name');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.type = registerOutput<String>('type');
  }
}
