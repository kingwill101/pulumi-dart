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
  DatabaseArgs({
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
      catalog: (map['catalog'] as String).input(),
      hiveOptions: (DatabaseHiveOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

