import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_group_args.dart';

/// Workload group operations for a data warehouse
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var workloadGroup = new AzureNative.Sql.WorkloadGroup("workloadGroup", new()
///     {
///         DatabaseName = "testdb",
///         Importance = "normal",
///         MaxResourcePercent = 100,
///         MaxResourcePercentPerRequest = 3,
///         MinResourcePercent = 0,
///         MinResourcePercentPerRequest = 3,
///         QueryExecutionTimeout = 0,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         WorkloadGroupName = "smallrc",
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
/// 		_, err := sql.NewWorkloadGroup(ctx, "workloadGroup", &sql.WorkloadGroupArgs{
/// 			DatabaseName:                 pulumi.String("testdb"),
/// 			Importance:                   pulumi.String("normal"),
/// 			MaxResourcePercent:           pulumi.Int(100),
/// 			MaxResourcePercentPerRequest: pulumi.Float64(3),
/// 			MinResourcePercent:           pulumi.Int(0),
/// 			MinResourcePercentPerRequest: pulumi.Float64(3),
/// 			QueryExecutionTimeout:        pulumi.Int(0),
/// 			ResourceGroupName:            pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:                   pulumi.String("testsvr"),
/// 			WorkloadGroupName:            pulumi.String("smallrc"),
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
/// import com.pulumi.azurenative.sql.WorkloadGroup;
/// import com.pulumi.azurenative.sql.WorkloadGroupArgs;
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
///         var workloadGroup = new WorkloadGroup("workloadGroup", WorkloadGroupArgs.builder()
///             .databaseName("testdb")
///             .importance("normal")
///             .maxResourcePercent(100)
///             .maxResourcePercentPerRequest(3.0)
///             .minResourcePercent(0)
///             .minResourcePercentPerRequest(3.0)
///             .queryExecutionTimeout(0)
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .workloadGroupName("smallrc")
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
/// const workloadGroup = new azure_native.sql.WorkloadGroup("workloadGroup", {
///     databaseName: "testdb",
///     importance: "normal",
///     maxResourcePercent: 100,
///     maxResourcePercentPerRequest: 3,
///     minResourcePercent: 0,
///     minResourcePercentPerRequest: 3,
///     queryExecutionTimeout: 0,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     workloadGroupName: "smallrc",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_group = azure_native.sql.WorkloadGroup("workloadGroup",
///     database_name="testdb",
///     importance="normal",
///     max_resource_percent=100,
///     max_resource_percent_per_request=3,
///     min_resource_percent=0,
///     min_resource_percent_per_request=3,
///     query_execution_timeout=0,
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     workload_group_name="smallrc")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadGroup:
///     type: azure-native:sql:WorkloadGroup
///     properties:
///       databaseName: testdb
///       importance: normal
///       maxResourcePercent: 100
///       maxResourcePercentPerRequest: 3
///       minResourcePercent: 0
///       minResourcePercentPerRequest: 3
///       queryExecutionTimeout: 0
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       workloadGroupName: smallrc
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
///     var workloadGroup = new AzureNative.Sql.WorkloadGroup("workloadGroup", new()
///     {
///         DatabaseName = "testdb",
///         MaxResourcePercent = 100,
///         MinResourcePercent = 0,
///         MinResourcePercentPerRequest = 3,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         WorkloadGroupName = "smallrc",
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
/// 		_, err := sql.NewWorkloadGroup(ctx, "workloadGroup", &sql.WorkloadGroupArgs{
/// 			DatabaseName:                 pulumi.String("testdb"),
/// 			MaxResourcePercent:           pulumi.Int(100),
/// 			MinResourcePercent:           pulumi.Int(0),
/// 			MinResourcePercentPerRequest: pulumi.Float64(3),
/// 			ResourceGroupName:            pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:                   pulumi.String("testsvr"),
/// 			WorkloadGroupName:            pulumi.String("smallrc"),
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
/// import com.pulumi.azurenative.sql.WorkloadGroup;
/// import com.pulumi.azurenative.sql.WorkloadGroupArgs;
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
///         var workloadGroup = new WorkloadGroup("workloadGroup", WorkloadGroupArgs.builder()
///             .databaseName("testdb")
///             .maxResourcePercent(100)
///             .minResourcePercent(0)
///             .minResourcePercentPerRequest(3.0)
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .workloadGroupName("smallrc")
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
/// const workloadGroup = new azure_native.sql.WorkloadGroup("workloadGroup", {
///     databaseName: "testdb",
///     maxResourcePercent: 100,
///     minResourcePercent: 0,
///     minResourcePercentPerRequest: 3,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     workloadGroupName: "smallrc",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_group = azure_native.sql.WorkloadGroup("workloadGroup",
///     database_name="testdb",
///     max_resource_percent=100,
///     min_resource_percent=0,
///     min_resource_percent_per_request=3,
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     workload_group_name="smallrc")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadGroup:
///     type: azure-native:sql:WorkloadGroup
///     properties:
///       databaseName: testdb
///       maxResourcePercent: 100
///       minResourcePercent: 0
///       minResourcePercentPerRequest: 3
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       workloadGroupName: smallrc
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
/// $ pulumi import azure-native:sql:WorkloadGroup smallrc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/workloadGroups/{workloadGroupName}
/// ```
class WorkloadGroup extends pulumi.CustomResource {
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
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The workload group query execution timeout.
  late final pulumi.Output<int?> queryExecutionTimeout;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadGroup]. {@macro pulumi_sql_workload_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadGroup(
    String name, {
    WorkloadGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:WorkloadGroup',
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
