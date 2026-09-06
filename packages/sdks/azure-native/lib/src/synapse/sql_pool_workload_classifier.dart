import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_workload_classifier_args.dart';

/// Workload classifier operations for a data warehouse
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a workload classifier with all properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolWorkloadClassifier = new AzureNative.Synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", new()
///     {
///         Context = "test_context",
///         EndTime = "14:00",
///         Importance = "high",
///         Label = "test_label",
///         MemberName = "dbo",
///         ResourceGroupName = "sqlcrudtest-6852",
///         SqlPoolName = "sqlcrudtest-9187",
///         StartTime = "12:00",
///         WorkloadClassifierName = "wlm_workloadclassifier",
///         WorkloadGroupName = "wlm_workloadgroup",
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
/// 		_, err := synapse.NewSqlPoolWorkloadClassifier(ctx, "sqlPoolWorkloadClassifier", &synapse.SqlPoolWorkloadClassifierArgs{
/// 			Context:                pulumi.String("test_context"),
/// 			EndTime:                pulumi.String("14:00"),
/// 			Importance:             pulumi.String("high"),
/// 			Label:                  pulumi.String("test_label"),
/// 			MemberName:             pulumi.String("dbo"),
/// 			ResourceGroupName:      pulumi.String("sqlcrudtest-6852"),
/// 			SqlPoolName:            pulumi.String("sqlcrudtest-9187"),
/// 			StartTime:              pulumi.String("12:00"),
/// 			WorkloadClassifierName: pulumi.String("wlm_workloadclassifier"),
/// 			WorkloadGroupName:      pulumi.String("wlm_workloadgroup"),
/// 			WorkspaceName:          pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_synapse_sqlpoolworkloadclassifier" "sqlPoolWorkloadClassifier" {
///   context                  = "test_context"
///   end_time                 = "14:00"
///   importance               = "high"
///   label                    = "test_label"
///   member_name              = "dbo"
///   resource_group_name      = "sqlcrudtest-6852"
///   sql_pool_name            = "sqlcrudtest-9187"
///   start_time               = "12:00"
///   workload_classifier_name = "wlm_workloadclassifier"
///   workload_group_name      = "wlm_workloadgroup"
///   workspace_name           = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadClassifier;
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadClassifierArgs;
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
///         var sqlPoolWorkloadClassifier = new SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", SqlPoolWorkloadClassifierArgs.builder()
///             .context("test_context")
///             .endTime("14:00")
///             .importance("high")
///             .label("test_label")
///             .memberName("dbo")
///             .resourceGroupName("sqlcrudtest-6852")
///             .sqlPoolName("sqlcrudtest-9187")
///             .startTime("12:00")
///             .workloadClassifierName("wlm_workloadclassifier")
///             .workloadGroupName("wlm_workloadgroup")
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
/// const sqlPoolWorkloadClassifier = new azure_native.synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", {
///     context: "test_context",
///     endTime: "14:00",
///     importance: "high",
///     label: "test_label",
///     memberName: "dbo",
///     resourceGroupName: "sqlcrudtest-6852",
///     sqlPoolName: "sqlcrudtest-9187",
///     startTime: "12:00",
///     workloadClassifierName: "wlm_workloadclassifier",
///     workloadGroupName: "wlm_workloadgroup",
///     workspaceName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_workload_classifier = azure_native.synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier",
///     context="test_context",
///     end_time="14:00",
///     importance="high",
///     label="test_label",
///     member_name="dbo",
///     resource_group_name="sqlcrudtest-6852",
///     sql_pool_name="sqlcrudtest-9187",
///     start_time="12:00",
///     workload_classifier_name="wlm_workloadclassifier",
///     workload_group_name="wlm_workloadgroup",
///     workspace_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolWorkloadClassifier:
///     type: azure-native:synapse:SqlPoolWorkloadClassifier
///     properties:
///       context: test_context
///       endTime: 14:00
///       importance: high
///       label: test_label
///       memberName: dbo
///       resourceGroupName: sqlcrudtest-6852
///       sqlPoolName: sqlcrudtest-9187
///       startTime: 12:00
///       workloadClassifierName: wlm_workloadclassifier
///       workloadGroupName: wlm_workloadgroup
///       workspaceName: sqlcrudtest-2080
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a workload classifier with the required properties specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolWorkloadClassifier = new AzureNative.Synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", new()
///     {
///         MemberName = "dbo",
///         ResourceGroupName = "sqlcrudtest-6852",
///         SqlPoolName = "sqlcrudtest-9187",
///         WorkloadClassifierName = "wlm_workloadclassifier",
///         WorkloadGroupName = "wlm_workloadgroup",
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
/// 		_, err := synapse.NewSqlPoolWorkloadClassifier(ctx, "sqlPoolWorkloadClassifier", &synapse.SqlPoolWorkloadClassifierArgs{
/// 			MemberName:             pulumi.String("dbo"),
/// 			ResourceGroupName:      pulumi.String("sqlcrudtest-6852"),
/// 			SqlPoolName:            pulumi.String("sqlcrudtest-9187"),
/// 			WorkloadClassifierName: pulumi.String("wlm_workloadclassifier"),
/// 			WorkloadGroupName:      pulumi.String("wlm_workloadgroup"),
/// 			WorkspaceName:          pulumi.String("sqlcrudtest-2080"),
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
/// resource "azure-native_synapse_sqlpoolworkloadclassifier" "sqlPoolWorkloadClassifier" {
///   member_name              = "dbo"
///   resource_group_name      = "sqlcrudtest-6852"
///   sql_pool_name            = "sqlcrudtest-9187"
///   workload_classifier_name = "wlm_workloadclassifier"
///   workload_group_name      = "wlm_workloadgroup"
///   workspace_name           = "sqlcrudtest-2080"
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
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadClassifier;
/// import com.pulumi.azurenative.synapse.SqlPoolWorkloadClassifierArgs;
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
///         var sqlPoolWorkloadClassifier = new SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", SqlPoolWorkloadClassifierArgs.builder()
///             .memberName("dbo")
///             .resourceGroupName("sqlcrudtest-6852")
///             .sqlPoolName("sqlcrudtest-9187")
///             .workloadClassifierName("wlm_workloadclassifier")
///             .workloadGroupName("wlm_workloadgroup")
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
/// const sqlPoolWorkloadClassifier = new azure_native.synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier", {
///     memberName: "dbo",
///     resourceGroupName: "sqlcrudtest-6852",
///     sqlPoolName: "sqlcrudtest-9187",
///     workloadClassifierName: "wlm_workloadclassifier",
///     workloadGroupName: "wlm_workloadgroup",
///     workspaceName: "sqlcrudtest-2080",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_workload_classifier = azure_native.synapse.SqlPoolWorkloadClassifier("sqlPoolWorkloadClassifier",
///     member_name="dbo",
///     resource_group_name="sqlcrudtest-6852",
///     sql_pool_name="sqlcrudtest-9187",
///     workload_classifier_name="wlm_workloadclassifier",
///     workload_group_name="wlm_workloadgroup",
///     workspace_name="sqlcrudtest-2080")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolWorkloadClassifier:
///     type: azure-native:synapse:SqlPoolWorkloadClassifier
///     properties:
///       memberName: dbo
///       resourceGroupName: sqlcrudtest-6852
///       sqlPoolName: sqlcrudtest-9187
///       workloadClassifierName: wlm_workloadclassifier
///       workloadGroupName: wlm_workloadgroup
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
/// $ pulumi import azure-native:synapse:SqlPoolWorkloadClassifier wlm_workloadclassifier /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}/workloadGroups/{workloadGroupName}/workloadClassifiers/{workloadClassifierName}
/// ```
class SqlPoolWorkloadClassifier extends pulumi.CustomResource {
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
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The workload classifier start time for classification.
  late final pulumi.Output<String?> startTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlPoolWorkloadClassifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolWorkloadClassifier]. {@macro pulumi_synapse_sql_pool_workload_classifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolWorkloadClassifier(
    String name, {
    SqlPoolWorkloadClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:SqlPoolWorkloadClassifier',
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

  /// Creates a typed reference to an existing [SqlPoolWorkloadClassifier] resource.
  SqlPoolWorkloadClassifier.reference(String urn)
    : super(
        'azure-native:synapse:SqlPoolWorkloadClassifier',
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
