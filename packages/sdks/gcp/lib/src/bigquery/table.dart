import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_biglake_configuration.dart';
import 'table_encryption_configuration.dart';
import 'table_external_catalog_table_options.dart';
import 'table_external_data_configuration.dart';
import 'table_materialized_view.dart';
import 'table_range_partitioning.dart';
import 'table_schema_foreign_type_info.dart';
import 'table_state.dart';
import 'table_table_constraints.dart';
import 'table_table_replication_info.dart';
import 'table_time_partitioning.dart';
import 'table_view.dart';

/// Creates a table resource in a dataset for Google BigQuery. For more information see
/// [the official documentation](https://cloud.google.com/bigquery/docs/) and
/// [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables).
///
/// &gt; **Note**: On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi update` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.bigquery.Dataset("default", {
///     datasetId: "foo",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "EU",
///     defaultTableExpirationMs: 3600000,
///     labels: {
///         env: "default",
///     },
/// });
/// const defaultTable = new gcp.bigquery.Table("default", {
///     datasetId: _default.datasetId,
///     tableId: "bar",
///     timePartitioning: {
///         type: "DAY",
///     },
///     labels: {
///         env: "default",
///     },
///     schema: `[
///   {
///     \\"name\\": \\"permalink\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"The Permalink\\"
///   },
///   {
///     \\"name\\": \\"state\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"description\\": \\"State where the head office is located\\"
///   }
/// ]
/// `,
/// });
/// const sheet = new gcp.bigquery.Table("sheet", {
///     datasetId: _default.datasetId,
///     tableId: "sheet",
///     externalDataConfiguration: {
///         autodetect: true,
///         sourceFormat: "GOOGLE_SHEETS",
///         googleSheetsOptions: {
///             skipLeadingRows: 1,
///         },
///         sourceUris: ["https://docs.google.com/spreadsheets/d/123456789012345"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.bigquery.Dataset("default",
///     dataset_id="foo",
///     friendly_name="test",
///     description="This is a test description",
///     location="EU",
///     default_table_expiration_ms=3600000,
///     labels={
///         "env": "default",
///     })
/// default_table = gcp.bigquery.Table("default",
///     dataset_id=default.dataset_id,
///     table_id="bar",
///     time_partitioning={
///         "type": "DAY",
///     },
///     labels={
///         "env": "default",
///     },
///     schema="""[
///   {
///     \"name\": \"permalink\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The Permalink\"
///   },
///   {
///     \"name\": \"state\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"State where the head office is located\"
///   }
/// ]
/// """)
/// sheet = gcp.bigquery.Table("sheet",
///     dataset_id=default.dataset_id,
///     table_id="sheet",
///     external_data_configuration={
///         "autodetect": True,
///         "source_format": "GOOGLE_SHEETS",
///         "google_sheets_options": {
///             "skip_leading_rows": 1,
///         },
///         "source_uris": ["https://docs.google.com/spreadsheets/d/123456789012345"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.BigQuery.Dataset("default", new()
///     {
///         DatasetId = "foo",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "EU",
///         DefaultTableExpirationMs = 3600000,
///         Labels =
///         {
///             { "env", "default" },
///         },
///     });
///
///     var defaultTable = new Gcp.BigQuery.Table("default", new()
///     {
///         DatasetId = @default.DatasetId,
///         TableId = "bar",
///         TimePartitioning = new Gcp.BigQuery.Inputs.TableTimePartitioningArgs
///         {
///             Type = "DAY",
///         },
///         Labels =
///         {
///             { "env", "default" },
///         },
///         Schema = @"[
///   {
///     \""name\"": \""permalink\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""The Permalink\""
///   },
///   {
///     \""name\"": \""state\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\"",
///     \""description\"": \""State where the head office is located\""
///   }
/// ]
/// ",
///     });
///
///     var sheet = new Gcp.BigQuery.Table("sheet", new()
///     {
///         DatasetId = @default.DatasetId,
///         TableId = "sheet",
///         ExternalDataConfiguration = new Gcp.BigQuery.Inputs.TableExternalDataConfigurationArgs
///         {
///             Autodetect = true,
///             SourceFormat = "GOOGLE_SHEETS",
///             GoogleSheetsOptions = new Gcp.BigQuery.Inputs.TableExternalDataConfigurationGoogleSheetsOptionsArgs
///             {
///                 SkipLeadingRows = 1,
///             },
///             SourceUris = new[]
///             {
///                 "https://docs.google.com/spreadsheets/d/123456789012345",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := bigquery.NewDataset(ctx, "default", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("foo"),
/// 			FriendlyName:             pulumi.String("test"),
/// 			Description:              pulumi.String("This is a test description"),
/// 			Location:                 pulumi.String("EU"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewTable(ctx, "default", &bigquery.TableArgs{
/// 			DatasetId: _default.DatasetId,
/// 			TableId:   pulumi.String("bar"),
/// 			TimePartitioning: &bigquery.TableTimePartitioningArgs{
/// 				Type: pulumi.String("DAY"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"permalink\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The Permalink\"
///   },
///   {
///     \"name\": \"state\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"State where the head office is located\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewTable(ctx, "sheet", &bigquery.TableArgs{
/// 			DatasetId: _default.DatasetId,
/// 			TableId:   pulumi.String("sheet"),
/// 			ExternalDataConfiguration: &bigquery.TableExternalDataConfigurationArgs{
/// 				Autodetect:   pulumi.Bool(true),
/// 				SourceFormat: pulumi.String("GOOGLE_SHEETS"),
/// 				GoogleSheetsOptions: &bigquery.TableExternalDataConfigurationGoogleSheetsOptionsArgs{
/// 					SkipLeadingRows: pulumi.Int(1),
/// 				},
/// 				SourceUris: pulumi.StringArray{
/// 					pulumi.String("https://docs.google.com/spreadsheets/d/123456789012345"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableTimePartitioningArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableExternalDataConfigurationArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableExternalDataConfigurationGoogleSheetsOptionsArgs;
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
///         var default_ = new Dataset("default", DatasetArgs.builder()
///             .datasetId("foo")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("EU")
///             .defaultTableExpirationMs(3600000)
///             .labels(Map.of("env", "default"))
///             .build());
///
///         var defaultTable = new Table("defaultTable", TableArgs.builder()
///             .datasetId(default_.datasetId())
///             .tableId("bar")
///             .timePartitioning(TableTimePartitioningArgs.builder()
///                 .type("DAY")
///                 .build())
///             .labels(Map.of("env", "default"))
///             .schema("""
/// [
///   {
///     \"name\": \"permalink\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"The Permalink\"
///   },
///   {
///     \"name\": \"state\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\",
///     \"description\": \"State where the head office is located\"
///   }
/// ]
///             """)
///             .build());
///
///         var sheet = new Table("sheet", TableArgs.builder()
///             .datasetId(default_.datasetId())
///             .tableId("sheet")
///             .externalDataConfiguration(TableExternalDataConfigurationArgs.builder()
///                 .autodetect(true)
///                 .sourceFormat("GOOGLE_SHEETS")
///                 .googleSheetsOptions(TableExternalDataConfigurationGoogleSheetsOptionsArgs.builder()
///                     .skipLeadingRows(1)
///                     .build())
///                 .sourceUris("https://docs.google.com/spreadsheets/d/123456789012345")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: foo
///       friendlyName: test
///       description: This is a test description
///       location: EU
///       defaultTableExpirationMs: 3.6e+06
///       labels:
///         env: default
///   defaultTable:
///     type: gcp:bigquery:Table
///     name: default
///     properties:
///       datasetId: ${default.datasetId}
///       tableId: bar
///       timePartitioning:
///         type: DAY
///       labels:
///         env: default
///       schema: |
///         [
///           {
///             \"name\": \"permalink\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"The Permalink\"
///           },
///           {
///             \"name\": \"state\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\",
///             \"description\": \"State where the head office is located\"
///           }
///         ]
///   sheet:
///     type: gcp:bigquery:Table
///     properties:
///       datasetId: ${default.datasetId}
///       tableId: sheet
///       externalDataConfiguration:
///         autodetect: true
///         sourceFormat: GOOGLE_SHEETS
///         googleSheetsOptions:
///           skipLeadingRows: 1
///         sourceUris:
///           - https://docs.google.com/spreadsheets/d/123456789012345
/// ```
///
///
/// ## Import
///
/// BigQuery tables can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}`
///
/// * `{{project}}/{{dataset_id}}/{{table_id}}`
///
/// * `{{dataset_id}}/{{table_id}}`
///
/// When using the `pulumi import` command, BigQuery tables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default {{project}}/{{dataset_id}}/{{table_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default {{dataset_id}}/{{table_id}}
/// ```
class Table extends pulumi.CustomResource {
  /// Specifies the configuration of a BigLake managed table. Structure is documented below
  late final pulumi.Output<TableBiglakeConfiguration?> biglakeConfiguration;
  /// Specifies column names to use for data clustering.
  /// Up to four top-level columns are allowed, and should be specified in
  /// descending priority order.
  late final pulumi.Output<List<String>?> clusterings;
  /// The time when this table was created, in milliseconds since the epoch.
  late final pulumi.Output<int> creationTime;
  /// The dataset ID to create the table in.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> datasetId;
  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `=destroy` or `=update` that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// The field description.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * &lt;a name="schema"&gt;&lt;/a&gt;`schema` - (Optional) A JSON schema for the table.
  ///
  /// ~&gt;**NOTE:** Because this field expects a JSON string, any changes to the
  /// string will create a diff, even if the JSON itself hasn't changed.
  /// If the API returns a different value for the same schema, e.g. it
  /// switched the order of values or replaced a field data type (`STRUCT` with
  /// `RECORD`, `DECIMAL` with `NUMERIC`, etc.), we currently cannot suppress
  /// the recurring diff this causes. As a workaround, we recommend using the
  /// schema as returned by the API.
  ///
  /// ~&gt;**NOTE:**  If you use `external_data_configuration`
  /// documented below and do **not** set
  /// `external_data_configuration.connection_id`, schemas must be specified
  /// with `external_data_configuration.schema`. Otherwise, schemas must be
  /// specified with this top-level field.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Specifies how the table should be encrypted.
  /// If left blank, the table will be encrypted with a Google-managed key; that process
  /// is transparent to the user.  Structure is documented below.
  late final pulumi.Output<TableEncryptionConfiguration?> encryptionConfiguration;
  /// A hash of the resource.
  late final pulumi.Output<String> etag;
  /// The time when this table expires, in
  /// milliseconds since the epoch. If not present, the table will persist
  /// indefinitely. Expired tables will be deleted and their storage
  /// reclaimed.
  late final pulumi.Output<int> expirationTime;
  /// Options defining open source
  /// compatible table. Structure is documented below.
  late final pulumi.Output<TableExternalCatalogTableOptions?> externalCatalogTableOptions;
  /// Describes the data format,
  /// location, and other properties of a table stored outside of BigQuery.
  /// By defining these properties, the data source can then be queried as
  /// if it were a standard BigQuery table. Structure is documented below.
  late final pulumi.Output<TableExternalDataConfiguration?> externalDataConfiguration;
  /// A descriptive name for the table.
  late final pulumi.Output<String?> friendlyName;
  /// (Output-only) A list of autogenerated schema fields.
  late final pulumi.Output<String> generatedSchemaColumns;
  late final pulumi.Output<bool?> ignoreAutoGeneratedSchema;
  /// Mention which fields in schema are to be ignored
  late final pulumi.Output<List<String>?> ignoreSchemaChanges;
  /// A mapping of labels to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The time when this table was last modified, in milliseconds since the epoch.
  late final pulumi.Output<int> lastModifiedTime;
  /// The geographic location where the table resides. This value is inherited from the dataset.
  late final pulumi.Output<String> location;
  /// If specified, configures this table as a materialized view.
  /// Structure is documented below.
  late final pulumi.Output<TableMaterializedView?> materializedView;
  /// The maximum staleness of data that could be
  /// returned when the table (or stale MV) is queried. Staleness encoded as a
  /// string encoding of [SQL IntervalValue
  /// type](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#interval_type).
  late final pulumi.Output<String> maxStaleness;
  /// The size of this table in bytes, excluding any data in the streaming buffer.
  late final pulumi.Output<int> numBytes;
  /// The number of bytes in the table that are considered "long-term storage".
  late final pulumi.Output<int> numLongTermBytes;
  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  late final pulumi.Output<int> numRows;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// If specified, configures range-based
  /// partitioning for this table. Structure is documented below.
  late final pulumi.Output<TableRangePartitioning?> rangePartitioning;
  /// If set to true, queries over this table
  /// require a partition filter that can be used for partition elimination to be
  /// specified.
  late final pulumi.Output<bool?> requirePartitionFilter;
  /// The tags attached to this table. Tag keys are
  /// globally unique. Tag key is expected to be in the namespaced format, for
  /// example "123456789012/environment" where 123456789012 is the ID of the
  /// parent organization or project resource for this tag key. Tag value is
  /// expected to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  late final pulumi.Output<Map<String, String>?> resourceTags;
  /// A JSON schema for the table.
  late final pulumi.Output<String> schema;
  /// Specifies metadata of the foreign data
  /// type definition in field schema. Structure is documented below.
  late final pulumi.Output<TableSchemaForeignTypeInfo?> schemaForeignTypeInfo;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Defines the primary key and foreign keys.
  /// Structure is documented below.
  late final pulumi.Output<TableTableConstraints?> tableConstraints;
  /// A unique ID for the resource.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> tableId;
  /// View sets the optional parameter "view": Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned. Possible values: TABLE_METADATA_VIEW_UNSPECIFIED, BASIC, STORAGE_STATS, FULL
  late final pulumi.Output<String?> tableMetadataView;
  /// Replication info of a table created
  /// using "AS REPLICA" DDL like:
  /// `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`.
  /// Structure is documented below.
  late final pulumi.Output<TableTableReplicationInfo?> tableReplicationInfo;
  /// If specified, configures time-based
  /// partitioning for this table. Structure is documented below.
  late final pulumi.Output<TableTimePartitioning?> timePartitioning;
  /// Describes the table type.
  late final pulumi.Output<String> type;
  /// If specified, configures this table as a view.
  /// Structure is documented below.
  late final pulumi.Output<TableView?> view;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_bigquery_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    biglakeConfiguration = registerOutput<TableBiglakeConfiguration?>('biglakeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBiglakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterings = registerOutput<List<String>?>('clusterings');
    creationTime = registerOutput<int>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfiguration = registerOutput<TableEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    expirationTime = registerOutput<int>('expirationTime');
    externalCatalogTableOptions = registerOutput<TableExternalCatalogTableOptions?>('externalCatalogTableOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableExternalCatalogTableOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDataConfiguration = registerOutput<TableExternalDataConfiguration?>('externalDataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableExternalDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    generatedSchemaColumns = registerOutput<String>('generatedSchemaColumns');
    ignoreAutoGeneratedSchema = registerOutput<bool?>('ignoreAutoGeneratedSchema');
    ignoreSchemaChanges = registerOutput<List<String>?>('ignoreSchemaChanges');
    labels = registerOutput<Map<String, String>?>('labels');
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    location = registerOutput<String>('location');
    materializedView = registerOutput<TableMaterializedView?>('materializedView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableMaterializedView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxStaleness = registerOutput<String>('maxStaleness');
    numBytes = registerOutput<int>('numBytes');
    numLongTermBytes = registerOutput<int>('numLongTermBytes');
    numRows = registerOutput<int>('numRows');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rangePartitioning = registerOutput<TableRangePartitioning?>('rangePartitioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableRangePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requirePartitionFilter = registerOutput<bool?>('requirePartitionFilter');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    schema = registerOutput<String>('schema');
    schemaForeignTypeInfo = registerOutput<TableSchemaForeignTypeInfo?>('schemaForeignTypeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableSchemaForeignTypeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    tableConstraints = registerOutput<TableTableConstraints?>('tableConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTableConstraints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableId = registerOutput<String>('tableId');
    tableMetadataView = registerOutput<String?>('tableMetadataView');
    tableReplicationInfo = registerOutput<TableTableReplicationInfo?>('tableReplicationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTableReplicationInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timePartitioning = registerOutput<TableTimePartitioning?>('timePartitioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTimePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    view = registerOutput<TableView?>('view', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    biglakeConfiguration = registerOutput<TableBiglakeConfiguration?>('biglakeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBiglakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterings = registerOutput<List<String>?>('clusterings');
    creationTime = registerOutput<int>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionConfiguration = registerOutput<TableEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    expirationTime = registerOutput<int>('expirationTime');
    externalCatalogTableOptions = registerOutput<TableExternalCatalogTableOptions?>('externalCatalogTableOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableExternalCatalogTableOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDataConfiguration = registerOutput<TableExternalDataConfiguration?>('externalDataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableExternalDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    generatedSchemaColumns = registerOutput<String>('generatedSchemaColumns');
    ignoreAutoGeneratedSchema = registerOutput<bool?>('ignoreAutoGeneratedSchema');
    ignoreSchemaChanges = registerOutput<List<String>?>('ignoreSchemaChanges');
    labels = registerOutput<Map<String, String>?>('labels');
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    location = registerOutput<String>('location');
    materializedView = registerOutput<TableMaterializedView?>('materializedView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableMaterializedView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxStaleness = registerOutput<String>('maxStaleness');
    numBytes = registerOutput<int>('numBytes');
    numLongTermBytes = registerOutput<int>('numLongTermBytes');
    numRows = registerOutput<int>('numRows');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rangePartitioning = registerOutput<TableRangePartitioning?>('rangePartitioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableRangePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requirePartitionFilter = registerOutput<bool?>('requirePartitionFilter');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    schema = registerOutput<String>('schema');
    schemaForeignTypeInfo = registerOutput<TableSchemaForeignTypeInfo?>('schemaForeignTypeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableSchemaForeignTypeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    tableConstraints = registerOutput<TableTableConstraints?>('tableConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTableConstraints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableId = registerOutput<String>('tableId');
    tableMetadataView = registerOutput<String?>('tableMetadataView');
    tableReplicationInfo = registerOutput<TableTableReplicationInfo?>('tableReplicationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTableReplicationInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timePartitioning = registerOutput<TableTimePartitioning?>('timePartitioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableTimePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    view = registerOutput<TableView?>('view', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
