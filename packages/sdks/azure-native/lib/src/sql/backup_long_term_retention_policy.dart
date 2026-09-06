import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_long_term_retention_policy_args.dart';

/// A long term retention policy.
///
/// Uses Azure REST API version 2017-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2017-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the long term retention policy for the database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupLongTermRetentionPolicy = new AzureNative.Sql.BackupLongTermRetentionPolicy("backupLongTermRetentionPolicy", new()
///     {
///         DatabaseName = "testDatabase",
///         MonthlyRetention = "P1Y",
///         PolicyName = "default",
///         ResourceGroupName = "resourceGroup",
///         ServerName = "testserver",
///         WeekOfYear = 5,
///         WeeklyRetention = "P1M",
///         YearlyRetention = "P5Y",
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
/// 		_, err := sql.NewBackupLongTermRetentionPolicy(ctx, "backupLongTermRetentionPolicy", &sql.BackupLongTermRetentionPolicyArgs{
/// 			DatabaseName:      pulumi.String("testDatabase"),
/// 			MonthlyRetention:  pulumi.String("P1Y"),
/// 			PolicyName:        pulumi.String("default"),
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			ServerName:        pulumi.String("testserver"),
/// 			WeekOfYear:        pulumi.Int(5),
/// 			WeeklyRetention:   pulumi.String("P1M"),
/// 			YearlyRetention:   pulumi.String("P5Y"),
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
/// resource "azure-native_sql_backuplongtermretentionpolicy" "backupLongTermRetentionPolicy" {
///   database_name       = "testDatabase"
///   monthly_retention   = "P1Y"
///   policy_name         = "default"
///   resource_group_name = "resourceGroup"
///   server_name         = "testserver"
///   week_of_year        = 5
///   weekly_retention    = "P1M"
///   yearly_retention    = "P5Y"
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
/// import com.pulumi.azurenative.sql.BackupLongTermRetentionPolicy;
/// import com.pulumi.azurenative.sql.BackupLongTermRetentionPolicyArgs;
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
///         var backupLongTermRetentionPolicy = new BackupLongTermRetentionPolicy("backupLongTermRetentionPolicy", BackupLongTermRetentionPolicyArgs.builder()
///             .databaseName("testDatabase")
///             .monthlyRetention("P1Y")
///             .policyName("default")
///             .resourceGroupName("resourceGroup")
///             .serverName("testserver")
///             .weekOfYear(5)
///             .weeklyRetention("P1M")
///             .yearlyRetention("P5Y")
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
/// const backupLongTermRetentionPolicy = new azure_native.sql.BackupLongTermRetentionPolicy("backupLongTermRetentionPolicy", {
///     databaseName: "testDatabase",
///     monthlyRetention: "P1Y",
///     policyName: "default",
///     resourceGroupName: "resourceGroup",
///     serverName: "testserver",
///     weekOfYear: 5,
///     weeklyRetention: "P1M",
///     yearlyRetention: "P5Y",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_long_term_retention_policy = azure_native.sql.BackupLongTermRetentionPolicy("backupLongTermRetentionPolicy",
///     database_name="testDatabase",
///     monthly_retention="P1Y",
///     policy_name="default",
///     resource_group_name="resourceGroup",
///     server_name="testserver",
///     week_of_year=5,
///     weekly_retention="P1M",
///     yearly_retention="P5Y")
///
/// ```
///
/// ```yaml
/// resources:
///   backupLongTermRetentionPolicy:
///     type: azure-native:sql:BackupLongTermRetentionPolicy
///     properties:
///       databaseName: testDatabase
///       monthlyRetention: P1Y
///       policyName: default
///       resourceGroupName: resourceGroup
///       serverName: testserver
///       weekOfYear: 5
///       weeklyRetention: P1M
///       yearlyRetention: P5Y
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
/// $ pulumi import azure-native:sql:BackupLongTermRetentionPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/backupLongTermRetentionPolicies/{policyName}
/// ```
class BackupLongTermRetentionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  late final pulumi.Output<String?> monthlyRetention;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The week of year to take the yearly backup in an ISO 8601 format.
  late final pulumi.Output<int?> weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  late final pulumi.Output<String?> weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  late final pulumi.Output<String?> yearlyRetention;

  /// Creates a new [BackupLongTermRetentionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupLongTermRetentionPolicy]. {@macro pulumi_sql_backup_long_term_retention_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupLongTermRetentionPolicy(
    String name, {
    BackupLongTermRetentionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:BackupLongTermRetentionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    monthlyRetention = registerOutput<String?>('monthlyRetention');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    weekOfYear = registerOutput<int?>('weekOfYear');
    weeklyRetention = registerOutput<String?>('weeklyRetention');
    yearlyRetention = registerOutput<String?>('yearlyRetention');
  }

  /// Creates a typed reference to an existing [BackupLongTermRetentionPolicy] resource.
  BackupLongTermRetentionPolicy.reference(String urn)
    : super(
        'azure-native:sql:BackupLongTermRetentionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    monthlyRetention = registerOutput<String?>('monthlyRetention');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    weekOfYear = registerOutput<int?>('weekOfYear');
    weeklyRetention = registerOutput<String?>('weeklyRetention');
    yearlyRetention = registerOutput<String?>('yearlyRetention');
  }
}
