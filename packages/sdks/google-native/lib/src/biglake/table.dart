import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_options_response.dart';
import 'table_args.dart';

/// Creates a new table.
/// Auto-naming is currently not supported for this resource.
class Table extends pulumi.CustomResource {
  late final pulumi.Output<String> catalogId;

  /// The creation time of the table.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> databaseId;

  /// The deletion time of the table. Only set after the table is deleted.
  late final pulumi.Output<String> deleteTime;

  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  late final pulumi.Output<String> etag;

  /// The time when this table is considered expired. Only set after the table is deleted.
  late final pulumi.Output<String> expireTime;

  /// Options of a Hive table.
  late final pulumi.Output<HiveTableOptionsResponse> hiveOptions;
  late final pulumi.Output<String> location;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. The ID to use for the table, which will become the final component of the table's resource name.
  late final pulumi.Output<String> tableId;

  /// The table type.
  late final pulumi.Output<String> type;

  /// The last modification time of the table.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_biglake_v1_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:biglake/v1:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    catalogId = registerOutput<String>('catalogId');
    createTime = registerOutput<String>('createTime');
    databaseId = registerOutput<String>('databaseId');
    deleteTime = registerOutput<String>('deleteTime');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    hiveOptions = registerOutput<HiveTableOptionsResponse>('hiveOptions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tableId = registerOutput<String>('tableId');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
