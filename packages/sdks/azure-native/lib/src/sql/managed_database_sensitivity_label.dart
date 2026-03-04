import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_database_sensitivity_label_args.dart';

/// A sensitivity label.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates or creates a sensitivity label of a given column with all parameters in a managed database
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabaseSensitivityLabel = new AzureNative.Sql.ManagedDatabaseSensitivityLabel("managedDatabaseSensitivityLabel", new()
///     {
///         ClientClassificationSource = AzureNative.Sql.ClientClassificationSource.Native,
///         ColumnName = "myColumn",
///         DatabaseName = "myDatabase",
///         InformationType = "PhoneNumber",
///         InformationTypeId = "d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///         LabelId = "bf91e08c-f4f0-478a-b016-25164b2a65ff",
///         LabelName = "PII",
///         ManagedInstanceName = "myManagedInstanceName",
///         Rank = AzureNative.Sql.SensitivityLabelRank.High,
///         ResourceGroupName = "myRG",
///         SchemaName = "dbo",
///         SensitivityLabelSource = "current",
///         TableName = "myTable",
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
/// 		_, err := sql.NewManagedDatabaseSensitivityLabel(ctx, "managedDatabaseSensitivityLabel", &sql.ManagedDatabaseSensitivityLabelArgs{
/// 			ClientClassificationSource: pulumi.String(sql.ClientClassificationSourceNative),
/// 			ColumnName:                 pulumi.String("myColumn"),
/// 			DatabaseName:               pulumi.String("myDatabase"),
/// 			InformationType:            pulumi.String("PhoneNumber"),
/// 			InformationTypeId:          pulumi.String("d22fa6e9-5ee4-3bde-4c2b-a409604c4646"),
/// 			LabelId:                    pulumi.String("bf91e08c-f4f0-478a-b016-25164b2a65ff"),
/// 			LabelName:                  pulumi.String("PII"),
/// 			ManagedInstanceName:        pulumi.String("myManagedInstanceName"),
/// 			Rank:                       sql.SensitivityLabelRankHigh,
/// 			ResourceGroupName:          pulumi.String("myRG"),
/// 			SchemaName:                 pulumi.String("dbo"),
/// 			SensitivityLabelSource:     pulumi.String("current"),
/// 			TableName:                  pulumi.String("myTable"),
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
/// import com.pulumi.azurenative.sql.ManagedDatabaseSensitivityLabel;
/// import com.pulumi.azurenative.sql.ManagedDatabaseSensitivityLabelArgs;
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
///         var managedDatabaseSensitivityLabel = new ManagedDatabaseSensitivityLabel("managedDatabaseSensitivityLabel", ManagedDatabaseSensitivityLabelArgs.builder()
///             .clientClassificationSource("Native")
///             .columnName("myColumn")
///             .databaseName("myDatabase")
///             .informationType("PhoneNumber")
///             .informationTypeId("d22fa6e9-5ee4-3bde-4c2b-a409604c4646")
///             .labelId("bf91e08c-f4f0-478a-b016-25164b2a65ff")
///             .labelName("PII")
///             .managedInstanceName("myManagedInstanceName")
///             .rank("High")
///             .resourceGroupName("myRG")
///             .schemaName("dbo")
///             .sensitivityLabelSource("current")
///             .tableName("myTable")
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
/// const managedDatabaseSensitivityLabel = new azure_native.sql.ManagedDatabaseSensitivityLabel("managedDatabaseSensitivityLabel", {
///     clientClassificationSource: azure_native.sql.ClientClassificationSource.Native,
///     columnName: "myColumn",
///     databaseName: "myDatabase",
///     informationType: "PhoneNumber",
///     informationTypeId: "d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///     labelId: "bf91e08c-f4f0-478a-b016-25164b2a65ff",
///     labelName: "PII",
///     managedInstanceName: "myManagedInstanceName",
///     rank: azure_native.sql.SensitivityLabelRank.High,
///     resourceGroupName: "myRG",
///     schemaName: "dbo",
///     sensitivityLabelSource: "current",
///     tableName: "myTable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database_sensitivity_label = azure_native.sql.ManagedDatabaseSensitivityLabel("managedDatabaseSensitivityLabel",
///     client_classification_source=azure_native.sql.ClientClassificationSource.NATIVE,
///     column_name="myColumn",
///     database_name="myDatabase",
///     information_type="PhoneNumber",
///     information_type_id="d22fa6e9-5ee4-3bde-4c2b-a409604c4646",
///     label_id="bf91e08c-f4f0-478a-b016-25164b2a65ff",
///     label_name="PII",
///     managed_instance_name="myManagedInstanceName",
///     rank=azure_native.sql.SensitivityLabelRank.HIGH,
///     resource_group_name="myRG",
///     schema_name="dbo",
///     sensitivity_label_source="current",
///     table_name="myTable")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabaseSensitivityLabel:
///     type: azure-native:sql:ManagedDatabaseSensitivityLabel
///     properties:
///       clientClassificationSource: Native
///       columnName: myColumn
///       databaseName: myDatabase
///       informationType: PhoneNumber
///       informationTypeId: d22fa6e9-5ee4-3bde-4c2b-a409604c4646
///       labelId: bf91e08c-f4f0-478a-b016-25164b2a65ff
///       labelName: PII
///       managedInstanceName: myManagedInstanceName
///       rank: High
///       resourceGroupName: myRG
///       schemaName: dbo
///       sensitivityLabelSource: current
///       tableName: myTable
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
/// $ pulumi import azure-native:sql:ManagedDatabaseSensitivityLabel current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}/sensitivityLabels/{sensitivityLabelSource}
/// ```
class ManagedDatabaseSensitivityLabel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> clientClassificationSource;

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

  /// Resource that manages the sensitivity label.
  late final pulumi.Output<String> managedBy;

  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> rank;

  /// The schema name.
  late final pulumi.Output<String> schemaName;

  /// The table name.
  late final pulumi.Output<String> tableName;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedDatabaseSensitivityLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDatabaseSensitivityLabel]. {@macro pulumi_sql_managed_database_sensitivity_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDatabaseSensitivityLabel(
    String name, {
    ManagedDatabaseSensitivityLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ManagedDatabaseSensitivityLabel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientClassificationSource = registerOutput<String?>(
      'clientClassificationSource',
    );
    columnName = registerOutput<String>('columnName');
    informationType = registerOutput<String?>('informationType');
    informationTypeId = registerOutput<String?>('informationTypeId');
    isDisabled = registerOutput<bool>('isDisabled');
    labelId = registerOutput<String?>('labelId');
    labelName = registerOutput<String?>('labelName');
    managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    rank = registerOutput<String?>('rank');
    schemaName = registerOutput<String>('schemaName');
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }
}
