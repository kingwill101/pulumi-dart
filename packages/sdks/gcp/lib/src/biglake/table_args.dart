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
    this.database,
    this.hiveOptions,
    this.name,
    this.type,
  });

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
      database: map['database'] == null ? null : (map['database']! as String).input(),
      hiveOptions: map['hiveOptions'] == null ? null : (TableHiveOptions.fromMap((map['hiveOptions']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

