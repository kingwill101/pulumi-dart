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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [hiveOptions] Options of a Hive table.
  /// [name] Output only. The name of the Table. Format:
  /// [type] The database type.
  const TableArgs({
    this.database,
    this.deletionPolicy,
    this.hiveOptions,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<TableHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': ?type,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiveOptions: (() { final guardedValue = map['hiveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableHiveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
