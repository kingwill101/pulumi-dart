import 'package:pulumi/pulumi.dart' as pulumi;
import 'restored_logs_response.dart';
import 'result_statistics_response.dart';
import 'schema_response.dart';
import 'search_results_response.dart';
import 'system_data_response.dart';
import 'table_args.dart';

/// Workspace data table definition.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2021-12-01-preview, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TablesUpsert
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var table = new AzureNative.OperationalInsights.Table("table", new()
///     {
///         ResourceGroupName = "oiautorest6685",
///         RetentionInDays = 45,
///         Schema = new AzureNative.OperationalInsights.Inputs.SchemaArgs
///         {
///             Columns = new[]
///             {
///                 new AzureNative.OperationalInsights.Inputs.ColumnArgs
///                 {
///                     Name = "MyNewColumn",
///                     Type = AzureNative.OperationalInsights.ColumnTypeEnum.Guid,
///                 },
///             },
///             Name = "AzureNetworkFlow",
///         },
///         TableName = "AzureNetworkFlow",
///         TotalRetentionInDays = 70,
///         WorkspaceName = "oiautorest6685",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewTable(ctx, "table", &operationalinsights.TableArgs{
/// 			ResourceGroupName: pulumi.String("oiautorest6685"),
/// 			RetentionInDays:   pulumi.Int(45),
/// 			Schema: &operationalinsights.SchemaArgs{
/// 				Columns: operationalinsights.ColumnArray{
/// 					&operationalinsights.ColumnArgs{
/// 						Name: pulumi.String("MyNewColumn"),
/// 						Type: pulumi.String(operationalinsights.ColumnTypeEnumGuid),
/// 					},
/// 				},
/// 				Name: pulumi.String("AzureNetworkFlow"),
/// 			},
/// 			TableName:            pulumi.String("AzureNetworkFlow"),
/// 			TotalRetentionInDays: pulumi.Int(70),
/// 			WorkspaceName:        pulumi.String("oiautorest6685"),
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
/// import com.pulumi.azurenative.operationalinsights.Table;
/// import com.pulumi.azurenative.operationalinsights.TableArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.SchemaArgs;
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
///         var table = new Table("table", TableArgs.builder()
///             .resourceGroupName("oiautorest6685")
///             .retentionInDays(45)
///             .schema(SchemaArgs.builder()
///                 .columns(ColumnArgs.builder()
///                     .name("MyNewColumn")
///                     .type("guid")
///                     .build())
///                 .name("AzureNetworkFlow")
///                 .build())
///             .tableName("AzureNetworkFlow")
///             .totalRetentionInDays(70)
///             .workspaceName("oiautorest6685")
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
/// const table = new azure_native.operationalinsights.Table("table", {
///     resourceGroupName: "oiautorest6685",
///     retentionInDays: 45,
///     schema: {
///         columns: [{
///             name: "MyNewColumn",
///             type: azure_native.operationalinsights.ColumnTypeEnum.Guid,
///         }],
///         name: "AzureNetworkFlow",
///     },
///     tableName: "AzureNetworkFlow",
///     totalRetentionInDays: 70,
///     workspaceName: "oiautorest6685",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// table = azure_native.operationalinsights.Table("table",
///     resource_group_name="oiautorest6685",
///     retention_in_days=45,
///     schema={
///         "columns": [{
///             "name": "MyNewColumn",
///             "type": azure_native.operationalinsights.ColumnTypeEnum.GUID,
///         }],
///         "name": "AzureNetworkFlow",
///     },
///     table_name="AzureNetworkFlow",
///     total_retention_in_days=70,
///     workspace_name="oiautorest6685")
///
/// ```
///
/// ```yaml
/// resources:
///   table:
///     type: azure-native:operationalinsights:Table
///     properties:
///       resourceGroupName: oiautorest6685
///       retentionInDays: 45
///       schema:
///         columns:
///           - name: MyNewColumn
///             type: guid
///         name: AzureNetworkFlow
///       tableName: AzureNetworkFlow
///       totalRetentionInDays: 70
///       workspaceName: oiautorest6685
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
/// $ pulumi import azure-native:operationalinsights:Table AzureNetworkFlow /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/tables/{tableName}
/// ```
class Table extends pulumi.CustomResource {
  /// The table data archive retention in days. Calculated as (totalRetentionInDays-retentionInDays)
  late final pulumi.Output<int> archiveRetentionInDays;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The timestamp that table plan was last modified (UTC).
  late final pulumi.Output<String> lastPlanModifiedDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Instruct the system how to handle and charge the logs ingested to this table.
  late final pulumi.Output<String?> plan;
  /// Table's current provisioning state. If set to 'updating', indicates a resource lock due to ongoing operation, forbidding any update to the table until the ongoing operation is concluded.
  late final pulumi.Output<String> provisioningState;
  /// Parameters of the restore operation that initiated this table.
  late final pulumi.Output<RestoredLogsResponse?> restoredLogs;
  /// Search job execution statistics.
  late final pulumi.Output<ResultStatisticsResponse> resultStatistics;
  /// The table retention in days, between 4 and 730. Setting this property to -1 will default to the workspace retention.
  late final pulumi.Output<int?> retentionInDays;
  /// True - Value originates from workspace retention in days, False - Customer specific.
  late final pulumi.Output<bool> retentionInDaysAsDefault;
  /// Table schema.
  late final pulumi.Output<SchemaResponse?> schema;
  /// Parameters of the search job that initiated this table.
  late final pulumi.Output<SearchResultsResponse?> searchResults;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The table total retention in days, between 4 and 4383. Setting this property to -1 will default to table retention.
  late final pulumi.Output<int?> totalRetentionInDays;
  /// True - Value originates from retention in days, False - Customer specific.
  late final pulumi.Output<bool> totalRetentionInDaysAsDefault;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_operationalinsights_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archiveRetentionInDays = registerOutput<int>('archiveRetentionInDays');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    lastPlanModifiedDate = registerOutput<String>('lastPlanModifiedDate');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String?>('plan');
    provisioningState = registerOutput<String>('provisioningState');
    restoredLogs = registerOutput<RestoredLogsResponse?>('restoredLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoredLogsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resultStatistics = registerOutput<ResultStatisticsResponse>('resultStatistics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResultStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retentionInDays = registerOutput<int?>('retentionInDays');
    retentionInDaysAsDefault = registerOutput<bool>('retentionInDaysAsDefault');
    schema = registerOutput<SchemaResponse?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    searchResults = registerOutput<SearchResultsResponse?>('searchResults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchResultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    totalRetentionInDaysAsDefault = registerOutput<bool>('totalRetentionInDaysAsDefault');
    type = registerOutput<String>('type');
  }
}
