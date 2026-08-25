import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_table_args.dart';
import 'data_table_column_info.dart';
import 'data_table_scope_info.dart';
import 'data_table_state.dart';

/// Represents a Chronicle Data Table, a multicolumn structure used to ingest your own data into Google SecOps.
///
///
/// To get more information about DataTable, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataTables)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Data Table Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.DataTable("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataTableId: "terraform_test",
///     description: "sample desc",
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
/// export const dataTableName = example.name;
/// export const dataTableId = example.dataTableId;
/// export const dataTableUuid = example.dataTableUuid;
/// export const dataTableDescription = example.description;
/// export const dataTableCreateTime = example.createTime;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.DataTable("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_table_id="terraform_test",
///     description="sample desc",
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
/// pulumi.export("dataTableName", example.name)
/// pulumi.export("dataTableId", example.data_table_id)
/// pulumi.export("dataTableUuid", example.data_table_uuid)
/// pulumi.export("dataTableDescription", example.description)
/// pulumi.export("dataTableCreateTime", example.create_time)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.DataTable("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataTableId = "terraform_test",
///         Description = "sample desc",
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
///     return new Dictionary<string, object?>
///     {
///         ["dataTableName"] = example.Name,
///         ["dataTableId"] = example.DataTableId,
///         ["dataTableUuid"] = example.DataTableUuid,
///         ["dataTableDescription"] = example.Description,
///         ["dataTableCreateTime"] = example.CreateTime,
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
/// 		example, err := chronicle.NewDataTable(ctx, "example", &chronicle.DataTableArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataTableId: pulumi.String("terraform_test"),
/// 			Description: pulumi.String("sample desc"),
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
/// 		ctx.Export("dataTableName", example.Name)
/// 		ctx.Export("dataTableId", example.DataTableId)
/// 		ctx.Export("dataTableUuid", example.DataTableUuid)
/// 		ctx.Export("dataTableDescription", example.Description)
/// 		ctx.Export("dataTableCreateTime", example.CreateTime)
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
/// resource "gcp_chronicle_datatable" "example" {
///   location      = "us"
///   instance      = "00000000-0000-0000-0000-000000000000"
///   data_table_id = "terraform_test"
///   description   = "sample desc"
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
/// output "dataTableName" {
///   value = gcp_chronicle_datatable.example.name
/// }
/// output "dataTableId" {
///   value = gcp_chronicle_datatable.example.data_table_id
/// }
/// output "dataTableUuid" {
///   value = gcp_chronicle_datatable.example.data_table_uuid
/// }
/// output "dataTableDescription" {
///   value = gcp_chronicle_datatable.example.description
/// }
/// output "dataTableCreateTime" {
///   value = gcp_chronicle_datatable.example.create_time
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
///         var example = new DataTable("example", DataTableArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataTableId("terraform_test")
///             .description("sample desc")
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
///         ctx.export("dataTableName", example.name());
///         ctx.export("dataTableId", example.dataTableId());
///         ctx.export("dataTableUuid", example.dataTableUuid());
///         ctx.export("dataTableDescription", example.description());
///         ctx.export("dataTableCreateTime", example.createTime());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:DataTable
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataTableId: terraform_test
///       description: sample desc
///       columnInfos:
///         - columnIndex: 0
///           originalColumn: username
///           columnType: STRING
///         - columnIndex: 1
///           originalColumn: ip_address
///           columnType: CIDR
/// outputs:
///   dataTableName: ${example.name}
///   dataTableId: ${example.dataTableId}
///   dataTableUuid: ${example.dataTableUuid}
///   dataTableDescription: ${example.description}
///   dataTableCreateTime: ${example.createTime}
/// ```
///
/// ### Chronicle Data Table With Optional Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testScopeAllowEveryone = new gcp.chronicle.DataAccessScope("test_scope_allow_everyone", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataAccessScopeId: "tf-scope-opt",
///     description: "scope-description",
///     allowedDataAccessLabels: [{
///         logType: "GCP_CLOUDAUDIT",
///     }],
/// });
/// const exampleDt = new gcp.chronicle.DataTable("example_dt", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataTableId: "tf_test_full",
///     description: "Comprehensive test table with all teh fields",
///     rowTimeToLive: "48h",
///     columnInfos: [
///         {
///             columnIndex: 0,
///             originalColumn: "username",
///             keyColumn: true,
///             mappedColumnPath: "entity.user.userid",
///             repeatedValues: false,
///         },
///         {
///             columnIndex: 1,
///             originalColumn: "ip_address",
///             columnType: "CIDR",
///             keyColumn: false,
///             repeatedValues: false,
///         },
///     ],
///     scopeInfo: {
///         dataAccessScopes: [testScopeAllowEveryone.name],
///     },
/// }, {
///     dependsOn: [testScopeAllowEveryone],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_scope_allow_everyone = gcp.chronicle.DataAccessScope("test_scope_allow_everyone",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_access_scope_id="tf-scope-opt",
///     description="scope-description",
///     allowed_data_access_labels=[{
///         "log_type": "GCP_CLOUDAUDIT",
///     }])
/// example_dt = gcp.chronicle.DataTable("example_dt",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_table_id="tf_test_full",
///     description="Comprehensive test table with all teh fields",
///     row_time_to_live="48h",
///     column_infos=[
///         {
///             "column_index": 0,
///             "original_column": "username",
///             "key_column": True,
///             "mapped_column_path": "entity.user.userid",
///             "repeated_values": False,
///         },
///         {
///             "column_index": 1,
///             "original_column": "ip_address",
///             "column_type": "CIDR",
///             "key_column": False,
///             "repeated_values": False,
///         },
///     ],
///     scope_info={
///         "data_access_scopes": [test_scope_allow_everyone.name],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[test_scope_allow_everyone]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testScopeAllowEveryone = new Gcp.Chronicle.DataAccessScope("test_scope_allow_everyone", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataAccessScopeId = "tf-scope-opt",
///         Description = "scope-description",
///         AllowedDataAccessLabels = new[]
///         {
///             new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
///             {
///                 LogType = "GCP_CLOUDAUDIT",
///             },
///         },
///     });
///
///     var exampleDt = new Gcp.Chronicle.DataTable("example_dt", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataTableId = "tf_test_full",
///         Description = "Comprehensive test table with all teh fields",
///         RowTimeToLive = "48h",
///         ColumnInfos = new[]
///         {
///             new Gcp.Chronicle.Inputs.DataTableColumnInfoArgs
///             {
///                 ColumnIndex = 0,
///                 OriginalColumn = "username",
///                 KeyColumn = true,
///                 MappedColumnPath = "entity.user.userid",
///                 RepeatedValues = false,
///             },
///             new Gcp.Chronicle.Inputs.DataTableColumnInfoArgs
///             {
///                 ColumnIndex = 1,
///                 OriginalColumn = "ip_address",
///                 ColumnType = "CIDR",
///                 KeyColumn = false,
///                 RepeatedValues = false,
///             },
///         },
///         ScopeInfo = new Gcp.Chronicle.Inputs.DataTableScopeInfoArgs
///         {
///             DataAccessScopes = new[]
///             {
///                 testScopeAllowEveryone.Name,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testScopeAllowEveryone,
///         },
///     });
///
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
/// 		testScopeAllowEveryone, err := chronicle.NewDataAccessScope(ctx, "test_scope_allow_everyone", &chronicle.DataAccessScopeArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataAccessScopeId: pulumi.String("tf-scope-opt"),
/// 			Description:       pulumi.String("scope-description"),
/// 			AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// 				&chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// 					LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDataTable(ctx, "example_dt", &chronicle.DataTableArgs{
/// 			Location:      pulumi.String("us"),
/// 			Instance:      pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataTableId:   pulumi.String("tf_test_full"),
/// 			Description:   pulumi.String("Comprehensive test table with all teh fields"),
/// 			RowTimeToLive: pulumi.String("48h"),
/// 			ColumnInfos: chronicle.DataTableColumnInfoArray{
/// 				&chronicle.DataTableColumnInfoArgs{
/// 					ColumnIndex:      pulumi.Int(0),
/// 					OriginalColumn:   pulumi.String("username"),
/// 					KeyColumn:        pulumi.Bool(true),
/// 					MappedColumnPath: pulumi.String("entity.user.userid"),
/// 					RepeatedValues:   pulumi.Bool(false),
/// 				},
/// 				&chronicle.DataTableColumnInfoArgs{
/// 					ColumnIndex:    pulumi.Int(1),
/// 					OriginalColumn: pulumi.String("ip_address"),
/// 					ColumnType:     pulumi.String("CIDR"),
/// 					KeyColumn:      pulumi.Bool(false),
/// 					RepeatedValues: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ScopeInfo: &chronicle.DataTableScopeInfoArgs{
/// 				DataAccessScopes: pulumi.StringArray{
/// 					testScopeAllowEveryone.Name,
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testScopeAllowEveryone,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
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
/// resource "gcp_chronicle_dataaccessscope" "test_scope_allow_everyone" {
///   location             = "us"
///   instance             = "00000000-0000-0000-0000-000000000000"
///   data_access_scope_id = "tf-scope-opt"
///   description          = "scope-description"
///   allowed_data_access_labels {
///     log_type = "GCP_CLOUDAUDIT"
///   }
/// }
/// resource "gcp_chronicle_datatable" "example_dt" {
///   depends_on       = [gcp_chronicle_dataaccessscope.test_scope_allow_everyone]
///   location         = "us"
///   instance         = "00000000-0000-0000-0000-000000000000"
///   data_table_id    = "tf_test_full"
///   description      = "Comprehensive test table with all teh fields"
///   row_time_to_live = "48h"
///   column_infos {
///     column_index       = 0
///     original_column    = "username"
///     key_column         = true
///     mapped_column_path = "entity.user.userid"
///     repeated_values    = false
///   }
///   column_infos {
///     column_index    = 1
///     original_column = "ip_address"
///     column_type     = "CIDR"
///     key_column      = false
///     repeated_values = false
///   }
///   scope_info = {
///     data_access_scopes = [gcp_chronicle_dataaccessscope.test_scope_allow_everyone.name]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.DataTable;
/// import com.pulumi.gcp.chronicle.DataTableArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataTableColumnInfoArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataTableScopeInfoArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testScopeAllowEveryone = new DataAccessScope("testScopeAllowEveryone", DataAccessScopeArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataAccessScopeId("tf-scope-opt")
///             .description("scope-description")
///             .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
///                 .logType("GCP_CLOUDAUDIT")
///                 .build())
///             .build());
///
///         var exampleDt = new DataTable("exampleDt", DataTableArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataTableId("tf_test_full")
///             .description("Comprehensive test table with all teh fields")
///             .rowTimeToLive("48h")
///             .columnInfos(
///                 DataTableColumnInfoArgs.builder()
///                     .columnIndex(0)
///                     .originalColumn("username")
///                     .keyColumn(true)
///                     .mappedColumnPath("entity.user.userid")
///                     .repeatedValues(false)
///                     .build(),
///                 DataTableColumnInfoArgs.builder()
///                     .columnIndex(1)
///                     .originalColumn("ip_address")
///                     .columnType("CIDR")
///                     .keyColumn(false)
///                     .repeatedValues(false)
///                     .build())
///             .scopeInfo(DataTableScopeInfoArgs.builder()
///                 .dataAccessScopes(testScopeAllowEveryone.name())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testScopeAllowEveryone)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testScopeAllowEveryone:
///     type: gcp:chronicle:DataAccessScope
///     name: test_scope_allow_everyone
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataAccessScopeId: tf-scope-opt
///       description: scope-description
///       allowedDataAccessLabels:
///         - logType: GCP_CLOUDAUDIT
///   exampleDt:
///     type: gcp:chronicle:DataTable
///     name: example_dt
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataTableId: tf_test_full
///       description: Comprehensive test table with all teh fields
///       rowTimeToLive: 48h
///       columnInfos:
///         - columnIndex: 0
///           originalColumn: username
///           keyColumn: true
///           mappedColumnPath: entity.user.userid
///           repeatedValues: false
///         - columnIndex: 1
///           originalColumn: ip_address
///           columnType: CIDR
///           keyColumn: false
///           repeatedValues: false
///       scopeInfo:
///         dataAccessScopes:
///           - ${testScopeAllowEveryone.name}
///     options:
///       dependsOn:
///         - ${testScopeAllowEveryone}
/// ```
///
///
/// ## Import
///
/// DataTable can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataTables/{{data_table_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{data_table_id}}`
/// * `{{location}}/{{instance}}/{{data_table_id}}`
///
///
/// When using the `pulumi import` command, DataTable can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataTable:DataTable default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataTables/{{data_table_id}}
/// $ pulumi import gcp:chronicle/dataTable:DataTable default {{project}}/{{location}}/{{instance}}/{{data_table_id}}
/// $ pulumi import gcp:chronicle/dataTable:DataTable default {{location}}/{{instance}}/{{data_table_id}}
/// ```
class DataTable extends pulumi.CustomResource {
  /// The count of rows in the data table.
  late final pulumi.Output<int> approximateRowCount;
  /// Details of all the columns in the table
  /// Structure is documented below.
  late final pulumi.Output<List<DataTableColumnInfo>?> columnInfos;
  /// Table create time
  late final pulumi.Output<String> createTime;
  /// The ID to use for the data table. This is also the display name for
  /// the data table. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Must be unique and has length &lt; 256.
  late final pulumi.Output<String> dataTableId;
  /// Data table unique id
  late final pulumi.Output<String> dataTableUuid;
  /// The policy governing the deletion of the data table.
  /// If set to `FORCE`, allows the deletion of the data table even if it contains rows.
  /// If set to `DEFAULT`,or if the field is omitted, the data table must be empty before it can be deleted.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  late final pulumi.Output<String> deletionPolicy;
  /// A user-provided description of the data table.
  late final pulumi.Output<String> description;
  /// The unique display name of the data table.
  late final pulumi.Output<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the data table
  /// Format:
  /// "{project}/locations/{region}/instances/{instance}/dataTables/{data_table}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User-provided TTL of the data table.
  late final pulumi.Output<String?> rowTimeToLive;
  /// Last update time of the TTL of the data table.
  late final pulumi.Output<String> rowTimeToLiveUpdateTime;
  /// The count of rules using the data table.
  late final pulumi.Output<int> ruleAssociationsCount;
  /// The resource names for the associated Rules that use this
  /// data table. Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}.
  /// {rule} here refers to the rule id.
  late final pulumi.Output<List<String>> rules;
  /// DataTableScopeInfo specifies the scope info of the data table.
  /// Structure is documented below.
  late final pulumi.Output<DataTableScopeInfo?> scopeInfo;
  /// Possible values:
  /// USER
  /// RULE
  /// SEARCH
  late final pulumi.Output<String> updateSource;
  /// Table update time
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataTable]. {@macro pulumi_chronicle_data_table_data_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataTable(
    String name, {
    DataTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataTable:DataTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    approximateRowCount = registerOutput<int>('approximateRowCount');
    columnInfos = registerOutput<List<DataTableColumnInfo>?>('columnInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTableColumnInfo>(guardedValue, (value) => DataTableColumnInfo.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataTableId = registerOutput<String>('dataTableId');
    dataTableUuid = registerOutput<String>('dataTableUuid');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowTimeToLive = registerOutput<String?>('rowTimeToLive');
    rowTimeToLiveUpdateTime = registerOutput<String>('rowTimeToLiveUpdateTime');
    ruleAssociationsCount = registerOutput<int>('ruleAssociationsCount');
    rules = registerOutput<List<String>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopeInfo = registerOutput<DataTableScopeInfo?>('scopeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTableScopeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSource = registerOutput<String>('updateSource');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataTable] resource's state with the given [name] and [id].
  static DataTable get(
    String name,
    pulumi.Input<String> id, {
    DataTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataTable:DataTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approximateRowCount = registerOutput<int>('approximateRowCount');
    columnInfos = registerOutput<List<DataTableColumnInfo>?>('columnInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTableColumnInfo>(guardedValue, (value) => DataTableColumnInfo.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataTableId = registerOutput<String>('dataTableId');
    dataTableUuid = registerOutput<String>('dataTableUuid');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowTimeToLive = registerOutput<String?>('rowTimeToLive');
    rowTimeToLiveUpdateTime = registerOutput<String>('rowTimeToLiveUpdateTime');
    ruleAssociationsCount = registerOutput<int>('ruleAssociationsCount');
    rules = registerOutput<List<String>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopeInfo = registerOutput<DataTableScopeInfo?>('scopeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTableScopeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSource = registerOutput<String>('updateSource');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DataTable] resource.
  DataTable.reference(String urn)
    : super(
        'gcp:chronicle/dataTable:DataTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approximateRowCount = registerOutput<int>('approximateRowCount');
    columnInfos = registerOutput<List<DataTableColumnInfo>?>('columnInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataTableColumnInfo>(guardedValue, (value) => DataTableColumnInfo.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    dataTableId = registerOutput<String>('dataTableId');
    dataTableUuid = registerOutput<String>('dataTableUuid');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rowTimeToLive = registerOutput<String?>('rowTimeToLive');
    rowTimeToLiveUpdateTime = registerOutput<String>('rowTimeToLiveUpdateTime');
    ruleAssociationsCount = registerOutput<int>('ruleAssociationsCount');
    rules = registerOutput<List<String>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    scopeInfo = registerOutput<DataTableScopeInfo?>('scopeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataTableScopeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSource = registerOutput<String>('updateSource');
    updateTime = registerOutput<String>('updateTime');
  }
}
