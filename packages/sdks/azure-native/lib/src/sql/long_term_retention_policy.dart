import 'package:pulumi/pulumi.dart' as pulumi;
import 'long_term_retention_policy_args.dart';

/// A long term retention policy.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var longTermRetentionPolicy = new AzureNative.Sql.LongTermRetentionPolicy("longTermRetentionPolicy", new()
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
/// 		_, err := sql.NewLongTermRetentionPolicy(ctx, "longTermRetentionPolicy", &sql.LongTermRetentionPolicyArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.LongTermRetentionPolicy;
/// import com.pulumi.azurenative.sql.LongTermRetentionPolicyArgs;
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
///         var longTermRetentionPolicy = new LongTermRetentionPolicy("longTermRetentionPolicy", LongTermRetentionPolicyArgs.builder()
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
/// const longTermRetentionPolicy = new azure_native.sql.LongTermRetentionPolicy("longTermRetentionPolicy", {
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
/// long_term_retention_policy = azure_native.sql.LongTermRetentionPolicy("longTermRetentionPolicy",
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
///   longTermRetentionPolicy:
///     type: azure-native:sql:LongTermRetentionPolicy
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
/// $ pulumi import azure-native:sql:LongTermRetentionPolicy default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/backupLongTermRetentionPolicies/{policyName}
/// ```
class LongTermRetentionPolicy extends pulumi.CustomResource {
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

  /// Creates a new [LongTermRetentionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LongTermRetentionPolicy]. {@macro pulumi_sql_long_term_retention_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LongTermRetentionPolicy(
    String name, {
    LongTermRetentionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:LongTermRetentionPolicy',
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
}
