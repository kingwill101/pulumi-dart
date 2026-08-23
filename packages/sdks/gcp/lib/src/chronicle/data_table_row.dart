import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_table_row_args.dart';
import 'data_table_row_state.dart';

/// Represents a single row in a data table.
///
///
/// To get more information about DataTableRow, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataTables.dataTableRows)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Data Table Row Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleDt = new gcp.chronicle.DataTable("example_dt", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataTableId: "terraform_test",
///     description: "Sample DataTable for DataTableRow test",
///     columnInfos: [
///         {
///             columnIndex: 0,
///             originalColumn: "username",
///             columnType: "STRING",
///         },
///         {
///             columnIndex: 1,
///             originalColumn: "ip_address",
///             columnType: "CIDR",
///         },
///     ],
/// });
/// const exampleRow = new gcp.chronicle.DataTableRow("example_row", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataTableId: exampleDt.dataTableId,
///     values: [
///         "testuser",
///         "192.168.1.1/32",
///     ],
///     rowTimeToLive: "48h",
/// });
/// export const dataTableRowName = exampleRow.name;
/// export const dataTableRowIdPart = exampleRow.dataTableRow;
/// export const dataTableRowValues = exampleRow.values;
/// export const dataTableRowTtl = exampleRow.rowTimeToLive;
/// export const dataTableRowCreateTime = exampleRow.createTime;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_dt = gcp.chronicle.DataTable("example_dt",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_table_id="terraform_test",
///     description="Sample DataTable for DataTableRow test",
///     column_infos=[
///         {
///             "column_index": 0,
///             "original_column": "username",
///             "column_type": "STRING",
///         },
///         {
///             "column_index": 1,
///             "original_column": "ip_address",
///             "column_type": "CIDR",
///         },
///     ])
/// example_row = gcp.chronicle.DataTableRow("example_row",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_table_id=example_dt.data_table_id,
///     values=[
///         "testuser",
///         "192.168.1.1/32",
///     ],
///     row_time_to_live="48h")
/// pulumi.export("dataTableRowName", example_row.name)
/// pulumi.export("dataTableRowIdPart", example_row.data_table_row)
/// pulumi.export("dataTableRowValues", example_row.values)
/// pulumi.export("dataTableRowTtl", example_row.row_time_to_live)
/// pulumi.export("dataTableRowCreateTime", example_row.create_time)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDt = new Gcp.Chronicle.DataTable("example_dt", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataTableId = "terraform_test",
///         Description = "Sample DataTable for DataTableRow test",
///         ColumnInfos = new[]
///         {
///             new Gcp.Chronicle.Inputs.DataTableColumnInfoArgs
///             {
///                 ColumnIndex = 0,
///                 OriginalColumn = "username",
///                 ColumnType = "STRING",
///             },
///             new Gcp.Chronicle.Inputs.DataTableColumnInfoArgs
///             {
///                 ColumnIndex = 1,
///                 OriginalColumn = "ip_address",
///                 ColumnType = "CIDR",
///             },
///         },
///     });
///
///     var exampleRow = new Gcp.Chronicle.DataTableRow("example_row", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataTableId = exampleDt.DataTableId,
///         Values = new[]
///         {
///             "testuser",
///             "192.168.1.1/32",
///         },
///         RowTimeToLive = "48h",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dataTableRowName"] = exampleRow.Name,
///         ["dataTableRowIdPart"] = exampleRow.DataTableRow,
///         ["dataTableRowValues"] = exampleRow.Values,
///         ["dataTableRowTtl"] = exampleRow.RowTimeToLive,
///         ["dataTableRowCreateTime"] = exampleRow.CreateTime,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDt, err := chronicle.NewDataTable(ctx, "example_dt", &chronicle.DataTableArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataTableId: pulumi.String("terraform_test"),
/// 			Description: pulumi.String("Sample DataTable for DataTableRow test"),
/// 			ColumnInfos: chronicle.DataTableColumnInfoArray{
/// 				&chronicle.DataTableColumnInfoArgs{
/// 					ColumnIndex:    pulumi.Int(0),
/// 					OriginalColumn: pulumi.String("username"),
/// 					ColumnType:     pulumi.String("STRING"),
/// 				},
/// 				&chronicle.DataTableColumnInfoArgs{
/// 					ColumnIndex:    pulumi.Int(1),
/// 					OriginalColumn: pulumi.String("ip_address"),
/// 					ColumnType:     pulumi.String("CIDR"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRow, err := chronicle.NewDataTableRow(ctx, "example_row", &chronicle.DataTableRowArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataTableId: exampleDt.DataTableId,
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("testuser"),
/// 				pulumi.String("192.168.1.1/32"),
/// 			},
/// 			RowTimeToLive: pulumi.String("48h"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dataTableRowName", exampleRow.Name)
/// 		ctx.Export("dataTableRowIdPart", exampleRow.DataTableRow)
/// 		ctx.Export("dataTableRowValues", exampleRow.Values)
/// 		ctx.Export("dataTableRowTtl", exampleRow.RowTimeToLive)
/// 		ctx.Export("dataTableRowCreateTime", exampleRow.CreateTime)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_chronicle_datatable" "example_dt" {
///   location      = "us"
///   instance      = "00000000-0000-0000-0000-000000000000"
///   data_table_id = "terraform_test"
///   description   = "Sample DataTable for DataTableRow test"
///   column_infos {
///     column_index    = 0
///     original_column = "username"
///     column_type     = "STRING"
///   }
///   column_infos {
///     column_index    = 1
///     original_column = "ip_address"
///     column_type     = "CIDR"
///   }
/// }
/// resource "gcp_chronicle_datatablerow" "example_row" {
///   location         = "us"
///   instance         = "00000000-0000-0000-0000-000000000000"
///   data_table_id    = gcp_chronicle_datatable.example_dt.data_table_id
///   values           = ["testuser", "192.168.1.1/32"]
///   row_time_to_live = "48h"
/// }
/// output "dataTableRowName" {
///   value = gcp_chronicle_datatablerow.example_row.name
/// }
/// output "dataTableRowIdPart" {
///   value = gcp_chronicle_datatablerow.example_row.data_table_row
/// }
/// output "dataTableRowValues" {
///   value = gcp_chronicle_datatablerow.example_row.values
/// }
/// output "dataTableRowTtl" {
///   value = gcp_chronicle_datatablerow.example_row.row_time_to_live
/// }
/// output "dataTableRowCreateTime" {
///   value = gcp_chronicle_datatablerow.example_row.create_time
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.DataTable;
/// import com.pulumi.gcp.chronicle.DataTableArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataTableColumnInfoArgs;
/// import com.pulumi.gcp.chronicle.DataTableRow;
/// import com.pulumi.gcp.chronicle.DataTableRowArgs;
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
///         var exampleDt = new DataTable("exampleDt", DataTableArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataTableId("terraform_test")
///             .description("Sample DataTable for DataTableRow test")
///             .columnInfos(
///                 DataTableColumnInfoArgs.builder()
///                     .columnIndex(0)
///                     .originalColumn("username")
///                     .columnType("STRING")
///                     .build(),
///                 DataTableColumnInfoArgs.builder()
///                     .columnIndex(1)
///                     .originalColumn("ip_address")
///                     .columnType("CIDR")
///                     .build())
///             .build());
///
///         var exampleRow = new DataTableRow("exampleRow", DataTableRowArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataTableId(exampleDt.dataTableId())
///             .values(
///                 "testuser",
///                 "192.168.1.1/32")
///             .rowTimeToLive("48h")
///             .build());
///
///         ctx.export("dataTableRowName", exampleRow.name());
///         ctx.export("dataTableRowIdPart", exampleRow.dataTableRow());
///         ctx.export("dataTableRowValues", exampleRow.values());
///         ctx.export("dataTableRowTtl", exampleRow.rowTimeToLive());
///         ctx.export("dataTableRowCreateTime", exampleRow.createTime());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDt:
///     type: gcp:chronicle:DataTable
///     name: example_dt
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataTableId: terraform_test
///       description: Sample DataTable for DataTableRow test
///       columnInfos:
///         - columnIndex: 0
///           originalColumn: username
///           columnType: STRING
///         - columnIndex: 1
///           originalColumn: ip_address
///           columnType: CIDR
///   exampleRow:
///     type: gcp:chronicle:DataTableRow
///     name: example_row
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataTableId: ${exampleDt.dataTableId}
///       values:
///         - testuser
///         - 192.168.1.1/32
///       rowTimeToLive: 48h
/// outputs:
///   dataTableRowName: ${exampleRow.name}
///   dataTableRowIdPart: ${exampleRow.dataTableRow}
///   dataTableRowValues: ${exampleRow.values}
///   dataTableRowTtl: ${exampleRow.rowTimeToLive}
///   dataTableRowCreateTime: ${exampleRow.createTime}
/// ```
///
///
/// ## Import
///
/// DataTableRow can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataTables/{{data_table_id}}/dataTableRows/{{data_table_row}}`
/// * `{{project}}/{{location}}/{{instance}}/{{data_table_id}}/{{data_table_row}}`
/// * `{{location}}/{{instance}}/{{data_table_id}}/{{data_table_row}}`
///
///
/// When using the `pulumi import` command, DataTableRow can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataTableRow:DataTableRow default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataTables/{{data_table_id}}/dataTableRows/{{data_table_row}}
/// $ pulumi import gcp:chronicle/dataTableRow:DataTableRow default {{project}}/{{location}}/{{instance}}/{{data_table_id}}/{{data_table_row}}
/// $ pulumi import gcp:chronicle/dataTableRow:DataTableRow default {{location}}/{{instance}}/{{data_table_id}}/{{data_table_row}}
/// ```
class DataTableRow extends pulumi.CustomResource {
  /// DataTableRow create time
  late final pulumi.Output<String> createTime;
  /// The ID of the parent DataTable.
  late final pulumi.Output<String> dataTableId;
  /// The ID of the DataTable Row.
  late final pulumi.Output<String> dataTableRow;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The Chronicle instance ID.
  late final pulumi.Output<String> instance;
  /// The GCP location of the Chronicle instance.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the data table row.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataTables/{data_table_id}/dataTableRows/{data_table_row}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User-provided TTL of the data table row.
  late final pulumi.Output<String?> rowTimeToLive;
  /// DataTableRow update time
  late final pulumi.Output<String> updateTime;
  /// All column values for a single row. The values should be in the same order
  /// as the columns of the data tables.
  late final pulumi.Output<List<String>> values;

  /// Creates a new [DataTableRow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataTableRow]. {@macro pulumi_chronicle_data_table_row_data_table_row_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataTableRow(
    String name, {
    DataTableRowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataTableRow:DataTableRow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataTableId = registerOutput<String>('dataTableId');
    dataTableRow = registerOutput<String>('dataTableRow');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowTimeToLive = registerOutput<String?>('rowTimeToLive');
    updateTime = registerOutput<String>('updateTime');
    values = registerOutput<List<String>>('values');
  }

  /// Gets an existing [DataTableRow] resource's state with the given [name] and [id].
  static DataTableRow get(
    String name,
    pulumi.Input<String> id, {
    DataTableRowState? state,
  }) {
    return DataTableRow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataTableRow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataTableRow:DataTableRow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataTableId = registerOutput<String>('dataTableId');
    dataTableRow = registerOutput<String>('dataTableRow');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowTimeToLive = registerOutput<String?>('rowTimeToLive');
    updateTime = registerOutput<String>('updateTime');
    values = registerOutput<List<String>>('values');
  }
}
