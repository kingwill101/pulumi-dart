// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_hive_options.dart';

/// {@template pulumi_biglake_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_biglake_database_database_args_doc}
class DatabaseArgs {
  /// The parent catalog.
  final pulumi.Input<String> catalog;
  /// Options of a Hive database.
  /// Structure is documented below.
  final pulumi.Input<DatabaseHiveOptions> hiveOptions;
  /// The name of the database.
  final pulumi.Input<String>? name;
  /// The database type.
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseArgs].
  /// [catalog] The parent catalog.
  /// [hiveOptions] Options of a Hive database.
  /// [name] The name of the database.
  /// [type] The database type.
  const DatabaseArgs({
    required this.catalog,
    required this.hiveOptions,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'hiveOptions': pulumi.Input.mapInputValue<DatabaseHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': type,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      hiveOptions: pulumi.Input.fromValue(DatabaseHiveOptions.fromMap((map['hiveOptions']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

