// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_hive_options.dart';

/// {@template pulumi_biglake_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_biglake_table_table_args_doc}
class TableArgs {
  /// The id of the parent database.
  final pulumi.Input<String>? database;
  /// Options of a Hive table.
  /// Structure is documented below.
  final pulumi.Input<TableHiveOptions>? hiveOptions;
  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  final pulumi.Input<String>? name;
  /// The database type.
  /// Possible values are: `HIVE`.
  final pulumi.Input<String>? type;

  /// Creates a new [TableArgs].
  /// [database] The id of the parent database.
  /// [hiveOptions] Options of a Hive table.
  /// [name] Output only. The name of the Table. Format:
  /// [type] The database type.
  TableArgs({
    pulumi.Output<String>? database,
    pulumi.Output<TableHiveOptions>? hiveOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      hiveOptions = pulumi.Input.asOptionalInput<TableHiveOptions>(hiveOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<TableHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': ?type,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      hiveOptions: map['hiveOptions'] == null ? null : pulumi.Output.create<TableHiveOptions>(TableHiveOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

