import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_sensitivity_label_args.dart';

/// A sensitivity label.
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates the sensitivity label of a given column with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlPoolSensitivityLabel = new AzureNative.Synapse.SqlPoolSensitivityLabel("sqlPoolSensitivityLabel", new()
///     {
///         ColumnName = "myColumn",
///         InformationType = "PhoneNumber",
///         InformationTypeId = "d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///         LabelId = "bf91e08c-f4f0-478a-b016-25164b2a65ff",
///         LabelName = "PII",
///         ResourceGroupName = "myRG",
///         SchemaName = "dbo",
///         SensitivityLabelSource = "current",
///         SqlPoolName = "myDatabase",
///         TableName = "myTable",
///         WorkspaceName = "myServer",
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
/// 		_, err := synapse.NewSqlPoolSensitivityLabel(ctx, "sqlPoolSensitivityLabel", &synapse.SqlPoolSensitivityLabelArgs{
/// 			ColumnName:             pulumi.String("myColumn"),
/// 			InformationType:        pulumi.String("PhoneNumber"),
/// 			InformationTypeId:      pulumi.String("d22fa6e9-5ee4-3bde-4c2b-a409604c4646"),
/// 			LabelId:                pulumi.String("bf91e08c-f4f0-478a-b016-25164b2a65ff"),
/// 			LabelName:              pulumi.String("PII"),
/// 			ResourceGroupName:      pulumi.String("myRG"),
/// 			SchemaName:             pulumi.String("dbo"),
/// 			SensitivityLabelSource: pulumi.String("current"),
/// 			SqlPoolName:            pulumi.String("myDatabase"),
/// 			TableName:              pulumi.String("myTable"),
/// 			WorkspaceName:          pulumi.String("myServer"),
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
/// import com.pulumi.azurenative.synapse.SqlPoolSensitivityLabel;
/// import com.pulumi.azurenative.synapse.SqlPoolSensitivityLabelArgs;
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
///         var sqlPoolSensitivityLabel = new SqlPoolSensitivityLabel("sqlPoolSensitivityLabel", SqlPoolSensitivityLabelArgs.builder()
///             .columnName("myColumn")
///             .informationType("PhoneNumber")
///             .informationTypeId("d22fa6e9-5ee4-3bde-4c2b-a409604c4646")
///             .labelId("bf91e08c-f4f0-478a-b016-25164b2a65ff")
///             .labelName("PII")
///             .resourceGroupName("myRG")
///             .schemaName("dbo")
///             .sensitivityLabelSource("current")
///             .sqlPoolName("myDatabase")
///             .tableName("myTable")
///             .workspaceName("myServer")
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
/// const sqlPoolSensitivityLabel = new azure_native.synapse.SqlPoolSensitivityLabel("sqlPoolSensitivityLabel", {
///     columnName: "myColumn",
///     informationType: "PhoneNumber",
///     informationTypeId: "d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///     labelId: "bf91e08c-f4f0-478a-b016-25164b2a65ff",
///     labelName: "PII",
///     resourceGroupName: "myRG",
///     schemaName: "dbo",
///     sensitivityLabelSource: "current",
///     sqlPoolName: "myDatabase",
///     tableName: "myTable",
///     workspaceName: "myServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_pool_sensitivity_label = azure_native.synapse.SqlPoolSensitivityLabel("sqlPoolSensitivityLabel",
///     column_name="myColumn",
///     information_type="PhoneNumber",
///     information_type_id="d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///     label_id="bf91e08c-f4f0-478a-b016-25164b2a65ff",
///     label_name="PII",
///     resource_group_name="myRG",
///     schema_name="dbo",
///     sensitivity_label_source="current",
///     sql_pool_name="myDatabase",
///     table_name="myTable",
///     workspace_name="myServer")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlPoolSensitivityLabel:
///     type: azure-native:synapse:SqlPoolSensitivityLabel
///     properties:
///       columnName: myColumn
///       informationType: PhoneNumber
///       informationTypeId: d22fa6e9-5ee4-3bde-4c2b-a409604c4646
///       labelId: bf91e08c-f4f0-478a-b016-25164b2a65ff
///       labelName: PII
///       resourceGroupName: myRG
///       schemaName: dbo
///       sensitivityLabelSource: current
///       sqlPoolName: myDatabase
///       tableName: myTable
///       workspaceName: myServer
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
/// $ pulumi import azure-native:synapse:SqlPoolSensitivityLabel current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/sqlPools/{sqlPoolName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}/sensitivityLabels/{sensitivityLabelSource}
/// ```
class SqlPoolSensitivityLabel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The column name.
  late final pulumi.Output<String> columnName;
  /// The information type.
  late final pulumi.Output<String?> informationType;
  /// The information type ID.
  late final pulumi.Output<String?> informationTypeId;
  /// Is sensitivity recommendation disabled. Applicable for recommended sensitivity label only. Specifies whether the sensitivity recommendation on this column is disabled (dismissed) or not.
  late final pulumi.Output<bool> isDisabled;
  /// The label ID.
  late final pulumi.Output<String?> labelId;
  /// The label name.
  late final pulumi.Output<String?> labelName;
  /// managed by
  late final pulumi.Output<String> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> rank;
  /// The schema name.
  late final pulumi.Output<String> schemaName;
  /// The table name.
  late final pulumi.Output<String> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlPoolSensitivityLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolSensitivityLabel]. {@macro pulumi_synapse_sql_pool_sensitivity_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolSensitivityLabel(
    String name, {
    SqlPoolSensitivityLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:SqlPoolSensitivityLabel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.columnName = registerOutput<String>('columnName');
    this.informationType = registerOutput<String?>('informationType');
    this.informationTypeId = registerOutput<String?>('informationTypeId');
    this.isDisabled = registerOutput<bool>('isDisabled');
    this.labelId = registerOutput<String?>('labelId');
    this.labelName = registerOutput<String?>('labelName');
    this.managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    this.rank = registerOutput<String?>('rank');
    this.schemaName = registerOutput<String>('schemaName');
    this.tableName = registerOutput<String>('tableName');
    this.type = registerOutput<String>('type');
  }
}
