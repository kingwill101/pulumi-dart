import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_workload_group_args.dart';

/// Workload group operations for a sql pool
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a workload group with all properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolWorkloadGroup = new AzureNative.Synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", new()
///     {
///         Importance = "normal",
///         MaxResourcePercent = 100,
///         MaxResourcePercentPerRequest = 3,
///         MinResourcePercent = 0,
///         MinResourcePercentPerRequest = 3,
///         QueryExecutionTimeout = 0,
///         ResourceGroupName = "sqlcrudtest-6852",
///         SqlPoolName = "sqlcrudtest-9187",
///         WorkloadGroupName = "smallrc",
///         WorkspaceName = "sqlcrudtest-2080",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewSqlPoolWorkloadGroup(ctx, "sqlPoolWorkloadGroup", &synapse.SqlPoolWorkloadGroupArgs{
/// 			Importance:                   pulumi.String("normal"),
/// 			MaxResourcePercent:           pulumi.Int(100),
/// 			MaxResourcePercentPerRequest: pulumi.Float64(3),
/// 			MinResourcePercent:           pulumi.Int(0),
/// 			MinResourcePercentPerRequest: pulumi.Float64(3),
/// 			QueryExecutionTimeout:        pulumi.Int(0),
/// 			ResourceGroupName:            pulumi.String("sqlcrudtest-6852"),
/// 			SqlPoolName:                  pulumi.String("sqlcrudtest-9187"),
/// 			WorkloadGroupName:            pulumi.String("smallrc"),
/// 			WorkspaceName:                pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_synapse_sqlpoolworkloadgroup" "sqlPoolWorkloadGroup" {
///   importance                       = "normal"
///   max_resource_percent             = 100
///   max_resource_percent_per_request = 3
///   min_resource_percent             = 0
///   min_resource_percent_per_request = 3
///   query_execution_timeout          = 0
///   resource_group_name              = "sqlcrudtest-6852"
///   sql_pool_name                    = "sqlcrudtest-9187"
///   workload_group_name              = "smallrc"
///   workspace_name                   = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadGroup;
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadGroupArgs;
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
///         var sqlPoolWorkloadGroup = new SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", SqlPoolWorkloadGroupArgs.builder()
///             .importance("normal")
///             .maxResourcePercent(100)
///             .maxResourcePercentPerRequest(3.0)
///             .minResourcePercent(0)
///             .minResourcePercentPerRequest(3.0)
///             .queryExecutionTimeout(0)
///             .resourceGroupName("sqlcrudtest-6852")
///             .sqlPoolName("sqlcrudtest-9187")
///             .workloadGroupName("smallrc")
///             .workspaceName("sqlcrudtest-2080")
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
/// const sqlPoolWorkloadGroup = new azure_native.synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", {
///     importance: "normal",
///     maxResourcePercent: 100,
///     maxResourcePercentPerRequest: 3,
///     minResourcePercent: 0,
///     minResourcePercentPerRequest: 3,
///     queryExecutionTimeout: 0,
///     resourceGroupName: "sqlcrudtest-6852",
///     sqlPoolName: "sqlcrudtest-9187",
///     workloadGroupName: "smallrc",
///     workspaceName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_workload_group = azure_native.synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup",
///     importance="normal",
///     max_resource_percent=100,
///     max_resource_percent_per_request=float(3),
///     min_resource_percent=0,
///     min_resource_percent_per_request=float(3),
///     query_execution_timeout=0,
///     resource_group_name="sqlcrudtest-6852",
///     sql_pool_name="sqlcrudtest-9187",
///     workload_group_name="smallrc",
///     workspace_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolWorkloadGroup:
///     type: azure-native:synapse:SqlPoolWorkloadGroup
///     properties:
///       importance: normal
///       maxResourcePercent: 100
///       maxResourcePercentPerRequest: 3
///       minResourcePercent: 0
///       minResourcePercentPerRequest: 3
///       queryExecutionTimeout: 0
///       resourceGroupName: sqlcrudtest-6852
///       sqlPoolName: sqlcrudtest-9187
///       workloadGroupName: smallrc
///       workspaceName: sqlcrudtest-2080
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a workload group with the required properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolWorkloadGroup = new AzureNative.Synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", new()
///     {
///         MaxResourcePercent = 100,
///         MinResourcePercent = 0,
///         MinResourcePercentPerRequest = 3,
///         ResourceGroupName = "sqlcrudtest-6852",
///         SqlPoolName = "sqlcrudtest-9187",
///         WorkloadGroupName = "smallrc",
///         WorkspaceName = "sqlcrudtest-2080",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewSqlPoolWorkloadGroup(ctx, "sqlPoolWorkloadGroup", &synapse.SqlPoolWorkloadGroupArgs{
/// 			MaxResourcePercent:           pulumi.Int(100),
/// 			MinResourcePercent:           pulumi.Int(0),
/// 			MinResourcePercentPerRequest: pulumi.Float64(3),
/// 			ResourceGroupName:            pulumi.String("sqlcrudtest-6852"),
/// 			SqlPoolName:                  pulumi.String("sqlcrudtest-9187"),
/// 			WorkloadGroupName:            pulumi.String("smallrc"),
/// 			WorkspaceName:                pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_synapse_sqlpoolworkloadgroup" "sqlPoolWorkloadGroup" {
///   max_resource_percent             = 100
///   min_resource_percent             = 0
///   min_resource_percent_per_request = 3
///   resource_group_name              = "sqlcrudtest-6852"
///   sql_pool_name                    = "sqlcrudtest-9187"
///   workload_group_name              = "smallrc"
///   workspace_name                   = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadGroup;
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadGroupArgs;
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
///         var sqlPoolWorkloadGroup = new SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", SqlPoolWorkloadGroupArgs.builder()
///             .maxResourcePercent(100)
///             .minResourcePercent(0)
///             .minResourcePercentPerRequest(3.0)
///             .resourceGroupName("sqlcrudtest-6852")
///             .sqlPoolName("sqlcrudtest-9187")
///             .workloadGroupName("smallrc")
///             .workspaceName("sqlcrudtest-2080")
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
/// const sqlPoolWorkloadGroup = new azure_native.synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup", {
///     maxResourcePercent: 100,
///     minResourcePercent: 0,
///     minResourcePercentPerRequest: 3,
///     resourceGroupName: "sqlcrudtest-6852",
///     sqlPoolName: "sqlcrudtest-9187",
///     workloadGroupName: "smallrc",
///     workspaceName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_workload_group = azure_native.synapse.SqlPoolWorkloadGroup("sqlPoolWorkloadGroup",
///     max_resource_percent=100,
///     min_resource_percent=0,
///     min_resource_percent_per_request=float(3),
///     resource_group_name="sqlcrudtest-6852",
///     sql_pool_name="sqlcrudtest-9187",
///     workload_group_name="smallrc",
///     workspace_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolWorkloadGroup:
///     type: azure-native:synapse:SqlPoolWorkloadGroup
///     properties:
///       maxResourcePercent: 100
///       minResourcePercent: 0
///       minResourcePercentPerRequest: 3
///       resourceGroupName: sqlcrudtest-6852
///       sqlPoolName: sqlcrudtest-9187
///       workloadGroupName: smallrc
///       workspaceName: sqlcrudtest-2080
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
/// $ pulumi import azure-native:synapse:SqlPoolWorkloadGroup smallrc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}/workloadGroups/{workloadGroupName}
/// ```
class SqlPoolWorkloadGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The workload group importance level.
  late final pulumi.Output<String?> importance;
  /// The workload group cap percentage resource.
  late final pulumi.Output<int> maxResourcePercent;
  /// The workload group request maximum grant percentage.
  late final pulumi.Output<double?> maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  late final pulumi.Output<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  late final pulumi.Output<double> minResourcePercentPerRequest;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The workload group query execution timeout.
  late final pulumi.Output<int?> queryExecutionTimeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlPoolWorkloadGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolWorkloadGroup]. {@macro pulumi_synapse_sql_pool_workload_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolWorkloadGroup(
    String name, {
    SqlPoolWorkloadGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:SqlPoolWorkloadGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    importance = registerOutput<String?>('importance');
    maxResourcePercent = registerOutput<int>('maxResourcePercent');
    maxResourcePercentPerRequest = registerOutput<double?>('maxResourcePercentPerRequest');
    minResourcePercent = registerOutput<int>('minResourcePercent');
    minResourcePercentPerRequest = registerOutput<double>('minResourcePercentPerRequest');
    this.name = registerOutput<String>('name');
    queryExecutionTimeout = registerOutput<int?>('queryExecutionTimeout');
    type = registerOutput<String>('type');
  }
}
