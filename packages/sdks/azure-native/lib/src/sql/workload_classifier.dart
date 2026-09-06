import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_classifier_args.dart';

/// Workload classifier operations for a data warehouse
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var workloadClassifier = new AzureNative.Sql.WorkloadClassifier("workloadClassifier", new()
///     {
///         Context = "test_context",
///         DatabaseName = "testdb",
///         EndTime = "14:00",
///         Importance = "high",
///         Label = "test_label",
///         MemberName = "dbo",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         StartTime = "12:00",
///         WorkloadClassifierName = "wlm_workloadclassifier",
///         WorkloadGroupName = "wlm_workloadgroup",
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
/// 		_, err := sql.NewWorkloadClassifier(ctx, "workloadClassifier", &sql.WorkloadClassifierArgs{
/// 			Context:                pulumi.String("test_context"),
/// 			DatabaseName:           pulumi.String("testdb"),
/// 			EndTime:                pulumi.String("14:00"),
/// 			Importance:             pulumi.String("high"),
/// 			Label:                  pulumi.String("test_label"),
/// 			MemberName:             pulumi.String("dbo"),
/// 			ResourceGroupName:      pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:             pulumi.String("testsvr"),
/// 			StartTime:              pulumi.String("12:00"),
/// 			WorkloadClassifierName: pulumi.String("wlm_workloadclassifier"),
/// 			WorkloadGroupName:      pulumi.String("wlm_workloadgroup"),
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
/// resource "azure-native_sql_workloadclassifier" "workloadClassifier" {
///   context                  = "test_context"
///   database_name            = "testdb"
///   end_time                 = "14:00"
///   importance               = "high"
///   label                    = "test_label"
///   member_name              = "dbo"
///   resource_group_name      = "Default-SQL-SouthEastAsia"
///   server_name              = "testsvr"
///   start_time               = "12:00"
///   workload_classifier_name = "wlm_workloadclassifier"
///   workload_group_name      = "wlm_workloadgroup"
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
/// import com.pulumi.azurenative.sql.WorkloadClassifier;
/// import com.pulumi.azurenative.sql.WorkloadClassifierArgs;
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
///         var workloadClassifier = new WorkloadClassifier("workloadClassifier", WorkloadClassifierArgs.builder()
///             .context("test_context")
///             .databaseName("testdb")
///             .endTime("14:00")
///             .importance("high")
///             .label("test_label")
///             .memberName("dbo")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .startTime("12:00")
///             .workloadClassifierName("wlm_workloadclassifier")
///             .workloadGroupName("wlm_workloadgroup")
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
/// const workloadClassifier = new azure_native.sql.WorkloadClassifier("workloadClassifier", {
///     context: "test_context",
///     databaseName: "testdb",
///     endTime: "14:00",
///     importance: "high",
///     label: "test_label",
///     memberName: "dbo",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     startTime: "12:00",
///     workloadClassifierName: "wlm_workloadclassifier",
///     workloadGroupName: "wlm_workloadgroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_classifier = azure_native.sql.WorkloadClassifier("workloadClassifier",
///     context="test_context",
///     database_name="testdb",
///     end_time="14:00",
///     importance="high",
///     label="test_label",
///     member_name="dbo",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     start_time="12:00",
///     workload_classifier_name="wlm_workloadclassifier",
///     workload_group_name="wlm_workloadgroup")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadClassifier:
///     type: azure-native:sql:WorkloadClassifier
///     properties:
///       context: test_context
///       databaseName: testdb
///       endTime: 14:00
///       importance: high
///       label: test_label
///       memberName: dbo
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       startTime: 12:00
///       workloadClassifierName: wlm_workloadclassifier
///       workloadGroupName: wlm_workloadgroup
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
///     var workloadClassifier = new AzureNative.Sql.WorkloadClassifier("workloadClassifier", new()
///     {
///         DatabaseName = "testdb",
///         MemberName = "dbo",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         WorkloadClassifierName = "wlm_workloadclassifier",
///         WorkloadGroupName = "wlm_workloadgroup",
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
/// 		_, err := sql.NewWorkloadClassifier(ctx, "workloadClassifier", &sql.WorkloadClassifierArgs{
/// 			DatabaseName:           pulumi.String("testdb"),
/// 			MemberName:             pulumi.String("dbo"),
/// 			ResourceGroupName:      pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:             pulumi.String("testsvr"),
/// 			WorkloadClassifierName: pulumi.String("wlm_workloadclassifier"),
/// 			WorkloadGroupName:      pulumi.String("wlm_workloadgroup"),
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
/// resource "azure-native_sql_workloadclassifier" "workloadClassifier" {
///   database_name            = "testdb"
///   member_name              = "dbo"
///   resource_group_name      = "Default-SQL-SouthEastAsia"
///   server_name              = "testsvr"
///   workload_classifier_name = "wlm_workloadclassifier"
///   workload_group_name      = "wlm_workloadgroup"
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
/// import com.pulumi.azurenative.sql.WorkloadClassifier;
/// import com.pulumi.azurenative.sql.WorkloadClassifierArgs;
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
///         var workloadClassifier = new WorkloadClassifier("workloadClassifier", WorkloadClassifierArgs.builder()
///             .databaseName("testdb")
///             .memberName("dbo")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .workloadClassifierName("wlm_workloadclassifier")
///             .workloadGroupName("wlm_workloadgroup")
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
/// const workloadClassifier = new azure_native.sql.WorkloadClassifier("workloadClassifier", {
///     databaseName: "testdb",
///     memberName: "dbo",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     workloadClassifierName: "wlm_workloadclassifier",
///     workloadGroupName: "wlm_workloadgroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_classifier = azure_native.sql.WorkloadClassifier("workloadClassifier",
///     database_name="testdb",
///     member_name="dbo",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     workload_classifier_name="wlm_workloadclassifier",
///     workload_group_name="wlm_workloadgroup")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadClassifier:
///     type: azure-native:sql:WorkloadClassifier
///     properties:
///       databaseName: testdb
///       memberName: dbo
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       workloadClassifierName: wlm_workloadclassifier
///       workloadGroupName: wlm_workloadgroup
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
/// $ pulumi import azure-native:sql:WorkloadClassifier wlm_workloadclassifier /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/workloadGroups/{workloadGroupName}/workloadClassifiers/{workloadClassifierName}
/// ```
class WorkloadClassifier extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The workload classifier context.
  late final pulumi.Output<String?> context;
  /// The workload classifier end time for classification.
  late final pulumi.Output<String?> endTime;
  /// The workload classifier importance.
  late final pulumi.Output<String?> importance;
  /// The workload classifier label.
  late final pulumi.Output<String?> label;
  /// The workload classifier member name.
  late final pulumi.Output<String> memberName;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The workload classifier start time for classification.
  late final pulumi.Output<String?> startTime;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadClassifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadClassifier]. {@macro pulumi_sql_workload_classifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadClassifier(
    String name, {
    WorkloadClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:WorkloadClassifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    context = registerOutput<String?>('context');
    endTime = registerOutput<String?>('endTime');
    importance = registerOutput<String?>('importance');
    label = registerOutput<String?>('label');
    memberName = registerOutput<String>('memberName');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkloadClassifier] resource.
  WorkloadClassifier.reference(String urn)
    : super(
        'azure-native:sql:WorkloadClassifier',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    context = registerOutput<String?>('context');
    endTime = registerOutput<String?>('endTime');
    importance = registerOutput<String?>('importance');
    label = registerOutput<String?>('label');
    memberName = registerOutput<String>('memberName');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    type = registerOutput<String>('type');
  }
}
